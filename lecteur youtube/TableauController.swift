//
//  TableauController.swift
//  lecteur youtube
//
//  Created by Vincent Luycx on 17/07/2018.
//  Copyright © 2018 Vincent Luycx. All rights reserved.
//

import UIKit

class TableauController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var chansons = [Chanson]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate =  self
        tableView.dataSource = self
        ajouterChanson()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chansons.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func ajouterChanson() {
        chansons = [Chanson]()
        let nenetteParle = Chanson(artiste: "Nenette", titre: "Nenette parle bébé signe", code: "lBu4eYWAFLU")
        chansons.append(nenetteParle)
        let nenetteMarionnette = Chanson(artiste: "Nenette", titre: "Nenette Marionettes", code: "e67d8zM4UZ4")
        chansons.append(nenetteMarionnette)
        let nenetteHosto = Chanson(artiste: "Nenette", titre: "Nenette sort de l'hopital", code: "nBj56pAVIrs")
        chansons.append(nenetteHosto)
        tableView.reloadData()
    }
    
}