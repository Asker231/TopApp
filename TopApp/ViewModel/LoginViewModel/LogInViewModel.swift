//
//  LogInViewModel.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import Foundation
import FirebaseAuth

class LogInViewModel:ObservableObject{
   @Published var userCurrent = Auth.auth().currentUser?.uid
    func sign(email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password){ authresult,err in
            if let err = err{
                print(err.localizedDescription)
            }
        }
    }
    
}
