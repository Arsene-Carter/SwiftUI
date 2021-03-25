//
//  ProfilAppView.swift
//  Profile
//
//  Created by Abidi Anis on 08/03/2021.
//

import SwiftUI

struct ProfilView: View {
    var clase: Classement_Model
    var body: some View {
        NavigationView{
       
            VStack(alignment: .leading) {
                
                HStack{
                    Image(clase.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(50)
                        .frame(width: 90, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal,19)
                    VStack (alignment: .leading) {
                        Text(clase.name)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            //.font(.bold)
                            .fontWeight(.heavy)
                            .padding(.horizontal,33)
                            .foregroundColor(.black)
                        HStack {
                            NavigationLink(
                                destination: Text("Bio"),
                                label: {
                                    Text("Ajouter une Biographie")
                                        .foregroundColor(.orange)
                                        .offset(x:33)
                                        
                                    Spacer()
                                    Image(systemName: "plus")
                                        .foregroundColor(.orange)
                                        .offset(x:-252)
                                }
                            
                            )
                        }
                    }
                    Spacer()
                }
                List {
                    NavigationLink(
                        destination: Text("Modifier"),
                        label: {
                            Text("Modifier Votre profil")
                        })
                    HStack {
                        Text("Partager le profil")
                            .fontWeight(.light)
                        Spacer()
                        Image(systemName: "square.and.arrow.up")
                            .foregroundColor(.orange)
                    }
                    
                    Text("Paramétres")
                        .font(.system(size: 22)) .bold()
                        .padding(.bottom)
                        .padding(.top)
                        .foregroundColor(.orange)
                    
                    NavigationLink(
                        destination: Text("Langues"),
                        label: {
                            Text("Langues")
                            
                        })
                    
                    NavigationLink(
                        destination: Text("Apparance"),
                        label: {
                            Text("Apparence")
//                                .padding(.bottom)
                            
                        })
                    NavigationLink(
                        destination: Text("Notifications"),
                        label: {
                            Text("Notifications")
//                                .padding(.bottom)
                        })
                    Group() {
                        Text("Support")
                            .font(.system(size: 23)) .bold()
                            .padding(.top)
                            .padding(.bottom)
                            .foregroundColor(.orange)
                        NavigationLink(
                            destination: Text("Aide"),
                            label: {
                                Text("Aide")
                            })
                        
//                            .padding(.bottom)
                        NavigationLink(
                            destination: Text("Feedback"),
                            label: {
                                Text("FeedBack")
//                                    .padding(.bottom)
                                })
                    }
                }
                .listStyle(PlainListStyle())
                Spacer()
            }
            .navigationBarTitle("Profil")
            .padding(.top,42)
            .font(.system(size: 20))
            Spacer()
        }
    }
}

struct ProfilApp_View_Previews: PreviewProvider {
    static var previews: some View {
            ProfilView(clase: prot1)
        
    }
}
