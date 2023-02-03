//
//  ViewController.swift
//  MyStoryApp
//
//  Created by Asad mero on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Models

    // Create individual Dinosaurs using Dinosaur model
    let story = DataModel(name: "Batman's Story", image: UIImage(named: "BT1")!, text: "Batman's origin story features him swearing vengeance against criminals after witnessing the murder of his parents Thomas and Martha as a child, a vendetta tempered with the ideal of justice. He trains himself physically and intellectually, crafts a bat-inspired persona, and monitors the Gotham streets at night.")
    let batmobile = DataModel(name: "Batman's Car", image: UIImage(named: "BTM")!, text: #"Before the familiar bat-finned cars, the title "Batmobile" was first used on a red convertible in Detective Comics #48 in February 1941. Most of the design was based on the 1936 Cord, though the nose of the car looked more like that of a Lincoln or similar car. The bat mask did not exist yet, but the car did sport a small "bat" hood ornament."#)
    let batVillans = DataModel(name: "Batman's Villains", image: UIImage(named: "BV")!, text: #"Batman's Villains are among the most iconic in comics. The Joker alone is considered one of the most dangerous non powered villains and serial killers in comic book history."#)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.title = "Batman"
    }


    @IBAction func Button1tap(_ sender: UIButton) {
        
        
            performSegue(withIdentifier: "detailSegue", sender: sender)
        

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIButton,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                print("Tag: 1")
                detailViewController.data = story
            } else if tappedView.tag == 1 {
                print("Tag: 2")
                detailViewController.data = batmobile
            } else if tappedView.tag == 2 {
                print("Tag: 3")
                detailViewController.data = batVillans
            } else {
                print("nothing  was tapped, please check your selection.")
            }
        }
    }

}

