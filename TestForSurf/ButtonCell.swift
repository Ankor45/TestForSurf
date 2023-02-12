//
//  ButtonCell.swift
//  TestForSurf
//
//  Created by Andrei Kovryzhenko on 12.02.2023.
//

import UIKit

class ButtonCell: UICollectionViewCell {
    
    static let reuseId = "ButtonCell"
   
    var button: UIButton = {
        var button = UIButton(type: .system)
        
        button.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        button.setTitle("IOS", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(makeChoice), for: .touchUpInside)
        button.layer.cornerRadius = 20
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(button)
        
        button.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        button.topAnchor.constraint(equalTo: topAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
    }
    
    @objc func makeChoice() {
        let color = button.backgroundColor
        let nonActiveColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        let actoveColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 1)
        if color == nonActiveColor {
            button.backgroundColor = actoveColor
            button.setTitleColor(.white, for: .normal)
        } else {
            button.backgroundColor = nonActiveColor
            button.setTitleColor(.black, for: .normal)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
