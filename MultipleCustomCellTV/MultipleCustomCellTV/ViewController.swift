//
//  ViewController.swift
//  MultipleCustomCellTV
//
//  Created by Srans022019 on 26/05/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    private let tableView : UITableView = {
        let tabel = UITableView()
        
        tabel.register(SampleTableCell.self, forCellReuseIdentifier: SampleTableCell.identifier)
        
        tabel.register(CustomCell.nib(), forCellReuseIdentifier: CustomCell.identifier)
        
        tabel.register(ImageTVCell.self, forCellReuseIdentifier: ImageTVCell.identifier)
        tabel.rowHeight = UITableView.automaticDimension
        tabel.estimatedRowHeight = 600
        return tabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
      
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        tableView.frame = view.bounds
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row < 5 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: ImageTVCell.identifier, for: indexPath) as! ImageTVCell
            cell.config(myImages: "image2")
            cell.heightAnchor.constraint(equalToConstant: 100).isActive = true
            return cell
            
        }
        
        if indexPath.row < 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.identifier, for: indexPath) as! CustomCell
            cell.configure(myImage: "image1", myLabels: "Let the hell go out of you")
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: SampleTableCell.identifier, for: indexPath)
        cell.textLabel?.text = "I am here with you"
        return cell
        
    }
    

}

