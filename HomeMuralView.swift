//
//  HomeMuralView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 13/09/23.
//

import SwiftUI

struct HomeMuralView: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(alignment: .center) {
                        VStack (alignment: .leading, spacing: 20) {
                            HStack (spacing: 10) {
                                Image("bubble")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 48, height: 48)
                                    .overlay(RoundedRectangle(cornerRadius: 100)
                                        .stroke(Color .blue, lineWidth: 2))
                                Divider()
                                    .frame(height: 50)
                                Image("ada")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 48, height: 48)
                                NavigationLink(destination: SwiftieView()) {
                                    Image("taylor")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(Circle())
                                        .frame(width: 48, height: 48)
                                }
                                Image("nautico")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 48, height: 48)
                                Image("cinema")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 48, height: 48)
                                Image(systemName: "plus")
                                    .foregroundColor(.blue)
                            }
                            VStack (alignment: .leading, spacing: 4){
                                HStack (spacing: 14){
                                    Text("Eventos")
                                        .font(.title2)
                                    Text("Mural")
                                        .foregroundColor(.blue)
                                        .font(.title2)
                                    Spacer()
                                    Image(systemName: "line.3.horizontal.decrease.circle.fill")
                                        .foregroundColor(.blue)
                                }
                                MuralView()
                            }
                        }
                        .searchable(text: $searchText) {
                            ForEach(0..<10, id: \.self) { index in
                                Text("Search Result \(index)")
                            }
                        }
                        .navigationTitle("Início")
                    }
                    .padding()
                }
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button(action: {print("Botão clicado")}) {Image(systemName: "plus")}
                            .frame(width: 64, height: 64.0)
                            .background(Color.blue)
                            .cornerRadius(100)
                            .foregroundColor(Color.white)
                    }
                    .padding()
                }
            }
        }
    }
}

struct HomeMuralView_Previews: PreviewProvider {
    static var previews: some View {
        HomeMuralView()
    }
}
