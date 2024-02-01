//
//  ViewController.swift
//  week4_part1,2
//
//  Created by Kyle Lu on 2024/2/1.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 10
        } else {
            return 5
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "labelCell", for: indexPath)
        
        cell.textLabel?.text = "This is section \(indexPath.section), row \(indexPath.row)"
        
        return cell
    }

}

/*
 # 2. There are several methods defined in the UITableViewDataSource protocol. Which methods are called by the system after we manually call reloadData() of a table view and what are their sequences? Please describe in as much detail as possible.
 
 系統會按照順序呼叫 sections, rows 和 cell ，假設要做個檔案管理 APP，舉例如下：
 1. numberOfSections(in:) ：決定表格有幾個區塊，例如有照片、影片、文件等區塊。
 2. numberOfRowsInSection ：決定每個區塊有幾行，例如照片有 10 行，文件有 5 行。
 3. cellForRowAt：決定每一行有多少單元格，例如有縮圖和名稱。
 
 
 */
