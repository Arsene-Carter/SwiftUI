//
//  AccueilView.swift
//  Keepmovivate
//
//  Created by ARSENE on 15/03/2021.
//

import SwiftUI

struct AccueilView: View {
    @State var newModel = false
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Text("Vendredi 26 Mars")
                            .fontWeight(.light)
                            .offset(x:15,y:-14)
                        
                        Spacer()
                            .padding(.bottom,35)
                    }
                    Citationview()
                        .frame(width: 300)
                    Challengview()
                    
                    VStack{
                        HStack{
                            Text("Citations Précédentes")
                                
                                .font(.title2)
                                .fontWeight(.semibold)
                                .padding(.leading,12)
                            Spacer()
                            
                        }
                        //                        VStack{
                        //                            Divider()
                        //                                .frame(width: 300)
                        //                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 3)
                        //                        }
                        ZStack{
                            NavigationLink(
                                
                                destination: SayingView(saying:favor),
                                label: {
                                    Image("citationsPrec")
                                        .resizable()
                                        .frame(width: 360, height: 150)
                                        .cornerRadius(20)
                                        .shadow(radius: 5)
                                    
                                }
                            )
                        }
                        
                    }
                    .padding()
                    ChallengePrec()
                    
                }
                
            }
            .navigationTitle("Aujourd'hui")
            .navigationBarItems(leading: Button(action:
                                                    {self.newModel.toggle()
                                                        
                                                    },
                                                label:{ Image(systemName: "person.circle.fill")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(width: 30, height: 30)
                                                    
                                                    
                                                    
                                                }))
            .sheet(isPresented : $newModel, content:{
                ProfilView(clase: prot1)
                    
            })
        }
        
    }
}



struct AccueilView_Previews: PreviewProvider {
    static var previews: some View {
        AccueilView().accentColor(.red)
    }
}



struct Citationview: View {
    @State private var color:Color = .white
    @State private var heart:String = "suit.heart"
    var body: some View {
        VStack{
            HStack{
                Text("Citation du jour")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading,-42)
                Spacer()
                
            }
            //            VStack{
            //                Divider()
            //                    .frame(width: 300)
            //                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 3)
            //            }
            ZStack{
                Image("blurred-bg")
                    .resizable()
                    .frame(width: 360, height: 220)
                    .cornerRadius(20)
                    .shadow(radius: 5)
                
                ZStack{
                    Text("Il vaut mieux faire que dire")
                        .font(.system(size: 25))
                        .bold()
                        .padding(.bottom,41)
                        .foregroundColor(.white)
                    Text("-Alfred de Musset")
                        .fontWeight(.light)
                        .padding(.top,122)
                        .foregroundColor(.white)
                        
                    Button(action: {
                        heart = "suit.heart.fill"
                        color = .red
                    }, label: {
                        Image(systemName: heart)
                            .foregroundColor(color)
                            .padding(.leading,292)
                            .padding(.bottom,162)
                            .font(.system(size:22))
                    })
                    
                }
            }
            .padding()
            
            //            HStack{
            //                Image(systemName: "heart")
            //                  //  .frame(width: 130, height: 20)
            //                    .font(.system(size: 25))
            ////                    .offset(x:-25)
            //                    //                Spacer()
            //                  //  .padding()
            //                 //   .background(Color.red)
            //                Spacer()
            //            }
        }
        
    }
}

struct Challengview: View {
    var body: some View {
        VStack{
            
            HStack{
                Text("Challenge du jour")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading,2)
                //                    .offset(x:8)
                Spacer()
            }
            VStack{
                NavigationLink(
                    
                    destination: ChallengeTimerView(challenge: tabchallpre[0]),
                    label: {
                        Image("Challenge22")
                            .resizable()
                            .frame(width: 360, height: 220)
                            .cornerRadius(20)
                            .shadow(radius: 5)
                    }
                    
                )
                
            }
            Spacer()
            
        }
        .padding()
    }
}

struct ChallengePrec: View {
    var body: some View {
        VStack{
            HStack{
                Text("Challenges Précédents")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .padding(.leading,6)
                Spacer()
            }
            ZStack{
                NavigationLink(
                    destination:  ChallengeView(challengeprec:tabchallpre).accentColor(.black),
                    label: {
                Image("Competitors")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 360, height: 150)
                    .cornerRadius(20)
                    .shadow(radius: 5)

                    }
                )
            }
            Spacer()
        }
        .padding()
    }
}
