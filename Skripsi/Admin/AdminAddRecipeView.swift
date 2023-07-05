//
//  AdminAddRecipeView.swift
//  Skripsi
//
//  Created by Aria Rifqi on 04/07/23.
//

import SwiftUI

import SwiftUI


struct AdminAddRecipeView: View {
    @State private var nama: String = ""
    @State private var waktu: Int = 0
    @State private var jumlahPorsi: String = ""
    @State private var keterangan: String = ""
    @State private var bahanInputs: [String] = []
    @State private var peralatanInputs: [String] = []
    @State private var caraMasak: String = ""
    @State private var nutritionInfoInputs: [String] = []

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    // Handle cancel button action
                }) {
                    Text("Cancel")
                        .foregroundColor(.red)
                }
                Spacer()
                Text("Add New Recipe")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            
            ScrollView {
                VStack(spacing: 20) {
                    Group {
                        
                        
                       
                        Text("Nama")
                            .font(.title2)
                        TextField("Enter recipe name", text: $nama)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("Waktu")
                            .font(.title2)
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(0..<60, id: \.self) { minute in
                                    Text("\(minute) min")
                                }
                            }
                        }
                        
                        Text("Jumlah Porsi")
                            .font(.title2)
                        TextField("Enter serving amount", text: $jumlahPorsi)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("Keterangan")
                            .font(.title2)
                        TextField("Enter description", text: $keterangan)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Text("Bahan (minimal 1)")
                            .font(.title2)
                        HStack {
                            ForEach(bahanInputs, id: \.self) { bahan in
                                Text(bahan)
                            }
                            Button(action: {
                                // Handle add bahan action
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    .padding()
                }
                
                Group {
                    VStack(spacing: 20) {
                        Text("Peralatan (minimal 1)")
                            .font(.title2)
                        HStack {
                            ForEach(peralatanInputs, id: \.self) { peralatan in
                                Text(peralatan)
                            }
                            Button(action: {
                                // Handle add peralatan action
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.blue)
                            }
                        }
                        
                        Text("Cara Masak")
                            .font(.title2)
                        TextEditor(text: $caraMasak)
                            .frame(height: 150)
                            .border(Color.gray, width: 1)
                        
                        Text("Nutrition Info")
                            .font(.title2)
                        HStack {
                            ForEach(nutritionInfoInputs, id: \.self) { info in
                                Text(info)
                            }
                            Button(action: {
                                // Handle add nutrition info action
                            }) {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
}
struct AdminAddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AdminAddRecipeView()
    }
}
