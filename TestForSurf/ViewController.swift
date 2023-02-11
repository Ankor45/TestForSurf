//
//  ViewController.swift
//  TestForSurf
//
//  Created by Andrei Kovryzhenko on 11.02.2023.
//

import UIKit

class ViewController: UIViewController {

    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        
        scrollView.frame = view.bounds
        scrollView.contentSize = contentSize
        
        return scrollView
    }()
    
    private lazy var contentView: UIView = {
        let contentView = UIView()

        contentView.frame.size = contentSize
        
        return contentView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        
        return stackView
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 400)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        setupColors()
        setupViewsConstraint()
        
        
    }


}

extension ViewController {
    private func setupViewsConstraint() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: contentView.centerYAnchor),
            stackView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            stackView.leftAnchor.constraint(equalTo: contentView.leftAnchor)
        ])
        
        for view in stackView.arrangedSubviews {
            NSLayoutConstraint.activate([
                view.widthAnchor.constraint(equalTo: contentView.widthAnchor),
                view.heightAnchor.constraint(equalTo: contentView.heightAnchor)
            ])
        }
    }
    
    private func setupColors() {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
    
        stackView.addArrangedSubview(view)
        
                
    }
}
