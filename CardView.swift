//
//  card.swift
//  testes
//
//  Created by Maria Eduarda Alves on 08/09/23.
//

import SwiftUI

struct CardModel {
    var evento: String
    var calendario: String
    var lugar: String
    var bubble: String
    var ingresso: String
    var imageName: String
    var bubbleIcon: String
    
}

struct CardView: View {

    var card: CardModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Image(card.imageName)
                .resizable()
                .frame(width: 360, height: 236)
                .scaledToFit()
            cardText .padding(.horizontal, 8)
              
        }
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 24.0))
        .frame(width: 360)
        .shadow(radius: 5)
    }
    
    var cardText: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center) {
                Text("\(card.evento)")
                    .font(.title2)
                    .fontWeight(.bold)
                Spacer()
                
                
                if card.imageName == "poker" {
                    NavigationLink(destination: testinhos()){
                        Text("Sobre")
                            .fontWeight(.semibold)
                            .frame(width: 68, height: 30)
                            .background(Color.blue)
                            .cornerRadius(100)
                            .foregroundColor(Color.white)
                    }
                } else {
                    Text("Sobre")
                        .fontWeight(.semibold)
                        .frame(width: 68, height: 30)
                        .background(Color.blue)
                        .cornerRadius(100)
                        .foregroundColor(Color.white)
                }
            }
            
            
            
            VStack(alignment: .leading, spacing: 4) {
                Text("\(card.calendario)")
                    .font(.subheadline)
                    .foregroundColor(Color.blue)
                Text("\(card.lugar)")
                    .font(.subheadline)
            }
            VStack {
                Divider()
                    .frame(width: 310)
            }
            HStack (spacing: 8){
                Image(card.bubbleIcon)
                    .resizable()
                    .frame(width: 28, height: 28)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text("Bubble")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                    Text("\(card.bubble)")
                        .font(.callout)
                        .fontWeight(.medium)
                }
                Spacer()
                HStack (spacing: 4){
                    Image(systemName:"ticket")
                        .foregroundColor(Color.gray)
                    Text("\(card.ingresso)")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                    Image(systemName:"chevron.right")
                        .foregroundColor(Color.gray)
                }
            }
        }
        .padding()
    }
}

struct card_Previews: PreviewProvider {
    
    static var previews: some View {
        CardView(card: CardModel(evento: "Poker viciante", calendario: "Quarta, 30 Agosto - 15:00", lugar: "CIn - UFPE", bubble: "Academy", ingresso: "Gratuito", imageName: "poker", bubbleIcon: "apple"))
    }
}
