//
//  ThirdViewController.swift
//  PushUpApp
//
//  Created by Amaury C. Rivera on 9/22/21.
//

import UIKit

class ThirdViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate

{
    //Picker View Reference..
    @IBOutlet weak var PViewReference: UIPickerView!
    
    //WeeksReferenceProgram..
    var WeeksDays: [String] = []
    
    //FourthViewController Reference Variables..
    var titlesReferences: FourthViewController?
    var weeksProgramData: Week1?
    
    bool week1Confirmation = true
    
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
        return WeeksDays[row]
    }
    
    //Button to move to the next Screen:
    @IBAction func FVControlelrButton(_ sender: UIButton)
    {
        performSegue(withIdentifier: "FVCIdentifier", sender: self)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        if(WeeksDays[row] == "Week1-Day2")
        {
            weeksProgramData = Week1(Week: "Week1Day2", Week1Low1: ["3", "4", "2", "3","+4"], Week1Medium1: ["6", "8","6", "6", "+7"], Week1High1: ["10", "12", "8", "8", "+12"])
            
            titlesReferences?.Set1Title.text = weeksProgramData?.Week1Low1 [0]
            
            titlesReferences?.Set2Title.text = weeksProgramData?.Week1Low1 [1]
            
            titlesReferences?.Set3Title.text = weeksProgramData?.Week1Low1 [2]
            
            titlesReferences?.Set4Title.text = weeksProgramData?.Week1Low1 [3]
            
            titlesReferences?.Set5Title.text = weeksProgramData?.Week1Low1 [4]
            
        }
        
    }
    
    override func viewDidLoad()
    
    {
        super.viewDidLoad()
        
        //..Picker View Reference..
        PViewReference.dataSource = self
        PViewReference.delegate = self
        
        WeeksDays = ["Week1-Day1", "Week1-Day2", "Week1-Day3", "Week2-Day1", "Week2-Day2", "Week2-Day3", "Week3-Day1", "Week3-Day2", "Week3-Day3"]

        // Do any additional setup after loading the view.
        
        
        
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
