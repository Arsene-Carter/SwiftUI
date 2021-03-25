//
//  ClassementModel.swift
//  Keepmovivate
//
//  Created by ARSENE on 17/03/2021.
//


import Foundation
import SwiftUI

var premier = ["star.fill","star.fill","star.fill","star.fill","star.fill"]
var deuxiem = ["star.fill","star.fill","star.fill","star.fill"]
var troisem = ["star.fill","star.fill","star.fill"]
var quatriem = ["star.fill","star.fill"]
var cinquem = ["star.fill"]
struct Classement_Model: Identifiable{
    var id = UUID()
    
    let background : String
    let image : String
    let name : String
    let bio : String
    let nom : String
    let prenom : String
    let stars : [String]
    let color : Color
    let icon: String
    let pencil:String
    let plus:String
}
let prot1:Classement_Model = Classement_Model(background:"bac1",image: "Downey", name: "Gasana", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Gasana",prenom:"Arsene",stars: premiere,color:.white,icon:"plus.circle.fill",pencil:"pencil",plus:"square.and.pencil")

let prot2:Classement_Model = Classement_Model(background:"background2",image: "Avatar6", name: "Abidi", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Abidi",prenom:"Anis", stars: deuxieme,color:.white,icon:"plus.circle.fill",pencil:"pencil",plus:"square.and.pencil")

let prot3:Classement_Model =  Classement_Model(background:"bac3",image: "Avatar2", name: "Chika", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Chika",prenom:"Ali", stars: deuxieme,color:.white,icon:"plus.circle.fill",pencil:"pencil",plus:"square.and.pencil")

let prot4:Classement_Model = Classement_Model(background:"background3",image: "Avatar16", name: "Parent", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Parent",prenom:"Stephen", stars: troiseme,color:.white,icon:"",pencil:"",plus:"")

let prot5:Classement_Model = Classement_Model(background:"background5",image: "Avatar21", name: "Saker", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Saker",prenom:"Annas", stars: troiseme,color:.white,icon:"",pencil:"",plus:"")

let prot6:Classement_Model =  Classement_Model(background:"background6",image: "Avatar8", name: "Soubrier", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Soubrier",prenom:"Cedric", stars: quatrieme,color:.white,icon:"",pencil:"",plus:"")

let prot7:Classement_Model =  Classement_Model(background:"background7",image: "Avatar15", name: "Dupont", bio: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Dupont",prenom:"Matthieu", stars: quatrieme,color:.white,icon:"",pencil:"",plus:"")

let prot8:Classement_Model =  Classement_Model(background:"background8",image: "Avatar24", name: "Jean-Pierre", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Jean-pierre",prenom:"Mahfod", stars: quatrieme,color:.white,icon:"",pencil:"",plus:"")

let prot9:Classement_Model =  Classement_Model(background:"background8",image: "Avatar20", name: "Jean-bosco", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Jean-bosco",prenom:"Adrien", stars: cinqueme,color:.white,icon:"",pencil:"",plus:"")

let prot10:Classement_Model =  Classement_Model(background:"ground8",image: "Avatar23", name: "Langlet", bio:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Velit dignissim sodales ut eu sem integer vitae justo. Urna duis convallis convallis tellus id interdum velit. Ornare quam viverra orci sagittis eu volutpat. Sit amet nisl suscipit adipiscing bibendum.",nom:"Langlet",prenom:"Curtis", stars: cinqueme,color:.white,icon:"",pencil:"",plus:"")


let TabClas:[Classement_Model] = [
    prot1,
    prot2,
    prot3,
    prot4,
    prot5,
    prot6,
    prot7,
    prot8,
    prot9,
    prot10
]

