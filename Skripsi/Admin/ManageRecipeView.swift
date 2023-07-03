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
        
        var segmentedContacts: [String: [String]] {
            var segmentedContacts = [String: [String]]()
            
            for contact in recipes {
                let firstLetter = String(contact.prefix(1)).uppercased()
                if segmentedContacts[firstLetter] == nil {
                    segmentedContacts[firstLetter] = [contact]
                } else {
                    segmentedContacts[firstLetter]?.append(contact)
                }
            }
            
            return segmentedContacts
        }
        
        var filteredContacts: [String] {
            if searchText.isEmpty {
                return recipes
            } else {
                return recipes.filter { $0.localizedCaseInsensitiveContains(searchText) }
            }
        }
        
        var filteredSegmentedContacts: [String: [String]] {
            var filteredSegmentedContacts = [String: [String]]()

            for (key, contacts) in segmentedContacts {
                let filteredContacts = contacts.filter { $0.localizedCaseInsensitiveContains(searchText) }
                if !filteredContacts.isEmpty {
                    filteredSegmentedContacts[key] = filteredContacts
                }
            }

            return filteredSegmentedContacts
        }
        
        var body: some View {
            VStack{
                HStack{
                    Button(action: {
                        // Action
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color.green)
                            .padding()
                    }
                    Text("Recipe Lists")
                        .font(.title2)
                        .padding()
                    Button(action: {
                        // Action
                    }) {
                        Image(systemName: "plus")
                            .foregroundColor(Color.green)
                            .padding()
                    }
                }
                
                HStack {
                    TextField("Find User", text: $searchText)
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
                        searchText = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                            .padding(.horizontal, 8)
                    }
                }
                .padding(8)
                List {
                    if searchText.isEmpty {
                        ForEach(segmentedContacts.keys.sorted(), id: \.self) { key in
                            Section(header: Text(key)) {
                                ForEach(segmentedContacts[key]!.filter { filteredContacts.contains($0) }, id: \.self) { contact in
                                    Text(contact)
                                }
                            }
                        }
                    } else {
                        ForEach(filteredSegmentedContacts.keys.sorted(), id: \.self) { key in
                            Section(header: Text(key)) {
                                ForEach(segmentedContacts[key]!.filter { filteredContacts.contains($0) }, id: \.self) { contact in
                                    Text(contact)
                                }
                            }
                        }
                    }
                }
                .listStyle(GroupedListStyle())
                .searchable(text: $searchText)
            }
        }
        }

struct ManageRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        ManageRecipeView()
    }
}
