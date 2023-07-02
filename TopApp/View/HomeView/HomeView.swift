//
//  HomeView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct HomeView: View {
    
    
    var body: some View {
        NavigationStack{
            ZStack(alignment: .bottom){
                TabView{
                    NewsView()
                        .tag(1)
                        .tabItem {
                            Image(systemName: "house")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20,height: 20)
                        }
                    MessageView()
                        .tag(2)
                        .tabItem {
                            Image(systemName: "bubble.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20,height: 20)
                        }
                    FriendView()
                        .tag(3)
                        .tabItem {
                            Image(systemName: "person.2")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20,height: 20)
                                
                        }
                    UserView()
                        .tag(4)
                        .tabItem {
                            Image(systemName: "person")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20,height: 20)
                        }
                    
                }
                .tableStyle(.inset)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
