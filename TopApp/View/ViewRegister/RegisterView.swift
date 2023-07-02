//
//  RegisterView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct RegisterView: View {
    @State private var name  : String = ""
    @State private var last  : String = ""
    @State private var email : String = ""
    @State private var pass  : String = ""
    @State private var isColor : Bool  = false
    
    
    @AppStorage("uid") var userID  = ""
    @StateObject var regVM = RegisterViewModel()
    
    @Environment(\.dismiss) var dissmis
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Button {
                        dissmis()
                    } label: {
                        Image(systemName: "arrow.down")
                            .resizable()
                            .frame(width: 10,height: 10)
                            .foregroundColor(.black)
                        Text("назад")
                            .foregroundColor(.black)
                    }
                    .buttonStyle(.bordered)
                    Spacer()
                }.padding()
                VStack(spacing: 10){
                    Text("Welcome to my app")
                        .font(.system(size: 40))
                        .bold()
                    ZStack{
                        //MARK: - TextField section
                        LinearGradient(colors: [.white,.white], startPoint: .topLeading, endPoint: .trailing)
                            .frame(width: .infinity,height: 400)
                            .cornerRadius(10)
                            .opacity(0.1)
                        VStack(spacing: 40){
                            //MARK: -  First textfield
                            VStack{
                                HStack{
                                    Image(systemName: "n.circle")
                                        .resizable()
                                        .frame(width: 14,height: 14)
                                    TextField("Your name..", text: $name)
                                }
                                Rectangle()
                                    .fill(.black)
                                    .frame(width: .infinity,height: 0.5)
                            }
                            //MARK: -  next textfield
                            VStack{
                                HStack{
                                    Image(systemName: "n.circle")
                                        .resizable()
                                        .frame(width: 14,height: 14)
                                    TextField("Your nick..", text: $last)
                                }
                                Rectangle()
                                    .fill(.black)
                                    .frame(width: .infinity,height: 0.5)
                            }
                            //MARK: - second textfield
                            VStack{
                                HStack{
                                    Image(systemName: "e.circle")
                                        .resizable()
                                        .frame(width: 14,height: 14)
                                    TextField("Your email..", text: $email)
                                }
                                Rectangle()
                                    .fill(.black)
                                    .frame(width: .infinity,height: 0.5)
                            }
                            //MARK: - last textfield
                            VStack{
                                HStack{
                                    Image(systemName: "key")
                                        .resizable()
                                        .frame(width:14,height: 14)
                                    SecureField("Your password..", text: $pass)
                                }
                                Rectangle()
                                    .fill(.black)
                                    .frame(width: .infinity,height: 0.5)
                            }
                        }.padding()
                    }
                    Button {
                        withAnimation {
                            regVM.createuser(email: email, password: pass)
                            userID = regVM.userCurrent ?? ""
                        }
                    } label: {
                        Text("Регистрация")
                    }
                    .buttonStyle(.borderedProminent)
                }
                .padding()
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            }
        }.onAppear{
            guard !isColor else {return}
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                withAnimation(
                 Animation
                    .easeInOut(duration: 6.0)
                    .repeatForever()
                ){
                    isColor.toggle()
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
