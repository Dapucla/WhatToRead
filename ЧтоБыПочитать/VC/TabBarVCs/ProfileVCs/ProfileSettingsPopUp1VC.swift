//
//  ProfileSettingsPopUpVC.swift
//  ЧтоБыПочитать
//
//  Created by Даниил Алексеев on 28.06.2022.
//

import UIKit

class ProfileSettingsPopUp1VC: UIViewController {

    @IBOutlet var profileImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        profileImageView.layer.cornerRadius = 25
    }
    
    @IBAction func SaveSettings(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
