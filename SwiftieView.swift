//
//  SwiftieView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 12/09/23.
//

import SwiftUI

struct SwiftieView: View {
    
    var cardModelsArray: [CardModel] = [
        CardModel(evento: "The Eras Tour Brasil", calendario: "Sexta, 17 Novembro - 20:00", lugar: "Engenhão - Rio de Janeiro", bubble: "Swiftie", ingresso: "Tickets For Fun", imageName: "show", bubbleIcon: "taylor"),
        CardModel(evento: "Festa da Taylor", calendario: "Sábado, 9 Novembro - 21:00", lugar: "MInimundo Janga", bubble: "Swiftie", ingresso: "Sympla", imageName: "festa", bubbleIcon: "taylor")]
    
    var body: some View {
        
        VStack (spacing: 16) {
            ForEach(cardModelsArray, id: \.evento) { card in
                CardView(card: card)
            }
        }
    }
}


struct SwiftieView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftieView()
    }
}
