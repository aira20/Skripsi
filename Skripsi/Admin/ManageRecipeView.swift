//
//  ManageRecipeView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 11/06/23.
//

import SwiftUI

struct ManageRecipeView: View {
    let recipes = ["Apple Pie", "Asparagus", "Beef Steak", "Chicken Soup", "Salad", "Drumsticks", "Egg Roll", "French Fries", "Gingerbread", "Hamburger"]
        
        @State private var searchText = ""
    @Environment(\.presentationMode) var presentationMode
        
        var segmentedRecipes: [String: [String]] {
            var segmentedRecipes = [String: [String]]()
            
            for recipe in recipes {
                let firstLetter = String(recipe.prefix(1)).uppercased()
                if segmentedRecipes[firstLetter] == nil {
                    segmentedRecipes[firstLetter] = [recipe]
                } else {
                    segmentedRecipes[firstLetter]?.append(recipe)
                }
            }
            
            return segmentedRecipes
        }
        
        var filteredRecipes: [String] {
            if searchText.isEmpty {
                return recipes
            } else {
                return recipes.filter { $0.localizedCaseInsensitiveContains(searchText) }
            }
        }
        
        var filteredSegmentedRecipes: [String: [String]] {
        var filteredSegmentedRecipes = [String: [String]]()

            for (key, contacts) in segmentedRecipes {
                let filteredRecipes = contacts.filter { $0.localizedCaseInsensitiveContains(searchText) }
                if !filteredRecipes.isEmpty {
                    filteredSegmentedRecipes[key] = filteredRecipes
                }
            }

            return filteredSegmentedRecipes
        }
        
        var body: some View {
            
            VStack{
//                HStack{
//                    Button(action: {
//                        // Action
//                    }) {
//                        Image(systemName: "chevron.left")
//                            .foregroundColor(Color.green)
//                            .padding()
//                    }
//                    Spacer()
//                    Text("Recipe Lists")
//                        .font(.title2)
//                        .padding()
//                    Spacer()
//                    Button(action: {
//                        // Action
//                    }) {
//                        Image(systemName: "plus")
//                            .foregroundColor(Color.green)
//                            .padding()
//                    }
//                }
//
//                HStack {
//                    TextField("Find User", text: $searchText)
//                        .padding(.vertical, 8)
//                        .padding(.leading, 36)
//                        .background(Color(.systemGray6))
//                        .cornerRadius(8)
//                        .overlay(
//                            Image(systemName: "magnifyingglass")
//                                .foregroundColor(.gray)
//                                .padding(.leading, 8)
//                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading),
//                            alignment: .leading
//                                        )
//                    Button(action: {
//                        searchText = ""
//                    }) {
//                        Image(systemName: "xmark.circle.fill")
//                            .foregroundColor(.gray)
//                            .padding(.horizontal, 8)
//                    }
//                }
//                .padding(8)
                List {
                    if searchText.isEmpty {
                        ForEach(segmentedRecipes.keys.sorted(), id: \.self) { key in
                            Section(header: Text(key)) {
                                ForEach(segmentedRecipes[key]!.filter { filteredRecipes.contains($0) }, id: \.self) { recipe in
                                    NavigationLink(destination: DestinationView()) {
                                        Text(recipe)
                                    }
                                    
                                }
                                
                            }
                        }
                    } else {
                        ForEach(filteredSegmentedRecipes.keys.sorted(), id: \.self) { key in
                            Section(header: Text(key)) {
                                ForEach(segmentedRecipes[key]!.filter { filteredRecipes.contains($0) }, id: \.self) { recipe in
                                    NavigationLink(destination: DestinationView()) {
                                        Text(recipe)
                                    }
                                }
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .searchable(text: $searchText)
            }
            .navigationTitle(Text("Recipe List"))
            .toolbar{
                Button(action: {
                    print("Add")
                }){
                    Image(systemName: "plus")
                        .foregroundColor(.green)
                }
            }
            .navigationBarBackButtonHidden()
            .navigationBarItems(
                leading: Button(action: {  presentationMode.wrappedValue.dismiss() }, label: {
                                HStack(spacing: 2) {
                                    Image(systemName: "chevron.backward")
                                        .foregroundColor(Color(.green))

                                    
                                }
                            })
                        )
        }
        }
    

struct ManageRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        ManageRecipeView()
    }
}
