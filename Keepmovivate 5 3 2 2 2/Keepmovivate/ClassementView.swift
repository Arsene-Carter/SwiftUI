//
//  ClassementView.swift
//  Keepmovivate
//
//  Created by ARSENE on 17/03/2021.
//

import SwiftUI

struct ClassementView: View {
    let icon:[IconsModel]
    let classe:[ClassementModel]
    let details:[Classement_Model]
    var body: some View {
        NavigationView{
            VStack{
                ScrollView(.horizontal, showsIndicators: false){
                    LazyHStack{
                        ForEach(icon){ index in
                            if index.icons == "star.fill"{
                                NavigationLink(
                                    
                                    destination: ClassprecView(icon: TabIcons, classe: TabClas),
                                    label: {
                                        Image(systemName: index.icons)
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .foregroundColor(index.color)
                                            .padding()
//                                            .background(Color(".black"))
                                            .cornerRadius(23)
                                            .overlay(Circle().stroke( Color("ColorSaumonClaire"), lineWidth: 3))
                                            .padding(0)
                                    }
                                )
                                .padding(.leading, 10)
                                
                            } else {
                                Image(systemName: index.icons)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    
                                    .foregroundColor(index.color)
                                    .padding()
                                    //                                .background(Color.black)
                                    .cornerRadius(23)
                                    .overlay(Circle().stroke(Color("ColorSaumonClaire"), lineWidth: 3))
                                    .padding(0)
                            }
                        }
                    }
                    VStack{
                        HStack{
                        Text("Semaine 2:")
                            .foregroundColor(.black)
                            .offset(x:-152)
                            .font(.system(size:22))
                            Text("En cours...")
                                .foregroundColor(.orange)
                                .fontWeight(.heavy)
                                .offset(x:-152)
                                .font(.system(size:22))
                        }
                    }
                    
                }
                .frame(height: 100)
                ScrollView {
                    LazyVStack(alignment:.leading){
                        ForEach (details) { intel in
                            // intel un élement qu'on a créé pour utilisé les différents éléments du tableau details
                            
                            NavigationLink(
                                destination: ProfileDetailsView(details: intel),
                                label: {
                                    HStack {
                                        Image(intel.image)
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .frame(width: 40, height:40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                            .padding()
                                        
                                        HStack {
                                            Text(intel.name)
                    
                                            Spacer()
                                        }
                                        .frame(width: 100)
                                    
                                        ForEach (intel.stars,id:\.self) { star in
                                            Image(systemName:star)
                                                .foregroundColor(intel.color)
                                        }
                                        Image(systemName: intel.pencil)
                                            .font(.system(size:22))
                                            .offset(x:16)
                                        Divider()
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                            .padding(1)
                                            .foregroundColor(.secondary)
                                    }
                                    
                                }
                            )
                            .foregroundColor(.white)
                            
                            
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color("ColorSaumonClaire"), Color("orangeClair")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                )
                            .cornerRadius(8)
//                            .shadow(radius: 3)
                            .padding(.horizontal, 5)
                            .padding(.vertical, 1)
                        }
                        
    //                    .listStyle(PlainListStyle())
                        
                    }
                }
                Spacer()
                
            }
            .navigationBarTitle("Classement")
            
        }
    }
}

struct ClassementView_Previews: PreviewProvider {
    static var previews: some View {
        ClassementView(icon: TabIcons, classe: TabClass, details: TabClas)
    }
}
