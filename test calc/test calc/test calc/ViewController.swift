//
//  ViewController.swift
//  test calc
//
//  Created by Igor Artimovich on 5.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dplabel: UILabel!
    
    var dptext: String = "0"{
        didSet {
        dplabel.text = dptext
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dptext = "0"
    }

    @IBAction func dbt(_ digitButton: UIButton) {
        updatedptext(with: String(digitButton.tag))
    }
    func updatedptext(with newText: String) {
        if dptext == "0" && newText == "0" {
            return
        }
        if dptext == "0"{
            dptext = newText
            return
        }
        if dptext.count >= 9 {
            return
        }
    dptext += newText
}
}
