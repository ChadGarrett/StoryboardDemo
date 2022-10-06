//
//  ThirdViewController.swift
//  StoryboardDemo
//
//  Created by Chad Garrett on 2022/07/04.
//

import UIKit

final class ThirdViewController: UIViewController {
    
    @IBOutlet var heightConstraint: NSLayoutConstraint!
    
    var isExpanded: Bool = false
    
    @IBAction func onToggle(_ sender: Any) {
        isExpanded.toggle()
        toggleAnimation()
    }
    
    func toggleAnimation() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            
            self.heightConstraint.constant = self.isExpanded ? 128 : 20
            print("Animating change")
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
    }
}
