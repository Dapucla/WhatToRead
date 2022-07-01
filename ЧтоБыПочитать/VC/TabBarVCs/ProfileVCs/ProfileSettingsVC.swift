//
//  ProfileSettingsVC.swift
//  ЧтоБыПочитать
//
//  Created by Даниил Алексеев on 28.06.2022.
//

import UIKit

class ProfileSettingsVC: UIViewController {

    @IBOutlet var profileImageView: UIImageView!
    @IBOutlet var fitstSectionBGView: UIView!
    @IBOutlet var secondSectionBGView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        profileImageView.layer.cornerRadius = 18
        configureButtonsUI(view: fitstSectionBGView)
        configureButtonsUI(view: secondSectionBGView)
    }
    
    func configureButtonsUI(view: UIView) {
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        view.layer.shadowOpacity = 1.0
        view.layer.shadowRadius = 5.0
        view.layer.masksToBounds = false
        view.layer.cornerRadius = 4.0
    }
    

}
