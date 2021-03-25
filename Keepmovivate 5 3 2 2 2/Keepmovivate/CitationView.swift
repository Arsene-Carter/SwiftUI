//
//  CitationView.swift
//  Keepmovivate
//
//  Created by ARSENE on 18/03/2021.
//

import SwiftUI

struct CitationView: View {
    let citations:citationModel
    var body: some View {
        VStack{
            ZStack{
                Image(citations.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width:360,height:400)
                    .cornerRadius(25)
                    .shadow(radius: 22)
                    .opacity(2.9)
                
                Text("  ''\(citations.saying)''   ")
                    .font(.system(size: 22))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    
                
                Text("-"+citations.author)
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .offset(x: 10, y: 170)
//                    .font(alignment: trailing))
                
            }
            .padding(.top,-132)
            
            HStack{
                Text("Publié le : ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .foregroundColor(.orange)
                    .padding(.leading,-122)
                Text(citations.date)
                    .padding(.leading,-20)
                    .font(.title3)
            }
            
        }
    }
}
 
struct CitationView_Previews: PreviewProvider{
    static var previews: some View{
        CitationView(citations:favor [1])
    }
}
