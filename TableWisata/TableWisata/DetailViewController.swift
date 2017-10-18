//
//  DetailViewController.swift
//  TableWisata
//
//  Created by DOTS2 on 10/17/17.
//  Copyright © 2017 Arjuna. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var imgGambar: UIImageView!
    @IBOutlet weak var labelNamaWisata: UILabel!
    
    //deklarasi varoiable utk menampung data yang dikirim
    var passNamaWisata:String?
    var passGambarWisata:String?
    override func viewDidLoad() {
        super.viewDidLoad()

        // menampilkan data yang sudah kita kirim
        labelNamaWisata.text = passNamaWisata
        //menampilkan gambar
        imgGambar.image = UIImage(named: passGambarWisata!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
