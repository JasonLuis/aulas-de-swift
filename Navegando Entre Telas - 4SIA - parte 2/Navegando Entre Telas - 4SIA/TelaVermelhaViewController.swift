//
//  TelaVermelhaViewController.swift
//  Navegando Entre Telas - 4SIA
//
//  Created by User on 03/08/21.
//

import UIKit

class TelaVermelhaViewController: UIViewController {

    @IBOutlet weak var meuLabel: UILabel!
    
    var textoDoLabel: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        meuLabel.text = textoDoLabel
        // Do any additional setup after loading the view.
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
