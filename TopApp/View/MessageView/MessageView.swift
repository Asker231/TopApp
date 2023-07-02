//
//  MessageView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct MessageView: View {
    
    //MARK: - Dark mode
    @AppStorage("darkMode") var darkMode: Bool = false
    
    @State var arrMsg : [PostModel] = [
        PostModel(text: "Hey ", img: "", userName:"Naruto", userImg: "Naruto"),
        PostModel(text: "Hey madaara", img: "", userName:"Saske", userImg: "saske1")
    ]
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Message")
                        .font(.system(size: 19))
                        .foregroundColor(darkMode ? .white: .black)
                        .bold()
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20,height: 20)
                    }
                }
                .padding()
                ScrollView(showsIndicators: false) {
                    ForEach(arrMsg){ el in
                        NavigationLink {
                            Text("\(el.text)")
                        } label: {
                            HStack{
                                Image("\(el.userImg)")
                                    .resizable()
                                    .frame(width: 50,height: 50)
                                    .cornerRadius(50)
                                VStack(alignment: .leading){
                                    Text("\(el.userName)")
                                        .font(.system(size: 15))
                                        .bold()
                                    Text("\(el.text)")
                                        .font(.system(size: 13))
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                            }.padding()
                        }
                       Rectangle()
                            .fill(.gray)
                            .frame(width: .infinity,height: 0.4)
                    }
                }
            }.background(darkMode ? .black : .white)
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    static var previews: some View {
       MessageView()
    }
}
