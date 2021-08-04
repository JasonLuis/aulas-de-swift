//
//  TelaInicialViewController.swift
//  Navegando Entre Telas - 4SIA
//
//  Created by User on 03/08/21.
//

import UIKit

class TelaInicialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func resetarNavegacao(sender: UIStoryboardSegue){
        //Esse método não precisa de código
        //Esse método recebe um argumento do tipo UIStoryboardSegue
        //após isso devemos fazer um link entre o botão de origem
        // e a ação Unwind(documentação Apple), ou Exit(Comando no Xcode)
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
