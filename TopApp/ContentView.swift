//
//  ContentView.swift
//  TopApp
//
//  Created by ASKER on 28.06.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("uid") var userID  = ""
    var body: some View {
        if userID == ""{
            LogInView()
        }else{
            HomeView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
