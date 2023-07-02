//
//  LogInView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct LogInView: View {
    @State private var email : String = ""
    @State private var pass  : String = ""
    @State private var isColor : Bool  = false
    
    
    @AppStorage("uid") var userID  = ""
    @StateObject var logVM = LogInViewModel()
    
    @State private var isShow  : Bool  = false
    var body: some View {
        NavigationStack{
            ZStack{
                LinearGradient(colors: [.blue,.purple,.cyan], startPoint: isColor ? .topLeading : .topTrailing, endPoint: isColor ? .trailing  : .leading)
                    .edgesIgnoringSafeArea(.all)
                    .opacity(0.6)
                LinearGradient(colors: [.blue,.purple,.cyan], startPoint: isColor ? .topLeading : .topTrailing, endPoint: isColor ? .trailing  : .leading)
                    .frame(width: 100,height: 100)
                    .opacity(0.2)
                    .cornerRadius(50)
                    .offset(x: -210)
                    .offset(y: isColor ? -380 : 40)
                VStack(spacing: 40){
                    Text("Welcome back")
                        .font(.system(size: 40))
                        .bold()
                    ZStack{
                        //MARK: - TextField section
                        VStack(spacing: 60){
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
                                    .frame(width: .infinity, height: 0.5)
                            }
                            //MARK: - last textfield
                            VStack{
                                HStack{
                                    Image(systemName: "key")
                                        .resizable()
                                        .frame(width: 14,height: 14)
                                    SecureField("Your password..", text: $pass)
                                }
                                Rectangle()
                                    .fill(.black)
                                    .frame(width: .infinity, height: 0.5)
                            }
                        }.padding()
                    }
                    Button {
                        withAnimation {
                            logVM.sign(email: email, password: pass)
                            userID = logVM.userCurrent ?? ""
                        }
                    } label: {
                        Text("Войти")
                    }
                    .buttonStyle(.borderedProminent)
                    .frame(width: 300)
                    Text("или")
                    Button {
                        isShow.toggle()
                    } label: {
                        Text("Регистрация")
                    }
                    .fullScreenCover(isPresented: $isShow) {
                        RegisterView()
                    }

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

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
