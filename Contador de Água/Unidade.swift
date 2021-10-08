//
//  ContadorDia1.swift
//  Contador de Água
//
//  Created by Caroline Feldhaus de Souza on 08/10/21.
//

import Foundation

enum Unidade {
    case copo
    case ml
    case litro
    
    func formaMensagem(copos: Int) -> String {
        switch self {
        case .litro:
            let litros = Float(copos)*0.2
            return "Litros hoje: " + String(format: "%.1f", litros) + "L"
        case .ml:
            return "ml hoje: " + String(copos*200) + "ml"
        case .copo:
            return "Copos hoje: " + String(copos)
            
            
          
        
    }
    }
    

}
