//
//  popupEvento1.swift
//  testes
//
//  Created by Maria Eduarda Alves on 25/09/23.
//

import SwiftUI

struct popupEvento1: View {
    
    @Binding var show: Bool
    
    var body: some View {
        ZStack {
            if show {
                RoundedRectangle(cornerRadius: 24)
                    .frame(width: 360, height: 420)
                    .foregroundColor(.white)
                    .padding()
                    .shadow(radius:5)
                
                VStack (spacing: 30){
                    VStack (spacing: 15) {
                        Text("Tudo pronto")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Text("🎉")
                            .font(.system(size: 108))
                        
                        
                        Text ("Seu evento foi criado com sucesso!")
                            .font(.headline)
                            .fontWeight(.regular)
                    }
                    
                    NavigationLink (destination: HomeView()) {
                        Text("Ok")
                            .fontWeight(.semibold)
                            .frame(width: 68, height: 30)
                            .background(Color.blue)
                            .cornerRadius(100)
                            .foregroundColor(Color.white)
                    }
                }
            }
        }
    }
}

struct popupEvento1_Previews: PreviewProvider {
    @State static var isShow = false
    
    static var previews: some View {
        popupEvento1(show: $isShow)
    }
}

//struct popupEvento1_Previews: PreviewProvider {
//    static var previews: some View {
//        popupEvento1(show: <#Binding<Bool>#>)
//    }
//}
