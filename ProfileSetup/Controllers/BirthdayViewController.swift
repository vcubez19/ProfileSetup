//
//  BirthdayViewController.swift
//  ProfileSetup
//
//  Created by Vincent Cubit on 11/21/21.
//


import UIKit


class BirthdayViewController: UIViewController {

    
    private let date: UIDatePicker = {
        let date = UIDatePicker()
        date.translatesAutoresizingMaskIntoConstraints = false
        date.datePickerMode = .date
        date.preferredDatePickerStyle = .wheels
        date.translatesAutoresizingMaskIntoConstraints = false
        return date
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        self.view.addSubview(self.date)
        
        
        let constraints: [NSLayoutConstraint] = [
            self.date.centerYAnchor.constraint(equalTo: self.view.layoutMarginsGuide.centerYAnchor),
            self.date.centerXAnchor.constraint(equalTo: self.view.layoutMarginsGuide.centerXAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
        

    }
    
    


}

