//
//  ViewController.swift
//  KentRehberi
//
//  Created by Mehmet Turan on 10/14/19.
//  Copyright © 2019 Mehmet Turan. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var choosenLandmarkName = ""
    var choosenLandmarkImage = UIImage()
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("Adalet Sarayı")
        landmarkNames.append("Aizonai Antik Kenti")
        landmarkNames.append("Çinili Camii")
        landmarkNames.append("Dumlupınar Şehitliği")
        landmarkNames.append("Frig Vadisi")
        landmarkNames.append("Germiyan Sokağı")
        
        
        landmarkImages.append(UIImage(named: "AdaletSarayi1")!)
        landmarkImages.append(UIImage(named: "Aizonai1")!)
        landmarkImages.append(UIImage(named: "CiniliCamii1")!)
        landmarkImages.append(UIImage(named: "Dumlupinar1")!)
        landmarkImages.append(UIImage(named: "FrigVadi1")!)
        landmarkImages.append(UIImage(named: "GermiyanSokak1")!)
        
        navigationController?.title = "Kütahya Şehir Rehberi"
    }
        
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.middle)
        }
    }
        
        
        
        
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosenLandmarkName = landmarkNames[indexPath.row]
        choosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toimageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toimageViewController"{
            let destinationVC = segue.destination as! imageViewController
            destinationVC.selectedLandmarkName = choosenLandmarkName
            destinationVC.selectedLandmarkImage = choosenLandmarkImage
        }
    }


}

