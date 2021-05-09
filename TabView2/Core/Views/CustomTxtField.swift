//
//  CustomTxtField.swift
//  TabView2
//
//  Created by Rodrigo Torres on 07/05/2021.
//

import UIKit

class CustomTxtField: UITextField {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(placeholder: String, colorTxt: UIColor ) {
        super.init(frame: .zero)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: colorTxt])
        translatesAutoresizingMaskIntoConstraints = false
        borderStyle = .line
        textAlignment = .center
        layer.cornerRadius = 3
        layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
