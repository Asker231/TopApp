//
//  RegisterViewModel.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import FirebaseAuth

class RegisterViewModel:ObservableObject{
    @Published var userCurrent = Auth.auth().currentUser?.uid
    func createuser(email:String,password:String){
        
        Auth.auth().createUser(withEmail: email, password: password){  authresult,err in
            if let err = err{
                print(err.localizedDescription)
            }
        }
    }
}
