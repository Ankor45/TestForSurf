//
//  ComeOnView.swift
//  TestForSurf
//
//  Created by Andrei Kovryzhenko on 12.02.2023.
//

import UIKit

class ComeOnView: UIView {
    
    private let lastLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 20, width: 100, height: 20))
        label.text = "Хочешь к нам?"
        label.font = UIFont(name: "HelveticaNeue", size: 14)
        label.textColor = .systemGray
        
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(lastLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
