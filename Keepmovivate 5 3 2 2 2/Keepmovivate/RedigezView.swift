//
//  RedigezView.swift
//  Keepmovivate
//
//  Created by ARSENE on 23/03/2021.
//

import SwiftUI
struct RedigezView: View {
    @State private var nom : String = ""
    @State private var prenom : String = ""
    @State private var citattion : String = ""
    @State var ann = false
    @State var ajouter = false
    @Binding var showing:Bool
    
    var body: some View {
        ZStack{

            
            Image ("Image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                
            VStack{
            Spacer()
                HStack(spacing: 100){
                    Button( action: {
                        self.ann.toggle()
                         citattion = ""
                        showing = false

                    }, label: {
                        Text("Annuler")
                            .bold()
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(10)
                    })
                    if ajouter == false {
                    Button( action: {
                        self.ajouter.toggle()
                        ann = false
                        showing = false
                        
                    }, label: {
                        Text("Ajouter")
                            .bold()
                         
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(color: Color.white,radius: 10 )
                       
                    })}
    //
                }.padding()
                Spacer()
            
            Form{
               
                
                Section{
                    TextField ("Nom ", text : $nom)
                    TextField ("Prenom ", text : $prenom)
                        .textContentType(.name)
                }
                Section{
                    TextField ("Rediger votre citation ", text : $citattion)
                        .textContentType(.name)
                        .lineLimit(4)
                        .padding(.bottom,22)
                        .frame(height: 100, alignment: .top)
                        .padding(.bottom,112)
                    
                    
                }

            }
   
               
                    
            }
         
        }  .shadow(color: Color.orange,radius: 2 )

        
        
    }

}



//struct RedigezView_Previews: PreviewProvider {
//    static var previews: some View {
//        RedigezView(showing:false)
//    }
//}
