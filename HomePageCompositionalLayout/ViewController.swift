//
//  ViewController.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 5/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var dataSet: Model? {
        didSet {
            DispatchQueue.main.async {
                self.collectionView.reloadData()
            }
        }
    }
    
    private lazy var collectionView: UICollectionView = {
        let layout = makeLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MarketPlaceCell.self, forCellWithReuseIdentifier: MarketPlaceCell.reuseIdentifier)
        collectionView.register(TopRatedFreelancerCell.self, forCellWithReuseIdentifier: TopRatedFreelancerCell.reuseIdentifier)
        collectionView.register(BestPackagesCell.self, forCellWithReuseIdentifier: BestPackagesCell.reuseIdentifier)
        collectionView.register(TopRatedFreelancerHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TopRatedFreelancerHeader.reuseIdentifier)
        collectionView.register(MarketPlaceHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MarketPlaceHeader.reuseIdentifier)
        collectionView.register(BestPackagesHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: BestPackagesHeader.reuseIdentifier)
        collectionView.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 250/255, alpha: 1)
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        ])
        
        view.backgroundColor = UIColor(red: 247/255, green: 248/255, blue: 250/255, alpha: 1)
        
        fetchData()
    
    }
    
    
    private func fetchData() {
        
        let url = URL(string: "https://api.dev.qudra.cloud/home-page/5")
        
        guard let url else { return }
        let urlRequest = URLRequest(url: url)
        
        let urlSession = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            
            if let data {
                do {
                    let decoded = try JSONDecoder().decode(Model.self, from: data)
                    self.dataSet = decoded
                    print("decoded.payload.categories.count: ", decoded.payload.categories.count)
                    print("dataset number is: \(self.dataSet)")
                } catch {
                    print("error is:", String(describing: error))
                }
            }
        }.resume()
    }
    
    private func makeLayout() -> UICollectionViewCompositionalLayout{
        
        let headerPadding: CGFloat = 16
        let configuration = UICollectionViewCompositionalLayoutConfiguration()
        configuration.interSectionSpacing = 28
        
        let sectionProvider = { [weak self] (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let section: NSCollectionLayoutSection
            
            if sectionIndex == 0 {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(144), heightDimension: .absolute(180))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(32 + headerPadding))
                let topRatedSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                topRatedSectionHeader.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: headerPadding, trailing: 0)
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 12
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                section.boundarySupplementaryItems = [topRatedSectionHeader]
                section.orthogonalScrollingBehavior = .continuous
                
            } else if sectionIndex == 1 {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(317), heightDimension: .absolute(160))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(32 + headerPadding))
                let topRatedSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                topRatedSectionHeader.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: headerPadding, trailing: 0)
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 12
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                section.boundarySupplementaryItems = [topRatedSectionHeader]
                section.orthogonalScrollingBehavior = .continuous
                
            } else {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(252), heightDimension: .absolute(245))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 12
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                let headerSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(32 + headerPadding))
                let topRatedSectionHeader = NSCollectionLayoutBoundarySupplementaryItem(layoutSize: headerSize, elementKind: UICollectionView.elementKindSectionHeader, alignment: .top)
                topRatedSectionHeader.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: headerPadding, trailing: 0)
                section.boundarySupplementaryItems = [topRatedSectionHeader]
                section.orthogonalScrollingBehavior = .continuous
            }
            
            return section
        }
        
        let layout = UICollectionViewCompositionalLayout(sectionProvider: sectionProvider, configuration: configuration)
        
        return layout
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let sectionNumber = indexPath.section
        
        if sectionNumber == 0 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarketPlaceCell.reuseIdentifier, for: indexPath) as! MarketPlaceCell
            print("dataset is: \(dataSet?.payload)")
//            cell.configure(title: categoriesDataSet?.title)
            return cell
        } else if sectionNumber == 1 {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopRatedFreelancerCell.reuseIdentifier, for: indexPath)
            return cell
        } else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BestPackagesCell.reuseIdentifier, for: indexPath)
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sectionNumber = indexPath.section
        
        if sectionNumber == 0 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: MarketPlaceHeader.reuseIdentifier, for: indexPath)
            return header
            
        } else if sectionNumber == 1 {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: TopRatedFreelancerHeader.reuseIdentifier, for: indexPath)
            return header
            
        } else {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: BestPackagesHeader.reuseIdentifier, for: indexPath)
            return header
        }
    }
}

extension ViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return (dataSet?.payload.categories.count)!
        case 1:
            return (dataSet?.payload.topFreelancers.count)!
        case 2:
            return (dataSet?.payload.topPackages.count)!
        default:
            return 10
        }
    }
}


