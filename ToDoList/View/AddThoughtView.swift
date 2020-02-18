//
//  MainView.swift
//  ToDoList
//
//  Created by Juansyah - on 15/02/20.
//  Copyright © 2020 Juansyah. All rights reserved.
//

import Foundation
import UIKit

extension AddThoughtViewController{
    func setUpView(){
        button.layer.cornerRadius = button.frame.height*0.25
        button.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width*1)
        button.title(for: .normal)
        button.titleLabel?.text = "Save"
        titleTF.layer.cornerRadius = titleTF.frame.height*0.25
        titleTF.placeholder = "Type the title here"
        descTV.layer.cornerRadius = descTV.frame.height*0.1
        descTV.text = "My thought recently.."
        descTV.delegate = self
    }
}
