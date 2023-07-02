//
//  FriendView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct FriendView: View {
    //MARK: - Dark mode
    @AppStorage("darkMode") var darkMode: Bool = false
    
    @State var textSearch : String = ""
    @State var friendArray : [FriendModel] = [
    FriendModel(userName: "Jiraya", userImage: "jn")
    ]
    var body: some View {
        NavigationStack{
            VStack{
                ScrollView(showsIndicators: false){
                    ForEach(friendArray){ el in
                        HStack{
                            NavigationLink {
                                Text("\(el.userName)")
                            } label: {
                                Image("\(el.userImage)")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .cornerRadius(50)
                                Text("\(el.userName)")
                                    .bold()
                            }

                            Spacer()
                            
                            Button {
                                //
                            } label: {
                                Image(systemName: "plus")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(.black)
                            }

                            
                        }.padding()
                    }
                }
            }
            .navigationBarTitle("Friends", displayMode: .inline)
            .searchable(text: $textSearch)
        }
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
