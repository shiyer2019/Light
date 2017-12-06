//
//  ViewController.swift
//  Light
//
//  Created by Student on 10/5/17.
//  Copyright © 2017 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true //setting a variable lightOn to the Boolean value 'true'
     //establishing an Outlet connection to lightButton
    @IBOutlet weak var lightButton: UIButton!
    
    func updateUI() { //this function sets the color of the background color to white if the variable lightOn is satisfied. Lines 18 and 21, both commented out, set the button title to "On" if the screen is white or "Off" if the screen is black. The ternary function on line 27 does this with an efficient and more compact line of code.
        /*
        if lightOn {
            view.backgroundColor = .white
            //lightButton.setTitle("Off", for: .normal) // along with line 21, this was commented out for aesthetic purposes
        } else {
            view.backgroundColor = .black
            //lightButton.setTitle("On", for: .normal)
        }
        */
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        //the procedure inside this function is followed when the button is pressed
        lightOn = !lightOn // the value of lightOn becomes the opposite of its Boolean value when tapped, hence this line of code
        updateUI() //calling upon the function defined in line 17. See ternary operator in line 27 for finished product
    }
        
        
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI() //runs the updateUI function as soon as the view controller is ready to appear on the screen so that the visuals are immediately put into place
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
