//
//  FourthViewController.swift
//  PushUpApp
//
//  Created by Amaury C. Rivera on 9/22/21.
//

import UIKit
import Foundation

class FourthViewController: UIViewController

{
    //Label Reference..
    @IBOutlet weak var Set1Title: UILabel!
    @IBOutlet weak var Set2Title: UILabel!
    @IBOutlet weak var Set3Title: UILabel!
    @IBOutlet weak var Set4Title: UILabel!
    @IBOutlet weak var Set5Title: UILabel!
    
    
    
    
    //Timer Countdown Label Reference..
    @IBOutlet weak var CountDownLabel: UILabel!
    
    //Timer Reference..
    var timer = Timer()
    
    var seconds = 30
    var setCount = 0
    
    
    //Variable for the class WeeksData..
    var week1Data: Week1?
    
    @IBAction func CompletionSetButton(_ sender: UIButton)
    {
        //..Making sure there's no others timers running.
        //timer.invalidate()
        
        //..Creating the actual timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FourthViewController.TimerClass), userInfo: nil, repeats: true)
        
        setCount = setCount + 1
        
        
    }
    
    @IBAction func NextSetButton(_ sender: UIButton)
    {
        timer.invalidate()
        
        if(seconds == 30)
        {
            Set2Title.layer.masksToBounds = true
            Set2Title.layer.cornerRadius = 10
            Set2Title.layer.backgroundColor = UIColor.white.cgColor
            
            print(setCount)
            
            if (setCount == 2)
            {
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
                print(setCount)
            }
            
            if (setCount == 3)
            {
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
        
                
                print(setCount)
            }
            if(setCount == 4)
            {
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                print(setCount)
            }
            
            if(setCount == 6)
            {
                setCount = 0
            }
        }
        
        /*
        if (seconds == 30 && countTesting == 2)
        {
            Set3Title.layer.masksToBounds = true
            Set3Title.layer.cornerRadius = 10
            Set3Title.layer.backgroundColor = UIColor.white.cgColor
        }
        
        if(seconds == 30 && countTesting == 3)
        {
            Set4Title.layer.masksToBounds = true
            Set4Title.layer.cornerRadius = 10
            Set4Title.layer.backgroundColor = UIColor.white.cgColor
        }
        
        if(seconds == 30 && countTesting == 4)
        {
            Set5Title.layer.masksToBounds = true
            Set5Title.layer.cornerRadius = 10
            Set5Title.layer.backgroundColor = UIColor.white.cgColor
        }
        */
        
    }
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        week1Data = Week1(Week: "Week1Day1", Week1Low1: ["2","3", "2", "2", "3"], Week1Medium1: ["6", "6","4", "4", "5"], Week1High1: ["10", "12", "7", "7", "9"])
        
        /*
        Set1Title.text = week1Data?.Week1Low1[0]
        Set2Title.text = week1Data?.Week1Low1[1]
        Set3Title.text = week1Data?.Week1Low1[2]
        Set4Title.text = week1Data?.Week1Low1[3]
        Set5Title.text = week1Data?.Week1Low1[4]
        */
        
        
        //..First set will be gray out so in that way the customer
        //..knows which set to start doing..
        Set1Title.layer.masksToBounds = true
        Set1Title.layer.cornerRadius = 10
        Set1Title.layer.backgroundColor = UIColor.white.cgColor
        
        
        /*
        Set1Title.layer.masksToBounds = true
        Set1Title.layer.cornerRadius = 10
        Set1Title.layer.backgroundColor = UIColor.white.cgColor
         */
    }
    
    @objc func TimerClass ()
    {
        seconds = seconds - 1
        CountDownLabel.text = String (seconds)
        
        if (seconds == 0)
        {
            seconds = 30
            CountDownLabel.text = String(seconds)
            
            timer.invalidate()
        }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
