//
//  ViewController.swift
//  HW2
//
//  Created by Igor Artimovich on 20.10.21.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let color1 = UIColor(red: 200 / 255, green: 26 / 255 , blue: 61 / 255, alpha: 1.0).cgColor
        let color2 = UIColor(red: 55 / 255, green: 55 / 255, blue: 100 / 255, alpha: 1.0).cgColor
        let gradietnLayer = CAGradientLayer()
        gradietnLayer.frame = self.view.bounds
        gradietnLayer.colors = [color1, color2]
        gradietnLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradietnLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradietnLayer, at: 0)
        
        
        
    }
    /// Плюсим
    @IBOutlet weak var label: UILabel!
    var score = 0
    @IBAction func plus(_ sender: Any) {
    score += 1
    label.text = "\(score)"
    }
    ///Минусим
    @IBAction func button2(_ sender: Any) {
        score -= 1
        label.text = "\(score)"
    }

    @IBAction func BOLO(_ sender: Any) {
        score = -1
        label.text = "\(score)"
    }
    
}


