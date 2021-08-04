//
//  TelaXViewController.swift
//  Navegando Entre Telas - 4SIA
//
//  Created by User on 03/08/21.
//

import UIKit

class TelaXViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "telexParaTelaVermelhaSegue" {
            let t = segue.destination as! TelaVermelhaViewController
            t.textoDoLabel = "Conteúdo passado da telaX para o label da tela vermelha"
        }
        
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

    
    @IBAction func abrirVerdeScene(_ sender: Any) {
        performSegue(withIdentifier: "telaxParaTelaVerdeSegue", sender: nil)
    }
    
    
    @IBAction func abrirVermelhaScene(_ sender: Any) {
        performSegue(withIdentifier: "telexParaTelaVermelhaSegue", sender: nil)
    }
    
}
