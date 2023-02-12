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
    
    private let welcomeTextLabel: UILabel = {
        let label = UILabel()
        label.text = "Стажировка в Surf"
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 26)
        
        return label
    }()
    
    private let aboutTextLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 3
        label.text = "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты. "
        label.font = UIFont(name: "HelveticaNeue", size: 14)
        label.textColor = .systemGray
        
        return label
    }()
    
    private let motivateTextLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 2
        label.text = "Получай стипендию, выстраивай удобный график, работай на современном железе."
        label.font = UIFont(name: "HelveticaNeue", size: 14)
        label.textColor = .systemGray
        
        return label
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        
        return stackView
    }()
    
    lazy var comeOnButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 136, y: 260, width: 219, height: 60))
        button.backgroundColor = UIColor(red: 49/255, green: 49/255, blue: 49/255, alpha: 1)
        button.setTitle("Отправить заявку", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        button.layer.cornerRadius = 30
        button.layer.masksToBounds = true
        
        return button
    }()
    
    private lazy var welcomeView: UIView = {
        let welcomeView = UIView()
        welcomeView.backgroundColor = .white
        
        return welcomeView
    }()
    
    private var buttonScrollView = ButtonScrollView()
    
    private var goInternship = ComeOnView()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height + 240)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        addView()
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
    
    @objc func showAlert() {
        let alert = UIAlertController(title: "Поздравляем!", message: "Ваша заявка успешно отправлена!", preferredStyle: .alert)
        let action = UIAlertAction(title: "Закрыть", style: .default)
        
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    private func addView() {
        let view = welcomeView
        view.layer.cornerRadius = 20
        
        view.addSubview(welcomeTextLabel)
        view.addSubview(aboutTextLabel)
        view.addSubview(buttonScrollView)
        view.addSubview(motivateTextLabel)
        view.addSubview(goInternship)
        view.addSubview(comeOnButton)
        
        welcomeTextLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutTextLabel.translatesAutoresizingMaskIntoConstraints = false
        buttonScrollView.translatesAutoresizingMaskIntoConstraints = false
        motivateTextLabel.translatesAutoresizingMaskIntoConstraints = false
        goInternship.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            welcomeTextLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            welcomeTextLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            welcomeTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            aboutTextLabel.topAnchor.constraint(equalTo: welcomeTextLabel.bottomAnchor, constant: 12),
            aboutTextLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            aboutTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        ])
        
        buttonScrollView.topAnchor.constraint(equalTo: aboutTextLabel.bottomAnchor, constant: 30).isActive = true
        buttonScrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        buttonScrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        buttonScrollView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        buttonScrollView.set(cells: CourseButtons.choiceCourse())
        
        NSLayoutConstraint.activate([
            motivateTextLabel.topAnchor.constraint(equalTo: buttonScrollView.bottomAnchor, constant: 20),
            motivateTextLabel.rightAnchor.constraint(equalTo: view.rightAnchor),
            motivateTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            goInternship.topAnchor.constraint(equalTo: motivateTextLabel.bottomAnchor, constant: 20),
            goInternship.rightAnchor.constraint(equalTo: view.rightAnchor),
            goInternship.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20)
        ])
        
        stackView.addArrangedSubview(view)
    }
}

