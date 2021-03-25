//
//  ProfileDetailsView.swift
//  Profile
//
//  Created by Abidi Anis on 17/03/2021.
//

import SwiftUI

struct ProfileDetailsView: View {
    let details:Classement_Model
    @State private var newmodal = false
    var body: some View {
        VStack{
            
            Image(details.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 110)
            
            Image(details.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 140, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white ,lineWidth:5 ))
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            //                        .padding(.bottom,-100)
            ////            Spacer()
            //                .frame(height: 200)
            HStack{
                VStack{
                    HStack{
                    Text(details.name)
                        .font(.system(size: 20))
                        Button(
                            
                            action:{newmodal.toggle()},
                            label: {
                                Image(systemName: details.plus)
                                    .foregroundColor(.orange)
                                    .padding(.leading,22)
                                    .font(.system(size: 22))
                                
                            }
                        ).sheet(isPresented: $newmodal, content: {
                            RedigezView(showing: $newmodal)
                        })
                    }
                    
                    //                        .fontWeight(.semibold)
                    Text("'' \(details.bio) ''")
                        .foregroundColor(.black)
                        .font(.system(size: 16))
                        .padding()
                    VStack {
                        HStack{
                            Text("Nom:")
                                .font(.system(size: 18))
                                .bold()
                            Text(details.nom)
                                .font(.system(size: 18))
                                .bold()
                        }
                        HStack{
                            Text("Prénom:")
                                .font(.system(size: 18))
                                .bold()
                            Text(details.prenom)
                                .font(.system(size: 18))
                                .bold()
                        }
                        HStack{
                            Text("Nombre d'étoile:")
                                .font(.system(size: 18))
                                .bold()
                            ForEach(details.stars,id:\.self){ star in
                                Image(systemName:star)
                                    .foregroundColor(.yellow)
                                
                            }
                        }
                        
                    }
                }
                //                    .offset(y:-440)
                //                    .padding(.bottom,-440)
                // A éviter
            }
            
            
            
            
        }

    }
}


struct ProfileDetailsView_Previews: PreviewProvider{
    static var previews: some View{
        ProfileDetailsView(details: TabClas[2])
        
    }
}
