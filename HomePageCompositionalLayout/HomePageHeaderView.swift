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
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var homePageHeaderBackgroundImageView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var magnifierImageView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var homePageHeaderLabe: UILabel = {
        let label = UILabel()
        return label
    }()
    
    private lazy 
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
