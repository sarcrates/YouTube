//
//  ViewController.swift
//  Reverse Words
//
//  Created by Hana on 7/3/16.
//  Copyright © 2016 Hana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet weak var EnterWordTextField: UITextField!
    @IBOutlet weak var OutputLabel: UILabel!
    
    
    var WordData = ""
    var ReversedWordData = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ReverseButtonAction(_ sender: UIButton) {
        
        reverseWord()
    }
    
    
    @IBAction func ClearButtonAction(_ sender: UIButton) {
        clear()
    }
    
    func reverseWord(){
        WordData = EnterWordTextField.text!
        
        ReversedWordData = String(WordData.characters.reversed())
        OutputWord()
        hideKeyboard()
    }
    
    func OutputWord(){
        OutputLabel.text = "\(ReversedWordData.lowercased())"
    }
    func clear(){
        EnterWordTextField.text = ""
        OutputLabel.text = "Output"
        hideKeyboard()
    }
    
    func hideKeyboard(){
        EnterWordTextField.resignFirstResponder()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        hideKeyboard()
    }

}

