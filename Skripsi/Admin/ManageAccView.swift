//
//  ManageAccView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 06/06/23.
//

import SwiftUI

struct ManageAccView: View {
    @State private var searchText = ""
    @ObservedObject private var viewModel = AdminViewModel()

    var body: some View {
        VStack {
            Text("User Lists")
                .font(.title)
                .padding()

            searchAcc(text: $searchText)
                .padding(.horizontal)

            let sortedUsers = viewModel.filteredUsers(searchText: searchText).sorted(by: { $0.username < $1.username })
            let sections = Dictionary(grouping: sortedUsers) { String($0.username.prefix(1)) }
            
            List {
                ForEach(Array(sections.keys).sorted(), id: \.self) { key in
                    Section(header: Text(key).font(.headline)) {
                        ForEach(sections[key]!, id: \.id) { user in
                            UserRow(user: user)
                        }
                        .onDelete { indices in
                            let user = sections[key]![indices.first!]
                            viewModel.deleteUser(user)
                        }
                    }
                }
            }
        }
    }
}
struct UserRow: View {
    let user: UserInfo

    var body: some View {
        VStack(alignment: .leading) {
            Text(user.username)
                .font(.headline)
            Text(user.email)
                .font(.subheadline)
        }
       
    }
}


struct searchAcc: View {
    @Binding var text: String

    var body: some View {
        HStack {
            
            TextField("Search", text: $text)
                .padding(7)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding(.horizontal, 8)
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                            .padding(.leading, 8)
                        Spacer()
                    }
                )

            if !text.isEmpty {
                Button(action: {
                    text = ""
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.gray)
                        .padding(.trailing, 8)
                }
            }
        }
    }
}

struct ManageAccView_Previews: PreviewProvider {
    static var previews: some View {
        ManageAccView()
    }
}
