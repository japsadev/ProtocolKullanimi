//
//  ViewController.swift
//  ProtocolKullanimi
//
//  Created by Salih Yusuf Göktaş on 19.06.2023.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var labelSonuc: UILabel!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
	}
	@IBAction func buttonGecisYap(_ sender: Any) {
		performSegue(withIdentifier: "toDetay", sender: nil)
	}

	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if segue.identifier == "toDetay" {
			let gidilecekVC = segue.destination as! DetayVC
			gidilecekVC.delegate = self
		}
	}
	
}

extension ViewController:DetayVCToViewControllerProtocol {
	func veriGoonder(mesaj: String) {
		labelSonuc.text = mesaj
	}
}
