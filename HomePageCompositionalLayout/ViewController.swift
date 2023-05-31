//
//  ViewController.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 5/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let layout = makeLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(MarketPlaceCell.self, forCellWithReuseIdentifier: MarketPlaceCell.reuseIdentifier)
        collectionView.register(TopRatedFreelancerCell.self, forCellWithReuseIdentifier: TopRatedFreelancerCell.reuseIdentifier)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.backgroundColor = .systemBackground
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            collectionView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
        view.backgroundColor = .systemBackground
    }
    
    private func makeLayout() -> UICollectionViewCompositionalLayout{
        let configuration = UICollectionViewCompositionalLayoutConfiguration()
        configuration.interSectionSpacing = 72
        
        let sectionProvider = { [weak self] (sectionIndex: Int, layoutEnvironment: NSCollectionLayoutEnvironment) -> NSCollectionLayoutSection? in
            
            let section: NSCollectionLayoutSection
            
            if sectionIndex == 0 {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(144), heightDimension: .absolute(180))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 12
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                section.orthogonalScrollingBehavior = .continuous
            } else if sectionIndex == 1 {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(355), heightDimension: .absolute(208))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 12
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
                section.orthogonalScrollingBehavior = .continuous
            } else {
                let itemSize = NSCollectionLayoutSize(widthDimension: .absolute(252), heightDimension: .absolute(245))
                let item = NSCollectionLayoutItem(layoutSize: itemSize)
                let group = NSCollectionLayoutGroup.horizontal(layoutSize: itemSize, subitems: [item])
                section = NSCollectionLayoutSection(group: group)
                section.interGroupSpacing = 12
                section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20)
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
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MarketPlaceCell.reuseIdentifier, for: indexPath)
            return cell
        } else if sectionNumber == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TopRatedFreelancerCell.reuseIdentifier, for: indexPath)
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
            cell.backgroundColor = .red
            return cell
        }
    }
}

extension ViewController: UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        3
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        10
    }
}


