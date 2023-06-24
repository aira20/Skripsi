//
//  AddPersonalRecipeView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/06/23.
//

import SwiftUI

struct AddPersonalRecipeView: View {
    @State private var name: String = ""
    @State private var selectedOption: String = ""
    @State private var ingredients: [Ingredient] = []
    @State private var newIngredient = ""
    @State private var newIngredientsQuantity = ""
    @State private var isIngredientsAlert = false
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 10){
                    Group{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 150, height: 150)
                        Text("+ Add Image")
                            .font(.subheadline)
                    }
                    VStack(alignment: .leading, spacing: 12){
                        VStack(alignment: .leading, spacing: 4){
                            Text("Name")
                            TextField("Your Name", text: $name)
                        }
                        Group{
                            HStack{
                                VStack(alignment: .leading){
                                    Text("Waktu")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    HStack{
                                        Picker("Select an option", selection: $selectedOption) {
                                            ForEach(0..<10) { index in
                                                Text(String(index))
                                            }
                                        }
                                        .pickerStyle(MenuPickerStyle())
                                        Text("minutes")
                                    }
                                }.frame(maxWidth: .infinity)
                                
                                VStack(alignment: .leading){
                                    Text("Jumlah Porsi")
                                    TextField(" ", text: $name)
                                }.frame(maxWidth: .infinity)
                            }
                        }
                        Group{
                            VStack(alignment: .leading, spacing: 4){
                                Text("Keterangan")
                                TextField("Your Name", text: $name)
                            }
                        }
                        Group{
                            VStack{
                                HStack{
                                    Text("Bahan (minimal 1)")
                                    Spacer()
                                    Button(action: {
                                        isIngredientsAlert = true
                                    }) {
                                        Image(systemName: "plus")
                                    }
                                }
                                ForEach(ingredients, id: \.ingredientsName) { ingredient in
                                    Text(ingredient.ingredientsName)
                                    Spacer()
                                    Text(ingredient.ingredientsQuantity)
                                    
                                }
                                
                            }
                        }
                        Group{
                            VStack{
                                HStack{
                                    Text("Bahan lainnya (jika ada)")
                                    Spacer()
                                    Image(systemName: "plus")
                                }
                            }
                        }
                        Group{
                            VStack{
                                HStack{
                                    Text("Peralatan (minimal 1)")
                                    Spacer()
                                    Image(systemName: "plus")
                                }
                            }
                        }
                        Group{
                            VStack{
                                HStack{
                                    Text("Cara Memasak: ")
                                    Spacer()
                                }
                            }
                        }
                        Group{
                            VStack{
                                HStack{
                                    Text("Nutrition Info ")
                                    Spacer()
                                    Image(systemName: "plus")
                                }
                            }
                        }
                    }
                    
                }.padding(8)
            }
            .alert("Tambahkan Bahan", isPresented: $isIngredientsAlert) {
                TextField("Bahan Makanan", text: $newIngredient)
                    .textInputAutocapitalization(.never)
                TextField("Quantity", text: $newIngredientsQuantity)
                    .textInputAutocapitalization(.never)
                Button("OK", action: {
                    addIngredient()
                    isIngredientsAlert = false
                })
                Button("Cancel", role: .cancel) { }
            } message: {
                Text("Masukkan bahan baru")
            }
        }
    }
    func addIngredient() {
        guard !newIngredient.isEmpty else { return }
//        ingredients.append(newIngredient)
        newIngredient = ""
    }
}

struct AddPersonalRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddPersonalRecipeView()
    }
}
