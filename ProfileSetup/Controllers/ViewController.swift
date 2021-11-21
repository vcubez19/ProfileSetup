//
//  ViewController.swift
//  ProfileSetup
//
//  Created by Vincent Cubit on 11/21/21.
//


import UIKit


class ViewController: UIViewController, UITextFieldDelegate {
    
    
    private let table: UITableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(ProfilePicTableViewCell.self, forCellReuseIdentifier: ProfilePicTableViewCell.id)
        table.register(TextFieldTableViewCell.self, forCellReuseIdentifier: TextFieldTableViewCell.id)
        table.register(DatePickerTableViewCell.self, forCellReuseIdentifier: DatePickerTableViewCell.id)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        return table
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.addSubview(self.table)
        self.table.delegate = self
        self.table.dataSource = self
        self.table.contentInset = UIEdgeInsets(top: 30, left: 0, bottom: 0, right: 0)

        
    }
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.table.frame = self.view.bounds
    }
    


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        default:
            return 2
        }
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 340
        default:
            return 70
        }
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            guard let cell = tableView.dequeueReusableCell(withIdentifier: ProfilePicTableViewCell.id, for: indexPath) as? ProfilePicTableViewCell else { return UITableViewCell() }
            return cell
        default:
            if indexPath.row == 0 {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.id, for: indexPath) as? TextFieldTableViewCell else { return UITableViewCell() }
                return cell
            } else {
                guard let cell = tableView.dequeueReusableCell(withIdentifier: DatePickerTableViewCell.id, for: indexPath) as? DatePickerTableViewCell else { return UITableViewCell() }
                return cell
            }
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            if indexPath.row ==
                1 {
                let vc = BirthdayViewController()
                self.present(vc, animated: true, completion: nil)
            }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

