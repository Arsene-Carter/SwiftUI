//
//  ChallengeTimerView.swift
//  Keepmovivate
//
//  Created by ARSENE on 22/03/2021.
//

import SwiftUI
import AVKit
let defaultTimeRemaining : CGFloat = 15
let lineWith: CGFloat = 15
let radius:CGFloat = 94

struct ChallengeTimerView: View {
    @State private var isActive = false
    @State private var isActive1 = true
    @State var time : CGFloat = 0
    @State var newModal = false
    @State var newModal2 = false
    @State var pulsate = false
    @State  var player : AVAudioPlayer!
    @State var tape = false
    
    @State private var timeRemaining: CGFloat = defaultTimeRemaining
    let timer = Timer.publish(every: 1, on: .main,in: .common).autoconnect()
    let challenge: ChallengeModel
    
    var body: some View {
        
        ZStack{
            Color.gray
                .ignoresSafeArea()
            
            
            /// la music
            
            ZStack{ if isActive1==false {
                Label ("",systemImage:"music.quarternote.3").foregroundColor(.white).font(.title)
                    .onTapGesture( perform:{ isActive1.toggle()
                        player.stop()
                    })
                
            }
            else  { Label ("",systemImage:"speaker.slash.fill").foregroundColor(.white).font(.title)
                .onTapGesture( perform:{ isActive1.toggle()
                    player.play()
                    
                })
            }
            }.offset(x: 150, y: -350)
            
            .onAppear {
                let url = Bundle.main.path(forResource: "theme", ofType: "mp3")
                self.player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: url!))
                
            }
            /// timer
            VStack (alignment:.center){
                
                
                ZStack{
                    Text(challenge.nom)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.bottom,344)
                        .frame(width: 420, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    if (timeRemaining != 0 && isActive){
                    ForEach(0..<60){
                        Circle()
                            .stroke()
                            .frame(width: 1, height: 1)
                            .foregroundColor(.black)
                            .offset(y:-80)
                            .rotationEffect(.degrees(Double($0)*6))
                            .scaleEffect(pulsate ? 1.3 : 1)
                    }
                    .animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true))
                    .onAppear {
                        pulsate.toggle()
                    }
                    }
                    
                    Text("\(Int(timeRemaining))").font(.system(size:93)).foregroundColor(.white)
                    Circle()
                        
                        .stroke(Color.gray.opacity(0.7),style:StrokeStyle(lineWidth: lineWith, lineCap: .round ))
                    Circle()
                        
                        .trim(from: 0, to: 1 - ((defaultTimeRemaining - timeRemaining)/defaultTimeRemaining))
                        .stroke (timeRemaining > 7 ? Color.green : timeRemaining > 3 ?
                                    Color.yellow : Color.red ,style:StrokeStyle(lineWidth: lineWith, lineCap: .round ))
                        .rotationEffect(.degrees(-90))
                        .animation(.easeInOut)
                    
                    
                }.frame(width: radius*2, height: radius*1.9)
                .padding(120)
                .offset( y: 160)
                
                VStack{
                    HStack(spacing:100)
                    {
                        
                        Label ("",systemImage:"memories").foregroundColor(.white).font(.title).padding(.bottom,120)
                            .onTapGesture( perform:{
                                isActive.toggle()
                                timeRemaining = defaultTimeRemaining
                                
                            })
                        
                        Label ("\(isActive1 ? " " : " ")"
                               ,systemImage:"\(isActive ? "pause.fill" : "play.fill")").font(.title).padding(.bottom,120).foregroundColor(.white)
                            .onTapGesture(perform:{
                                isActive.toggle()
                                
                            })
                        
                        
                    }.padding(100)
                    
                    HStack{
                        if timeRemaining == 0 {
                        ZStack{
                            
                            Button(action: {
                                self.tape.toggle()
                                newModal.toggle()
                                
                                
                            }, label: {
                                
                                Image(systemName: "checkmark")
                                    .foregroundColor(.green)
                                    .font(.system(size: 32))
                                    .frame(width: 100, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(40)
                                    .padding(.trailing,82)
                                    .padding(.bottom,282)
                                    .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                    
                                
                            })}
                            .sheet(isPresented: $newModal2,  content: {
                                ZStack{
                                    AnimationRateView()
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.orange)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                        .padding(.bottom,682)
                                        .padding(.leading,322)
                                        
                                        .onTapGesture {
                                            withAnimation{
                                                
                                                self.newModal2.toggle()}
                                            
                                        }
                                }
                                
                            }  )
                        ZStack{
                                Button(action: {
                                    
                                    self.tape.toggle()
                                    newModal2.toggle()
                                    
                                    
                                    
                                }, label: {
                                    Image(systemName: "xmark")
                                        .foregroundColor(.orange)
                                        .font(.system(size: 32))
                                        .frame(width: 100, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .font(.title3)
                                        .padding()
                                        .background(Color.white)
                                        .cornerRadius(40)
                                        .padding(.leading,22)
                                        .padding(.bottom,282)
                                        .shadow(color: .gray, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                }).sheet(isPresented: $newModal,  content: {
                                    ZStack{
                                        AnimationVIEW()
                                        Image(systemName: "xmark.circle.fill")
                                            .foregroundColor(.orange)
                                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                            .padding(.bottom,682)
                                            .padding(.leading,322)
                                            
                                            .onTapGesture {
                                                withAnimation{
                                                    
                                                    self.newModal.toggle()}
                                                
                                            }
                                    }
                                    
                                }  )
                            }
                            
                            
                        }
                    }
                    .frame(width: 100, height: 100)
                    
                    
                }
                
            }
            
            
            .onReceive(timer, perform: { _ in
                guard isActive else{
                    return }
                if timeRemaining > 0 {
                    timeRemaining -= 1
                    pulsate = true
                    
                }
                else {
                    pulsate = false
                    
                    
                }
            }
            )
            
        }
    }
    func timerEnded (){
        isActive = false
        pulsate = false
        player.stop()
        
        
        
        
    }
    
    
    
    
}



struct ChallengeTimerView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeTimerView(challenge: tabchallpre[0]).accentColor(.white)
    } 
}

