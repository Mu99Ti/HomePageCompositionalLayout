//
//  TopRatedFreelancerHeader.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 6/8/23.
//

import UIKit

class BestPackagesHeader: UICollectionReusableView {
    
    private lazy var topRatedFreelancerHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Outfit-Bold", size: 16)
        label.text = "Explore Best Packages"
        return label
    }()
    
    private lazy var topRatedFreelancerHeaderButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = .white
        return button
    }()
    
    private lazy var topRatedFreelancerHeaderButtonImageView: UIImageView = {
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
    
    convenience init(headerLabel: String) {
        self.init(frame: .zero)
        
        topRatedFreelancerHeaderLabel.text = headerLabel
    }
}

extension BestPackagesHeader {
    
    private func addSubviewsToSuperview() {
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(topRatedFreelancerHeaderLabel)
        mainStackView.addArrangedSubview(topRatedFreelancerHeaderButton)
        
        topRatedFreelancerHeaderButton.addSubview(topRatedFreelancerHeaderButtonImageView)
    }
    
    private func setConstraints() {
        
        mainStackView.alignAllEdgesToSuperview(self)
        
        topRatedFreelancerHeaderButtonImageView.setSizeConstraints(width: 4, height: 8)
        NSLayoutConstraint.activate([
            topRatedFreelancerHeaderButtonImageView.centerXAnchor.constraint(equalTo: topRatedFreelancerHeaderButton.centerXAnchor),
            topRatedFreelancerHeaderButtonImageView.centerYAnchor.constraint(equalTo: topRatedFreelancerHeaderButton.centerYAnchor)
        ])
        
        topRatedFreelancerHeaderButton.setSizeConstraints(width: 32, height: 32)
    }
}

