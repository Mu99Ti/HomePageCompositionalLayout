//
//  HomePageHeaderView.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 6/8/23.
//

import UIKit

class HomePageHeaderView: UIView {
    
    private lazy var homePageHeaderContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var homePageHeaderBackgroundImageView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var magnifierImageView: UIImageView = {
        let image = UIImage(named: "magnifier")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var homePageHeaderLabel: UILabel = {
        let label = UILabel()
        label.text = """
Find the most
suitable freelancer
"""
        label.textAlignment = .left
        label.numberOfLines = 2
        return label
    }()
    
    private lazy var headerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .leading
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var searchFieldContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 24
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var searchFieldPlaceHolderLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var searchMagnifierImageView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 73
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(homePageHeaderContainerView)
        
        homePageHeaderContainerView.alignAllEdgesToSuperview(self)
        
        
        homePageHeaderContainerView.addSubview(mainStackView)
        
        
        
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: homePageHeaderContainerView.topAnchor, constant: 40),
            mainStackView.trailingAnchor.constraint(equalTo: homePageHeaderContainerView.trailingAnchor, constant: -20),
            mainStackView.bottomAnchor.constraint(equalTo: homePageHeaderContainerView.bottomAnchor, constant: -10),
            mainStackView.leadingAnchor.constraint(equalTo: homePageHeaderContainerView.leadingAnchor, constant: 20)
        ])
        
     
        
        mainStackView.addArrangedSubview(headerStackView)
        mainStackView.addArrangedSubview(searchFieldContainerView)
        
        headerStackView.addArrangedSubview(magnifierImageView)
        headerStackView.addArrangedSubview(homePageHeaderLabel)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
