//
//  Quiz1ViewController.swift
//  Empowering Relationships Quiz
//
//  Created by Tiffany Kong on 18/9/20.
//

import UIKit

class Quiz1ViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet var quiz1View: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var yesButton: RoundedButton!
    @IBOutlet weak var noButton: RoundedButton!
    @IBOutlet weak var maybeButton: RoundedButton!
    
    var yesCount: Int?
    var noCount: Int?
    var maybeCount: Int?
    var yesBoolean: Bool?
    var noBoolean: Bool?
    var maybeBoolean: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: SETTING UP THE GRADIENT BACKGROUND
        //create the gradient layer
        let gradientLayer = CAGradientLayer()
        //set the size of the layer equal to the size of the homeView
        gradientLayer.frame = quiz1View.bounds
        //set an array of Core Graphics colors (.cgColor) to create the gradients
        gradientLayer.colors = [#colorLiteral(red: 0.5215686275, green: 0.3764705882, blue: 0.7960784314, alpha: 1).cgColor, UIColor(red: 211/255, green: 33/255, blue: 240/255, alpha: 1).cgColor]
        //rasterise the static layer to improve app performance
        gradientLayer.shouldRasterize = true
        //apply the gradient to the homeView, need to make sure that it is at 0 to apply beneath the objects in the View
        quiz1View.layer.insertSublayer(gradientLayer, at: 0)
                
        //iniitalising counts and booleans
        //makes it okay to force unwrap
        yesCount = 0
        noCount = 0
        maybeCount = 0
        yesBoolean = false
        noBoolean = false
        maybeBoolean = false
        progressLabel.text = "1/17"
    }
    
    //MARK: YES BUTTON
    @IBAction func yesButton(_ sender: Any) {
        //if the noButton has been pressed before - change it to false, decrement the noCount and change the colour of noButton
        if yesButton.backgroundColor == UIColor.white && noBoolean == true{
            noBoolean = false
            noCount! -= 1
            noButton.backgroundColor = UIColor.white
            noButton.setTitleColor(UIColor.black, for: .normal)
            
            //change the colour of the button and increment yesCount
            yesButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            yesButton.setTitleColor(UIColor.white, for: .normal)
            yesBoolean = true
            yesCount! += 1
        }
        //if the maybeButton has been pressed before - change it to false, decrement the maybeCount and change the colour of maybeButton
        else if yesButton.backgroundColor == UIColor.white && maybeBoolean == true{
            maybeBoolean = false
            maybeCount! -= 1
            maybeButton.backgroundColor = UIColor.white
            maybeButton.setTitleColor(UIColor.black, for: .normal)
            
            //change the colour of the button and increment yesCount
            yesButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            yesButton.setTitleColor(UIColor.white, for: .normal)
            yesBoolean = true
            yesCount! += 1
        }
        //if the button has already been pressed, change it back to its colour and decrement the yesCount
        else if yesBoolean == true{
            yesButton.backgroundColor = UIColor.white
            yesButton.setTitleColor(UIColor.black, for: .normal)
            yesBoolean = false
            yesCount! -= 1
        }
        else if yesBoolean == false{
            yesButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            yesButton.setTitleColor(UIColor.white, for: .normal)
            yesBoolean = true
            yesCount! += 1
        }
    }
    
    //MARK: - NO BUTTON
    @IBAction func noButton(_ sender: Any) {
        //if the yesButton has been pressed before - change it to false, decrement the yesCount and change the colour of yesButton
        if noButton.backgroundColor == UIColor.white && yesBoolean == true{
            yesBoolean = false
            yesCount! -= 1
            yesButton.backgroundColor = UIColor.white
            yesButton.setTitleColor(UIColor.black, for: .normal)
            
            //change the colour of the button and increment noCount
            noButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            noButton.setTitleColor(UIColor.white, for: .normal)
            noBoolean = true
            noCount! += 1
        }
        //if the maybeButton has been pressed before - change it to false, decrement the maybeCount and change the colour of maybeButton
        else if noButton.backgroundColor == UIColor.white && maybeBoolean == true{
            maybeBoolean = false
            maybeCount! -= 1
            maybeButton.backgroundColor = UIColor.white
            maybeButton.setTitleColor(UIColor.black, for: .normal)
            
            //change the colour of the button and increment yesCount
            noButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            noButton.setTitleColor(UIColor.white, for: .normal)
            noBoolean = true
            noCount! += 1
        }
        //if the button has already been pressed, change it back to its colour and decrement the noCount
        else if noBoolean == true{
            noButton.backgroundColor = UIColor.white
            noButton.setTitleColor(UIColor.black, for: .normal)
            noBoolean = false
            noCount! -= 1
        }
        else if noBoolean == false{
            noButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            noButton.setTitleColor(UIColor.white, for: .normal)
            noBoolean = true
            noCount! += 1
        }
    }
    
    //MARK: - MAYBE BUTTON
    @IBAction func maybeButton(_ sender: Any) {
        //if the yesButton has been pressed before - change it to false, decrement the yesCount and change the colour of yesButton
        if maybeButton.backgroundColor == UIColor.white && yesBoolean == true{
            yesBoolean = false
            yesCount! -= 1
            yesButton.backgroundColor = UIColor.white
            yesButton.setTitleColor(UIColor.black, for: .normal)
            
            //change the colour of the button and increment yesCount
            maybeButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            maybeButton.setTitleColor(UIColor.white, for: .normal)
            maybeBoolean = true
            maybeCount! += 1
        }
        //if the maybeButton has been pressed before - change it to false, decrement the maybeCount and change the colour of maybeButton
        else if maybeButton.backgroundColor == UIColor.white && noBoolean == true{
            noBoolean = false
            noCount! -= 1
            noButton.backgroundColor = UIColor.white
            noButton.setTitleColor(UIColor.black, for: .normal)
            
            //change the colour of the button and increment yesCount
            maybeButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            maybeButton.setTitleColor(UIColor.white, for: .normal)
            maybeBoolean = true
            maybeCount! += 1
        }
        //if the button has already been pressed, change it back to its colour and decrement the yesCount
        else if maybeBoolean == true{
            maybeButton.backgroundColor = UIColor.white
            maybeButton.setTitleColor(UIColor.black, for: .normal)
            maybeBoolean = false
            maybeCount! -= 1
        }
        else if maybeBoolean == false{
            maybeButton.backgroundColor = #colorLiteral(red: 0.8794823345, green: 0.2707585372, blue: 1, alpha: 1)
            maybeButton.setTitleColor(UIColor.white, for: .normal)
            maybeBoolean = true
            maybeCount! += 1
        }
    }
    
    //MARK: - NAVIGATION 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == ""{
            
        }
    }
}
