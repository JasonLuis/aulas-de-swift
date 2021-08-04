//
//  ViewController.swift
//  UiKit Swift
//
//  Created by User on 02/08/21.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var lblIdade: UILabel!
    @IBOutlet weak var lblPas: UILabel!
    @IBOutlet weak var lblPad: UILabel!
    @IBOutlet weak var lblTipo: UILabel!
    @IBOutlet weak var clasRisco: UISegmentedControl!
    
    @IBOutlet weak var meuStepper: UIStepper!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func indexChanged(_ sender: Any) {
        switch clasRisco.selectedSegmentIndex {
        
        case 0:
            print(clasRisco.titleForSegment(at: clasRisco.selectedSegmentIndex)!)
        case 1:
            print(clasRisco.titleForSegment(at: clasRisco.selectedSegmentIndex)!)
        case 2:
            print(clasRisco.titleForSegment(at: clasRisco.selectedSegmentIndex)!)
        case 3:
            print(clasRisco.titleForSegment(at: clasRisco.selectedSegmentIndex)!)
        default:
            break
        }
    }
    
    
    @IBAction func stepperValueChanged(_ sender: Any) {
        lblIdade.text = "\(Int(meuStepper.value))"
        
    }
    
    @IBAction func sliderPASValueChanged(_ sender: UISlider) {
        lblPas.text = "\(Int(sender.value))"
    }
    
    
    @IBAction func sliderPADValueChanged(_ sender: UISlider) {
        lblPad.text = "\(Int(sender.value))"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        print(sender.isOn)
    }
    
    
    @IBAction func salvar(_ sender: Any) {
        
        var tipo: String = ""
        var msg: String = ""
        
        if clasRisco.selectedSegmentIndex >= 0 {
            tipo = clasRisco.titleForSegment(at: clasRisco.selectedSegmentIndex)!
            msg = "Triagem \(tipo), paciente com idade de \(lblIdade.text!) anos, salvo com sucesso"
        }else {
            tipo = ""
            msg = "Antes de salvar escolha a classificação de risco"
        }
        
        
        let alerta = UIAlertController(
            title: "Aviso",
            message: msg,
            preferredStyle: UIAlertController.Style.actionSheet)
        
        alerta.addAction(UIAlertAction(
                            title:"Ok",
                            style: UIAlertAction.Style.default,
                            handler: nil))
        
        
        present(alerta, animated: true, completion: nil)
        
    }
    
    
    @IBAction func receberLink(_ sender: Any) {
        let alerta = UIAlertController(
            title: "Forma para receber exame",
            message: "Faça sua escolha",
            preferredStyle: UIAlertController.Style.actionSheet)
        
        alerta.addAction(UIAlertAction(
                            title: "SMS",
                            style: UIAlertAction.Style.default,
                            handler: { (action) in
                                self.lblTipo.text = action.title
                            }))
        alerta.addAction(UIAlertAction(
                            title: "E-mail",
                            style: UIAlertAction.Style.default,
                            handler: { (action) in
                                self.lblTipo.text = action.title
                            }))
        
        present(alerta, animated: true, completion: nil)
    }
}

