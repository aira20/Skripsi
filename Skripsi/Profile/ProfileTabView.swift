//
//  ProfileTabView.swift
//  Skripsi
//
//  Created by Mac-albert on 23/05/23.
//

import SwiftUI

struct ProfileTabView: View {
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
                        Section{
                            Button(action: {
                                // Action
                            }) {
                                Text("Save Changes")
                            }
                        }
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Action
                    }) {
                        Text("Log Out")
                            .foregroundColor(Color.red)
                    }
                }
            }
        }
    }
}

struct ProfileTabView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTabView()
    }
}
