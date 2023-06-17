//
//  TopRatedFreelancerHeader.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 6/8/23.
//

import UIKit

class BestPackagesHeader: UICollectionReusableView {
    
    private lazy var bestPackagesHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Outfit Bold", size: 16)!
        label.text = "Explore Best Packages"
        return label
    }()
    
    private lazy var bestPackagesHeaderButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = .white
        return button
    }()
    
    private lazy var bestPackagesHeaderButtonImageView: UIImageView = {
        let image = UIImage(named: "Path")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 77
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviewsToSuperview()
        
        setConstraints()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension BestPackagesHeader {
    
    private func addSubviewsToSuperview() {
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(bestPackagesHeaderLabel)
        mainStackView.addArrangedSubview(bestPackagesHeaderButton)
        
        bestPackagesHeaderButton.addSubview(bestPackagesHeaderButtonImageView)
    }
    
    private func setConstraints() {
        
        mainStackView.alignAllEdgesToSuperview(self)
        
        bestPackagesHeaderButtonImageView.setSizeConstraints(width: 4, height: 8)
        NSLayoutConstraint.activate([
            bestPackagesHeaderButtonImageView.centerXAnchor.constraint(equalTo: bestPackagesHeaderButton.centerXAnchor),
            bestPackagesHeaderButtonImageView.centerYAnchor.constraint(equalTo: bestPackagesHeaderButton.centerYAnchor)
        ])
        
        bestPackagesHeaderButton.setSizeConstraints(width: 32, height: 32)
    }
}

