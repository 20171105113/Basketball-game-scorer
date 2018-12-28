//
//  ViewController.swift
//  Basketball game scorer
//
//  Created by 20171105113 on 2018/12/28.
//  Copyright © 2018 20171105113. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var minutedisplay: UITextField!
    @IBOutlet weak var seconddisplay: UITextField!
    @IBOutlet weak var homepoints: UITextField!
    @IBOutlet weak var awaypoints: UITextField!
    
    var second:Int = 60
    var minute:Int = 3
    var timer :Timer!
    var temp:String = "0"
    var temp2:String = "0"
    var homepoint:Int = 0
    var awaypoint:Int = 0
    @IBAction func start(_ sender: Any) {
        temp = seconddisplay.text!
        second = Int(temp)!
        temp2 = minutedisplay.text!
        minute  = Int(temp2)!
        minutedisplay.isEnabled =  false
        seconddisplay.isEnabled =  false
        timer = Timer.scheduledTimer(timeInterval: TimeInterval(1), target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
    }
    
    @IBAction func stop(_ sender: Any) {
        timer.invalidate()
    }
    
    @objc func tickDown() {
        second -= 1
        
        if second == -1{
            second = 59
            minute -= 1
            if minute == -1{
                timer.invalidate()
                minute = 0
                second  = 0
            }
        }
        seconddisplay.text = "\(second)"
        minutedisplay.text = "\(minute)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func Homebonuspoints(_ sender: Any) {
        homepoint = homepoint + 1
        homepoints.text = "\(homepoint)"
    }
    
    @IBAction func Awaybonuspoints(_ sender: Any) {
        awaypoint = awaypoint + 1
        awaypoints.text = "\(awaypoint)"

    }
    @IBAction func Homebonus2(_ sender: Any) {
        homepoint = homepoint + 2
        homepoints.text = "\(homepoint)"
    }
    @IBAction func Awaybonus2(_ sender: Any) {
        awaypoint = awaypoint + 2
        awaypoints.text = "\(awaypoint)"

    }
    @IBAction func Homebonus3(_ sender: Any) {
        homepoint = homepoint + 3
        homepoints.text = "\(homepoint)"
    }
    @IBAction func Awaybonus3(_ sender: Any) {
        awaypoint = awaypoint + 3
        awaypoints.text = "\(awaypoint)"

    }
}

