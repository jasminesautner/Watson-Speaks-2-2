//
//  TranslatorViewController.swift
//  Watson Speaks
//
//  Created by Alick C Zhang on 7/8/17.
//  Copyright © 2017 Alick C Zhang. All rights reserved.
//

import Foundation
import LanguageTranslatorV2
import AVFoundation

class TranslatorViewController: UIViewController {
    let username = "4b28e73e-ae8d-4767-b233-592702c5980c"
    let password = "8s5LGfdrJatO"
    
    var toTranslate = ""
    @IBOutlet weak var translatedText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //startTranslate()
        while(!Global.hasChanged) {}
        translatedText.text = Global.translatedText
    }
    
    
    func callTranslation(toTranslate: String) {
        let languageTranslator = LanguageTranslator(username: username, password: password)
        let failure = { (error: Error) in print(error) }
        languageTranslator.translate(toTranslate, from: "en", to: "es", failure: failure) { translation in
            Global.translatedText = translation.translations[0].translation
            Global.hasChanged = true
        }
            
    }

}

struct Global { 
    static var translatedText: String = ""
    static var hasChanged: Bool = false
}
