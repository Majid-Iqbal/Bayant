//
//  MainVC.swift
//  Bayanat
//
//  Created by Majid on 23/04/2017.
//  Copyright © 2017 Majid. All rights reserved.
//

import UIKit

class MainVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    @IBOutlet weak var tableView:UITableView!
    
    var bayanArray = [Bayans]()
    
    var width = 300
    var height = 210
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bayan1 = Bayans(imageUrl: "http://www.wakafridi.com/photos/1460724081Maulana%20Tariq%20Jameel%20Complete%2013th%20Dec%202015%20Bachon%20Ki%20Tarbiyat%20Meem%20Academy%20LHR.jpg", videoUrl: "<iframe width=\"\(width) \" height=\"\(height)\" src=\"https://www.youtube.com/embed/HWntvgm6RGo?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Zawal Shuda Qomain")
        
        let bayan2 = Bayans(imageUrl: "https://s2-ssl.dmcdn.net/N1cLn/1280x720-AbE.jpg", videoUrl:" <iframe width=\"\(width)\" height=\"\(height)\" src=\"https://www.youtube.com/embed/5O2DhUZW9cM?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Ache Ikhlaq ke Khubsurat waqia")
        
        let bayan3 = Bayans(imageUrl: "http://3.bp.blogspot.com/-v5rFYcm8G0E/VIqGIbnn2XI/AAAAAAAAANE/L4ph_JiLyP0/s1600/IMG_845527784582.jpeg", videoUrl: "<iframe width=\"\(width)\" height=\"\(height)\" src=\"https://www.youtube.com/embed/hKCjQLBwrIc?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Aik Afsar Aur Us Ki Secretary")
        
        let bayan4 = Bayans(imageUrl: "http://quranwahadith.com/wp-content/uploads/2016/10/Peer-zulfiqar-naqshabandi-0x0.jpg", videoUrl:"<iframe width=\"\(width)\" height=\"\(height)\" src=\"https://www.youtube.com/embed/Lunte_BNYkU?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Zina Karnay Walon Ka Anjaam")
        
        let bayan5 = Bayans(imageUrl: "https://s-media-cache-ak0.pinimg.com/600x315/63/cc/a4/63cca4912a5e6ca42b161aba37cfce85.jpg", videoUrl: "<iframe width=\"\(width)\" height=\"\(height)\" src=\"https://www.youtube.com/embed/tAB9dplZgkM?&playsinline=1\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Allah Se Maangne Ka Yaqeen")
        
        bayanArray.append(bayan1)
        bayanArray.append(bayan2)
        bayanArray.append(bayan3)
        bayanArray.append(bayan4)
        bayanArray.append(bayan5)
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }

 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bayanArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "bayanatCell", for: indexPath) as? VideoCell{
        
           let bayans = self.bayanArray[indexPath.row]
            
                cell.updateUI(bayan: bayans)
            
            return cell
            
        }else{
         
            return UITableViewCell()
        }

}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let bayan = bayanArray[indexPath.row]
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        performSegue(withIdentifier: "videoVC", sender: bayan)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? VideoVC{
            
            if let myBayan = sender as? Bayans{
                
                destination.bayan = myBayan
            }
        }
    }

}
