//
//  SettingView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct SettingView: View {
    @AppStorage("darkMode") var darkMode: Bool = false
    var body: some View {
            List{
                HStack{
                    Text("DarkMode")
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                    Spacer()
                    Toggle("", isOn: $darkMode)
                }
            
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
