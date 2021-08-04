//
//  ViewController.swift
//  Meus Dados Swift
//
//  Created by Usuário Convidado on 14/04/21.
//  Copyright © 2021 Usuário Convidado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblCidade: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblNome.text = "Seu nome é..."
        lblIdade.text = "Sua idade é..."
        lblCidade.text = "Sua cidade é..."
        // Do any additional setup after loading the view.
    }

    @IBAction func exibir(_ sender: Any) {
        lblNome.text = "Nome Djeison Luis"
        lblIdade.text = "Idade 23"
        lblCidade.text = "Cidade VGP"
    }
    
    @IBAction func limpar(_ sender: Any) {
        //lblNome.text = "Seu nome é..."
        //lblIdade.text = "Sua idade é..."
        //lblCidade.text = "Sua cidade é..."
        viewDidLoad()
    }
}

