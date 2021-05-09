//
//  CustomButton.swift
//  TabView2
//
//  Created by Rodrigo Torres on 06/05/2021.
//

import UIKit

class CustomButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(title: String, colorBG: UIColor, colorTxt: UIColor){
        super.init(frame: .zero)
        backgroundColor = colorBG
        setTitle(title, for: .normal)
        setTitleColor(colorTxt, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        layer.cornerRadius = 8
        layer.masksToBounds = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

}
