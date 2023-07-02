//
//  PhotoDetail.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct PhotoDetail: View {
    @Environment(\.dismiss) var dissmis
    @State var img:String = ""
    var body: some View {
        VStack{
            HStack{
                Button {
                    dissmis()
                } label: {
                    Image(systemName: "arrow.down.right.and.arrow.up.left")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            Spacer()
            Image(img)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity,maxHeight: .infinity)
            
        }
        .padding()
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(.black)
        
    }
}

struct PhotoDetail_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetail()
    }
}
