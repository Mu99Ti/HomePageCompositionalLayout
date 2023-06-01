//
//  TopRatedFreelancerCell.swift
//  HomePageCompositionalLayout
//
//  Created by Muhamad Talebi on 5/31/23.
//

import UIKit

class TopRatedFreelancerCell: UICollectionViewCell {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 231/255, green: 231/255, blue: 231/255, alpha: 1).cgColor
        return view
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "testtsttsts"
        label.font = UIFont(name: "Outfit-SemiBold", size: 14)
        return label
    }()
    
    private lazy var completedLabel: UILabel = {
        let label = UILabel()
        label.text = "testtsttsts"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        return label
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var freelancerImageView: UIImageView = {
        let image = UIImage(named: "Avatar")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private lazy var informationStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .fillProportionally
        return stackView
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.text = "testtsttsts"
        label.textAlignment = .right
        label.font = UIFont(name: "Outfit Regular", size: 12)
        return label
    }()
    
    private lazy var freelancerCellHeaderStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.alignment = .leading
        stackView.spacing = 53
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var packagesImageView: UIImageView = {
        let image = UIImage(named: "Packages")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        return imageView
    }()
    
    private lazy var packagesLabel: UILabel = {
        let label = UILabel()
        label.text = "testtsttsts"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        return label
    }()
    
    private lazy var packagesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalCentering
        stackView.axis = .horizontal
        stackView.spacing = 6.5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var servicesImageView: UIImageView = {
        let image = UIImage(named: "Services")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .center
        return imageView
    }()
    
    private lazy var servicesLabel: UILabel = {
        let label = UILabel()
        label.text = "testtsttsts"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        label.textAlignment = .right
        return label
    }()
    
    private lazy var servicesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.distribution = .equalCentering
        stackView.alignment = .trailing
        stackView.spacing = 6.5
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var servicesandPackagesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "fjdsfnsdklnflksdnflksndflknsldkfsdlknfdsfnsdklnflksdnflksndflknsldkfsdlknfdsfnsdklnflksdnflksndflknsldkfsdlknf"
        label.font = UIFont(name: "Outfit Regular", size: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var labelHolderStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 9
        return stackView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.spacing = 17
        return stackView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        labelsStackView.addArrangedSubview(nameLabel)
        labelsStackView.addArrangedSubview(completedLabel)
        
        informationStackView.addArrangedSubview(freelancerImageView)
        informationStackView.addArrangedSubview(labelsStackView)
        
        freelancerCellHeaderStackView.addArrangedSubview(informationStackView)
        freelancerCellHeaderStackView.addArrangedSubview(dateLabel)
        
        packagesStackView.addArrangedSubview(packagesImageView)
        packagesStackView.addArrangedSubview(packagesLabel)
        
        servicesStackView.addArrangedSubview(servicesImageView)
        servicesStackView.addArrangedSubview(servicesLabel)
        
        servicesandPackagesStackView.addArrangedSubview(packagesStackView)
        servicesandPackagesStackView.addArrangedSubview(servicesStackView)
        
        labelHolderStackView.addArrangedSubview(servicesandPackagesStackView)
        labelHolderStackView.addArrangedSubview(descriptionLabel)
        
        mainStackView.addArrangedSubview(freelancerCellHeaderStackView)
        mainStackView.addArrangedSubview(labelHolderStackView)

        containerView.addSubview(mainStackView)
        
        contentView.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            packagesImageView.heightAnchor.constraint(equalToConstant: 20),
            packagesImageView.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            servicesImageView.heightAnchor.constraint(equalToConstant: 20),
            servicesImageView.widthAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            servicesandPackagesStackView.widthAnchor.constraint(equalToConstant: 285),
            servicesandPackagesStackView.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            freelancerImageView.heightAnchor.constraint(equalToConstant: 48),
            freelancerImageView.widthAnchor.constraint(equalToConstant: 48)
        ])
        
        NSLayoutConstraint.activate([
            freelancerCellHeaderStackView.widthAnchor.constraint(equalToConstant: 285),
            freelancerCellHeaderStackView.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        NSLayoutConstraint.activate([
            labelHolderStackView.widthAnchor.constraint(equalToConstant: 285),
            labelHolderStackView.heightAnchor.constraint(equalToConstant: 64)
        ])

        
        NSLayoutConstraint.activate([
            mainStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 16),
            mainStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -16),
            mainStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -16),
            mainStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor),
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
        
        
        freelancerImageView.layer.cornerRadius = 24
        backgroundColor = .white
        layer.cornerRadius = 16
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static var reuseIdentifier: String {
        return String.init(describing: self.self)
    }
    
}
