//
//  PostModel.swift
//  TopApp
//
//  Created by ASKER on 02.07.2023.
//

import Foundation

struct PostModel:Identifiable{
    let id  = UUID()
    let text : String
    var img : String
    let userName  : String
    let userImg : String
}

