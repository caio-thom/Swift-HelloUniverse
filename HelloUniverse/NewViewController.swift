//
//  NewViewController.swift
//  HelloUniverse
//
//  Created by Caio Thomaz Nogueira  on 27/07/22.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail:UITextField!
    @IBOutlet weak var lbErro: UILabel!
   
    //codigo para quando apertado em algum local da tela o teclado saia
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        
        
        //dismiss(animated: true, completion: nil)
    }
    
    @IBAction func checkTextField(_ sender: UIButton) {
        
        lbErro.text = " "
        if tfName.text!.isEmpty || tfEmail.text!.isEmpty{
            lbErro.text = "algum compo esta vazio"
        }
        // withIdentificador = nome dado para a segue 
        else{
            performSegue(withIdentifier: "segue", sender: nil)
        }
            
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbErro.text = " "


        
    }

}


