//
//  CchallengeModel.swift
//  PROJETAmani
//
//  Created by Ellafi Amani on 09/03/2021.
//

import Foundation
struct ChallengeModel : Identifiable
{   var id = UUID()
    let nom: String
    let date : String
    let duree : String
    let image: String
    //let image: String
}
let challengeDeJour = ChallengeModel (nom: "Faire 10 pompes", date: "09/03/2021" , duree: "5 min",image:"new6")
let challengeDeJour_1 = ChallengeModel (nom: "Faire des squats pendant", date: "08/03/2021", duree: "5 min",image:"new7")
let challengeDeJour_2 = ChallengeModel (nom: "marcher", date: "06/03/2021", duree: "5 min",image:"new3")
let challengeDeJour_3 = ChallengeModel (nom: "Monter 10 étages", date: "06/03/2021", duree: "5 min",image:"new2")
let challengeDeJour_4 = ChallengeModel (nom: "Parcourir 10 Km en vélo", date: "05/03/2021", duree: "5 min",image:"new1")


let tabchallpre : [ChallengeModel] = [challengeDeJour_1, challengeDeJour_2 ,challengeDeJour_3,challengeDeJour_4]

let tabchallfavories : [ChallengeModel] = [challengeDeJour,challengeDeJour_2,challengeDeJour_4]
