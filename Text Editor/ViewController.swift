//
//  ViewController.swift
//  Text Editor
//
//  Created by Macbook on 06/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

     let mainView = MainView()
     var wholeText = ""
     var textString = "1."
     var lineNumber = 1
     let sizes = [12, 14, 16, 18, 20]
     
     override func viewDidLoad() {
          super.viewDidLoad()
          
          view.backgroundColor = UIColor.white
          setupViews()
          mainView.leftPanel.delegate = self
          mainView.rightPanel.delegate = self
          mainView.sizeLabel.delegate = self
          mainView.sizePicker.delegate = self
          mainView.sizePicker.dataSource = self
          
          
     }
     
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
          
          return 1
     }
     
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          
          return sizes.count
     }
     
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          
          return String(sizes[row])
     }
     
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          
          mainView.rightPanel.font = UIFont.systemFont(ofSize: CGFloat(sizes[row]))
          mainView.leftPanel.font = UIFont.systemFont(ofSize: CGFloat(sizes[row]))
          mainView.sizeLabel.text = String(sizes[row])
          mainView.sizePicker.isHidden = true
          
          
     }
     
     
     func setupViews() {
     
          view.addSubview(mainView)
          mainView.translatesAutoresizingMaskIntoConstraints = false
          mainView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
          mainView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
          mainView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
          mainView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
          
     }
     
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
          
          if scrollView == mainView.leftPanel {
               mainView.rightPanel.contentOffset = mainView.leftPanel.contentOffset
          } else if scrollView == mainView.rightPanel {
               mainView.leftPanel.contentOffset = mainView.rightPanel.contentOffset
          }
     }
     
     func textViewDidChange(_ textView: UITextView) {
          
          lineNumber = 1
          wholeText = textView.text!
          
          for text in wholeText.characters {
               if text  == "\n" {
                    lineNumber = lineNumber + 1
                    textString  = ""
                    
                    for i in 1 ... lineNumber {
                         textString = textString + "\(i).\n"
                    }
                    
               }
          }
          mainView.leftPanel.text = textString
     }
     
     
     
     
//     override var preferredStatusBarStyle: UIStatusBarStyle {
//          
//          return .lightContent
//     }
//     
//     override var prefersStatusBarHidden: Bool {
//          
//          return true
//     }

     func textFieldDidBeginEditing(_ textField: UITextField) {
          
          mainView.sizePicker.isHidden = false
     }
     

}

