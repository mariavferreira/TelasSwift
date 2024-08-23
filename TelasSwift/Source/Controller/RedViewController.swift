//
//  RedViewController.swift
//  TelasSwift
//
//  Created by IFBITIC7 on 23/08/24.
//

import Foundation
import UIKit

class RedViewController: UIViewController {
    
    private let goToBlueButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ir para a tela azul", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.red, for: .normal)
        button.layer.cornerRadius = 8 
        button.layer.masksToBounds = true
        return button
    }()
    
    private let goToGreenButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ir para a tela verde", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.red, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupLayout()
        
        goToBlueButton.addTarget(self, action: #selector(goToBlueScreen), for: .touchUpInside)
        goToGreenButton.addTarget(self, action: #selector(goToGreenScreen), for: . touchUpInside)
    }
    
    private func setupLayout() {
        view.addSubview(goToBlueButton)
        view.addSubview(goToGreenButton)
        
        goToBlueButton.translatesAutoresizingMaskIntoConstraints = false
        goToGreenButton.translatesAutoresizingMaskIntoConstraints = false
                
        NSLayoutConstraint.activate([
            goToBlueButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToBlueButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
                    
            goToGreenButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToGreenButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20)
        ])

    }
    
    @objc
    private func goToBlueScreen() {
        let blueViewController = BlueViewController()
        navigationController?.setViewControllers([blueViewController], animated: true)
    }
    
    @objc
    private func goToGreenScreen() {
        navigationController?.popViewController(animated: true)
    }
    
}
    
    
