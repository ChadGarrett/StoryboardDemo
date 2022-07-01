//
//  ViewController.swift
//  StoryboardDemo
//
//  Created by Chad Garrett on 2022/06/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        greenView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(onGreenView)))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        print("Huh")
        super.prepare(for: segue, sender: sender)
    }
    
    @IBAction func onAddSquare(_ sender: Any) {
        print("Adding square")
        defer { print("Square added") }
        
        let newSquare = ColorSquareView()
        newSquare.backgroundColor = UIColor.orange
//        stackView.addArrangedSubview(newSquare)
        
        
//        let newSquare: ColorSquareView = UIView.fromNib()
//        newSquare.lblTop.text = "Top"
//        newSquare.lblBottom.text = "Bottom"
//        customStackView.addArrangedSubview(newSquare)
//        UIView.animate(withDuration: 0.3) { [weak self] in
//            self?.view.layoutIfNeeded()
//        }
    }
    
    @objc func onGreenView() {
        print("yay")
    }
}
