//
//  ProfileVC.swift
//  ЧтоБыПочитать
//
//  Created by Даниил Алексеев on 28.06.2022.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var selectedButtonOutlet: UIButton!
    @IBOutlet var readButtonOutlet: UIButton!
    @IBOutlet var settingsButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    
    func configureUI() {
        avatarImageView.layer.cornerRadius = 25
        selectedButtonOutlet.layer.cornerRadius = 5
        configureButtonsUI(button: selectedButtonOutlet)
        configureButtonsUI(button: readButtonOutlet)
        configureButtonsUI(button: settingsButtonOutlet)
    }
    
    func configureButtonsUI(button: UIButton) {
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        button.layer.shadowOpacity = 1.0
        button.layer.shadowRadius = 5.0
        button.layer.masksToBounds = false
        button.layer.cornerRadius = 4.0
    }
    
    
}
