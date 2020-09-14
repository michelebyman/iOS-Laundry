//
//  taskSBCode.swift
//  laundry
//
//  Created by Michele Byman on 2020-09-14.
//

import UIKit

class taskSBCode: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var userTV: UITableView!
    
    var userName = [String] ()
    
    

    @IBOutlet weak var userNameInput: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        userName.append("Kalle")
        userName.append("michele")
        userName.append("nisse")
        userName.append("erik")
        userName.append("pelle")
        userName.append("sara")
        
        
        userTV.dataSource = self
        userTV.delegate = self
    }
    
    
    
    @IBAction func addUserName(_ sender: Any) {
        if (userNameInput.text == "") {
            return
        }
        
        userName.append(userNameInput.text!)
        userTV.reloadData()
        userNameInput.text = ""
        
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userName.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let userCell =  tableView.dequeueReusableCell(withIdentifier: "userCell") as! userTBCellCode
        
        userCell.userLabel.text = userName[indexPath.row]
        
        return userCell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
