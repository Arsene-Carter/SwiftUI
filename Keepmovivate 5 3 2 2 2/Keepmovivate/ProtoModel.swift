//
//  ProtoModel.swift
//  Keepmovivate
//
//  Created by ARSENE on 16/03/2021.
//

import Foundation

struct ModifierModel: Identifiable {
    var id = UUID()
    
    
    let name:String
}
let modifier:ModifierModel = ModifierModel(name: "Modifier votre profil")
let partager:ModifierModel = ModifierModel(name: "Partager le profil")

let TabModifier:[ModifierModel] = [
    modifier,
    partager
]

struct ParamsModel: Identifiable {
    var id = UUID()
    
    let name:String
}
let langue : ParamsModel = ParamsModel(name: "Langue")
let apparance : ParamsModel = ParamsModel(name: "Apparance")
let notification : ParamsModel = ParamsModel(name: "Notification")

let TabParams : [ParamsModel] = [
    langue,
    apparance,
    notification
]

struct AppModel: Identifiable {
    var id = UUID()
    
    let name:String
}
let aide:AppModel = AppModel(name: "Aide")
let rate:AppModel = AppModel(name: "Rate")
let feedback:AppModel = AppModel(name: "Feedback")

let TabApp:[AppModel] = [
    aide,
    rate,
    feedback
]

