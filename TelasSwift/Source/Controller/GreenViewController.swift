//
//  GreenViewController.swift
//  TelasSwift
//
//  Created by IFBITIC7 on 23/08/24.
//

import Foundation
import UIKit

class GreenViewController: UIViewController {
    
    private let goToRedButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ir para a tela vermelha", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.green, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    private let goToBlueButton: UIButton = {
        let button = UIButton(type:.system)
        button.setTitle("Voltar para a tela azul", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.green, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        setupLayout()
        
        goToRedButton.addTarget(self, action: #selector(goToRedScreen), for: .touchUpInside)
        goToBlueButton.addTarget(self, action: #selector(goToBlueScreen), for: .touchUpInside)
    }
    
    private func setupLayout() {
        view.addSubview(goToRedButton)
        view.addSubview(goToBlueButton)
        
        goToRedButton.translatesAutoresizingMaskIntoConstraints = false
        goToBlueButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            goToRedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToRedButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
                        
            goToBlueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToBlueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        ])
    }
    
    @objc
    private func goToRedScreen() {
        Coordinator.shared.navigateToRedScreen(from: self)
    }
    
    @objc
    private func goToBlueScreen() {
        Coordinator.shared.navigateToBlueScreen(from: self)
    }
    
}
