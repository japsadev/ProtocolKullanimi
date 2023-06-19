//
//  DetayVC.swift
//  ProtocolKullanimi
//
//  Created by Salih Yusuf Göktaş on 19.06.2023.
//

import UIKit

class DetayVC: UIViewController {
	@IBAction func textFieldGirdi(_ sender: Any) {
	}
	
	var delegate:DetayVCToViewControllerProtocol?
	
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
	@IBAction func buttonGonder(_ sender: Any) {
		if let mesaj = textFieldGirdi.text {
			delegate?.veriGoonder(mesaj: mesaj)
		}
			
	}
	
}
