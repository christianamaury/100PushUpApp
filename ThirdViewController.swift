//
//  ThirdViewController.swift
//  PushUpApp
//
//  Created by Amaury C. Rivera on 9/22/21.
//

import UIKit
import CoreData

class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate
{
    //Core Data class
    var userModelData = UserAttributes ()
    
    //Variable for checking the first load
    var firstLoad = true
    
    //Picker View Reference..
    @IBOutlet weak var PViewReference: UIPickerView!
    @IBOutlet weak var PushUpInput: UITextField!
    
    //WeeksReferenceProgram..
    var WeeksDays: [String] = []
    
    //FourthViewController Reference Variables..
    var titlesReferences: FourthViewController?
    var userObjectReferences: FourthViewController?
    var week1day1Data: Weeks?
    var week1day2Data: Weeks?
    var week1day3Data: Weeks?
    var week2day1Data: Weeks?
    var week2Day2Data: Weeks?
    var week2Day3Data: Weeks?
    var week3Day1Data: Weeks?
    var week3Day2Data: Weeks?
    var week3Day3Data: Weeks?
    var week4Day1Data: Weeks?
    var week4Day2Data: Weeks?
    var week4Day3Data: Weeks?
    var week5Day1Data: Weeks?
    var week5Day2Data: Weeks?
    var week5Day3Data: Weeks?
    var week6Day1Data: Weeks?
    var week6Day2Data: Weeks?
    var week6Day3Data: Weeks?
        
    var pickerViewDaySelected: String = "0"
    
    var pushUpsEntered: Int = 0
    var pushUpsVerifier: Bool = false
        

    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        //Return just one pickerView component..
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        //It will return and display the grant total of my array..
        return WeeksDays.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return WeeksDays [row]
    }
    
    //Button to move to the next Screen:
    @IBAction func FVControlelrButton(_ sender: UIButton)
    //Cotejar si alguien entro data en el input
    {
        
        if(PushUpInput.text != "")
        {
            pushUpsVerifier = true
            performSegue(withIdentifier: "FVCIdentifier", sender: self)
            
        }
        else
        {
            Alert.showAlertBox(on: self, with: "Invalid enter 😅", message: "Please fill out the require field ✅")
        }
        
        /*
        if(pushUpsVerifier == true)
        {
            performSegue(withIdentifier: "FVCIdentifier", sender: self)
        }
        
        else
        {
            Alert.showAlertBox(on: self, with: "Invalid enter", message: "Please fill out the require field")
        }
         */
        
        
        /*
        //..Este if lo puedo quitar, 
        if(userObjectReferences?.userEntityArray[3].week1day1BasicCompletion == true)
        {
            
        }*/
        
        //else { performSegue(withIdentifier: "FVCIdentifier", sender: self)}
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        var fourthViewController = segue.destination as! FourthViewController
        
        if(pushUpsVerifier == true)
        {
            //..It means that the customer didn't enter any number
            fourthViewController.programDataTransfer = week1day1Data
            fourthViewController.daySelected = pickerViewDaySelected
            
            fourthViewController.programDataWeek1Day2 = week1day2Data
            
            fourthViewController.programDataWeek1Day3 = week1day3Data
            
            fourthViewController.programDataWeek2Day1 = week2day1Data
            
            fourthViewController.programDataWeek2Day2 = week2Day2Data
            
            fourthViewController.programDataWeek2Day3 = week2Day3Data
            
            fourthViewController.programDataWeek3Day1 = week3Day1Data
            
            fourthViewController.programDataWeek3Day2 = week3Day2Data
            
            fourthViewController.programDataWeek3Day3 = week3Day3Data
            
            fourthViewController.programDataWeek4Day1 = week4Day1Data
            
            fourthViewController.programDataWeek4Day2 = week4Day2Data
            
            fourthViewController.programDataWeek4Day3 = week4Day3Data
            
            fourthViewController.programDataWeek5Day1 = week5Day1Data
            
            fourthViewController.programDataWeek5Day2 = week5Day2Data
            
            fourthViewController.programDataWeek5Day3 = week5Day3Data
            
            fourthViewController.programDataWeek6Day1 = week6Day1Data
            
            fourthViewController.programDataWeek6Day2 = week6Day2Data
            
            fourthViewController.programDataWeek6Day3 = week6Day3Data
            
            pushUpsEntered = Int(PushUpInput.text!)!
            
            //Adding user input to our Core Data Model
            //userModelData.userInput = Int16(PushUpInput.text!)!
            
            fourthViewController.inputEntered = pushUpsEntered
            
        }
        
        else
        {
           return
        }
        
        //pushUpsEntered = Int (PushUpInput.text!)!
        //fourthViewController.inputEntered = pushUpsEntered
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        pickerViewDaySelected = String (row)
        
        //Selecting initial saving row for the user: Core Data Class
        //userModelData.daySelected = String (row)
        //savingCoreData()
        
    }
    
    
    func savingCoreData(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //..using the appDelegate variable
        let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "UserAttributes", in: context)
        let userInformation = UserAttributes(entity: entity!, insertInto: context)
      
   
        
        do {
            try context.save()
            userInformation.daySelected = userModelData.daySelected
            userInformation.userInput = userModelData.userInput
        }
        
        catch{
            print ("context save error")
        }
    }
    
    func loadingData(){
        if(firstLoad)
        {
            firstLoad = false
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            //..using the appDelegate variable
            let context: NSManagedObjectContext = appDelegate.persistentContainer.viewContext
            let request = NSFetchRequest<NSFetchRequestResult>(entityName: "UserAttributes")
            
            do{
                let results = try context.fetch(request)

            }
            
            catch{
                print("Fetch has unfortunately failed")
                
            }
        }
    
    }
    
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        //..Return key purposes when the user do an input
        PushUpInput.delegate = self
        
        //..Saving User Input
        //pushUpsEntered = Int(PushUpInput.text!)!
        
        
        /*
        //..Fetching Core Data
        let fetchRequest: NSFetchRequest <UserEntity> = UserEntity.fetchRequest()
        
        do{
           let userObject = try PersistentServices.context.fetch(fetchRequest)
           
        }
        catch{
            
            if let error = error as NSError?
            {
                fatalError("Unresolved error \(error), \(error.userInfo)")
                
            }
        }
        */
      
        //..Picker View Reference..
        PViewReference.dataSource = self
        PViewReference.delegate = self
        
        WeeksDays = ["Week1-Day1", "Week1-Day2", "Week1-Day3", "Week2-Day1", "Week2-Day2", "Week2-Day3", "Week3-Day1", "Week3-Day2", "Week3-Day3", "Week4-Day1", "Week4-Day2", "Week4-Day3", "Week5-Day1", "Week5-Day2", "Week5-Day3", "Week6-Day1", "Week6-Day2", "Week6-Day3"]
        
        week1day1Data = Weeks (Week: "Week1Day1", Week1Low1: ["2", "3", "2", "2", "+3"], Week1Medium1: ["6", "6", "4", "4", "+5"], Week1High1: ["10", "12", "7", "7", "+9"])

        // Do any additional setup after loading the view.
        
        week1day2Data = Weeks (Week: "Week1Day2", Week1Low1: ["3", "4", "2", "3", "+4"], Week1Medium1: ["6", "8", "6", "6", "+7"], Week1High1: ["10", "12", "8", "8", "+12"])
        
        week1day3Data = Weeks(Week: "Week1Day3", Week1Low1: ["4", "5", "4", "4", "+5"], Week1Medium1: ["8", "10", "7", "7", "+10"], Week1High1: ["11", "15", "9", "9", "+13"])
        
        week2day1Data = Weeks(Week: "Week2Day1", Week1Low1: ["4", "6", "4", "4", "+6"], Week1Medium1: ["9", "11", "8", "8", "+11"], Week1High1: ["14", "14", "10", "10", "+15"])
        
        week2Day2Data = Weeks(Week: "Week2Day2", Week1Low1: ["5", "6", "4", "4", "+7"], Week1Medium1: ["10", "12", "9", "9", "+13"], Week1High1: ["14", "16", "12", "12", "+17"])
        
        week2Day3Data = Weeks(Week: "Week2Day3", Week1Low1: ["5", "7", "5", "5", "+8"], Week1Medium1: ["12", "13", "10", "10", "15"], Week1High1: ["16", "17", "14", "14", "+20"])
        
        week3Day1Data = Weeks(Week: "Week3Day1", Week1Low1: ["10", "12", "7", "7", "+9"], Week1Medium1: ["12", "17", "13", "13", "+17"], Week1High1: ["14", "18", "14", "14", "+20"])
        
        week3Day2Data = Weeks(Week: "Week3Day2", Week1Low1: ["10", "12", "8", "8", "+12"], Week1Medium1: ["14", "19", "14", "14", "+19"], Week1High1: ["20", "25", "15", "15", "+25"])
        
        week3Day3Data = Weeks(Week: "Week3Day3", Week1Low1: ["11", "13", "9", "9", "+13"], Week1Medium1: ["16", "21", "15", "15", "+21"], Week1High1: ["22", "30", "20", "20", "+28"])
        
        week4Day1Data = Weeks(Week: "Week4Day1", Week1Low1: ["12", "14", "11", "10", "+16"], Week1Medium1: ["18", "22", "16", "16", "+25"], Week1High1: ["21", "25", "21", "21", "+32"])
        
        week4Day2Data = Weeks(Week: "Week4Day2", Week1Low1: ["14", "16", "12", "12", "+18"], Week1Medium1: ["20", "25", "20", "20", "+28"], Week1High1: ["25", "29", "25", "25", "+36"])
        
        week4Day3Data = Weeks(Week: "Week4Day3", Week1Low1: ["16", "18", "13", "13", "+20"], Week1Medium1: ["23", "28", "23", "23", "+33"], Week1High1: ["29", "33", "29", "29", "+40"])
        
        week5Day1Data = Weeks(Week: "Week5Day1", Week1Low1: ["17", "19", "15", "15", "+20"], Week1Medium1: ["28", "35", "25", "22", "+35"], Week1High1: ["36", "40", "30", "24", "+40"])
        
        week5Day2Data = Weeks(Week: "Week5Day2", Week1Low1: ["13", "10", "10", "9", "+25"], Week1Medium1: ["20", "14", "14", "16", "+40"], Week1High1: ["22", "18", "18", "22", "+25"])
        
        week5Day3Data = Weeks(Week: "Week5Day3", Week1Low1: ["15", "12", "12", "10", "+30"], Week1Medium1: ["20", "17", "17", "20", "+45"], Week1High1: ["24", "20", "20", "22", "50"])
        
        week6Day1Data = Weeks(Week: "Week6Day1", Week1Low1: ["25", "30", "20", "15", "+40"], Week1Medium1: ["40", "50", "25", "25", "+50"], Week1High1: ["45", "55", "35", "30", "+55"])
        
        week6Day2Data = Weeks(Week: "Week6Day2", Week1Low1: ["14", "14", "10", "10", "+44"], Week1Medium1: ["20", "20", "18", "18", "+53"], Week1High1: ["24", "24", "18", "18", "+58"])
        
        week6Day3Data = Weeks(Week: "Week6Day3", Week1Low1: ["16", "16", "14", "14", "+50"], Week1Medium1: ["25", "25", "18", "18", "+55"], Week1High1: ["26", "26", "22", "22", "+60"])

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }

}


//..It's called when return key is press, return NO to ignore;
extension ThirdViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        PushUpInput.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    
}
