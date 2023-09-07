//
//  ViewController.swift
//  A Simple App
//
//  Created by JimmyChao on 2023/9/7.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var showNewFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!

    var fact: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        refresh()
        
        
    }
    
    
    func refresh(){
        
        //Randomize facts and color
        let index = Int.random(in: 0..<facts.count)
        let color: UIColor = .init(red: Double.random(in: 0...0.7), green: Double.random(in: 0...0.7), blue: Double.random(in: 0...0.7), alpha: 1)
        
        
        fact = facts[index]
        
        //Assign changes to UIElement
        guard let fact else{ fatalError("fact found nil")}
        funFactLabel.text = fact
        bgView.backgroundColor = color
        showNewFactButton.tintColor = color
        
    }
    
    @IBAction func showNewFact(_ sender: Any) {
        refresh()
    }
    


}

