//
//  CriarView.swift
//  testes
//
//  Created by Maria Eduarda Alves on 22/09/23.
//

import SwiftUI
import PhotosUI
struct Evento {
    var nome: String
    var descricao: String
    var local: String
    var data: Date
}
struct CriarView: View {
    @State private var data: Data?
    @State private var eventos: [Evento] = []
    @State private var evento = Evento(nome: "", descricao: "", local: "", data: Date())
    @State private var selectedItems: [PhotosPickerItem] = []
    @State var nomeComunidade: String?
    
    @State var showPopUp: Bool = false
    
    
    var body: some View {
        //        NavigationView {
        ZStack {
            VStack {
                ScrollView {
                    if let data = data, let uiimage = UIImage(data: data) {
                        Image(uiImage: uiimage)
                            .resizable()
                    }
                    Spacer()
                    PhotosPicker(selection: $selectedItems, matching: .images){
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(width: 400, height: 350)
                            .overlay(
                                Image(systemName: "photo.artframe")
                                    .foregroundColor(.white)
                                    .font(.system(size: 150))
                            )
                            .cornerRadius(30)
                    }
                    Rectangle()
                        .foregroundColor(.blue)
                        .frame(width: 280, height: 60)
                        .cornerRadius(30)
                        .overlay(
                            HStack {
                                Image("ada")
                                    .resizable()
                                    .scaledToFit()
                                    .clipShape(Circle())
                                    .frame(width: 30, height: 30)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 100)
                                            .stroke(Color.gray, lineWidth: 2)
                                    )
                                VStack(alignment: .leading) {
                                    Text("Criando evento em...")
                                        .font(.footnote)
                                        .fontWeight(.regular)
                                        .foregroundColor(.white)
                                    Text(nomeComunidade ?? "")
                                        .font(.body)
                                        .fontWeight(.regular)
                                        .foregroundColor(.white)
                                }
                            }
                        )
                    VStack(alignment: .leading) {
                        Text("Nome do evento")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        TextField("Nomeie seu evento...", text: $evento.nome)
                            .textFieldStyle(.roundedBorder)
                            .font(.callout)
                    }
                    VStack(alignment: .leading) {
                        Text("Descrição do evento")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        TextField("Descreva seu evento...", text: $evento.descricao)
                            .textFieldStyle(.roundedBorder)
                            .font(.callout)
                    }
                    VStack(alignment: .leading) {
                        Text("Local")
                            .font(.subheadline)
                            .fontWeight(.bold)
                        TextField("Endereço...", text: $evento.local)
                            .textFieldStyle(.roundedBorder)
                            .font(.callout)
                    }
                    VStack(alignment: .leading) {
                        DatePicker(
                            "Data",
                            selection: $evento.data,
                            displayedComponents: [.date]
                        )
                    }
                    Button(action: {
                        withAnimation(.linear(duration: 0.2)) {showPopUp.toggle()}}, label: {
                            Text("Criar Evento")
                        })
                }
                .padding()
                .navigationTitle("Criar Evento")
                .navigationBarTitleDisplayMode(.inline)
            }
            popupEvento1(show: $showPopUp)
        }
    }
}




struct CriarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

