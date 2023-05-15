//
//  ViewController.swift
//  HomeWork8
//
//  Created by TrungNV (Macbook) on 14/05/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onRestApiClicked(_ sender: Any) {
        let apiVC = ApiViewController()
        apiVC.modalPresentationStyle = .fullScreen
        present(apiVC, animated: true)
    }
    
    @IBAction func onBouncingBallClicked(_ sender: Any) {
        let bouncingBallVC = BouncingBallViewController()
        bouncingBallVC.modalPresentationStyle = .fullScreen
        present(bouncingBallVC, animated: true)
    }
}

