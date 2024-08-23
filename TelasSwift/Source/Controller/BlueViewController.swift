//
//  BlueViewController.swift
//  TelasSwift
//
//  Created by IFBITIC7 on 23/08/24.
//

import Foundation
import UIKit

class BlueViewController: UIViewController {
    
    private let goToGreenButon: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ir para a tela verde", for: .normal)
        button.backgroundColor = .white
        button.setTitleColor(.blue, for: .normal)
        button.layer.cornerRadius = 8
        button.layer.masksToBounds = true
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupLayout()
        
        goToGreenButon.addTarget(self, action: #selector(goToGreenScreen), for: .touchUpInside)
    }
    
    private func setupLayout() {
        view.addSubview(goToGreenButon)
        goToGreenButon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            goToGreenButon.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            goToGreenButon.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    @objc 
    private func goToGreenScreen() {
        Coordinator.shared.navigateToGreenScreen(from: self)
    }
    
}
