//
//  ViewController.swift
//  Menu-Desktop
//
//  Created by Ola on 07/04/2019.
//  Copyright © 2019 Aleksandra Klein. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var data : Dishes?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
                let  path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first?.appendingPathComponent("saving.json")
                print(path)
        
        
                do{
                    let input = try String (contentsOf: path!)
                    let contentData = input.data(using: .utf8)
        
                    let jsDec = JSONDecoder()
                    do {
                        data = try jsDec.decode(Dishes.self, from: contentData!)
                    } catch {
                        print ("nie dziala data")
                        print(error)
                    }
                } catch{ print (error) }

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }
   
 
    @IBOutlet weak var randomDish: NSTextField!
    
    @IBAction func getRandomDish(_ sender: Any) {
        var temp : String  = data!.dishesStruct.randomElement()?.name ?? "dupaa"
        
        randomDish.stringValue = temp
 
    }
    
    
}
