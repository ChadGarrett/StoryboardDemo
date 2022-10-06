//
//  SecondViewController.swift
//  StoryboardDemo
//
//  Created by Chad Garrett on 2022/06/30.
//

import UIKit

final class SecondViewController: UIViewController {
    @IBOutlet var squares: [ColorSquareView]!
    
    override func viewDidAppear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let squareOne = self.squares[0]
            self.loadViewIfNeeded()
            squareOne.setTopLabel(to: "Hello")
        }
    }
}
