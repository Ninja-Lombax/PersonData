//
//  ViewController.swift
//  PersonData
//
//  Created by John Grasser on 2/20/21.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ref = Database.database().reference()
        
        
        ref.child("Employee/Registration/Employee Name").setValue(["John","Darla","Cary","Mike"])
        ref.child("Employee/Registration/Potential Employee Names").setValue(["Denise","Carol","Bonnie","Rachel"])
            
        //ref.childByAutoId().setValue(["name": "Tom","role":"Admin","age":30])
        
        ref.child("Employee/Financial Aid/Employee Name").setValue(["Luke","Bob","Lance"])

        
        
        ref.child("Employee/Advising/Employee Name").setValue(["Shelby","Lizzy"])        // Do any additional setup after loading the view.
        
        let updates = ["Employee/Registration/Employee Name/2":"Carol"]
        //let name = ref.child("Employee/Registration/Potential Employee Name/3")
        ref.updateChildValues(updates)
        
        
        ref.child("Employee/Registration/Potential Employee Names").removeValue()
        
        ref.child("Employee/Advising/Employee Name/0").removeValue()
        
        //ref.child("Employee/Registration/Employee Name/1").setValue(name)
        
    }


}

