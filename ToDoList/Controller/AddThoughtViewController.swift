//
//  AddThoughtVC.swift
//  ToDoList
//
//  Created by Juansyah - on 15/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import UIKit
import Firebase
class AddThoughtViewController: UIViewController, UITextViewDelegate {
    @IBOutlet  weak var segment: UISegmentedControl!
    @IBOutlet  weak var titleTF: UITextField!
    @IBOutlet  weak var descTV: UITextView!
    @IBOutlet  weak var button: UIButton!
    
    private var selectedCategory = ThoughtCategory.funny.hashValue
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func textViewDidBeginEditing(_ textView: UITextView){
        descTV.text = ""
        descTV.textColor = UIColor.darkGray
    }
    
    @IBAction func categoryChanged(_ sender: Any) {
        switch segment.selectedSegmentIndex {
        case 0:
            selectedCategory = ThoughtCategory.funny.hashValue
        case 1:
            selectedCategory = ThoughtCategory.serious.hashValue
        case 2:
            selectedCategory = ThoughtCategory.crazy.hashValue
        default:
            print("pilih naon sia teh")
        }
    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let username = titleTF.text else {return}
        Firestore.firestore().collection(THOUGHTS_REF).addDocument(data: [
            CATEGORY: selectedCategory,
            NUMCOMMENTS: 0,
            NUMLIKES: 0,
            THOUGHTTEXT: descTV.text,
            TIMESTAMP: FieldValue.serverTimestamp(),
            USERNAME: titleTF.text
        ]) { (err) in
            if let err = err {
                debugPrint("Error adding document: \(err)")
            }else {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    

}
