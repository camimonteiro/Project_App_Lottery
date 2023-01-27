//
//  MainViewController.swift
//  Lottery_APP
//
//  Created by Cami on 25/01/23.
//

import UIKit

class MainViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "top")
        image.contentMode = .scaleToFill
        return image
    }()
    
    private lazy var labelView: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.text = "Mega-Sena"
        text.font = UIFont.systemFont(ofSize: 40, weight: .light)
        text.textColor = .white
        return text
    }()
    
    private lazy var segmentedControll: UISegmentedControl = {
        let categoria = UISegmentedControl(items: ["Mega-Sena", "Quina"])
        categoria.translatesAutoresizingMaskIntoConstraints = false
        categoria.frame = CGRect(x: 10, y: 150, width: 300, height: 30)
        categoria.selectedSegmentIndex = 1
        categoria.tintColor = .white
        categoria.backgroundColor = .primaryBlue
        categoria.setEnabled(true, forSegmentAt: 1)
        return categoria
    }()
    
    private lazy var startButton: UIButton = {
        let startButton = UIButton()
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.backgroundColor = .primaryBlue
        startButton.setTitleColor(.white, for: .normal)
        startButton.setTitle("Gerar Jogo", for: .normal)
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .light)
        startButton.layer.cornerRadius = 12
        return startButton
    }()
    
//    private lazy var ballsStackView: UIStackView = {
//       let balls = UIStackView(arrangedSubviews: [])
//        return balls
//    }()
    
//    private lazy var ballButton: [UIButton] = {
//        let ball = UIButton()
//        ball.translatesAutoresizingMaskIntoConstraints = false
//        ball.titleLabel?.font = UIFont.systemFont(ofSize: 44, weight: .bold)
//        ball.setTitleColor(.black, for: .normal)
//        ball.setTitle("60", for: .normal)
//        ball.setBackgroundImage(UIImage(named: "ball"), for: .normal)
//        return ball
//    }()
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        view.addSubview(labelView)
        view.addSubview(segmentedControll)
        view.addSubview(startButton)
        setupConstrains()
    }

}

extension MainViewController {
    
    private func setupConstrains() {
        NSLayoutConstraint.activate([
        
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            
            labelView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            labelView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            labelView.centerYAnchor.constraint(equalTo: imageView.centerYAnchor),
            
            segmentedControll.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 16),
            segmentedControll.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            segmentedControll.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            startButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            startButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            startButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            startButton.heightAnchor.constraint(equalToConstant: 50)
            
//            ballButton.heightAnchor.constraint(equalToConstant: 90),
//            ballButton.widthAnchor.constraint(equalToConstant: 90),
            
            
        ])
        
    }
}

