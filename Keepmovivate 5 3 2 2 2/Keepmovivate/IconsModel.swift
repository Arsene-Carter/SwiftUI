//
//  IconsModel.swift
//  Keepmovivate
//
//  Created by ARSENE on 16/03/2021.
//

import SwiftUI


import Foundation
import SwiftUI

struct IconsModel: Identifiable{
    var id = UUID()
    
    let icons : String
    let color : Color
}

let open : IconsModel = IconsModel(icons:"star.fill", color: Color("ColorSaumonClaire"))
let closed1 : IconsModel = IconsModel(icons:"star", color: Color("ColorSaumonClaire"))
let closed2 : IconsModel = IconsModel(icons:"lock",color:  Color("ColorSaumonClaire"))
let closed3 : IconsModel = IconsModel(icons:"lock", color: Color("ColorSaumonClaire"))
let closed4 : IconsModel = IconsModel(icons:"lock", color: Color("ColorSaumonClaire"))
let closed5 : IconsModel = IconsModel(icons:"lock", color: Color("ColorSaumonClaire"))
let closed6 : IconsModel = IconsModel(icons:"lock", color: Color("ColorSaumonClaire"))
let closed7 : IconsModel = IconsModel(icons:"lock", color: Color("ColorSaumonClaire"))
let closed8 : IconsModel = IconsModel(icons:"lock", color: Color("ColorSaumonClaire"))


let TabIcons: [IconsModel] = [
    open,
    closed1,
    closed2,
    closed3,
    closed4,
    closed5,
    closed6,
    closed7,
    closed8
]
