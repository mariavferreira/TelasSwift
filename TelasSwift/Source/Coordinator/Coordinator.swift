//
//  Coordinator.swift
//  TelasSwift
//
//  Created by IFBITIC7 on 23/08/24.
//

import Foundation
import UIKit

class Coordinator {
    static let shared = Coordinator()
    
    private init() {}
    
    func navigateToGreenScreen(from viewController: UIViewController) {
        let greenVC = GreenViewController()
        viewController.navigationController?.pushViewController(greenVC, animated: true)
    }
    
    func navigateToRedScreen(from viewController: UIViewController) {
        let redVC = RedViewController()
        viewController.navigationController?.pushViewController(redVC, animated: true)
    }
    
    func navigateToBlueScreen(from viewController: UIViewController) {
        viewController.navigationController?.popViewController(animated: true)
    }
}
