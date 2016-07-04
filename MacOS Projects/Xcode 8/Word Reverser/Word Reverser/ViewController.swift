//
//  ViewController.swift
//  Word Reverser
//
//  Created by Hana on 7/3/16.
//  Copyright © 2016 Hana. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var EnterWordTextField: NSTextField!
    
    @IBOutlet weak var OutputLabel: NSTextField!
    
    
    var EnteredWordData = ""
    var OutputReversedWordData = ""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
    
    @IBAction func ReverseMyWordAction(_ sender: NSButton) {
        reverseWord()
    }
    
    
    @IBAction func ClearAction(_ sender: NSButton) {
        clear()
    }
    
    
    func reverseWord(){
        EnteredWordData = EnterWordTextField.stringValue
        let WordArray = String(EnteredWordData.characters.reversed())
        
        OutputReversedWordData = WordArray
        printOutReversed()
    }
    
    func printOutReversed(){
        
        OutputLabel.stringValue = "\(OutputReversedWordData.lowercased())"
    
    }
    
    func clear(){
        EnterWordTextField.stringValue = ""
        OutputLabel.stringValue = "Output"
    }

}

