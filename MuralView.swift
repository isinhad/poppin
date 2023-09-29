//
//  MuralView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 12/09/23.
//

import SwiftUI

struct MuralView: View {
    var imageNames = ["evento1", "evento2", "evento3", "evento4", "evento5", "evento6"]
    @State var isImageSelected = false
    
    var body: some View {
        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
            ForEach(imageNames, id: \.self) { imageName in
                
                Image(imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 118, height: 118)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    .background(Color.gray)
                    .cornerRadius(8)
                    .onTapGesture {
                        if imageName == "evento1" {
                            isImageSelected = true
                        }
                    }
            }
        }
        NavigationLink(
            destination: cinbebedaView(imageName: "evento1"),
            isActive: $isImageSelected,
            label: { EmptyView() }
        )
    }
}

struct MuralView_Previews: PreviewProvider {
    static var previews: some View {
        MuralView()
    }
}
