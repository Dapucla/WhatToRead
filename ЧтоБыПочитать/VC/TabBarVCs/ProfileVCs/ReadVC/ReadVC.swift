//
//  ReadVC.swift
//  ЧтоБыПочитать
//
//  Created by Даниил Алексеев on 28.06.2022.
//

import UIKit

class ReadVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let reuseIdentifier = "cell2"
    
    let name = ["Билли", "Билли", "Билли", "Билли", "Билли", "Билли", "Билли", "Билли", "Билли", "Билли"]
    let surname = ["Саммерс", "Саммерс", "Саммерс", "Саммерс", "Саммерс", "Саммерс", "Саммерс", "Саммерс", "Саммерс", "Саммерс"]
    let image = ["book_cover", "book_cover", "book_cover", "book_cover", "book_cover", "book_cover", "book_cover", "book_cover", "book_cover", "book_cover",]
    let fullname = ["Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг", "Стивен Кинг"]
    let rating = ["4.04", "4.04", "4.04", "4.04", "4.04", "4.04", "4.04", "4.04", "4.04", "4.04"]
    let reviews = ["183", "183", "183", "183", "183","183", "183", "183", "183", "183"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
         return self.name.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! ReadCollectionViewCell
         
         cell.nameLabel.text = self.name[indexPath.row]
         cell.surnameLabel.text = self.surname[indexPath.row]
         cell.bookImageView.image = UIImage(named: "\(self.image[indexPath.row])")
         cell.fullNameLabel.text = self.fullname[indexPath.row]
         cell.ratingLabel.text = self.rating[indexPath.row]
         cell.reviewsLabel.text = self.reviews[indexPath.row]
         cell.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5).cgColor
         cell.layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
         cell.layer.shadowOpacity = 1.0
         cell.layer.shadowRadius = 5.0
         cell.layer.masksToBounds = false
         cell.layer.cornerRadius = 10.0
        
         return cell
     }
}
