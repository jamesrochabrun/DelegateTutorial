//
//  ClassBVC.swift
//  DelegateTutorial
//
//  Created by James Rochabrun on 2/7/17.
//  Copyright © 2017 James Rochabrun. All rights reserved.
//

import UIKit

//1) Add Protoclo here

class ClassBVC: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var secondView: UIView!
    //2) Create a delegate property, don't forget to make it weak!


    override func viewDidLoad() {
        super.viewDidLoad()
        firstView.backgroundColor = .cyan
        firstView.layer.borderColor = UIColor.white.cgColor
        firstView.layer.borderWidth = 2.0
        firstView.layer.cornerRadius = firstView.frame.width / 2
        firstView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))
        secondView.backgroundColor = .brown
        secondView.layer.borderColor = UIColor.white.cgColor
        secondView.layer.borderWidth = 2.0
        secondView.layer.cornerRadius = secondView.frame.width / 2
        secondView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap(_:))))

    }
    @IBAction func dismissView(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    func handleTap(_ tapGesture: UITapGestureRecognizer) {
        
        view.backgroundColor = tapGesture.view?.backgroundColor
        //3 Add the delegate method call
    }
}
