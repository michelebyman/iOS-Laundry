//
//  lastNamesCode.swift
//  laundry
//
//  Created by Michele Byman on 2020-09-14.
//

import UIKit

class lastNamesCode: UIViewController, UITableViewDataSource, UITableViewDelegate {
   

    @IBOutlet weak var lastNameInput: UITextField!
    
    @IBOutlet weak var lastNamesTableView: UITableView!
    
    var lastName = [String] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lastNamesTableView.dataSource = self
        lastNamesTableView.delegate = self
        
        lastName.append("kalle")
        
        
    }
    
    @IBAction func addLastName(_ sender: Any) {
        
        lastName.append(lastNameInput.text!)
        lastNamesTableView.reloadData()
        lastNameInput.text = ""
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        lastName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
         let lastNameCell =  tableView.dequeueReusableCell(withIdentifier: "lastNameCell") as! lastNameCode
        
        lastNameCell.lastNameLabel.text = lastName[indexPath.row]
        
      
        
        return lastNameCell

       
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
