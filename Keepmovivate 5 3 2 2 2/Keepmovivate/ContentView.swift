//
//  ContentView.swift
//  Keepmovivate
//
//  Created by ARSENE on 15/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            AccueilView().accentColor(.orange)
                .tabItem {
                    Image(systemName:"house.fill")
                    Text("Accueil")
                }
            
            FavorisView(citation: favor,challenges: tabchallpre).accentColor(.orange)
                .tabItem {
                    Image(systemName:"heart")
                    Text("Favoris")
                }
            
            ClassementView(icon: TabIcons, classe: TabClass,details: TabClas).accentColor(.orange)
                .tabItem {
                    Image(systemName:"chart.bar.xaxis")
                    Text("Classement")
                }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().accentColor(.orange)
    }
}

