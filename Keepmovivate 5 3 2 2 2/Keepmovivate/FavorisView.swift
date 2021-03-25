//
//  FavorisView.swift
//  Keepmovivate
//
//  Created by ARSENE on 15/03/2021.
//

import SwiftUI

struct FavorisView: View {
    let citation:[citationModel]
    let challenges:[ChallengeModel]
    @State var newModal = false
    var body: some View {
        NavigationView {
        VStack{
//            HStack{
//                ZStack{
//                    Image("Citations")
//                        .resizable()
//                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
//                        .frame(width: 180, height: 150)
//                        .cornerRadius(18)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                        .opacity(0.8)
//
//                    Text("Citations")
//                        .font(.system(size: 22))
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                }
//                .padding(.top,32)
//                .padding(.trailing,30)
////                .offset(x:-9)
//                ZStack{
//                    Image("Challenge22")
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(width: 180, height: 150)
//                        .cornerRadius(18)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                        .opacity(0.8)
//
//                    Text("Challenges")
//                        .font(.system(size: 22))
//                        .foregroundColor(.white)
//                        .fontWeight(.heavy)
//                }
//                .padding(.top,32)
//                .padding(.leading,-26)
//            }
            
            
            ScrollView {
                Image("annis")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 370,  height: 220)
                    .cornerRadius(15)
    //                .shadow(radius: 3)
    //                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: 3, y: 1)
                
                HStack{
                    
                    Text("Citations Favorites")
                        .fontWeight(.bold)
    //                    .italic()
                        .offset(x:12)
                        .padding(.top,20)
                        Spacer()
                            
                }
                
            ScrollView(.horizontal,showsIndicators: false){
                
                LazyHStack{
                    
                    ForEach(citation){index in
                        NavigationLink(
                            destination: CitationView(citations: index),
                            label: {
                                ZStack{
                                    Image(index.image)
                                        .resizable()
                                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                        .frame(width: 140, height: 140)
                                        .cornerRadius(29)
                                        .shadow(radius: 3)
                                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: 3, y: 1)
                                        .opacity(0.6)
                                        
                                    Text(index.date)
                                        .offset(y:52)
                                        .foregroundColor(.white)
                                        .font(.system(size:17))
                                }
                            }
                        )
                    }
                }
                
            }
            .padding(.leading,7)
                Spacer()
                Divider()
                
                HStack{
                    Text("Challenges Favoris")
                        .fontWeight(.bold)
                        .offset(x:12)
                        .padding(.top,20)
                        Spacer()
                            
                }
                
                ScrollView(.horizontal,showsIndicators: false){
                    LazyHStack{
                        ForEach(challenges){index in
                            NavigationLink(
                                destination:ChallengeTimerView(challenge: index) ,
                                label: {
                                    ZStack{
                                        Image(index.image)
                                            .resizable()
                                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                            .frame(width: 140, height: 140)
                                            .cornerRadius(29)
                                            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 3, x: 3, y: 1)
                                            .opacity(0.6)
                                        Text(index.date)
                                            .offset(y:52)
                                            .foregroundColor(.white)
                                            .font(.system(size:17))
                                    }
                                }
                            )
                        }
                    }
                    
                }
                .padding(.leading,7)
            }
        }
        .navigationBarTitle("Favoris")
        }
    }
}

struct FavorisView_Previews: PreviewProvider {
    static var previews: some View {
        FavorisView(citation: favor,challenges: tabchallpre)
    }
}

