//
//  SearchTabItemView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 23/05/23.
//

import SwiftUI

struct SearchTabItemView: View {
    @StateObject private var viewModel = SearchTabItemViewModel()
    @State var isModal = true
    
    @State var searchBarText = ""
    
    var body: some View {
        NavigationView{
            VStack{
                VStack(alignment: .leading, spacing: 16){
                    // TODO: Bikin Reusable Component
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
                    Text("Our Recommdantion")
                        .font(.headline)
                        .foregroundColor(Color(hex: "#1D4536"))
                    ScrollView {
                        LazyVGrid(columns: viewModel.gridLayout, spacing: 16) {
                            ForEach(viewModel.items, id: \.name) { item in
                                VStack(spacing: 4){
                                    Image(systemName: "square")
                                        .resizable()
                                        .frame(width: 75, height: 75)
                                    Text(item.name)
                                        .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                                    Text(item.description)
                                        .font(.caption)
                                        .lineLimit(2)
                                }
                                .foregroundColor(Color(hex: "#1D4536"))
                                .padding(8)
                                .background(Color.clear)
                                .cornerRadius(8)
                            }
                        }
                    }
                    Spacer()
                }.padding(16)
            }
            .background(isModal ? Color(hex: "#FFF9F0") : Color.white)
            .navigationTitle(isModal ? "" : "Search Recipe" )
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct SearchTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabItemView()
    }
}
