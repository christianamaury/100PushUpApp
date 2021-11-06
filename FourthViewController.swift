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
    
    
    var programDataTransfer: Weeks?
    var programDataWeek1Day2: Weeks?
    var programDataWeek1Day3: Weeks?
    var programDataWeek2Day1: Weeks?
    var programDataWeek2Day2: Weeks?
    var programDataWeek2Day3: Weeks?
    var programDataWeek3Day1: Weeks?
    var programDataWeek3Day2: Weeks?
    var programDataWeek3Day3: Weeks?
    var programDataWeek4Day1: Weeks?
    var programDataWeek4Day2: Weeks?
    var programDataWeek4Day3: Weeks?
    var programDataWeek5Day1: Weeks?
    var programDataWeek5Day2: Weeks?
    var programDataWeek5Day3: Weeks?
    var programDataWeek6Day1: Weeks?
    var programDataWeek6Day2: Weeks?
    var programDataWeek6Day3: Weeks?
    var daySelected: String = " "
    var inputEntered: Int = 0
    
    //Timer Countdown Label Reference..
    @IBOutlet weak var CountDownLabel: UILabel!
    
    //Timer Reference..
    var timer = Timer()
    
    var seconds = 25
    var setCount = 0
    
    
    //Variable for the class WeeksData..
    var week1Data: Weeks?
    
    @IBAction func CompletionSetButton(_ sender: UIButton)
    {
        //..Making sure there's no others timers running.
        timer.invalidate()
        
        //..Creating the actual timer
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FourthViewController.TimerClass), userInfo: nil, repeats: true)
        
        setCount = setCount + 1
        
        
    }
    
    @IBAction func NextSetButton(_ sender: UIButton)
    {
        /*
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
        
        //week1Data = Week1(Week: "Week1Day1", Week1Low1: ["2","3", "2", "2", "3"], Week1Medium1: ["6", "6","4", "4", "5"], Week1High1: ["10", "12", "7", "7", "9"])
        
        /*
        Set1Title.text = week1Data?.Week1Low1[0]
        Set2Title.text = week1Data?.Week1Low1[1]
        Set3Title.text = week1Data?.Week1Low1[2]
        Set4Title.text = week1Data?.Week1Low1[3]
        Set5Title.text = week1Data?.Week1Low1[4]
        */
        
        //..Function Called
        pushUpProgram()
        
        
        
        //..Week 1, Day
        
        
        
        //Esto aqí funciona..
        //Set1Title.text = programDataTransfer?.Week1Low1[2]
        //Set5Title.text = programDataTransfer?.Week1Medium1[3]
        
        
        //..First set will be gray out so in that way the customer
        //..knows which set to start doing..
       
        Set1Title.layer.masksToBounds = true
        Set1Title.layer.cornerRadius = 10
        Set1Title.layer.backgroundColor = UIColor.white.cgColor
        
    }
    
    @objc func TimerClass ()
    {
        seconds = seconds - 1
        CountDownLabel.text = String (seconds)
        
        if (seconds == 0)
        {
            seconds = 25
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
    
    func showingWorkOutsSets()
    {
        
    }
    
    
    func pushUpProgram()
    {
        //Works
        //..Week 1, Day 1, Basic: < 5
        if(inputEntered <= 5 && daySelected == "0")
        {
            Set1Title.text = programDataTransfer?.Week1Low1[0]
            
            var setWorkOutCounter: Int = 0;
            if(seconds == 0)
            {
                Set2Title.text = programDataTransfer?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
                setWorkOutCounter += 1
            }
            
            if (seconds == 0 && setWorkOutCounter == 1)
            {
                Set3Title.text = programDataTransfer?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
                setWorkOutCounter += 1
            }
            
            if (seconds == 0 && setWorkOutCounter == 2)
            {
                Set4Title.text = programDataTransfer?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
                setWorkOutCounter += 1
            }
            
            if (seconds == 0 && setWorkOutCounter == 3)
            {
                Set5Title.text = programDataTransfer?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            
            
            //Set2Title.text = programDataTransfer?.Week1Low1[1]
            //Set3Title.text = programDataTransfer?.Week1Low1[2]
            //Set4Title.text = programDataTransfer?.Week1Low1[3]
            //Set5Title.text = programDataTransfer?.Week1Low1[4]
        }
        
        //Need debuging
        //..Week 1, Day 1, Medium: 6-10
        if(inputEntered >= 6 && daySelected == "0")
        {
            Set1Title.text = programDataTransfer?.Week1Medium1[0]
            Set2Title.text = programDataTransfer?.Week1Medium1[1]
            Set3Title.text = programDataTransfer?.Week1Medium1[2]
            Set4Title.text = programDataTransfer?.Week1Medium1[3]
            Set5Title.text = programDataTransfer?.Week1Medium1[4]
        }
        
        //..
        //..Week 1, Day 1 = Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "0")
        {
            Set1Title.text = programDataTransfer?.Week1High1[0]
            Set2Title.text = programDataTransfer?.Week1High1[1]
            Set3Title.text = programDataTransfer?.Week1High1[2]
            Set4Title.text = programDataTransfer?.Week1High1[3]
            Set5Title.text = programDataTransfer?.Week1High1[4]
        }
        
        //..Week 1, Day 2 - Basic: <5
        if (inputEntered <= 5 && daySelected == "1")
        {
            Set1Title.text = programDataWeek1Day2?.Week1Low1[0]
            Set2Title.text = programDataWeek1Day2?.Week1Low1[1]
            Set3Title.text = programDataWeek1Day2?.Week1Low1[2]
            Set4Title.text = programDataWeek1Day2?.Week1Low1[3]
            Set5Title.text = programDataWeek1Day2?.Week1Low1[4]
        }
        
        //..Week 1, Day 2 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "1")
        {
            Set1Title.text = programDataWeek1Day2?.Week1Medium1[0]
            Set2Title.text = programDataWeek1Day2?.Week1Medium1[1]
            Set3Title.text = programDataWeek1Day2?.Week1Medium1[2]
            Set4Title.text = programDataWeek1Day2?.Week1Medium1[3]
            Set5Title.text = programDataWeek1Day2?.Week1Medium1[4]
        }
        
        //..Week 1, Day 2 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "1")
        {
            Set1Title.text = programDataWeek1Day2?.Week1High1[0]
            Set2Title.text = programDataWeek1Day2?.Week1High1[1]
            Set3Title.text = programDataWeek1Day2?.Week1High1[2]
            Set4Title.text = programDataWeek1Day2?.Week1High1[3]
            Set5Title.text = programDataWeek1Day2?.Week1High1[4]
        }
        
        //..Week 1, Day 3 - Basic: < 5
        if (inputEntered <= 5 && daySelected == "2")
        {
            Set1Title.text = programDataWeek1Day3?.Week1Low1[0]
            Set2Title.text = programDataWeek1Day3?.Week1Low1[1]
            Set3Title.text = programDataWeek1Day3?.Week1Low1[2]
            Set4Title.text = programDataWeek1Day3?.Week1Low1[3]
            Set5Title.text = programDataWeek1Day3?.Week1Low1[4]
        }
        
        //..Week 1, Day 3 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "2")
        {
            Set1Title.text = programDataWeek1Day3?.Week1Medium1[0]
            Set2Title.text = programDataWeek1Day3?.Week1Medium1[1]
            Set3Title.text = programDataWeek1Day3?.Week1Medium1[2]
            Set4Title.text = programDataWeek1Day3?.Week1Medium1[3]
            Set5Title.text = programDataWeek1Day3?.Week1Medium1[4]
        }
        
        //..Week 1, Day 3 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "2")
        {
            Set1Title.text = programDataWeek1Day3?.Week1High1[0]
            Set2Title.text = programDataWeek1Day3?.Week1High1[1]
            Set3Title.text = programDataWeek1Day3?.Week1High1[2]
            Set4Title.text = programDataWeek1Day3?.Week1High1[3]
            Set5Title.text = programDataWeek1Day3?.Week1High1[4]
            
        }
        
        //..Week 2, Day 1 - Basic: <5
        if (inputEntered <= 5 && daySelected == "3")
        {
            Set1Title.text = programDataWeek2Day1?.Week1Low1[0]
            Set2Title.text = programDataWeek2Day1?.Week1Low1[1]
            Set3Title.text = programDataWeek2Day1?.Week1Low1[2]
            Set4Title.text = programDataWeek2Day1?.Week1Low1[3]
            Set5Title.text = programDataWeek2Day1?.Week1Low1[4]
        }
        
        //..Week 2, Day 1 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "3")
        {
            Set1Title.text = programDataWeek2Day1?.Week1Medium1[0]
            Set2Title.text = programDataWeek2Day1?.Week1Medium1[1]
            Set3Title.text = programDataWeek2Day1?.Week1Medium1[2]
            Set4Title.text = programDataWeek2Day1?.Week1Medium1[3]
            Set5Title.text = programDataWeek2Day1?.Week1Medium1[4]
        }
        
        //..Week 2, Day 1 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "3")
        {
            Set1Title.text = programDataWeek2Day1?.Week1High1[0]
            Set2Title.text = programDataWeek2Day1?.Week1High1[1]
            Set3Title.text = programDataWeek2Day1?.Week1High1[2]
            Set4Title.text = programDataWeek2Day1?.Week1High1[3]
            Set5Title.text = programDataWeek2Day1?.Week1Medium1[4]
        }
        
        //..Week 2, Day 2 - Basic: 5-10
        if (inputEntered <= 5 && daySelected == "4")
        {
            Set1Title.text = programDataWeek2Day2?.Week1Low1[0]
            Set2Title.text = programDataWeek2Day2?.Week1Low1[1]
            Set3Title.text = programDataWeek2Day2?.Week1Low1[2]
            Set4Title.text = programDataWeek2Day2?.Week1Low1[3]
            Set5Title.text = programDataWeek2Day2?.Week1Low1[4]
        }
        
        //..Week 2, Day 2 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "4")
        {
            Set1Title.text = programDataWeek2Day2?.Week1Medium1[0]
            Set2Title.text = programDataWeek2Day2?.Week1Medium1[1]
            Set3Title.text = programDataWeek2Day2?.Week1Medium1[2]
            Set4Title.text = programDataWeek2Day2?.Week1Medium1[3]
            Set5Title.text = programDataWeek2Day2?.Week1Medium1[4]
        }
        
        //..Week 2, Day 2 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "4")
        {
            Set1Title.text = programDataWeek2Day2?.Week1High1[0]
            Set2Title.text = programDataWeek2Day2?.Week1High1[1]
            Set3Title.text = programDataWeek2Day2?.Week1High1[2]
            Set4Title.text = programDataWeek2Day2?.Week1High1[3]
            Set5Title.text = programDataWeek2Day2?.Week1High1[4]
        }
        
        //..Week 2, Day 3 - Basic: <5
        if (inputEntered <= 5 && daySelected == "5")
        {
            Set1Title.text = programDataWeek2Day3?.Week1Low1[0]
            Set2Title.text = programDataWeek2Day3?.Week1Low1[1]
            Set3Title.text = programDataWeek2Day3?.Week1Low1[2]
            Set4Title.text = programDataWeek2Day3?.Week1Low1[3]
            Set5Title.text = programDataWeek2Day3?.Week1Low1[4]
        }
        
        //..Week 2, Day 3 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "5")
        {
            Set1Title.text = programDataWeek2Day3?.Week1Medium1[0]
            Set2Title.text = programDataWeek2Day3?.Week1Medium1[1]
            Set3Title.text = programDataWeek2Day3?.Week1Medium1[2]
            Set4Title.text = programDataWeek2Day3?.Week1Medium1[3]
            Set5Title.text = programDataWeek2Day3?.Week1Medium1[4]
        }
        
        //..Week 2, Day 3 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "5")
        {
            Set1Title.text = programDataWeek2Day3?.Week1High1[0]
            Set2Title.text = programDataWeek2Day3?.Week1High1[1]
            Set3Title.text = programDataWeek2Day3?.Week1High1[2]
            Set4Title.text = programDataWeek2Day3?.Week1High1[3]
            Set5Title.text = programDataWeek2Day3?.Week1High1[4]
        }
        
        //..Week 3 Day 1 - Basic: 16-20
        if (inputEntered >= 16 && daySelected == "6")
        {
            Set1Title.text = programDataWeek3Day1?.Week1Low1[0]
            Set2Title.text = programDataWeek3Day1?.Week1Low1[1]
            Set3Title.text = programDataWeek3Day1?.Week1Low1[2]
            Set4Title.text = programDataWeek3Day1?.Week1Low1[3]
            Set5Title.text = programDataWeek3Day1?.Week1Low1[4]
        }
        
        //..Week 3, Day 1 - Medium
        if (inputEntered >= 21 && daySelected == "6")
        {
            Set1Title.text = programDataWeek3Day1?.Week1Medium1[0]
            Set2Title.text = programDataWeek3Day1?.Week1Medium1[1]
            Set3Title.text = programDataWeek3Day1?.Week1Medium1[2]
            Set4Title.text = programDataWeek3Day1?.Week1Medium1[3]
            Set5Title.text = programDataWeek3Day1?.Week1Medium1[4]
        }
        
        //..Week 3, Day 1 - Advanced
        if (inputEntered > 25 && daySelected == "6")
        {
            Set1Title.text = programDataWeek3Day1?.Week1High1[0]
            Set2Title.text = programDataWeek3Day1?.Week1High1[1]
            Set3Title.text = programDataWeek3Day1?.Week1High1[2]
            Set4Title.text = programDataWeek3Day1?.Week1High1[3]
            Set5Title.text = programDataWeek3Day1?.Week1High1[4]
        }
        
        //..Week 3, Day 2 - Basic
        if (inputEntered >= 16 && daySelected == "7")
        {
            Set1Title.text = programDataWeek3Day2?.Week1Low1[0]
            Set2Title.text = programDataWeek3Day2?.Week1Low1[1]
            Set3Title.text = programDataWeek3Day2?.Week1Low1[2]
            Set4Title.text = programDataWeek3Day2?.Week1Low1[3]
            Set5Title.text = programDataWeek3Day2?.Week1Low1[4]
        }
        
        //..Week 3, Day 2 - Medium
        if ( inputEntered >= 21 && daySelected == "7")
        {
            Set1Title.text = programDataWeek3Day2?.Week1Medium1[0]
            Set2Title.text = programDataWeek3Day2?.Week1Medium1[1]
            Set3Title.text = programDataWeek3Day2?.Week1Medium1[2]
            Set4Title.text = programDataWeek3Day2?.Week1Medium1[3]
            Set5Title.text = programDataWeek3Day2?.Week1Medium1[4]
        }
        
        //..Week 3, Day 2 - Advanced
        if (inputEntered > 25 && daySelected == "7")
        {
            Set1Title.text = programDataWeek3Day2?.Week1High1[0]
            Set2Title.text = programDataWeek3Day2?.Week1High1[1]
            Set3Title.text = programDataWeek3Day2?.Week1High1[2]
            Set4Title.text = programDataWeek3Day2?.Week1High1[3]
            Set5Title.text = programDataWeek3Day2?.Week1High1[4]
        }
        
        //..Week 3, Day 3 - Basic
        if (inputEntered >= 16 && daySelected == "8")
        {
            Set1Title.text = programDataWeek3Day3?.Week1Low1[0]
            Set2Title.text = programDataWeek3Day3?.Week1Low1[1]
            Set3Title.text = programDataWeek3Day3?.Week1Low1[2]
            Set4Title.text = programDataWeek3Day3?.Week1Low1[3]
            Set5Title.text = programDataWeek3Day3?.Week1Low1[4]
        }
        
        //..Week 3, Day 3 - Medium
        if (inputEntered >= 21 && daySelected == "8")
        {
            Set1Title.text = programDataWeek3Day3?.Week1Medium1[0]
            Set2Title.text = programDataWeek3Day3?.Week1Medium1[1]
            Set3Title.text = programDataWeek3Day3?.Week1Medium1[2]
            Set4Title.text = programDataWeek3Day3?.Week1Medium1[3]
            Set5Title.text = programDataWeek3Day3?.Week1Medium1[4]
        }
        
        //..Week 3, Day 3 - Advanced
        if (inputEntered > 25 && daySelected == "8")
        {
            Set1Title.text = programDataWeek3Day3?.Week1High1[0]
            Set2Title.text = programDataWeek3Day3?.Week1High1[1]
            Set3Title.text = programDataWeek3Day3?.Week1High1[2]
            Set4Title.text = programDataWeek3Day3?.Week1High1[3]
            Set5Title.text = programDataWeek3Day3?.Week1High1[4]
        }
        
        //..Week 4, Day 1 - Basic
        if (inputEntered >= 16 && daySelected == "9")
        {
            Set1Title.text = programDataWeek4Day1?.Week1Low1[0]
            Set2Title.text = programDataWeek4Day1?.Week1Low1[1]
            Set3Title.text = programDataWeek4Day1?.Week1Low1[2]
            Set4Title.text = programDataWeek4Day1?.Week1Low1[3]
            Set5Title.text = programDataWeek4Day1?.Week1Low1[4]
        }
        
        //..Week 4, Day 1 - Medium
        if (inputEntered >= 21 && daySelected == "9")
        {
            Set1Title.text = programDataWeek4Day1?.Week1Medium1[0]
            Set2Title.text = programDataWeek4Day1?.Week1Medium1[1]
            Set3Title.text = programDataWeek4Day1?.Week1Medium1[2]
            Set4Title.text = programDataWeek4Day1?.Week1Medium1[3]
            Set5Title.text = programDataWeek4Day1?.Week1Medium1[4]
        }
        
        //..Week 4, Day 1 - Advanced
        if (inputEntered > 25 && daySelected == "9")
        {
            Set1Title.text = programDataWeek4Day1?.Week1High1[0]
            Set2Title.text = programDataWeek4Day1?.Week1High1[1]
            Set3Title.text = programDataWeek4Day1?.Week1High1[2]
            Set4Title.text = programDataWeek4Day1?.Week1High1[3]
            Set5Title.text = programDataWeek4Day1?.Week1High1[4]
        }
        
        //..Week 4, Day 2 - Basic
        if (inputEntered >= 16 && daySelected == "10")
        {
            Set1Title.text = programDataWeek4Day2?.Week1Low1[0]
            Set2Title.text = programDataWeek4Day2?.Week1Low1[1]
            Set3Title.text = programDataWeek4Day2?.Week1Low1[2]
            Set4Title.text = programDataWeek4Day2?.Week1Low1[3]
            Set5Title.text = programDataWeek4Day2?.Week1Low1[4]
        }
        
        //..Week 4, Day 2 - Medium
        if (inputEntered >= 21 && daySelected == "10")
        {
            Set1Title.text = programDataWeek4Day2?.Week1Medium1[0]
            Set2Title.text = programDataWeek4Day2?.Week1Medium1[1]
            Set3Title.text = programDataWeek4Day2?.Week1Medium1[2]
            Set4Title.text = programDataWeek4Day2?.Week1Medium1[3]
            Set5Title.text = programDataWeek4Day2?.Week1Medium1[4]
        }
        
        //..Week 4, Day 2 - Advanced
        if (inputEntered > 25 && daySelected == "10")
        {
            Set1Title.text = programDataWeek4Day2?.Week1High1[0]
            Set2Title.text = programDataWeek4Day2?.Week1High1[1]
            Set3Title.text = programDataWeek4Day2?.Week1High1[2]
            Set4Title.text = programDataWeek4Day2?.Week1High1[3]
            Set5Title.text = programDataWeek4Day2?.Week1High1[4]
        }
        
        //..Week 4, Day 3 - Basic
        if (inputEntered >= 16  && daySelected == "11")
        {
            Set1Title.text = programDataWeek4Day3?.Week1Low1[0]
            Set2Title.text = programDataWeek4Day3?.Week1Low1[1]
            Set3Title.text = programDataWeek4Day3?.Week1Low1[2]
            Set4Title.text = programDataWeek4Day3?.Week1Low1[3]
            Set5Title.text = programDataWeek4Day3?.Week1Low1[4]
        }

        
        //..Week 4, Day 3 - Medium
        if (inputEntered >= 21 && daySelected == "11")
        {
            Set1Title.text = programDataWeek4Day3?.Week1Medium1[0]
            Set2Title.text = programDataWeek4Day3?.Week1Medium1[1]
            Set3Title.text = programDataWeek4Day3?.Week1Medium1[2]
            Set4Title.text = programDataWeek4Day3?.Week1Medium1[3]
            Set5Title.text = programDataWeek4Day3?.Week1Medium1[4]
        }
        
        //..Week 4, Day 3 - Advanced
        if (inputEntered > 25 && daySelected == "11")
        {
            Set1Title.text = programDataWeek4Day3?.Week1High1[0]
            Set2Title.text = programDataWeek4Day3?.Week1High1[1]
            Set3Title.text = programDataWeek4Day3?.Week1High1[2]
            Set4Title.text = programDataWeek4Day3?.Week1High1[3]
            Set5Title.text = programDataWeek4Day3?.Week1High1[4]
        }
        
        //..Week 5, Day 1 - Basic
        if (inputEntered >= 31 && daySelected == "12")
        {
            Set1Title.text = programDataWeek5Day1?.Week1Low1[0]
            Set2Title.text = programDataWeek5Day1?.Week1Low1[1]
            Set3Title.text = programDataWeek5Day1?.Week1Low1[2]
            Set4Title.text = programDataWeek5Day1?.Week1Low1[3]
            Set5Title.text = programDataWeek5Day1?.Week1Low1[4]
        }
        
        //..Week 5, Day 1 - Medium
        if (inputEntered >= 36 && daySelected == "12")
        {
            Set1Title.text = programDataWeek5Day1?.Week1Medium1[0]
            Set2Title.text = programDataWeek5Day1?.Week1Medium1[1]
            Set3Title.text = programDataWeek5Day1?.Week1Medium1[2]
            Set4Title.text = programDataWeek5Day1?.Week1Medium1[3]
            Set5Title.text = programDataWeek5Day1?.Week1Medium1[4]
        }
        
        //..Week 5, Day 1 - Advanced
        if (inputEntered > 40 && daySelected == "12")
        {
            Set1Title.text = programDataWeek5Day1?.Week1High1[0]
            Set2Title.text = programDataWeek5Day1?.Week1High1[1]
            Set3Title.text = programDataWeek5Day1?.Week1High1[2]
            Set4Title.text = programDataWeek5Day1?.Week1High1[3]
            Set5Title.text = programDataWeek5Day1?.Week1High1[4]
        }
        
        //..Week 5, Day 2 - Basic
        if (inputEntered >= 31 && daySelected == "13")
        {
            Set1Title.text = programDataWeek5Day2?.Week1Low1[0]
            Set2Title.text = programDataWeek5Day2?.Week1Low1[1]
            Set3Title.text = programDataWeek5Day2?.Week1Low1[2]
            Set4Title.text = programDataWeek5Day2?.Week1Low1[3]
            Set5Title.text = programDataWeek5Day2?.Week1Low1[4]
        }
        
        //..Week 5, Day 2 - Medium
        if (inputEntered >= 36 && daySelected == "13")
        {
            Set1Title.text = programDataWeek5Day2?.Week1Medium1[0]
            Set2Title.text = programDataWeek5Day2?.Week1Medium1[1]
            Set3Title.text = programDataWeek5Day2?.Week1Medium1[2]
            Set4Title.text = programDataWeek5Day2?.Week1Medium1[3]
            Set5Title.text = programDataWeek5Day2?.Week1Medium1[4]
        }
        
        //..Week 5, Day 2 - Advanced
        if (inputEntered > 40 && daySelected == "13")
        {
            Set1Title.text = programDataWeek5Day2?.Week1High1[0]
            Set2Title.text = programDataWeek5Day2?.Week1High1[1]
            Set3Title.text = programDataWeek5Day2?.Week1High1[2]
            Set4Title.text = programDataWeek5Day2?.Week1High1[3]
            Set5Title.text = programDataWeek5Day2?.Week1High1[4]
        }
        
        //..Week 5, Dayt 3 - Basic
        if (inputEntered >= 31 && daySelected == "14")
        {
            Set1Title.text = programDataWeek5Day3?.Week1Low1[0]
            Set2Title.text = programDataWeek5Day3?.Week1Low1[1]
            Set3Title.text = programDataWeek5Day3?.Week1Low1[2]
            Set4Title.text = programDataWeek5Day3?.Week1Low1[3]
            Set5Title.text = programDataWeek5Day3?.Week1Low1[4]
        }
        
        //..Week 5, Day 3 - Medium
        if (inputEntered >= 36 && daySelected == "14")
        {
            Set1Title.text = programDataWeek5Day3?.Week1Medium1[0]
            Set2Title.text = programDataWeek5Day3?.Week1Medium1[1]
            Set3Title.text = programDataWeek5Day3?.Week1Medium1[2]
            Set4Title.text = programDataWeek5Day3?.Week1Medium1[3]
            Set5Title.text = programDataWeek5Day3?.Week1Medium1[4]
        }
        
        //..Week 5, Day 3 - Advanced
        if (inputEntered > 40 && daySelected == "14")
        {
            Set1Title.text = programDataWeek5Day3?.Week1High1[0]
            Set2Title.text = programDataWeek5Day3?.Week1High1[1]
            Set3Title.text = programDataWeek5Day3?.Week1High1[2]
            Set4Title.text = programDataWeek5Day3?.Week1High1[3]
            Set5Title.text = programDataWeek5Day3?.Week1High1[4]
        }
        
        //..Week 6, Day 1 - Basic
        if (inputEntered >= 46 && daySelected == "15")
        {
            Set1Title.text = programDataWeek6Day1?.Week1Low1[0]
            Set2Title.text = programDataWeek6Day1?.Week1Low1[1]
            Set3Title.text = programDataWeek6Day1?.Week1Low1[2]
            Set4Title.text = programDataWeek6Day1?.Week1Low1[3]
            Set5Title.text = programDataWeek6Day1?.Week1Low1[4]
        }

        
        //..Week 6, Day 1 - Meduium
        if (inputEntered >= 51 && daySelected == "15")
        {
            Set1Title.text = programDataWeek6Day1?.Week1Medium1[0]
            Set2Title.text = programDataWeek6Day1?.Week1Medium1[1]
            Set3Title.text = programDataWeek6Day1?.Week1Medium1[2]
            Set4Title.text = programDataWeek6Day1?.Week1Medium1[3]
            Set5Title.text = programDataWeek6Day1?.Week1Medium1[4]
        }
        
        //..Week 6, Day 1 - Advanced
        if (inputEntered > 60 && daySelected == "15")
        {
            Set1Title.text = programDataWeek6Day1?.Week1High1[0]
            Set2Title.text = programDataWeek6Day1?.Week1High1[1]
            Set3Title.text = programDataWeek6Day1?.Week1High1[2]
            Set4Title.text = programDataWeek6Day1?.Week1High1[3]
            Set5Title.text = programDataWeek6Day1?.Week1High1[4]
        }
        
        //..Week 6, Day 2 - Basic
        if (inputEntered >= 46 && daySelected == "16")
        {
            Set1Title.text = programDataWeek6Day2?.Week1Low1[0]
            Set2Title.text = programDataWeek6Day2?.Week1Low1[1]
            Set3Title.text = programDataWeek6Day2?.Week1Low1[2]
            Set4Title.text = programDataWeek6Day2?.Week1Low1[3]
            Set5Title.text = programDataWeek6Day2?.Week1Low1[4]
        }
        
        //..Week 6, Day 2 - Medium
        if (inputEntered >= 51 && daySelected == "16")
        {
            Set1Title.text = programDataWeek6Day2?.Week1Medium1[0]
            Set2Title.text = programDataWeek6Day2?.Week1Medium1[1]
            Set3Title.text = programDataWeek6Day2?.Week1Medium1[2]
            Set4Title.text = programDataWeek6Day2?.Week1Medium1[3]
            Set5Title.text = programDataWeek6Day2?.Week1Medium1[4]
        }
        
        //..Week 6, Day 2 - Advanced..
        if (inputEntered > 60 && daySelected == "16")
        {
            Set1Title.text = programDataWeek6Day2?.Week1High1[0]
            Set2Title.text = programDataWeek6Day2?.Week1High1[1]
            Set3Title.text = programDataWeek6Day2?.Week1High1[2]
            Set4Title.text = programDataWeek6Day2?.Week1High1[3]
            Set5Title.text = programDataWeek2Day2?.Week1High1[4]
        }
        
        //..Week 6, Day 3 - Basic
        if (inputEntered >= 46 && daySelected == "17")
        {
            Set1Title.text = programDataWeek6Day3?.Week1Low1[0]
            Set2Title.text = programDataWeek6Day3?.Week1Low1[1]
            Set3Title.text = programDataWeek6Day3?.Week1Low1[2]
            Set4Title.text = programDataWeek6Day3?.Week1Low1[3]
            Set5Title.text = programDataWeek6Day3?.Week1Low1[4]
        }
        
        //..Week 6, Day 3 - Medium
        if (inputEntered >= 51  && daySelected == "17")
        {
            Set1Title.text = programDataWeek6Day3?.Week1Medium1[0]
            Set2Title.text = programDataWeek6Day3?.Week1Medium1[1]
            Set3Title.text = programDataWeek6Day3?.Week1Medium1[2]
            Set4Title.text = programDataWeek6Day3?.Week1Medium1[3]
            Set5Title.text = programDataWeek6Day3?.Week1Medium1[4]
        }
        
        //..Week 6, Day 3 - Advanced
        if (inputEntered > 60 && daySelected == "17")
        {
            Set1Title.text = programDataWeek6Day3?.Week1High1[0]
            Set2Title.text = programDataWeek6Day3?.Week1High1[1]
            Set3Title.text = programDataWeek6Day3?.Week1High1[2]
            Set4Title.text = programDataWeek6Day3?.Week1High1[3]
            Set5Title.text = programDataWeek6Day3?.Week1High1[4]
        }
        
    }

}
