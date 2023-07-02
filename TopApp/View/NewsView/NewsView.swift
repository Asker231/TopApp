//
//  NewsView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct NewsView: View {
    
    //MARK: - Dark mode
    @AppStorage("darkMode") var darkMode: Bool = false
    
    @State var arr:[PostModel] = [
        PostModel(text: "Самое главное это наши семьи", img: "saske-family", userName: "Saskeeee", userImg: "saske1"),
        PostModel(text: "Освоил режим Барриона и победил Ишики черт его деери!!!!", img: "naruto-barion", userName: "Narutooooo", userImg: "Naruto"),
        PostModel(text: "Люблю боль , конечно не в том смысле НО люблю, а это мои кенты) ", img: "peins", userName: "Pein", userImg: "pein"),
        
        PostModel(text: "Самое главное это наши семьи", img: "saske-family", userName: "Saskeeee", userImg: "saske1"),
        PostModel(text: "Освоил режим Барриона и победил Ишики черт его деери!!!!", img: "naruto-barion", userName: "Narutooooo", userImg: "Naruto"),
        PostModel(text: "Люблю боль , конечно не в том смысле НО люблю, а это мои кенты) ", img: "peins", userName: "Pein", userImg: "pein"),
        
        PostModel(text: "Самое главное это наши семьи", img: "saske-family", userName: "Saskeeee", userImg: "saske1"),
        PostModel(text: "Освоил режим Барриона и победил Ишики черт его деери!!!!", img: "naruto-barion", userName: "Narutooooo", userImg: "Naruto"),
        PostModel(text: "Люблю боль , конечно не в том смысле НО люблю, а это мои кенты) ", img: "peins", userName: "Pein", userImg: "pein"),
        
        PostModel(text: "Самое главное это наши семьи", img: "saske-family", userName: "Saskeeee", userImg: "saske1"),
        PostModel(text: "Освоил режим Барриона и победил Ишики черт его деери!!!!", img: "naruto-barion", userName: "Narutooooo", userImg: "Naruto"),
        PostModel(text: "Люблю боль , конечно не в том смысле НО люблю, а это мои кенты) ", img: "peins", userName: "Pein", userImg: "pein"),
    ]
    let row = [
        GridItem(.adaptive(minimum: 70))
     ]
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    ZStack{
                        Image("madara1")
                            .resizable()
                            .frame(width: 50,height: 50)
                            .cornerRadius(50)
                    }
                    .padding(5)
                    .background(LinearGradient(colors: [.blue,.purple], startPoint: .topTrailing, endPoint: .bottomLeading))
                    .cornerRadius(60)
                    Spacer()
                    Text("News")
                        .font(.system(size: 25))
                        .foregroundColor(darkMode ? .white : .black)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName:"square.and.pencil")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .scaledToFit()
                            .frame(width: 20,height: 20)
                    }
                }.padding()
                
                ScrollView(showsIndicators: false){
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        LazyHGrid(rows: row,spacing: 40) {
                            ForEach(arr){ model in
                                ZStack{
                                    Image("\(model.userImg)")
                                        .resizable()
                                        //.aspectRatio(contentMode: .fit)
                                        .frame(width: 60,height: 60)
                                        .cornerRadius(50)
                                }.padding(3)
                                    .background(LinearGradient(colors: [.pink,.purple], startPoint: .topLeading, endPoint: .bottomLeading))
                                    .cornerRadius(50)
                            }
                        }.padding(.horizontal)
                    }
                    Rectangle()
                         .fill(.gray)
                         .frame(width: .infinity,height: 0.4)
                        .padding(.top)
                    VStack(alignment: .leading){
                        ForEach(arr){ el in
//MARK: - Top section
                            HStack{
                                Image("\(el.userImg)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50,height: 50)
                                    .cornerRadius(50)
                                
                                Text("\(el.userName)")
                                    .font(.system(size: 18))
                                    .bold()
                                    .foregroundColor(darkMode ? .white : .black)
                                
                                Spacer()
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "ellipsis")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 10,height: 5)
                                        .foregroundColor(darkMode ? .white : .black)
                                }
                            }.padding(2)
//MARK: - Middle second
                            VStack(alignment: .leading){
                                Image("\(el.img)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                Text("\(el.text)")
                                    .foregroundColor(darkMode ? .white : .black)
                            }
//MARK: - Bottom section
                            HStack(spacing:20){
                                HStack{
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName:"suit.heart")
                                            .resizable()
                                            .aspectRatio(contentMode:.fit)
                                            .frame(width: 20, height: 20, alignment: .center)
                                            .foregroundColor(darkMode ? .white : .black)
                                    }
                                    Text("4k")
                                        .foregroundColor(darkMode ? .white : .black)
                                }
                                HStack{
                                    Button {
                                        //
                                    } label: {
                                        Image(systemName:"ellipsis.bubble")
                                            .resizable()
                                            .aspectRatio(contentMode:.fit)
                                            .frame(width: 20, height: 20, alignment: .center)
                                            .foregroundColor(darkMode ? .white : .black)
                                    }
                                    Text("14k")
                                        .foregroundColor(darkMode ? .white : .black)
                                }
                                Spacer()
                                Button {
                                    //
                                } label: {
                                    Image(systemName: "arrowshape.turn.up.right")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 20, height: 20, alignment: .center)
                                        .foregroundColor(darkMode ? .white : .black)
                                }
                            }
                        }
                    }.padding()
                }
            }.padding(3)
                .background(darkMode ? .black : .white)
                
        }
  
    }
}

struct NewsView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
