//
//  secondCode.swift
//  laundry
//
//  Created by Michele Byman on 2020-09-10.
//

import UIKit

class secondCode: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textFieldMyBookings: UITextField!
    @IBOutlet weak var textFieldError: UITextField!
    
    lazy var textFields = [textField!, textFieldMyBookings!, textFieldError!]
    

   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.textField.becomeFirstResponder()
        
        for item in textFields {
            let bottomLine = CALayer()
                    bottomLine.frame = CGRect(x: 0, y:item.frame.height - 1, width: item.frame.width, height: 1)
                    bottomLine.backgroundColor = UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 1).cgColor
            item.borderStyle = .none
            item.layer.addSublayer(bottomLine)
        }

       
        
    }
    
    
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        textField.becomeFirstResponder()
//        
//    }
    
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
