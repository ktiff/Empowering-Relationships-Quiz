//
//  RoundedButton.swift
//  Empowering Relationships Quiz
//
//  Created by Tiffany Kong on 18/9/20.
//
//https://stackoverflow.com/questions/38874517/how-to-make-a-simple-rounded-button-in-storyboard
import UIKit

@IBDesignable
class RoundedButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0{
        didSet{
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor = UIColor.clear{
        didSet{
            self.layer.borderColor = borderColor.cgColor 
        }
    }
    
}
