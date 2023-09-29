//
//  EventView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 15/09/23.
//

import SwiftUI

struct EventView: View {
    var body: some View {
        VStack{
            AdaView()
            SwiftieView()
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventView()
    }
}
