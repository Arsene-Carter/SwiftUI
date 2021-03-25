//
//  AnimationView.swift
//  Keepmovivate
//
//  Created by ARSENE on 22/03/2021.
//

import SwiftUI

struct AnimationView: View {
    @State var rotation = 0.0
    @State var scaleXY = 7.0
    @State var posX = -100
    @State var transparency = 0.9
    var body: some View {
        ZStack{
        
       // Text("FÉLICITAION")
        VStack{
          
            ForEach(0..<30){_ in
            HStack{
                   ForEach(0..<10){_ in
                        //Image(systemName: "heart.fill")
                    HStack{
                        VStack{
                            Image(systemName:"face.smiling.fill")
                                .resizable()
                                .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(.blue)
                          Rectangle()
                        .foregroundColor(.orange)
                             
                        }
                     VStack{
                        Rectangle()
                        .foregroundColor(.purple)
                        Image(systemName:"face.smiling.fill")
                            .resizable()
                            .frame(width: 5, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                         .foregroundColor(.green)
                       }}
                        
                        .frame(width: 20, height: 20, alignment: .topLeading)
                                .edgesIgnoringSafeArea(.all)
                                .foregroundColor(.red)
                                 .rotationEffect(.degrees(rotation))
                    }
                }
            }
     }
   
       
           .opacity(transparency)
         .scaleEffect(CGFloat(scaleXY))
         .offset(y:CGFloat(posX))
           .animation(Animation.easeInOut(duration: 6).repeatForever(autoreverses: false).speed(1))
         .onAppear(){
            rotation+=860
               scaleXY+=1.2
               posX+=5
               transparency -= 0.2
           }
            VStack{
                Text("Felicitations!")
                    .fontWeight(.black)
                    .font(.system(size:42))
                    .offset(x:12)
                    
            }
        
  
    }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}





