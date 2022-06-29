import UIKit

class HomeVC: UIViewController {
    
    // MARK: - Переменные
    let searchController = UISearchController(searchResultsController: nil)
    var myCollectionView:UICollectionView?
    let modelData = ["ВАМ ПОНРАВИТСЯ", "МНОГИМ НРАВИТСЯ", "ЭТО КЛАССИКА", "ПОПУЛЯРНАЯ ФАНТАСТИКА", "САМЫЙ ЛУЧШИЙ НАУЧПОП", "ЛУЧШЕЕ ИЗ ДЕТЕКТИВОВ", "ПРИКЛЮЧЕНИЯ ВЕКА", "ТОП РОМАНОВ ВСЕХ ВРЕМЕН"]
    
    // MARK: - viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureCollectionView()
        configureSearchBar()
    }
    
    // MARK: - Конфигурируем строку поиска
    func configureSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.placeholder = "Что почитать?"
        navigationItem.searchController = searchController
    }
    
    // MARK: - Коллекцию
    func configureCollectionView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        layout.itemSize = CGSize(width: 150, height: 150)
        
        myCollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView?.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        myCollectionView?.showsVerticalScrollIndicator = false
        myCollectionView?.backgroundColor = UIColor.white
        view.addSubview(myCollectionView ?? UICollectionView())
        
        self.view = view
        
        myCollectionView?.dataSource = self
        myCollectionView?.delegate = self
    }
}

// MARK: - UICollectionViewDataSource
extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath)
        myCell.backgroundColor = UIColor(named: "CategoryColor")
        myCell.layer.cornerRadius = 5
        
        myCell.layer.shadowColor = UIColor.black.cgColor
        myCell.layer.shadowOffset = CGSize(width: 0, height: 0)
        myCell.layer.shadowRadius = 5.0
        myCell.layer.shadowOpacity = 0.5
        myCell.layer.masksToBounds = false
        
//        let title = UILabel(frame: CGRect(x: 0, y: 0, width: myCell.bounds.size.width, height: 40))
        let title = UILabel(frame: CGRect(x: 5, y: 0, width: myCell.bounds.size.width, height: 50))
        title.lineBreakMode = .byWordWrapping
        title.numberOfLines = 2
        title.textColor = UIColor.black
        title.text = modelData[indexPath.row]
        title.textAlignment = .left
        title.textColor = .systemYellow
        myCell.contentView.addSubview(title)
        
        
        return myCell
    }
}

// MARK: - UICollectionViewDelegate
extension HomeVC: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("User tapped on item \(indexPath.row)")
        
        performSegue(withIdentifier: "showBook", sender: self)
        
    }
}
