//
//  PersonalRecipeView.swift
//  Skripsi
//
//  Created by Mac-albert on 27/05/23.
//

import SwiftUI

struct PersonalRecipeView: View {
    @State var searchBarText = ""
    @State var items: [Barang] = [
        Barang(name: "Item 1", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 2", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 3", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 4", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 5", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 6", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang")
    ]
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    HStack {
                        TextField("Find Recipe", text: $searchBarText)
                            .padding(.vertical, 8)
                            .padding(.leading, 36)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .overlay(
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                    .padding(.leading, 8)
                                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading),
                                alignment: .leading
                                            )
                        Button(action: {
                            searchBarText = ""
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.gray)
                                .padding(.horizontal, 8)
                        }
                    }
                    ForEach(items, id: \.name){ item in
                        NavigationLink(destination: EmptyView()) {
                            HStack{
                                Text(item.name)
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            .foregroundColor(Color(hex: "#1D4536"))
                            .padding(.vertical, 8)
                        }
                        Divider()
                    }
                }
            }
            .padding(12)
        }
        .navigationTitle(Text("Personal Recipe"))
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    // Tindakan yang ingin dilakukan saat tombol ditekan
                }) {
                    Image(systemName: "plus")
                        .foregroundColor(Color(hex: "#1D4536"))
                }
            }
        }
        .accentColor(Color(hex: "#1D4536"))
    }
}

struct PersonalRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalRecipeView()
    }
}
