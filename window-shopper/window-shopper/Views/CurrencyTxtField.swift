//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by tarek bahie on 12/1/18.
//  Copyright © 2018 tarek bahie. All rights reserved.
//

import UIKit



@IBDesignable class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.6550996304, green: 0.6512079239, blue: 0.658092916, alpha: 0.8030286815)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2371679544, green: 0.2357644737, blue: 0.2382509708, alpha: 1)
        currencyLbl.layer.cornerRadius = 5
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    func customizeView () {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2536922089)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        if let p = placeholder  {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor : UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
    }
//        func calculateHoursNeeded(x : Int, y : Int){
//            let hoursNeeded = x/y
//            print(hoursNeeded)
//        }
}
}

