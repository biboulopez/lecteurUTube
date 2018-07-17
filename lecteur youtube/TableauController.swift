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
    
    let identifiantCell = "ChansonCell"
    
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
        let chanson = chansons[indexPath.row]

        if let cell = tableView.dequeueReusableCell(withIdentifier: identifiantCell) as? ChansonCell {
            cell.creerCell(chanson)
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
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
