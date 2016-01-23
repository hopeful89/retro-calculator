//
//  ViewController.swift
//  retro-calculator
//
//  Created by brandon stine on 1/22/16.
//  Copyright © 2016 hopeful. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    enum Operation: String {
        case Divide = "/"
        case Multiply = "*"
        case Subtract = "-"
        case Add = "+"
        case Equal = "="
        case Empty = "Empty"
    }
    
    @IBOutlet weak var outputLbl: UILabel!
    
    var btnSound: AVAudioPlayer!
    
    var runningNumber = ""
    var leftValString = ""
    var rightValString = ""
    var currentOperation: Operation = Operation.Empty


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path =
        NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()
        } catch let err as NSError{
            print(err.debugDescription)
        }

    }
    
    @IBAction func numberPressed(btn: UIButton!) {
        btnSound.play()
        runningNumber += "\(btn.tag)"
    }
    
    @IBAction func onDividePressed(sender: AnyObject) {
    }
   
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
    }

    @IBAction func onAddPressed(sender: AnyObject) {
    }

    @IBAction func onEqualPressed(sender: AnyObject) {
    }

}

