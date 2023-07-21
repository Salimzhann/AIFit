//
//  LoginViewModel.swift
//  AIFit
//
//  Created by Manas Salimzhan on 20.07.2023.
//

import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var phNo = ""
    
    func getCountryCode()-> String{
        
        let regionCode = Locale.current.regionCode ?? ""
        return countries[regionCode] ?? ""
    }
}
