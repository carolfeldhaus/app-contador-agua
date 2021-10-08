//
//  ViewController.swift
//  App Aula Pedro
//
//  Created by Caroline Feldhaus de Souza on 07/10/21.
//


import UIKit

    class ViewController: UIViewController {
            
    @IBOutlet weak var qtdeagua: UILabel!
    @IBOutlet weak var imagemgarrafa: UIImageView!
    @IBOutlet weak var labelmeta: UILabel!
    @IBOutlet weak var addbutt: UIButton!
    @IBOutlet weak var removebutt: UIButton!
    @IBOutlet weak var digitameta: UITextField!
            
    var contadorCopos: Int = 0
            
        override func viewDidLoad() {
            super.viewDidLoad()
                // Do any additional setup after loading the view.
                
                
                digitameta.addTarget(self, action: #selector(atualizaMeta), for: .editingChanged)
            }
            
    @objc func atualizaMeta(){
                
        guard let textoDoUsuario = digitameta.text else {
            return
                }
                
                labelmeta.text = "Minha meta: " + textoDoUsuario
            }
            
    @IBAction func addbutt(_ sender: UIButton) {
                contadorCopos += 1
                //print(contadorCopos)
                qtdeagua.text = String(contadorCopos) + " Copos"
            }
            
    @IBAction func removebutt(_ sender: UIButton) {
            if (contadorCopos > 0)
                {
                    contadorCopos -= 1
                   // print(contadorCopos)
                    qtdeagua.text = String(contadorCopos) + " Copos"
                }
        }

            
        }
