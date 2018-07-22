//
//  VideoController.swift
//  lecteur youtube
//
//  Created by Vincent Luycx on 22/07/2018.
//  Copyright © 2018 Vincent Luycx. All rights reserved.
//

import UIKit

class VideoController: UIViewController {

    var chanson : Chanson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
    
        if chanson != nil {
            title = chanson!.titre
            
        }
    
    }



}
