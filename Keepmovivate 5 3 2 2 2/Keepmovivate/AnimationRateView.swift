//
//  AnimationRateView.swift
//  Keepmovivate
//
//  Created by ARSENE on 24/03/2021.
//

import SwiftUI

struct AnimationRateView: View {
    @State var rotation = 1.0
    @State var scaleXY = 5.0
    @State var posX = -100
    @State var transparency = 0.9
    @State private var opacity=1.0
    @State var pulsate = false
    
    
    
    var body: some View {
        ZStack{
            
               
            VStack(alignment: .leading, spacing: 6){
                
                Text("Courage 💪 Tu peux recommencer ")
                    .foregroundColor(.orange)
                
            }
            .font(.system(size: 20, weight: .bold))
            .foregroundColor(Color.white.opacity(0.5))
            .scaleEffect(pulsate ? 1.1 : 1)
            .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: true).speed(2))
            .onAppear{
                pulsate.toggle()
                
            }
            
            VStack{
                
                ForEach(0..<30){_ in
                    HStack{
                        ForEach(0..<10){_ in
                            //Image(systemName: "heart.fill")
                            HStack{
                                
                                Circle()
                                    .foregroundColor(.blue)
                                Circle()
                                    .foregroundColor(.yellow)
                            }
                            
                            .frame(width: 10, height: 10, alignment: .topLeading)
                            
                            .foregroundColor(.red)
                            .rotationEffect(.degrees(rotation))
                        }
                    }
                }
            }
            
            
            .opacity(transparency)
            .scaleEffect(CGFloat(scaleXY))
            .offset(y:CGFloat(posX))
            .animation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: false).speed(1))
            
            .onAppear(){
                rotation+=360
                scaleXY+=1.1
                posX+=5
                transparency -= 0.9
            }
            
            
        }
    }
}


struct AnimationRateView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationRateView()
            .preferredColorScheme(.light)
    }
}

