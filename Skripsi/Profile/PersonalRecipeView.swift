//
//  PersonalRecipeView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/06/23.
//

import SwiftUI

struct PersonalRecipeView: View {
    @State var searchBarText = ""
    var items: [String] = ["Item 1", "Item 2", "Item 3"]
    
    var body: some View {
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
            LazyVStack {
                ForEach(1...4, id: \.self) { item in
                    NavigationLink {
                        EmptyView()
                    } label: {
                        HStack{
                            Text("Recipe's Name")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }.foregroundColor(Color(hex: "#1D4536"))
                            .padding(8)
                        Divider()
                    }

                    
                }
            }
            Spacer()
        }.padding(8)
            .navigationTitle(Text("Personal Recipe"))
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: EmptyView()) {
                        Image(systemName: "plus")
                            .foregroundColor(Color(hex: "#1D4536"))
                    }
                }
            }
    }
}

struct PersonalRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalRecipeView()
    }
}
