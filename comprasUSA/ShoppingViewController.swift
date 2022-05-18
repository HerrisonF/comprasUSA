//
//  ViewController.swift
//  comprasUSA
//
//  Created by Herrison Feres on 17/05/22.
//

import UIKit

class ShoppingViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    @IBOutlet weak var lbRealDescription: UILabel!
    @IBOutlet weak var tfReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setAmmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmmount()
    }
    
    func setAmmount(){
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        tfReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "R$ ")
        let dolar = tc.getFormattedValue(of: tc.dolar * tc.dolar, withCurrency: "")
        lbRealDescription.text = "Valor sem impostos (dólar \(tc.dolar))"
    }


}

