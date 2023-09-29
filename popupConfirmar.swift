//
//  popupConfirmar.swift
//  testes
//
//  Created by Maria Eduarda Alves on 26/09/23.
//

import SwiftUI

struct popupConfirmar: View {
    
//    @Binding var show: Bool
    
    var body: some View {
        ZStack {
//            if show {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 360, height: 420)
                    .foregroundColor(.white)
                    .padding()
                    .shadow(radius:5)
                
                VStack (spacing: 30){
                    VStack (spacing: 15) {
                        Text("Confirmar")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text ("Confirme sua participação no evento Poker Viciante da bolha Academy")
                            .font(.headline)
                            .fontWeight(.regular)
                        
                        Text("🗓️")
                            .font(.system(size: 108))
                        
                        
//                        Text ("Seu evento foi criado com sucesso!")
//                            .font(.headline)
//                            .fontWeight(.regular)
                    }
                    Text("Participar")
                    .fontWeight(.semibold)
                    .frame(width: 68, height: 30)
                    .background(Color.blue)
                    
                    NavigationLink (destination: HomeView()) {
                        Text("Agora não")
                            .fontWeight(.semibold)
                            .cornerRadius(100)
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
    }
//}

//struct popupConfirmar_Previews: PreviewProvider {
//    @State static var isShow = false
//
//    static var previews: some View {
//        popupEvento1(show: $isShow)
//    }
//}

struct popupConfirmar_Previews: PreviewProvider {
    static var previews: some View {
        popupConfirmar()
    }
}
