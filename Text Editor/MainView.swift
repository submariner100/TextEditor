//
//  MainView.swift
//  Text Editor
//
//  Created by Macbook on 06/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import UIKit

class MainView: UIView {

     let topBar = UILabel()
     let leftPanel = UITextView()
     let rightPanel = UITextView()
     let bottomBar = UIView()
     let colorLabel = UITextField()
     let sizeLabel = UITextField()
     let sizePicker = UIPickerView()

     override init(frame: CGRect) {
          super.init(frame: frame)
          
          setupViews()
          
     }
     
     func setupViews() {
          
          addSubview(topBar)
          topBar.translatesAutoresizingMaskIntoConstraints = false
          topBar.backgroundColor = UIColor.black
          topBar.text = "My Text Editor"
          topBar.textColor = UIColor.white
          topBar.textAlignment = .center
          topBar.font = UIFont(name: "Chalkduster", size: 20)
          topBar.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
          topBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
          topBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
          topBar.heightAnchor.constraint(equalToConstant: 65).isActive = true
          
          addSubview(bottomBar)
          bottomBar.translatesAutoresizingMaskIntoConstraints = false
          bottomBar.backgroundColor = UIColor.black
          bottomBar.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
          bottomBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
          bottomBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
          bottomBar.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -65).isActive = true
          
          addSubview(leftPanel)
          leftPanel.translatesAutoresizingMaskIntoConstraints = false
          leftPanel.backgroundColor = UIColor.gray
          leftPanel.text = "1."
          leftPanel.font = UIFont.systemFont(ofSize: 16)
          leftPanel.textAlignment = .left
          leftPanel.isEditable = false
          leftPanel.showsVerticalScrollIndicator = false
          leftPanel.showsHorizontalScrollIndicator = false
          leftPanel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
          leftPanel.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
          leftPanel.bottomAnchor.constraint(equalTo: bottomBar.topAnchor).isActive = true
          leftPanel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1/10).isActive = true
          
          addSubview(rightPanel)
          rightPanel.translatesAutoresizingMaskIntoConstraints = false
          rightPanel.backgroundColor = UIColor.lightGray
          rightPanel.font = UIFont.systemFont(ofSize: 16)
          rightPanel.textAlignment = .left
          rightPanel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
          rightPanel.topAnchor.constraint(equalTo: topBar.bottomAnchor).isActive = true
          rightPanel.bottomAnchor.constraint(equalTo: bottomBar.topAnchor).isActive = true
          rightPanel.leftAnchor.constraint(equalTo: leftPanel.rightAnchor).isActive = true
          
          addSubview(bottomBar)
          bottomBar.translatesAutoresizingMaskIntoConstraints = false
          bottomBar.backgroundColor = UIColor.black
          bottomBar.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
          bottomBar.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
          bottomBar.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
          bottomBar.topAnchor.constraint(equalTo: self.bottomAnchor, constant: -65).isActive = true
          
          bottomBar.addSubview(colorLabel)
          colorLabel.translatesAutoresizingMaskIntoConstraints = false
          colorLabel.backgroundColor = UIColor.white
          colorLabel.text = "Black"
          colorLabel.textColor = UIColor.black
          colorLabel.borderStyle = .roundedRect
          colorLabel.textAlignment = .center
          colorLabel.layer.masksToBounds = true
          colorLabel.layer.cornerRadius = 5
          colorLabel.centerYAnchor.constraint(equalTo: bottomBar.centerYAnchor).isActive = true
          colorLabel.leftAnchor.constraint(equalTo: bottomBar.leftAnchor, constant: 16).isActive = true
          colorLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
          colorLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
          
          bottomBar.addSubview(sizeLabel)
          sizeLabel.translatesAutoresizingMaskIntoConstraints = false
          sizeLabel.backgroundColor = UIColor.white
          sizeLabel.text = "16"
          sizeLabel.borderStyle = .roundedRect
          sizeLabel.textColor = UIColor.black
          sizeLabel.textAlignment = .center
          sizeLabel.layer.masksToBounds = true
          sizeLabel.layer.cornerRadius = 5
          sizeLabel.centerYAnchor.constraint(equalTo: bottomBar.centerYAnchor).isActive = true
          sizeLabel.rightAnchor.constraint(equalTo: bottomBar.rightAnchor, constant: -16).isActive = true
          sizeLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
          sizeLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
          
          rightPanel.addSubview(sizePicker)
          sizePicker.translatesAutoresizingMaskIntoConstraints = false
          sizePicker.isHidden = true
          sizePicker.centerXAnchor.constraint(equalTo: rightPanel.centerXAnchor).isActive = true
          sizePicker.centerYAnchor.constraint(equalTo: rightPanel.centerYAnchor).isActive = true
          sizePicker.heightAnchor.constraint(equalToConstant: 200).isActive = true
          sizePicker.widthAnchor.constraint(equalToConstant: 100).isActive = true
          
          
          
     }

     
     required init?(coder aDecoder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     
     }
     
}
