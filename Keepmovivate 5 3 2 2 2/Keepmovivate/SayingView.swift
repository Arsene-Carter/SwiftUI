//
//  SayingView.swift
//  Keepmovivate
//
//  Created by ARSENE on 22/03/2021.
//

import SwiftUI

struct SayingView: View {
    let saying:[citationModel]
    @State private var heart:String = "suit.heart"
    @State private var color:Color = .black
    var body: some View {
        VStack{
            ScrollView{
            LazyVStack{
                ForEach(saying){ details in
                HStack{
                    NavigationLink(
                        destination: CitationView(citations: details),
                        label: {
                            Image(details.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 90)
                                .clipShape(Rectangle())
                                .cornerRadius(10)
                                .padding()
                                Spacer()
                        })
                    Text("Publie:")
                        .foregroundColor(.orange)
                        .padding(.trailing,42)
                        .offset(x:-7)
                    Text(details.date)
                        .offset(x:-52)
                    Spacer()
                    Button(action: {
                        heart = "suit.heart.fill"
                        color = .red
                    }, label: {
                        Image(systemName: heart)
                            .padding(.trailing,22)
                            .foregroundColor(color)
                    })
                    
                
                    
                }
                
            }
            }
        }
        }
        
        }
}

struct SayingView_Previews: PreviewProvider {
    static var previews: some View {
        SayingView(saying:favor)
    }
}
