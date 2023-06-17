//
//  MarketPlaceCell.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 5/31/23.
//

import UIKit

class MarketPlaceCell: UICollectionViewCell {
    
    
    // MARK: - Private Properties
    private lazy var marketPlaceContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    private lazy var marketPlaceImageView: UIImageView = {
        let image = UIImage(named: "bitmap")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var marketPlaceLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Outfit-SemiBold", size: 14)
//        label.text = "Logo Design"
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviewsToSuperview()
        
        setConstraints()
        
        layer.cornerRadius = 16
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: = Cell ReuseIdentifier
    static var reuseIdentifier: String {
        return String.init(describing: self.self)
    }
    
    internal func configure(title: String?) {
        
            marketPlaceLabel.text = title
    }
    
    internal func configure(title: String?, imageURL: String?) {
        
            marketPlaceLabel.text = title
        marketPlaceImageView.setImage(url: URL(string: imageURL!)!)
    }
}

extension MarketPlaceCell {
    
    private func addSubviewsToSuperview() {
        
        addSubview(marketPlaceContainerView)
        
        marketPlaceContainerView.addSubview(marketPlaceImageView)
        marketPlaceImageView.addSubview(marketPlaceLabel)
    }
    
    private func setConstraints() {
        
        marketPlaceImageView.alignAllEdgesToSuperview(marketPlaceContainerView)
        
        marketPlaceImageView.setSizeConstraints(width: 144, height: 180)
        
        NSLayoutConstraint.activate([
            marketPlaceLabel.bottomAnchor.constraint(equalTo: marketPlaceImageView.bottomAnchor, constant: -16),
            marketPlaceLabel.trailingAnchor.constraint(equalTo: marketPlaceImageView.trailingAnchor, constant: -32.5),
            marketPlaceLabel.leadingAnchor.constraint(equalTo: marketPlaceImageView.leadingAnchor, constant: 32.5),
        ])
    }
}
