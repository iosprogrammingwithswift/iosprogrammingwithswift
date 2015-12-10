//
//  ViewController.swift
//  SwiftTableViewControllerAndOtherFunnyStuff
//
//  Created by Andreas Wittmann on 09/01/15.
//  Copyright (c) 2015 Telekom. All rights reserved.
//

import UIKit

class DetailStudentViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var imageButton: UIButton!
    @IBOutlet var namelbl: UILabel!
    @IBOutlet var matNrLbl: UILabel!
    @IBOutlet var ageLbl: UILabel!
    @IBOutlet var selectedImage: UIImageView!
    @IBOutlet var showDetailViewController: UIButton!
    
    @IBOutlet var saveButton: UIBarButtonItem!
   
    var student:Student!
    var newStudent:Student!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        namelbl.text = student.name
        ageLbl.text = String(student.age)
        matNrLbl.text = String(student.matNr)

        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    @IBAction func editName(sender: AnyObject) {
        
        let editNameAction:UIAlertController    = UIAlertController(title: "Edit Name", message: "Edit the name for the student \(namelbl.text!)", preferredStyle: .Alert)
        let cancelAction: UIAlertAction = UIAlertAction(title: "cancel", style: .Cancel, handler: { action -> Void in
            //Do some stuff
        })
        editNameAction.addAction(cancelAction)
        let confirmAction : UIAlertAction = UIAlertAction(title: "Confirm", style: .Default) { action -> Void in
          
            let textfield:UITextField =  (editNameAction.textFields?[0])! as UITextField
            if let name = textfield.text {
                self.saveButton.enabled = true
                self.namelbl.text = name
            }

        }
        editNameAction.addAction(confirmAction)
        //Add a text field
        editNameAction.addTextFieldWithConfigurationHandler { textField -> Void in
            //TextField configuration
            textField.textColor = UIColor.blueColor()
        }
        
        //Present the AlertController
        self.presentViewController(editNameAction, animated: true, completion: nil)
    }
    

    @IBAction func addImage(sender: AnyObject) {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .SavedPhotosAlbum
        imagePicker.allowsEditing = true
        self.presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!) {
        let pickedImageFromImagePicker : UIImage = image
        selectedImage.image = pickedImageFromImagePicker
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBAction func showDetailViewControllerAction(sender: AnyObject) {
        let vc:DetailImageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailImageViewController") as! DetailImageViewController
        vc.image = selectedImage.image
        self.presentViewController(vc, animated: true, completion: nil)
    }
    
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    let age:Int? = Int(ageLbl.text!) ?? 0
    let matNr:Int? = Int(matNrLbl.text!) ?? 0
    let name:String = namelbl.text! ?? "Kein Text"
        newStudent = Student(studentName: name, studentMatNr: matNr!, studentAge: age!)

    
    }
    
}

