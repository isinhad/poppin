//
//  SwiftieMuralView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 19/09/23.
//

import SwiftUI

struct SwiftieMuralView: View {
    let imageNames = ["evento4", "evento5", "evento3", "evento1", "evento5", "evento4"]
    
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
            }
        }
    }
}

struct SwiftieMuralView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftieMuralView()
    }
}
