//
//  ViewController.swift
//  UseMVCinIOS
//
//  Created by Amben on 6/16/21.
//

import UIKit

class ViewController: UIViewController {
    
    let person = Person(firstName: "John",
                        lastName: "Smith",
                        gender: "Male",
                        age: 21,
                        weight: 172.0,
                        height: 72.0,
                        location: Location(city: "USA")
    )

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let myView = ExampleView(frame: CGRect(x: 0, y: 0, width: 250, height: 250))
        myView.center = view.center
        myView.configure(with: "\(person.firstName) \(person.lastName)")
        view.addSubview(myView)
    }
}

struct Person {
    let firstName: String
    let lastName: String
    let gender: String
    let age: Int
    let weight: Double
    let height: Double
    let location: Location
    
}

struct Location {
    let city: String
}
