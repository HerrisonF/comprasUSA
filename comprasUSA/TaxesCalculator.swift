//
//  TaxesCalculator.swift
//  comprasUSA
//
//  Created by Herrison Feres on 18/05/22.
//

import Foundation

class TaxesCalculator {
    static let shared = TaxesCalculator()
    
    var dolar: Double = 5
    var iof: Double = 6.38
    var stateTax: Double = 7.0
    var shoppingValue: Double = 0
    let formatter = NumberFormatter()
    
    
    var shoppingValueInReal: Double {
        return shoppingValue * dolar
    }
    
    var stateTaxValue: Double {
        return shoppingValue * stateTax / 100
    }
    
    var iofValue: Double {
        return (shoppingValue + stateTax) * iof / 100
    }
    
    func calculate(usingCreditCard: Bool) -> Double{
        var finalValue = shoppingValue + stateTax
        if usingCreditCard {
            finalValue += iofValue
        }
        return finalValue * dolar
    }
    
    func convertToDouble(_ string: String) -> Double{
        ///Isso faz com que o estilo de número fique natural
        formatter.numberStyle = .none
        return formatter.number(from: string)!.doubleValue
    }
    
    func getFormattedValue(of value: Double, withCurrency currency: String) -> String{
        /// Esses atributos formatam o estilo de moeda para a formatacao
        formatter.numberStyle = .currency
        formatter.currencySymbol = currency
        formatter.alwaysShowsDecimalSeparator = true
        return formatter.string(for: value)!
    }
    
    private init(){
        /// Isso faz com que o grupo use o separador virgula e ponto Ex. 1000.00 1000,00
        formatter.usesGroupingSeparator = true
    }
}
