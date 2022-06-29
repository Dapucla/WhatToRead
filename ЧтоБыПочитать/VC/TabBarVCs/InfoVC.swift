//
//  InfoVC.swift
//  ЧтоБыПочитать
//
//  Created by Sungur on 28.06.2022.
//

import UIKit

class InfoVC: UIViewController {

    let tableView: UITableView = {
        let tb = UITableView()
        tb.translatesAutoresizingMaskIntoConstraints = false
        return tb
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func setupTableView() {
        view.addSubview(tableView)
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 340).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:  -50).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        
        
        tableView.register(MCDropCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    let data = [
        MCDropData(title: "Аннотация" , url: """
                   Новый роман Стивена Кинга!
                   Захватывающая история о хорошем парне, который выполняет плохую работу.
                   Стивен Кинг — один из самых популярных авторов современности. Он написал свыше шести десятков бестселлеров, которые переведены на 44 языка, изданы в 80 странах мира и разошлись тиражом свыше 400 000 000 экземпляров.
                   «Лучшая книга Стивена Кинга за долгие годы» по версии газеты The Guardian.
                   """),
                   
        MCDropData(title: "Морфологический разбор", url: """
                    Существительное: 10
                    Прилагательное: 15
                    Глагол: 20
                    Наречие: 10
                    Местоимение: 10
                    Предлог: 15
                    Союз: 20
                    Частица: 25
                    """),
        MCDropData(title: "Отзывы", url: ""),
    ]
    
    var selectedIndex: IndexPath = IndexPath(row: 0, section: 0)
}

struct MCDropData {
    var title: String
    var url: String
}


extension InfoVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if selectedIndex == indexPath {
            return 250
        }
        return 60
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MCDropCell
        cell.data = data[indexPath.row]
        cell.selectionStyle = .none
        cell.animate()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedIndex = indexPath
        
        tableView.beginUpdates()
        tableView.reloadRows(at: [selectedIndex], with: .none)
        tableView.endUpdates()
    }
    
    
    
}
