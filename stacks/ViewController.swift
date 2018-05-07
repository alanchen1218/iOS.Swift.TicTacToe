//
//  ViewController.swift
//  stacks
//
//  Created by Alan Chen on 5/3/18.
//  Copyright © 2018 Alan Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    @IBOutlet weak var winnerlabel: UILabel!
    
    var activePlayer = 1
    var gameActive = true
    let x = UIColor(red:0.65, green:0.92, blue:1.00, alpha:1.0)
    let y = UIColor(red:0.46, green:0.84, blue:1.00, alpha:1.0)
    
    override func viewDidLoad() {
        reset.isHidden = true
        activePlayer = 1
        winnerlabel.text = "Player \(activePlayer)"
        super.viewDidLoad()
    }
    @IBAction func reset(_ sender: UIButton) {
        button1.backgroundColor = x
        button2.backgroundColor = y
        button3.backgroundColor = x
        button4.backgroundColor = y
        button5.backgroundColor = x
        button6.backgroundColor = y
        button7.backgroundColor = x
        button8.backgroundColor = y
        button9.backgroundColor = x
        
        activePlayer = 1
        winnerlabel.text = nil
        
        button1.isEnabled = true
        button2.isEnabled = true
        button3.isEnabled = true
        button4.isEnabled = true
        button5.isEnabled = true
        button6.isEnabled = true
        button7.isEnabled = true
        button8.isEnabled = true
        button9.isEnabled = true
        reset.isHidden = true
    }
    func pressed(button: UIButton) {
        if activePlayer == 1{
            button.backgroundColor = UIColor.red
            activePlayer += 1
            winnerlabel.text = "Player \(activePlayer)"
            button.isEnabled = false
        }
        else if activePlayer == 2 {
            button.backgroundColor = UIColor.black
            activePlayer -= 1
            winnerlabel.text = "Player \(activePlayer)"
            button.isEnabled = false
        }
    }
    
    
    @IBAction func button1(_ sender: UIButton) {
        pressed(button: button1)
//        if activePlayer == 1{
//            button1.backgroundColor = UIColor.red
//            activePlayer += 1
//            winnerlabel.text = "\(activePlayer)"
////            button1.isSelected = true
//            self.button1.isEnabled = false
//        }
//        else if activePlayer == 2 {
//            button1.backgroundColor = UIColor.black
//            activePlayer -= 1
//            winnerlabel.text = "\(activePlayer)"
////            button1.isSelected = true
//            self.button1.isEnabled = false
//        }
        check()
    }
    @IBAction func button2(_ sender: UIButton) {
        pressed(button: button2)
        check()
    }
    @IBAction func button3(_ sender: UIButton) {
        pressed(button: button3)
        check()
    }
    @IBAction func button4(_ sender: UIButton) {
        pressed(button: button4)
        check()
    }
    @IBAction func button5(_ sender: UIButton) {
        pressed(button: button5)
        check()
    }
    @IBAction func button6(_ sender: UIButton) {
        pressed(button: button6)
        check()
    }
    @IBAction func button7(_ sender: UIButton) {
        pressed(button: button7)
        check()
    }
    @IBAction func button8(_ sender: UIButton) {
        pressed(button: button8)
        check()
    }
    @IBAction func button9(_ sender: UIButton) {
        pressed(button: button9)
        check()
    }
    
    func check(){
        if button1.backgroundColor == UIColor.red && button2.backgroundColor == UIColor.red && button3.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button4.backgroundColor == UIColor.red && button5.backgroundColor == UIColor.red && button6.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button7.backgroundColor == UIColor.red && button8.backgroundColor == UIColor.red && button9.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button1.backgroundColor == UIColor.red && button5.backgroundColor == UIColor.red && button9.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button3.backgroundColor == UIColor.red && button5.backgroundColor == UIColor.red && button7.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button1.backgroundColor == UIColor.red && button4.backgroundColor == UIColor.red && button7.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button2.backgroundColor == UIColor.red && button5.backgroundColor == UIColor.red && button8.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button3.backgroundColor == UIColor.red && button6.backgroundColor == UIColor.red && button9.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button2.backgroundColor == UIColor.red && button5.backgroundColor == UIColor.red && button7.backgroundColor == UIColor.red {
            winnerlabel.text = "RED IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button1.backgroundColor == UIColor.black && button2.backgroundColor == UIColor.black && button3.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button4.backgroundColor == UIColor.black && button5.backgroundColor == UIColor.black && button6.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button7.backgroundColor == UIColor.black && button8.backgroundColor == UIColor.black && button9.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button1.backgroundColor == UIColor.black && button5.backgroundColor == UIColor.black && button9.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button3.backgroundColor == UIColor.black && button5.backgroundColor == UIColor.black && button7.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button1.backgroundColor == UIColor.black && button4.backgroundColor == UIColor.black && button7.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button2.backgroundColor == UIColor.black && button5.backgroundColor == UIColor.black && button8.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button3.backgroundColor == UIColor.black && button6.backgroundColor == UIColor.black && button9.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        else if button2.backgroundColor == UIColor.black && button5.backgroundColor == UIColor.black && button7.backgroundColor == UIColor.black {
            winnerlabel.text = "BLACK IS THE WINNER"
            disableButtons()
            reset.isHidden = false
        }
        
        else if button1.isEnabled == false && button2.isEnabled == false  && button3.isEnabled == false && button4.isEnabled == false && button5.isEnabled == false && button6.isEnabled == false && button7.isEnabled
            == false && button8.isEnabled == false && button9.isEnabled == false
        {
            winnerlabel.text = "DRAW!"
        }
        
        //        if button1.isSelected && button2.isSelected && button3.isSelected {
        //            winnerlabel.text = "WINNER"
        //        }
    }
    func disableButtons(){
        button1.isEnabled = false
        button2.isEnabled = false
        button3.isEnabled = false
        button4.isEnabled = false
        button5.isEnabled = false
        button6.isEnabled = false
        button7.isEnabled = false
        button8.isEnabled = false
        button9.isEnabled = false
    }
  
}

