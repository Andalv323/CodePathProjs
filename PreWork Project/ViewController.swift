//
//  ViewController.swift
//  PreWork Project
//
//  Created by user230516 on 1/25/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PetsSwitch: UISwitch!
    @IBOutlet weak var StepperInfo: UIStepper!
    @IBOutlet weak var Segments: UISegmentedControl!
    @IBOutlet weak var SchoolTextBox: UITextField!
    @IBOutlet weak var LastTextBox: UITextField!
    @IBOutlet weak var FirstTextBox: UITextField!
    @IBOutlet weak var PetsNumberLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func Stepper(_ sender: UIStepper) {
        PetsNumberLabel.text = "\(Int(sender.value))"
    }
    @IBAction func introduceselfbutton(_ sender: UIButton) {
        let year = Segments.titleForSegment(at: Segments.selectedSegmentIndex)
        
        let introduction = "My name is \(FirstTextBox.text!) \(LastTextBox.text!) and I attend \(SchoolTextBox.text!). I am currently in my \(year!) year and I own \(PetsNumberLabel.text!) dogs. It is \(PetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }

}

