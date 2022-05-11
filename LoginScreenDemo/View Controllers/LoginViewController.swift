//
//  LoginViewController.swift
//  LoginScreenDemo
//
//  Created by NECVN on 10/05/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var personIcon: UIImageView!
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var lockIcon: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpElements()
    }
    
    func setUpElements(){
        Utilities.styleTextField(usernameTextField)
        Utilities.styleTextField(passwordTextField)
    }
    
    class Utilities {
        
        static func styleTextField(_ textField:UITextField){
            let bottomBorder = CALayer()
            
            bottomBorder.frame = CGRect(x:0, y: textField.frame.height - 2.0, width:textField.frame.width, height:2.0)
            bottomBorder.backgroundColor = UIColor.init(red: 43/255, green: 43/255, blue: 48/255, alpha: 1).cgColor
            
            //remove boder on text field
            textField.borderStyle = .none
            
            //add bottom line
            textField.layer.addSublayer(bottomBorder)

            //change placeholder color
            textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder!, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
            
        }
        
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
