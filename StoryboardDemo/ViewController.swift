//
//  ViewController.swift
//  StoryboardDemo
//
//  Created by Chad Garrett on 2022/06/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colorStackView: UIStackView!
    @IBOutlet weak var btnAddSquare: UIButton!
    @IBOutlet var customStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    
    @IBAction func onAddSquare(_ sender: Any) {
        print("Adding square")
        defer { print("Square added") }
        
//        let newSquare = ColorSquareView()
//        newSquare.backgroundColor = UIColor.orange
//        colorStackView.addArrangedSubview(newSquare)
        
        
        let newSquare: ColorSquareView = UIView.fromNib()
//        addWidthConstraint(for: newSquare)
//        newSquare.widthAnchor.constraint(equalToConstant: 120).isActive = true
        newSquare.lblTop.text = "Top"
        newSquare.lblBottom.text = "Bottom"
        customStackView.addArrangedSubview(newSquare)
        UIView.animate(withDuration: 0.3) { [weak self] in
            self?.view.layoutIfNeeded()
        }
    }
    
    func addWidthConstraint(for view: UIView) {
        let constraint = view.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/3)
        
        view.addConstraint(constraint)
    }
}
