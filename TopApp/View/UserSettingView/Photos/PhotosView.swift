//
//  PhotosView.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import SwiftUI

struct PhotosView: View {
    @State private var arrImage:[CollectionPhotoModel] = [
    CollectionPhotoModel(img: "madara1"),
    CollectionPhotoModel(img: "Madara2"),
    CollectionPhotoModel(img: "Madara3"),
    CollectionPhotoModel(img: "Madara4"),
    CollectionPhotoModel(img: "Madara5"),
    CollectionPhotoModel(img: "Madara6"),
    CollectionPhotoModel(img: "Madara7"),
    ]
    let columns = [GridItem(.adaptive(minimum: 120))]
    @State private var isOpneImage : Bool = false
    var body: some View {
        VStack{
            LazyVGrid( columns:columns, spacing: 10) {
                ForEach(arrImage){ item in
                    Image(item.img)
                        .resizable()
                        .frame(width: 100,height: 100)
                        .onTapGesture {
                            isOpneImage.toggle()
                        }.fullScreenCover(isPresented: $isOpneImage) {
                            PhotoDetail(img: item.img)
                        }
                }
            }
        }
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
