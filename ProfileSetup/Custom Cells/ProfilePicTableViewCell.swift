//
//  ProfilePicTableViewCell.swift
//  ProfileSetup
//
//  Created by Vincent Cubit on 11/21/21.
//


import UIKit


class ProfilePicTableViewCell: UITableViewCell {
    
    
    static let id = "ProfilePicTableViewCell"

    
    private let profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .systemBlue
        return imageView
    }()
    
    
    private let profileLabel: UILabel = {
        let label = UILabel()
        label.text = "Add profile image"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(self.profileImage)
        self.contentView.addSubview(self.profileLabel)
        
        
        self.profileImage.layer.cornerRadius = 90.0
        

        let constraints: [NSLayoutConstraint] = [
            self.profileImage.leftAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leftAnchor, constant: 80),
            self.profileImage.rightAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.rightAnchor, constant: -80),
            self.profileImage.heightAnchor.constraint(equalToConstant: 180),
            self.profileImage.centerXAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.centerXAnchor),
            self.profileImage.centerYAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.centerYAnchor),
            self.profileLabel.topAnchor.constraint(equalTo: self.profileImage.layoutMarginsGuide.bottomAnchor, constant: 30),
            self.profileLabel.centerXAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.centerXAnchor)

        ]
        NSLayoutConstraint.activate(constraints)
        
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
}

