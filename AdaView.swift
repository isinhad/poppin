//
//  AdaView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 12/09/23.
//

import SwiftUI

struct AdaView: View {
    var cardModelsArray: [CardModel] = [
        CardModel(evento: "Poker viciante", calendario: "Quarta, 30 Agosto - 15:00", lugar: "CIn - UFPE", bubble: "Academy", ingresso: "Gratuito", imageName: "poker", bubbleIcon: "apple"),
        CardModel (evento: "NoitADA de karaokê", calendario: "Sexta, 22 Setembro - 19:00", lugar: "Casa de Samuel", bubble: "Academy", ingresso: "Gratuito", imageName: "karaoke",bubbleIcon: "apple"),
        CardModel (evento: "Domingo no Janga", calendario: "Domingo, 8 Outubro - 9:00", lugar: "Praia do Janga", bubble: "Academy", ingresso: "Gratuito", imageName: "praia",bubbleIcon: "apple")]
    
    var body: some View {
            VStack (spacing: 16) {
                ForEach(cardModelsArray, id: \.evento) { card in
                    CardView(card: card)
                }


            }
    }
}

struct AdaView_Previews: PreviewProvider {
    static var previews: some View {
        AdaView()
    }
}
