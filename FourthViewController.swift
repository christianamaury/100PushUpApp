//
//  FourthViewController.swift
//  PushUpApp
//
//  Created by Amaury C. Rivera on 9/22/21.
//
import UIKit
import CoreData
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
    var loadTimer = Timer()
    
    //..Suppose to be 25
    var seconds = 10
    
    var setCount = 0
    
    var setWorkOutCounter: Int = 0;
    //..Suppose to be 25 down here
    var secondsCountReference: Int = 10;
    
    //..First Set Completion =;
    var firstSetCompletion: Bool = false
    
    //..Second Set Completion
    var secondSetCompletion: Bool = false
   
    //..Third Set Completion;
    var thirdCompletion: Bool = false
    
    //..Fourth Set Completion
    var fourthSetCompletion: Bool = false
    
    //..Fifth Set Completion
    var fifthSetCompletion: Bool = false
    
    var week1day1Validated: Bool = false
    var week1day1BasicCompletion: Bool = false
    var week1day1MediumCompletion: Bool = false
    var week1day1AdvanceCompletion: Bool = false
    var week1day2BasicCompletion: Bool = false
    var week1day2AdvanceCompletion: Bool = false
    var week1day3BasicCompletion: Bool = false
    var week1day2MediumCompletion: Bool = false
    var week1day3MediumCompletion: Bool = false
    var week1day3AdvanceCompletion: Bool = false
    var week2day1BasicCompletion: Bool = false
    var week2day1AdvanceCompletion: Bool = false
    var week2day1MediumCompletion: Bool = false
    var week2day2BasicCompletion: Bool = false
    var week2day2MediumCompletion: Bool = false
    var week2day2AdvanceCompletion: Bool = false
    var week2day3BasicCompletion: Bool = false
    var week2day3MediumCompletion: Bool = false
    var week2day3AdvanceCompletion: Bool = false
    var week3day1BasicCompletion: Bool = false
    var week3day1MediumCompletion: Bool = false
    var week3day1AdvanceCompletion: Bool = false
    var week3day2BasicCompletion: Bool = false
    var week3day2MediumCompletion: Bool = false
    var week3day2AdvanceCompletion: Bool = false
    var week3day3BasicCompletion: Bool = false
    var week3day3MediumCompletion: Bool = false
    var week3day3AdvanceCompletion: Bool = false
    var week4day1BasicCompletion: Bool = false
    var week4day1MediumCompletion: Bool = false
    var week4day1AdvanceCompletion: Bool = false
    var week4day2BasicCompletion: Bool = false
    var week4day2MediumCompletion: Bool = false
    var week4day2AdvanceCompletion: Bool = false
    var week4day3BasicCompletion: Bool = false
    var week4day3MediumCompletion: Bool = false
    var week4day3AdvanceCompletion: Bool = false
    var week5day1BasicCompletion: Bool = false
    var week5day1MediumCompletion: Bool = false
    var week5day1AdvanceCompletion: Bool = false
    var week5day2BasicCompletion: Bool = false
    var week5day2MediumCompletion: Bool = false
    var week5day2AdvanceCompletion: Bool = false
    var week5day3BasicCompletion: Bool = false
    var week5day3MediumCompletion: Bool = false
    var week5day3AdvanceCompletion: Bool = false
    var week6day1BasicCompletion: Bool = false
    var week6day1MediumCompletion: Bool = false
    var week6day1AdvanceCompletion: Bool = false
    var week6day2BasicCompletion: Bool = false
    var week6day2MediumCompletion: Bool = false
    var week6day2AdvanceCompletion: Bool = false
    var week6day3BasicCompletion: Bool = false
    var week6day3MediumCompletion: Bool = false
    var week6day3AdvanceCompletion: Bool = false
    
    
    //..Core Data Reference:
    //llet userObjectArray = [UserEntity]()
//    let userEntity = UserEntity(context: PersistentServices.context)
//   var userEntityArray = [UserEntity]()


    
    //..Week Completion;

    
    
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
            //..Calling the function:
            pushUpProgram()
    }
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
//        //..Fetching Core Data
//        let fetchRequest: NSFetchRequest <UserEntity> = UserEntity.fetchRequest()
//        do {
//
//            let userObjectArray = try PersistentServices.context.fetch(fetchRequest)
//            userEntityArray = userObjectArray
//
//
//        }
//        catch
//        {
//            if let error = error as Error?
//            {
//                fatalError("Unresolved issue, \(error), ")
//            }
//        }

        
        
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
            
            //..Custom References
            setWorkOutCounter += 1
            secondsCountReference = seconds
          
            
            //..Suppose to be 25
            seconds = 10
            CountDownLabel.text = String(seconds)
            
            timer.invalidate()
        }
        
    }
    
    @objc func NextDataTimerClass()
    {
       
        var loadNextData: Int = 1
        loadNextData = loadNextData - 1
        
        if(loadNextData == 0 && week1day1Validated == true)
        {
            
            week1day1BasicCompletion = true
            loadNextData = 1
            loadTimer.invalidate()
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
        //..Week 1, Day 1, Basic: < 5
        if(inputEntered <= 5 && daySelected == "0")
        {
            Set1Title.text = programDataTransfer?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
        
            if(secondsCountReference == 0)
            {
                //..To see the value of the variable above
                print(secondsCountReference)
                
                Set2Title.text = programDataTransfer?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
                print(secondsCountReference)
                print(setWorkOutCounter)
            }
            
            if (secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                print(secondsCountReference)
                
                Set3Title.text = programDataTransfer?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
                print(secondsCountReference)
                print(setWorkOutCounter)
                
            }
            
            if (secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataTransfer?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
                print(setWorkOutCounter)
                
            }
            
            if (secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataTransfer?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                week1day1BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            
            }

        }
        
        //..Week 1, Day 2 - Basic: <5
        if (inputEntered <= 5 && daySelected == "1" || week1day1BasicCompletion == true)
        {
            Set1Title.text = programDataWeek1Day2?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek1Day2?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek1Day2?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek1Day2?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                 Set5Title.text = programDataWeek1Day2?.Week1Low1[4]
                 Set5Title.layer.masksToBounds = true
                 Set5Title.layer.cornerRadius = 10
                 Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd beginner training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week1day1BasicCompletion = false
                secondsCountReference = 10
                setWorkOutCounter = 0
                week1day2BasicCompletion = true
              
            }
        }
        
        //..Week 1, Day 3 - Basic: < 5
        if (inputEntered <= 5 && daySelected == "2" || week1day2BasicCompletion == true)
        {
            Set1Title.text = programDataWeek1Day3?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek1Day3?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek1Day3?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek1Day3?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                
                Set5Title.text = programDataWeek1Day3?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd beginner training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week1day2BasicCompletion = false
                week1day3BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
            
        }
        
        //..Week 2, Day 1 - Basic: <5
        if (inputEntered <= 5 && daySelected == "3" || week1day3BasicCompletion == true)
        {
            Set1Title.text = programDataWeek2Day1?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day1?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day1?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day1?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day1?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 2nd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week1day3BasicCompletion = false
                week2day1BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
            
        }
        
        //..Week 2, Day 2 - Basic: 5-10
        if (inputEntered <= 5 && daySelected == "4" || week2day1BasicCompletion == true)
        {
            Set1Title.text = programDataWeek2Day2?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day2?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor

            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day2?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day2?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day2?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd beginner training day in your 2nd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week2day1BasicCompletion = false
                week2day2BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
      
            }

        }
        
        //..Week 2, Day 3 - Basic: <5
        if (inputEntered <= 5 && daySelected == "5" || week2day2BasicCompletion == true)
        {
            Set1Title.text = programDataWeek2Day3?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day3?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day3?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day3?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day3?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd beginner training day in your 2nd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week2day2BasicCompletion = false
                week2day3BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
            
        }
        
        //..Week 3 Day 1 - Basic: 16-20
        if (inputEntered >= 16 && daySelected == "6" || week2day3BasicCompletion == true)
        {
            Set1Title.text = programDataWeek3Day1?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day1?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day1?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                
                Set4Title.text = programDataWeek3Day1?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day1?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 3rd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week2day3BasicCompletion = false
                week3day1BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
       
        }
        
        //..Week 3, Day 2 - Basic
        if (inputEntered >= 16 && daySelected == "7" || week3day1BasicCompletion == true)
        {
            Set1Title.text = programDataWeek3Day2?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day2?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day2?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day2?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day2?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd beginner training day in your 3rd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week3day1BasicCompletion = false
                week3day2BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
      
            }
            
        }
        
        //..Week 3, Day 3 - Basic
        if (inputEntered >= 16 && daySelected == "8" || week3day2BasicCompletion == true)
        {
            Set1Title.text = programDataWeek3Day3?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day3?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day3?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day3?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day3?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd beginner training day in your 3rd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week3day2BasicCompletion = false
                week3day3BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
             
            }
            
        }
        
        
        //..Week 4, Day 1 - Basic
        if (inputEntered >= 16 && daySelected == "9" || week3day3BasicCompletion == true)
        {
            Set1Title.text = programDataWeek4Day1?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
           if(secondsCountReference == 0)
           {
            Set2Title.text = programDataWeek4Day1?.Week1Low1[1]
            Set2Title.layer.masksToBounds = true
            Set2Title.layer.cornerRadius = 10
            Set2Title.layer.backgroundColor = UIColor.white.cgColor
            
           }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day1?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day1?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day1?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
        
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 4th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week3day3BasicCompletion = false
                week4day1BasicCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0

            }
           
        }
        
        //..Week 4, Day 2 - Basic
        if (inputEntered >= 16 && daySelected == "10" || week4day1BasicCompletion == true)
        {
            Set1Title.text = programDataWeek4Day2?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                
                Set2Title.text = programDataWeek4Day2?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day2?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day2?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day2?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 4th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week4day1BasicCompletion = false
                week4day2BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
            }

        }
        
        //..Week 4, Day 3 - Basic
        if (inputEntered >= 16  && daySelected == "11" || week4day2BasicCompletion == true)
        {
            Set1Title.text = programDataWeek4Day3?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day3?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day3?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day3?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day3?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd beginner training day in your 4th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week4day2BasicCompletion = false
                week4day3BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
                
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
    
               
        }
        
        //..Week 5, Day 1 - Basic
        if (inputEntered >= 31 && daySelected == "12" || week4day3BasicCompletion == true)
        {
            Set1Title.text = programDataWeek5Day1?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day1?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day1?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day1?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day1?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 5th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week4day3BasicCompletion = false
                week5day1BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
        }
        
        //..Week 5, Day 2 - Basic
        if (inputEntered >= 31 && daySelected == "13" || week5day1BasicCompletion == true)
        {
            Set1Title.text = programDataWeek5Day2?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day2?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day2?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day2?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day2?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd beginner training day in your 5th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week5day1BasicCompletion = false
                week5day2BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
        }
        
        //..Week 5, Day 3 - Basic
        if (inputEntered >= 31 && daySelected == "14" || week5day2BasicCompletion == true)
        {
            Set1Title.text = programDataWeek5Day3?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day3?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day3?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day3?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day3?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd beginner training day in your 5th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week5day2BasicCompletion = false
                week5day3BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
   
        }
        
        //..Week 6, Day 1 - Basic
        if (inputEntered >= 46 && daySelected == "15" || week5day3BasicCompletion == true)
        {
            Set1Title.text = programDataWeek6Day1?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day1?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day1?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day1?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day1?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st beginner training day in your 6th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week5day3BasicCompletion = false
                week6day1BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
              
            }
        
        }

        //..Week 6, Day 2 - Basic
        if (inputEntered >= 46 && daySelected == "16" || week6day1BasicCompletion == true)
        {
            Set1Title.text = programDataWeek6Day2?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day2?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day2?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day2?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day2?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd beginner training day in your 6th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week6day1BasicCompletion = false
                week6day2BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0

            }
            
        }
        
        //..Week 6, Day 3 - Basic
        if (inputEntered >= 46 && daySelected == "17" || week6day2BasicCompletion == true)
        {
            Set1Title.text = programDataWeek6Day3?.Week1Low1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day3?.Week1Low1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day3?.Week1Low1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day3?.Week1Low1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day3?.Week1Low1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd beginner training day in your 6th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
                //We already completed this program, chaging the variable to false
                week6day2BasicCompletion = false
                week6day3BasicCompletion = true
                
                secondsCountReference = 10
                setWorkOutCounter = 0
                
                
            }
     
        }
        
        //..Week 1, Day 1, Medium: 6-10
        if(inputEntered >= 6 && daySelected == "0" || week1day3BasicCompletion == true)
        {
    
            Set1Title.text = programDataTransfer?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
      
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataTransfer?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataTransfer?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataTransfer?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataTransfer?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st medium difficult training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day3BasicCompletion = false
                week1day1MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            
            }

        }
        
        //..Week 1, Day 2 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "1" || week1day1MediumCompletion == true)
        {
                Set1Title.text = programDataWeek1Day2?.Week1Medium1[0]
                Set1Title.layer.masksToBounds = true
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.white.cgColor

            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek1Day2?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek1Day2?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek1Day2?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek1Day2?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd medium difficult training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day1MediumCompletion = false
                week1day2MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
        }
        //..Week 1, Day 3 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "2" || week1day2MediumCompletion == true)
        {
            Set1Title.text = programDataWeek1Day3?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek1Day3?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek1Day3?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek1Day3?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek1Day3?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd medium difficult training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day2MediumCompletion = false
                week1day3MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
      
            }
            
        }
        
        //..Week 2, Day 1 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "3" || week1day3MediumCompletion == true)
        {
            Set1Title.text = programDataWeek2Day1?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day1?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day1?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day1?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day1?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st medium difficult training day in your 2nd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day3MediumCompletion = false
                week2day1MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
            
        }
        
        //..Week 2, Day 2 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "4" || week2day1MediumCompletion == true)
        {
            Set1Title.text = programDataWeek2Day2?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day2?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day2?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day2?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day2?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd medium difficult training day in your 2nd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week2day1MediumCompletion = false
                week2day2MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
            
        }
        
        //..Week 2, Day 3 - Medium: 6-10
        if (inputEntered >= 6 && daySelected == "5" || week2day2MediumCompletion == true)
        {
            Set1Title.text = programDataWeek2Day3?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor

            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day3?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day3?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day3?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                //..
                Set5Title.text = programDataWeek2Day3?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd medium difficult training day in your 2nd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week2day2MediumCompletion = false
                week2day3MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
              
            }
   
        }
        
        //..Week 3, Day 1 - Medium
        if (inputEntered >= 21 && daySelected == "6" || week2day3MediumCompletion == true)
        {
            Set1Title.text = programDataWeek3Day1?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day1?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day1?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day1?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day1?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st medium difficult training day in your 3rd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week2day3MediumCompletion = false
                week3day1MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
        }
        //..Week 3, Day 2 - Medium
        if ( inputEntered >= 21 && daySelected == "7" || week3day1MediumCompletion == true)
        {
            Set1Title.text = programDataWeek3Day2?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day2?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day2?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day2?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day2?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd medium difficult training day in your 3rd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week3day1MediumCompletion = false
                week3day2MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            
            }
            
        }
        
        //..Week 3, Day 3 - Medium
        if (inputEntered >= 21 && daySelected == "8" || week3day2MediumCompletion == true)
        {
            
            Set1Title.text = programDataWeek3Day3?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor

            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day3?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day3?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day3?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day3?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd medium difficult training day in your 3rd week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week3day2MediumCompletion = false
                week3day3MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            
            }
            
        }
        
        //..Week 4, Day 1 - Medium
        if (inputEntered >= 21 && daySelected == "9" || week3day3MediumCompletion == true)
        {
            Set1Title.text = programDataWeek4Day1?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day1?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day1?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day1?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day1?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st medium difficult training day in your 4th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week3day3MediumCompletion = false
                week4day1MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
              
                
            }
                  
        }
        
        //..Week 4, Day 2 - Medium
        if (inputEntered >= 21 && daySelected == "10" || week4day1MediumCompletion == true)
        {
            Set1Title.text = programDataWeek4Day2?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day2?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day2?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day2?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor

            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                  Set5Title.text = programDataWeek4Day2?.Week1Medium1[4]
                  Set5Title.layer.masksToBounds = true
                  Set5Title.layer.cornerRadius = 10
                  Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd medium difficult training day in your 4th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week4day1MediumCompletion = false
                week4day2MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
     
        }
        
        //..Week 4, Day 3 - Medium
        if (inputEntered >= 21 && daySelected == "11" || week4day2MediumCompletion == true)
        {
            Set1Title.text = programDataWeek4Day3?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day3?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day3?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day3?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                
                    Set5Title.text = programDataWeek4Day3?.Week1Medium1[4]
                    Set5Title.layer.masksToBounds = true
                    Set5Title.layer.cornerRadius = 10
                    Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd medium difficult training day in your 4th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week4day2MediumCompletion = false
                week4day3MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            
            }
            
        }
        
        //..Week 5, Day 1 - Medium
        if (inputEntered >= 36 && daySelected == "12" || week4day3MediumCompletion == true)
        {
            Set1Title.text = programDataWeek5Day1?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day1?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day1?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day1?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day1?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st medium difficult training day in your 5th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week4day3MediumCompletion = false
                week5day1MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
               
            }
        
        }
        
        //..Week 5, Day 2 - Medium
        if (inputEntered >= 36 && daySelected == "13" || week5day1MediumCompletion == true)
        {
            Set1Title.text = programDataWeek5Day2?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day2?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day2?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day2?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day2?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd medium difficult training day in your 5th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week5day1MediumCompletion = false
                week5day2MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
    
            }
            
        }
        
        //..Week 5, Day 3 - Medium
        if (inputEntered >= 36 && daySelected == "14" || week5day2MediumCompletion == true)
        {
            Set1Title.text = programDataWeek5Day3?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day3?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day3?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day3?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day3?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd medium difficult training day in your 5th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week5day2MediumCompletion = false
                week5day3MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
          
            }
        }
        
        //..Week 6, Day 1 - Meduium
        if (inputEntered >= 51 && daySelected == "15" || week5day3MediumCompletion == true)
        {
            Set1Title.text = programDataWeek6Day1?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day1?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
            
                Set3Title.text = programDataWeek6Day1?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day1?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day1?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
            
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st medium difficult training day in your 6th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week5day3MediumCompletion = false
                week6day1MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
           
            }
    
        }
        
        //..Week 6, Day 2 - Medium
        if (inputEntered >= 51 && daySelected == "16" || week6day1MediumCompletion == true)
        {
            Set1Title.text = programDataWeek6Day2?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day2?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day2?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day2?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day2?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd medium difficult training day in your 6th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week6day1MediumCompletion = false
                week6day2MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
                
            }
            
        }
        
        //..Week 6, Day 3 - Medium
        if (inputEntered >= 51  && daySelected == "17" || week6day2MediumCompletion == true)
        {
            Set1Title.text = programDataWeek6Day3?.Week1Medium1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day3?.Week1Medium1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day3?.Week1Medium1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day3?.Week1Medium1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day3?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 3rd medium difficult training day in your 6th week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week6day2MediumCompletion = false
                week6day3MediumCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            
            }
   
        }
        
        //..Week 1, Day 1 = Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "0")
        {
            Set1Title.text = programDataTransfer?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataTransfer?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataTransfer?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataTransfer?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor

            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataTransfer?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 1st advance difficult training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day1AdvanceCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
             
            }
            
        }
        
        //..Week 1, Day 2 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "1" || week1day1AdvanceCompletion == true)
        {
                Set1Title.text = programDataWeek1Day2?.Week1High1[0]
                Set1Title.layer.masksToBounds = true
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek1Day2?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek1Day2?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek1Day2?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek1Day2?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd advance difficult training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day1AdvanceCompletion = false
                week1day2AdvanceCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
            }
            
        }
    
        //..Week 1, Day 3 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "2" || week1day2AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek1Day3?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek1Day3?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek1Day3?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek1Day3?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek1Day3?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                Alert.showAlertBox(on: self, with: "Congrats completing your 2nd advance difficult training day in your 1st week ", message: "Make sure to rest your muscles for the next 24 hours now. 😅")
                
                //.. Changing UI Label back to default settings
                Set1Title.text = "0"
                Set1Title.layer.masksToBounds = false
                Set1Title.layer.cornerRadius = 10
                Set1Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set2Title.text = "0"
                Set2Title.layer.masksToBounds = false
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set3Title.text = "0"
                Set3Title.layer.masksToBounds = false
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.clear.cgColor
                
                Set4Title.text = "0"
                Set4Title.layer.masksToBounds = false
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.clear.cgColor
            
                Set5Title.text = "0"
                Set5Title.layer.masksToBounds = false
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.clear.cgColor
                
              
                //We already completed this program, chaging the variable to false
                week1day2AdvanceCompletion = false
                week1day3AdvanceCompletion = true
                secondsCountReference = 10
                setWorkOutCounter = 0
       
            }

        }
        
        

        

        
 
        
        //..Week 2, Day 1 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "3" || week1day3AdvanceCompletion == true)
        {
            
            
            Set1Title.text = programDataWeek2Day1?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day1?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day1?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day1?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day1?.Week1Medium1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                week2day1AdvanceCompletion = true
                setWorkOutCounter = 0
            }
            
    
        }
        
        //..Week 2, Day 2 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "4" || week2day1AdvanceCompletion == true)
        {
            
            Set1Title.text = programDataWeek2Day2?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                
                Set2Title.text = programDataWeek2Day2?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek2Day2?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek2Day2?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day2?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //...
                week2day2AdvanceCompletion = true
                setWorkOutCounter = 0
                
            }
           
        }
        
        //..Week 2, Day 3 - Advanced: 11-20
        if (inputEntered >= 11 && daySelected == "5" || week2day2AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek2Day3?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek2Day3?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                
                Set3Title.text = programDataWeek2Day3?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
           if(secondsCountReference == 0 && setWorkOutCounter == 3)
           {
            
            Set4Title.text = programDataWeek2Day3?.Week1High1[3]
            Set4Title.layer.masksToBounds = true
            Set4Title.layer.cornerRadius = 10
            Set4Title.layer.backgroundColor = UIColor.white.cgColor
            
           }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day3?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                week2day3AdvanceCompletion = true
                setWorkOutCounter = 0
            }
          
        }
        
        ///...
        
        
   
        //..Week 3, Day 1 - Advanced
        if (inputEntered > 25 && daySelected == "6" || week2day3AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek3Day1?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day1?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day1?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day1?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day1?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed
                week3day1AdvanceCompletion = true
                setWorkOutCounter = 0
                
            }
            
        }
        
        //..Week 3, Day 2 - Advanced
        if (inputEntered > 25 && daySelected == "7" || week3day1AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek3Day2?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day2?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day2?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day2?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day2?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week3day2AdvanceCompletion = true
                setWorkOutCounter = 0
                
            }
            
            
        }
   
        //..Week 3, Day 3 - Advanced
        if (inputEntered > 25 && daySelected == "8" || week3day2AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek3Day3?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek3Day3?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek3Day3?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor

            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek3Day3?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek3Day3?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor

                //..Set Completed;
                week3day3AdvanceCompletion = true
                setWorkOutCounter = 0
            }
            
        }
        
  
        
       
        
        //..Week 4, Day 1 - Advanced
        if (inputEntered > 25 && daySelected == "9" || week3day3AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek4Day1?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day1?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day1?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day1?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day1?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week4day1AdvanceCompletion = true
                setWorkOutCounter = 0
                
            }
           
 
        }
        
        //..Week 4, Day 2 - Advanced
        if (inputEntered > 25 && daySelected == "10" || week4day1AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek4Day2?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day2?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day2?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day2?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day2?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week4day2AdvanceCompletion = true
                setWorkOutCounter = 0
            }

        }
        
        //..Week 4, Day 3 - Advanced
        if (inputEntered > 25 && daySelected == "11" || week4day2AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek4Day3?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek4Day3?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek4Day3?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek4Day3?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek4Day3?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                
                //..Set Completed;
                week4day3AdvanceCompletion = true
                setWorkOutCounter = 0
            }
            
            
        }
        
       
        
        
        //..Week 5, Day 1 - Advanced
        if (inputEntered > 40 && daySelected == "12" || week4day3AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek5Day1?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day1?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day1?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day1?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day1?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week5day1AdvanceCompletion = true
                setWorkOutCounter = 0
            }
       
        }
        
        //..Week 5, Day 2 - Advanced
        if (inputEntered > 40 && daySelected == "13" || week5day1AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek5Day2?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day2?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek5Day2?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day2?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day2?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed
                week5day2AdvanceCompletion = true
                setWorkOutCounter = 0
            }
         
        }
        
        //..Week 5, Day 3 - Advanced
        if (inputEntered > 40 && daySelected == "14" || week5day2AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek5Day3?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek5Day3?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                
                Set3Title.text = programDataWeek5Day3?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek5Day3?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek5Day3?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week5day3AdvanceCompletion = true
                setWorkOutCounter = 0
            }
         
        }
        
        
        
        
        //..Week 6, Day 1 - Advanced
        if (inputEntered > 60 && daySelected == "15" || week5day3AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek6Day1?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day1?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day1?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day1?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day1?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week6day1AdvanceCompletion = true
                setWorkOutCounter = 0
                
            }

        }
        
        //..Week 6, Day 2 - Advanced..
        if (inputEntered > 60 && daySelected == "16" || week6day1AdvanceCompletion == true)
        {
            Set1Title.text = programDataWeek6Day2?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day2?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day2?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day2?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
                
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek2Day2?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week6day2AdvanceCompletion = true
                setWorkOutCounter = 0
            }
            
        }
    
        //..Week 6, Day 3 - Advanced
        if (inputEntered > 60 && daySelected == "17" || week6day2AdvanceCompletion == true)
        
        {
            Set1Title.text = programDataWeek6Day3?.Week1High1[0]
            Set1Title.layer.masksToBounds = true
            Set1Title.layer.cornerRadius = 10
            Set1Title.layer.backgroundColor = UIColor.white.cgColor
            
            if(secondsCountReference == 0)
            {
                Set2Title.text = programDataWeek6Day3?.Week1High1[1]
                Set2Title.layer.masksToBounds = true
                Set2Title.layer.cornerRadius = 10
                Set2Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 2)
            {
                Set3Title.text = programDataWeek6Day3?.Week1High1[2]
                Set3Title.layer.masksToBounds = true
                Set3Title.layer.cornerRadius = 10
                Set3Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 3)
            {
                Set4Title.text = programDataWeek6Day3?.Week1High1[3]
                Set4Title.layer.masksToBounds = true
                Set4Title.layer.cornerRadius = 10
                Set4Title.layer.backgroundColor = UIColor.white.cgColor
            }
            
            if(secondsCountReference == 0 && setWorkOutCounter == 4)
            {
                Set5Title.text = programDataWeek6Day3?.Week1High1[4]
                Set5Title.layer.masksToBounds = true
                Set5Title.layer.cornerRadius = 10
                Set5Title.layer.backgroundColor = UIColor.white.cgColor
                
                //..Set Completed;
                week6day3AdvanceCompletion = true
                setWorkOutCounter = 0
                
            }
     
        }
        
    }

}









//FourthViewController Extension:
extension FourthViewController
{
    
    /*
    func save(value: String)
    {
        
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate
        {
            let context = appDelegate.persistentContainer.viewContext
            guard let entityDescription = NSEntityDescription.entity(forEntityName: "UserEntity", in: context) else {return}
            
            let newValue = NSManagedObject(entity: entityDescription, insertInto: context)
            
            newValue.setValue(value, forKey: "userPushUps")
            
            do {
                
                try context.save()
                print("Saved \(value)")
            }
            catch
            {
             print ("Saving Error")
            }
        }
    }
    
    func retrieveValue(){
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate{
            let context = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<UserEntity>(entityName: "UserEntity")
            
            do
            {
                
                let results = try context.fetch(fetchRequest)
                
                for result in results {
                    if let UserEntity = result.UserEntity {
                        
                        print(UserEntity)
                    }
                    
                }

            }
            catch{
                
                print("Could not retrieve any data")
            }
        }
    }
 */
}
    
 
