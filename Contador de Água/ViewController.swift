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
        
        var metaCopos: Int {
            let textoDoUsuario: String = digitameta.text ?? "20"
            let metaEmInteiro = Int(textoDoUsuario) ?? 20
            return metaEmInteiro
        }
        var metaEstaCumprida: Bool = false {
            didSet {
                if metaEstaCumprida {
                    view.backgroundColor = UIColor.green
                } else {
                    view.backgroundColor = Cores.azulClaro.uiColor
                }
            }
        }
        
        let unidadeExposta: Unidade = .litro
            
        override func viewDidLoad() {
            super.viewDidLoad()
                // Do any additional setup after loading the view.
                
                
                digitameta.addTarget(self, action: #selector(atualizaMeta), for: .editingChanged)
            }
            
        func atualizaLabel() {
            let mensagem: String = unidadeExposta.formaMensagem(copos: contadorCopos)
            
            labelmeta.text = mensagem
            
        }
        
        
    @objc func atualizaMeta(){
                
        guard let textoDoUsuario = digitameta.text else {
            return
                }
                
                labelmeta.text = "Minha meta: " + textoDoUsuario
            }
            
    @IBAction func addbutt(_ sender: UIButton) {
           contadorCopos += 1
              
        metaEstaCumprida = (contadorCopos >= metaCopos)
        
                atualizaLabel()
            }
            
    @IBAction func removebutt(_ sender: UIButton) {
           contadorCopos -= 1
        
        metaEstaCumprida = (contadorCopos >= metaCopos)
        }

            
        }
