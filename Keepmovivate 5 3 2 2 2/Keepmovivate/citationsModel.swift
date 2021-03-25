//
//  citationsModel.swift
//  Keepmovivate
//
//  Created by ARSENE on 17/03/2021.
//

import SwiftUI

struct citationModel:Identifiable{
    var id = UUID()
    
    let image:String
    let saying:String
    let author:String
    let date:String
}

let first: citationModel = citationModel(image: "citation1", saying:"À vaillant coeur rien\n d’impossible.", author:"Jacques Cœur", date: "22.08.2020")
let second: citationModel = citationModel(image: "citation2", saying:"Prouver que j’ai raison serait\n accorder que je puis\navoir tort. ", author:"Pierre Augustin Caron de Beaumarchais", date: "01.09.2020")
let third: citationModel = citationModel(image: "citation3", saying:"Le temps est un grand maître,\n dit-on.Le malheur est qui’il tue ses élèves.", author:"Hector Berlioz", date: "12.09.2020")
let fourth: citationModel = citationModel(image: "citation4", saying:"La parfaite valeur est de faire\nsans témoin ce qu’on serait\ncapable de faire devant tout le monde. ",author:"La Rochefoucauld", date: "08.01.2021")
let fifth: citationModel = citationModel(image: "citation8", saying:"Imaginer c’est choisir.", author:"Jean Giono", date: "19.01.2021")
let sixth: citationModel = citationModel(image: "citation6",saying:"La critique est aisée, mais l’art\n est difficile. ", author:"Philippe Destouches", date: "27.01.2021")
let seventh: citationModel = citationModel(image: "citation7",saying:"On ne change pas une équipe qui\n gagne.", author:"Blaise Pascal", date: "12.02.2021")

let favor: [citationModel] = [
    first,
    second,
    third,
    fourth,
    fifth,
    sixth,
    seventh
]



