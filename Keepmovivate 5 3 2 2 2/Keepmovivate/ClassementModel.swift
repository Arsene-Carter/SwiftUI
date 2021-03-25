//
//  ClassementModel.swift
//  Keepmovivate
//
//  Created by ARSENE on 17/03/2021.
//


import Foundation
import SwiftUI

var premiere = ["star.fill","star.fill","star.fill","star.fill","star.fill"]
var deuxieme = ["star.fill","star.fill","star.fill","star.fill"]
var troiseme = ["star.fill","star.fill","star.fill"]
var quatrieme = ["star.fill","star.fill"]
var cinqueme = ["star.fill"]
struct ClassementModel: Identifiable{
    var id = UUID()
    
    
    
    let image : String
    let name : String
    let stars : [String]
    let color : Color
}
let proto1 : ClassementModel = ClassementModel(image: "Avatar20", name: "User1", stars: premiere, color:.white)
let proto2 : ClassementModel = ClassementModel(image: "Avatar8", name: "USER2", stars: deuxieme, color:.white)
let proto3 : ClassementModel = ClassementModel(image: "Avatar6", name: "USER3", stars: deuxieme, color:.white)
let proto4 : ClassementModel = ClassementModel(image: "Avatar2", name: "USER4", stars: troiseme, color:.white)
let proto5 : ClassementModel = ClassementModel(image: "Downey", name: "USER5", stars: troiseme, color:.white)
let proto6 : ClassementModel = ClassementModel(image: "Avatar23", name: "USER6", stars: quatrieme, color:.white)
let proto7 : ClassementModel = ClassementModel(image: "Avatar24", name: "USER7", stars: quatrieme, color:.white)
let proto8 : ClassementModel = ClassementModel(image: "Avatar21", name: "USER8", stars: quatrieme, color:.white)
let proto9 : ClassementModel = ClassementModel(image: "Avatar16", name: "USER9", stars: cinqueme, color:.white)
let proto10 : ClassementModel = ClassementModel(image: "Avatar15", name: "USER10", stars: cinqueme, color:.white)


let TabClass:[ClassementModel] = [
    proto1,
    proto2,
    proto3,
    proto4,
    proto5,
    proto6,
    proto7,
    proto8,
    proto9,
    proto10
]
