//
//  ChallengeView.swift
//  Keepmovivate
//
//  Created by ARSENE on 22/03/2021.
//

import SwiftUI

struct ChallengeView: View {
    let challengeprec:[ChallengeModel]
    var body: some View {
                VStack{
            ScrollView{
                LazyVStack{
                    ForEach(challengeprec){ intel in
                        VStack{
                            Image(intel.image)
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                                .frame(width: 384, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .cornerRadius(10)
                            
                HStack{
                    Text(intel.nom)
                        .offset(x:25)
                        .padding(.trailing,29)
                    Text("| Fit+")
                        .foregroundColor(.orange)
                    Spacer()
                    NavigationLink(
                        destination: ChallengeTimerView(challenge: intel),
                        label: {
                            Image(systemName: "chevron.right.circle.fill")
                                .foregroundColor(.orange)
                                .padding(.trailing,22)
                                .font(.system(size:24))
                        }
                )}
                    
                    
            }
                        .frame(width: 394, height: 210, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .cornerRadius(20)
                        .shadow(color: .gray, radius: 10, x:9, y: 3)
                        
                        .padding(.top,20)
                    }
                }
            }
            
        }
        }
        
    }

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView(challengeprec:tabchallpre).accentColor(.white)
    }
}

