//
//  ViewController.swift
//  ThreeLetterWordHackwhich
//
//  Created by Lin LaMonte on 3/31/22.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var currentLetterLabel: UILabel!
    
    @IBOutlet var wordLabels: [UILabel]!
    
    @IBOutlet weak var stackViewHorz: UIStackView!
    
    
    var letters = ["A", "B", "C", "D","E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var counter: Int = 0
    var currentLetter = "A"
   
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    
    @IBAction func whenTapped(_ sender: Any)
    {

        
    
//can click on item(ex: ? boxes) and tag them, which assings them a # will be useful for next proj//
        currentLetter = letters[counter]
        currentLetterLabel.text = currentLetter
        
        //tap gesture recognizer code
        let selectedPoint = ((sender as! AnyObject).location(in:stackViewHorz))
        
        for label in wordLabels
        {
            if
                label.frame.contains(selectedPoint)
            {
                label.text = "\(currentLetter)"
            }
        }
        
    counter += 1
        if counter == 26
        {
            counter = resetCounter()
            print(counter)
            
            currentLetter = letters[counter]
            currentLetterLabel.text = currentLetter
            
            for label in self.wordLabels
            {
                label.text = "?"
            }
        }
    }
    
  func resetCounter() -> Int
    {
        let alert = UIAlertController(title: "Resetting Counter", message: nil, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        return 0
    }
    
}

