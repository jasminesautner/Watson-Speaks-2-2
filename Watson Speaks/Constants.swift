//
//  Constants.swift
//  Watson Speaks
//
//  Created by LouieDavis on 7/9/17.
//  Copyright © 2017 Alick C Zhang. All rights reserved.
//

import Foundation
struct Constants {
    struct SpeechToText {
       static let username = "2742f4c2-e0ec-4bd4-b504-45c70d9ea851"
        static let password = "KyHBL4m31RdT"
        
    }
    struct LanguageTranslator {
       static let username = "4b28e73e-ae8d-4767-b233-592702c5980c"
       static let password = "8s5LGfdrJatO"
    }
    struct Global {
        static var hasChanged = false
        static var translatedText = ""
    }
}
