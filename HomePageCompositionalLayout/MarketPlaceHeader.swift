//
//  TopRatedFreelancerHeader.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 6/8/23.
//

import UIKit

class MarketPlaceHeader: UICollectionReusableView {
    
    private lazy var marketPlaceHeaderLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Outfit-Bold", size: 16)
        label.text = "Explore Marketplace"
        return label
    }()
    
    private lazy var marketPlaceHeaderButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 8
        button.backgroundColor = .white
        return button
    }()
    
    private lazy var marketPlaceHeaderButtonImageView: UIImageView = {
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
        
        marketPlaceHeaderLabel.text = headerLabel
    }
}

extension MarketPlaceHeader {
    
    private func addSubviewsToSuperview() {
        
        addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(marketPlaceHeaderLabel)
        mainStackView.addArrangedSubview(marketPlaceHeaderButton)
        
        marketPlaceHeaderButton.addSubview(marketPlaceHeaderButtonImageView)
    }
    
    private func setConstraints() {
        
        mainStackView.alignAllEdgesToSuperview(self)
        
        marketPlaceHeaderButtonImageView.setSizeConstraints(width: 4, height: 8)
        NSLayoutConstraint.activate([
            marketPlaceHeaderButtonImageView.centerXAnchor.constraint(equalTo: marketPlaceHeaderButton.centerXAnchor),
            marketPlaceHeaderButtonImageView.centerYAnchor.constraint(equalTo: marketPlaceHeaderButton.centerYAnchor)
        ])
        
        marketPlaceHeaderButton.setSizeConstraints(width: 32, height: 32)
    }
}

