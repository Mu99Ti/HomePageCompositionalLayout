//
//  BestPackagesCell.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 6/7/23.
//

import UIKit

class BestPackagesCell: UICollectionViewCell {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var typeLabel: UILabel = {
        let label = UILabel()
        label.text = "Basic"
        label.font = UIFont(name: "Outfit SemiBold", size: 14)
        return label
    }()
    
    private lazy var skillLabel: UILabel = {
        let label = UILabel()
        label.text = "Mobile App Design"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        return label
    }()
    
    private lazy var starImageView: UIImageView = {
        let image = UIImage(named: "Star")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var ratingLabel: UILabel = {
        let label = UILabel()
        label.text = "5.0"
        label.font = UIFont(name: "Outfit SemiBold", size: 12)
        label.textColor = UIColor(red: 255/255, green: 170/255, blue: 0, alpha: 1)
        return label
    }()
    
    private lazy var ratingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 2
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var skillRatingStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var sepratorLineView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1)
        return view
    }()
    
    private lazy var headerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var freelancerImageView: UIImageView = {
        let image = UIImage(named: "Avatar")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Jessica Smith"
        label.textAlignment = .left
        label.font = UIFont(name: "Outfit Regular", size: 14)
        return label
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.text = "Jul 10, 2022"
        label.textAlignment = .left
        label.font = UIFont(name: "Outfit Regular", size: 12)
        label.textColor = UIColor(red: 127/255, green: 128/255, blue: 128/255, alpha: 1)
        return label
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 2
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var informationStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.distribution = .fillProportionally
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Do wireframe for web, website, and , web, mobile app ui ux design skills, strengths ..."
        label.font = UIFont(name: "Outfit Regular", size: 12)
        label.textColor = UIColor(red: 127/255, green: 128/255, blue: 128/255, alpha: 1)
        label.textAlignment = .justified
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var timeImageView: UIImageView = {
        let image = UIImage(named: "time")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        return imageView
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.text = "2 Days"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        label.textColor = UIColor(red: 127/255, green: 128/255, blue: 128/255, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    private lazy var timeStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 4
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var reviewImageView: UIImageView = {
        let image = UIImage(named: "review")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        return imageView
    }()
    
    private lazy var reviewLabel: UILabel = {
        let label = UILabel()
        label.text = "Unlimited"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        label.textColor = UIColor(red: 127/255, green: 128/255, blue: 128/255, alpha: 1)
        label.textAlignment = .right
        return label
    }()
    
    private lazy var reviewStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.alignment = .trailing
        stackView.spacing = 6.5
        stackView.distribution = .fill
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var timeandReviewStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var descriptionsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var priceLabel: UILabel = {
        let label = UILabel()
        label.text = "Price"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        return label
    }()
    
    private lazy var priceValueLabel: UILabel = {
        let label = UILabel()
        label.text = "255 KD"
        label.font = UIFont(name: "Outfit SemiBold", size: 12)
        label.textColor = UIColor(red: 78/255, green: 182/255, blue: 194/255, alpha: 1)
        return label
    }()
    
    private lazy var priceStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 9.5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        
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

extension BestPackagesCell {
    
    private func addSubviewsToSuperview() {
        addSubview(containerView)
        
        containerView.addSubview(mainStackView)
        
        mainStackView.addArrangedSubview(headerStackView)
        mainStackView.addArrangedSubview(informationStackView)
        mainStackView.addArrangedSubview(descriptionsStackView)
        mainStackView.addArrangedSubview(priceStackView)
        
        headerStackView.addArrangedSubview(typeLabel)
        headerStackView.addArrangedSubview(skillRatingStackView)
        headerStackView.addArrangedSubview(sepratorLineView)
        
        skillRatingStackView.addArrangedSubview(skillLabel)
        skillRatingStackView.addArrangedSubview(ratingStackView)
        
        ratingStackView.addArrangedSubview(starImageView)
        ratingStackView.addArrangedSubview(ratingLabel)
        
        informationStackView.addArrangedSubview(freelancerImageView)
        informationStackView.addArrangedSubview(labelsStackView)
        
        labelsStackView.addArrangedSubview(nameLabel)
        labelsStackView.addArrangedSubview(dateLabel)
        
        descriptionsStackView.addArrangedSubview(descriptionLabel)
        descriptionsStackView.addArrangedSubview(timeandReviewStackView)
        
        timeStackView.addArrangedSubview(timeImageView)
        timeStackView.addArrangedSubview(timeLabel)
        
        reviewStackView.addArrangedSubview(reviewImageView)
        reviewStackView.addArrangedSubview(reviewLabel)
        
        timeandReviewStackView.addArrangedSubview(timeStackView)
        timeandReviewStackView.addArrangedSubview(reviewStackView)
        
        priceStackView.addArrangedSubview(priceLabel)
        priceStackView.addArrangedSubview(priceValueLabel)
    }
    
    private func setConstraints() {
        
        containerView.alignAllEdgesToSuperview(self)
        mainStackView.alignAllEdgesToSuperviewWithPadding(containerView, padding: 16)
        
        headerStackView.setSizeConstraints(width: 230, height: 55)
        informationStackView.setSizeConstraints(width: 230, height: 41)
        descriptionsStackView.setSizeConstraints(width: 230, height: 64)
        priceStackView.setSizeConstraints(width: 230, height: 21)
        freelancerImageView.setSizeConstraints(width: 38, height: 38)
        sepratorLineView.setSizeConstraints(width: 230, height: 1)
        timeImageView.setSizeConstraints(width: 20, height: 20)
        reviewImageView.setSizeConstraints(width: 20, height: 20)
        starImageView.setSizeConstraints(width: 14, height: 14)
        timeandReviewStackView.setSizeConstraints(width: 230, height: 20)
    }
}


extension UIView {
    
    @discardableResult
    func alignAllEdgesToSuperview(_ parentView: UIView) -> [NSLayoutConstraint] {
        
        let constraints: [NSLayoutConstraint]?
        
        translatesAutoresizingMaskIntoConstraints = false
        
        constraints = [
            topAnchor.constraint(equalTo: parentView.topAnchor),
            trailingAnchor.constraint(equalTo: parentView.trailingAnchor),
            bottomAnchor.constraint(equalTo: parentView.bottomAnchor),
            leadingAnchor.constraint(equalTo: parentView.leadingAnchor)
        ]
        
        guard let constraints else { return [] }
        
        NSLayoutConstraint.activate(constraints)
        
        return constraints
    }
    
    func alignAllEdgesToSuperviewWithPadding(_ parentView: UIView, padding: CGFloat) {
        
        let constraints: [NSLayoutConstraint]
        
        translatesAutoresizingMaskIntoConstraints = false
        
        constraints = [
            topAnchor.constraint(equalTo: parentView.topAnchor, constant: padding),
            trailingAnchor.constraint(equalTo: parentView.trailingAnchor, constant: -(padding)),
            bottomAnchor.constraint(equalTo: parentView.bottomAnchor, constant: -(padding)),
            leadingAnchor.constraint(equalTo: parentView.leadingAnchor, constant: padding)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    func setSizeConstraints(width: CGFloat, height: CGFloat) {
        
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: width),
            heightAnchor.constraint(equalToConstant: height)
        ])
    }
}
