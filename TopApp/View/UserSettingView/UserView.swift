//
//  UserView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI
import Firebase
struct UserView: View {
    //MARK: - Dark mode
    @AppStorage("darkMode") var darkMode: Bool = false
    @State var isOpen = false
    
    
    @AppStorage("uid") var userID  = ""
    let auths = Auth.auth()
    
    var body: some View {
        NavigationStack {
            VStack{
                ScrollView{
                    HStack{
                        Button {
                            isOpen.toggle()
                        } label: {
                            ZStack{
                                Image(systemName: "ellipsis")
                                    .resizable()
                                    .frame(width: 20,height: 5)
                                    .foregroundColor(darkMode ? .white : .black)
                            }
                            .padding(3)

                        }
                        .sheet(isPresented: $isOpen) {
                            SettingView()
                        }
                        Spacer()
                        Button {
                            withAnimation {
                                do{
                                    try  auths.signOut()
                                    userID = ""
                                }catch{
                                    
                                }
                                
                            }
                        } label: {
                            ZStack{
                                Image(systemName: "rectangle.portrait.and.arrow.forward")
                                    .resizable()
                                    .frame(width: 20,height: 20)
                                    .foregroundColor(darkMode ? .white : .black)
                            }
                            .padding(3)

                        }
                    }
                    .padding()
                    //MARK: - First section
                    VStack{
                        VStack{
                            ZStack{
                                Image("madara1")
                                    .resizable()
                                    .frame(width: 100,height: 100)
                                    .cornerRadius(50)
                            }
                            .padding(5)
                                .background( LinearGradient(colors: [.blue,.purple], startPoint: .topTrailing, endPoint: .bottomLeading))
                                .cornerRadius(60)
                            VStack(spacing:20){
                                Text("Madara")
                                    .foregroundColor(darkMode ? .white : .black)
                                    .font(.system(size: 18))
                                Text("Software")
                                    .font(.system(size: 13))
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                    .padding()
                        //MARK: - next section
                        HStack(spacing: 20){
                            //MARK: - POSTS
                            VStack(alignment: .center){
                                Text("459")
                                    .bold()
                                    .foregroundColor(darkMode ? .white : .black)
                                Text("Posts")
                                    .foregroundColor(darkMode ? .white : .black)
                            }
                            Divider()
                            //MARK: - Followers
                            VStack(alignment: .center){
                                Text("110k")
                                    .bold()
                                    .foregroundColor(darkMode ? .white : .black)
                                Text("Followers")
                                    .foregroundColor(darkMode ? .white : .black)
                            }
                            Divider()
                            //MARK: - Following
                            VStack(alignment: .center){
                                Text("934")
                                    .bold()
                                    .foregroundColor(darkMode ? .white : .black)
                                Text("Following")
                                    .foregroundColor(darkMode ? .white : .black)
                            }
                            Divider()
                            //MARK: - Likes
                            VStack(alignment: .center){
                                Text("409m")
                                    .bold()
                                    .foregroundColor(darkMode ? .white : .black)
                                Text("Likes")
                                    .foregroundColor(darkMode ? .white : .black)
                            }
                        }
                    Rectangle()
                         .fill(.gray)
                         .frame(width: .infinity,height: 0.4)
                        .offset(y:10)
                        //MARK: - Second Section
                        PhotosView()
                        .offset(y:20)
                }.padding(2)
            }.background(darkMode ? .black : .white)
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
