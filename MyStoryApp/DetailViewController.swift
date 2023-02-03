//
//  DetailViewController.swift
//  MyStoryApp
//
//  Created by Asad mero on 1/31/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var data: DataModel?

    @IBOutlet weak var dataImage: UIImageView!
    
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var dataText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        TextLabel.text = data?.text
        dataImage.image = data?.image
        navigationItem.title=data?.name
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
