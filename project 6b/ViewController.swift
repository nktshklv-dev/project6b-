//
//  ViewController.swift
//  project 6b
//
//  Created by Nikita  on 6/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        let label2 = UILabel()
        label2.backgroundColor = .orange
        label2.text = "ARE"
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        let label3 = UILabel()
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        let label4 = UILabel()
        label4.backgroundColor = .green
        label4.text = "AWESOME"
        label4.translatesAutoresizingMaskIntoConstraints = false
        
        let label5 = UILabel()
        label5.backgroundColor = .blue
        label5.text = "LABELS"
        label5.translatesAutoresizingMaskIntoConstraints = false
        
        
        for label in [label1, label2, label3, label4, label5]{
            view.addSubview(label)
        }
        
//        let labelsDictionary = ["label1":label1, "label2":label2, "label3":label3, "label4":label4, "label5":label5]
//        let metrics = ["labelHeight": 88]
//
//        for label in labelsDictionary.keys{
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: labelsDictionary))
//        }
//
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(labelHeight)]-[label5(label1)]-(>=10)-|", options: [], metrics: metrics, views: labelsDictionary))
        var previous: UILabel?
        for label in [label1, label2, label3, label4, label5]{
            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            
            if let previous = previous {
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
            } else{
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            previous = label
        }
        
        
    }


}

