//
//  popupFinal.swift
//  testes
//
//  Created by Maria Eduarda Alves on 26/09/23.
//

import SwiftUI

struct popupFinal: View {
    //@Binding var show: Bool
    
    var body: some View {
        ZStack {
            //        if show {
            RoundedRectangle(cornerRadius: 24)
                .frame(width: 360, height: 420)
                .foregroundColor(.white)
                .padding()
                .shadow(radius:5)
            
            VStack (spacing: 30){
                VStack (spacing: 15) {
                    Text("Tudo certo")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("🎉")
                        .font(.system(size: 108))
                    
                    
                    Text ("Você está inscrito no evento Poker Viciante da comunidade Academy")
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
    //}
}

struct popupFinal_Previews: PreviewProvider {
    static var previews: some View {
        popupFinal()
    }
}
