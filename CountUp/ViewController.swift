//
//  ViewController.swift
//  CountUp
//
//  Created by Hayaki Maruta on 2021/07/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var countLabel: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text = "0"
        
    }
    
    
    @IBAction func plus(_ sender: Any) {
        count = count + 1
        
        countLabel.text =  String(count)
        
        if count > 9{
            chamgeTextColler()
        }
    }
    @IBAction func minus(_ sender: Any) {
        count = count - 1
        
        countLabel.text = String(count)
        
        if  count < 1{
            resetColler()
        }
    }
    
    func chamgeTextColler(){
        
        countLabel.textColor = .yellow
    }

    func resetColler(){
        
        countLabel.textColor = .white
    }
    
    
}

