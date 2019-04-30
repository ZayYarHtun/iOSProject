//
//  ViewController.swift
//  TableViewDeepDown
//
//  Created by Zay Yar Htun on 4/30/19.
//  Copyright © 2019 Zay Yar Htun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // Added in developmentPhase1 repo lay pr
    @IBOutlet weak var tblSample: UITableView!
    
    private var data = ["0", "1", "2", "3", "4", "5", "6", "7", "8","0", "1", "2", "3", "4", "5", "6", "7", "8", "0", "1", "2", "3", "4", "5", "6", "7", "8","0", "1", "2", "3", "4", "5", "6", "7", "8"]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblSample.delegate = self
        self.tblSample.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "my", for: indexPath) as? MyTableViewCell
        if indexPath.row == 0 {
            cell?.lbl.text = "data[indexPath.row]";
        }

        return cell!
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count;
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
  
}
class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lbl: UILabel!
}

