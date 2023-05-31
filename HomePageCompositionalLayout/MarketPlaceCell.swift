//
//  MarketPlaceCell.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 5/31/23.
//

import UIKit

class MarketPlaceCell: UICollectionViewCell {
    
    static var reuseIdentifier: String {
        return String.init(describing: self.self)
    }
    
    private lazy var marketPlaceContainerView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var marketPlaceImageView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var marketPlaceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Outfit-SemiBold", size: 14)
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        marketPlaceImageView.addSubview(marketPlaceLabel)
        marketPlaceContainerView.addSubview(marketPlaceImageView)
        
        addSubview(marketPlaceContainerView)
        
        NSLayoutConstraint.activate([
            marketPlaceImageView.topAnchor.constraint(equalTo: marketPlaceContainerView.topAnchor),
            marketPlaceImageView.trailingAnchor.constraint(equalTo: marketPlaceContainerView.trailingAnchor),
            marketPlaceImageView.bottomAnchor.constraint(equalTo: marketPlaceContainerView.bottomAnchor),
            marketPlaceImageView.leadingAnchor.constraint(equalTo: marketPlaceContainerView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            marketPlaceLabel.bottomAnchor.constraint(equalTo: marketPlaceImageView.bottomAnchor),
            marketPlaceLabel.trailingAnchor.constraint(equalTo: marketPlaceImageView.trailingAnchor, constant: -32.5),
            marketPlaceLabel.leadingAnchor.constraint(equalTo: marketPlaceImageView.leadingAnchor, constant: 32.5),
            marketPlaceLabel.heightAnchor.constraint(equalToConstant: 21)
        ])
        
        layer.cornerRadius = 16
        backgroundColor = .cyan
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 16
    }
    
}
