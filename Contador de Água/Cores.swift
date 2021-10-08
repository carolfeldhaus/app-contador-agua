//
//  Cores.swift
//  Contador de Água
//
//  Created by Caroline Feldhaus de Souza on 08/10/21.
//

import Foundation

enum Cores {
    
    case azulClaro
    
    var uiColor: UIColor {
        switch self {
        case .azulClaro:
            return UIColor(red: 218.0/255, green: 243.0/255, blue: 255.0/255, alpha: 1.0)
        }
    }
}
