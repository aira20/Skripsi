//
//  ManageRecipeView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 11/06/23.
//

import SwiftUI

struct ManageRecipeView: View {
    @State private var searchText = ""
    @State private var users = [
            "Jack", "Aria", "Test", "Shilo", "Jelek", "Babi"
        ]
    
    var body: some View {
        NavigationView {
                    VStack {
                            
                            recipeSearch(text: $searchText)
                        
                        List {
                            ForEach(filteredUsers, id: \.self) { user in
                                Text(user)
                            }
                            .onDelete(perform: delete)
                            
                        }
                    }
            
                        .navigationBarTitle("User List", displayMode: .inline)
                    
                }
            }
            
            private var filteredUsers: [String] {
                if searchText.isEmpty
                {
                    return users.sorted()
                }
                else
                {
                    return users.filter
                    {
                        $0.localizedCaseInsensitiveContains(searchText)
                        
                    }
                    .sorted()
                }
            }
            
            private func delete(at offsets: IndexSet)
        {
                users.remove(atOffsets: offsets)
            }
        }

        struct recipeSearch: View {
            @Binding var text: String
            
            var body: some View
            {
                HStack
                {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                     
                    TextField("Search", text: $text)
                        .padding(.horizontal)
                    
                    Button(action:
                    {
                        text = ""
                    })
                    {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundColor(.gray)
                    }
                    .padding(.trailing)
                    .opacity(text.isEmpty ? 0 : 1)
                }
                .padding()
                
            }
        }

struct ManageRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        ManageRecipeView()
    }
}
