//
//  HomeViewController.swift
//  Empowering Relationships Quiz
//
//  Created by Tiffany Kong on 18/9/20.
//
//https://techion.com.au/blog/2018/11/14/creating-gradient-backgrounds-in-swift#:~:text=There%20are%20many%20ways%20to,Constrain%20to%20margins'%20is%20deselected.

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet var homeView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: - SETTING UP GRADIENT BACKGROUND (HOMEVIEW)
        //create the gradient layer
        let gradientLayer = CAGradientLayer()
        //set the size of the layer equal to the size of the homeView
        gradientLayer.frame = homeView.bounds
        //set an array of Core Graphics colors (.cgColor) to create the gradients
        gradientLayer.colors = [#colorLiteral(red: 0.5215686275, green: 0.3764705882, blue: 0.7960784314, alpha: 1).cgColor, UIColor(red: 211/255, green: 33/255, blue: 240/255, alpha: 1).cgColor]
        //rasterise the static layer to improve app performance
        gradientLayer.shouldRasterize = true
        //apply the gradient to the homeView, need to make sure that it is at 0 to apply beneath the objects in the View
        homeView.layer.insertSublayer(gradientLayer, at: 0)
        
    }
}
