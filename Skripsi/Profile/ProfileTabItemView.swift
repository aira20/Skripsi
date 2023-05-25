//
//  ProfileTabItemView.swift
//  Skripsi
//
//  Created by Mac-albert on 24/05/23.
//

import SwiftUI

struct ProfileTabItemView: View {
    @State private var name: String = ""
    var body: some View {
        NavigationView{
            VStack{
                Group{
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Text("Username")
                        .font(.title2)
                }
                Group{
                    Form{
                        Section{
                            HStack {
                                Text("Full Name")
                                Spacer()
                                TextField("Name", text: $name)
                                    .multilineTextAlignment(.trailing)
                            }
                            HStack {
                                Text("Available Preparation Time")
                                Spacer()
                                TextField("40 Min", text: $name)
                                    .multilineTextAlignment(.trailing)
                            }
                            HStack {
                                Text("Meal Frequency")
                                Spacer()
                                TextField("3 Times", text: $name)
                                    .multilineTextAlignment(.trailing)
                            }
                        }
                        Section{
                            Text("Password")
                        }
                        Section(header: Text("Others").font(.headline).textCase(.none)) {
                            HStack{
                                Text("Recipe's Name")
                                    .padding(.leading, 32)
                                    .overlay(
                                        Image(systemName: "magnifyingglass")
                                            .foregroundColor(.gray)

                                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading),
                                        alignment: .leading
                                        )
                                Spacer()
                                Image(systemName: "chevron.right")
                            }
                            NavigationLink(destination: GroceryListView()) {
                                HStack{
                                    Text("Grocery List")
                                        .padding(.leading, 32)
                                        .overlay(
                                            Image(systemName: "cart")
                                                .foregroundColor(Color(hex: "#F0BB62"))

                                                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading),
                                            alignment: .leading
                                            )
                                    Spacer()
//                                    Image(systemName: "chevron.right")
                                }
                            }

                        }
                    }
                    ButtonView(title: "Log Out"){
                        print("button pressed")
                    }
                    .padding(16)



                }

            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Action
                    }) {
                        Text("Save")
                            .foregroundColor(Color.green)
                    }
                }
            }
        }
    }
}

struct ProfileTabItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabItemView()
    }
}
