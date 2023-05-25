//
//  GroceryListView.swift
//  Skripsi
//
//  Created by Mac-albert on 25/05/23.
//

import SwiftUI

struct GroceryListView: View {
    @State private var selectedItems: [String: Bool] = [:]
    
    let items = ["Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza", "Ayam Bakar", "Spaghetti Bolognese", "Pizza"]
    let subItems = [
        "Ayam Bakar": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar2": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 2 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza2": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar3": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 3 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza3": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar23": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 23 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza23": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar4": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 4 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza4": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar24": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 24 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza24": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar34": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 34 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza34": ["Subitem 7", "Subitem 8", "Subitem 9"],
        "Ayam Bakar243": ["Subitem 1", "Subitem 2", "Subitem 3"],
        "Spaghetti 243 Bolognese": ["Subitem 4", "Subitem 5", "Subitem 6"],
        "Pizza243": ["Subitem 7", "Subitem 8", "Subitem 9"]
    ]
    
//    TODO: CONTEKAN LOGIC
//    pake selectedItems sebagai dictionary untuk melacak status expand/collapse dari setiap item. Ketika sebuah item dipilih, statusnya akan diubah dalam dictionary selectedItems. Dalam isExpanded, kita menggunakan selectedItems[item, default: false] untuk mendapatkan status saat ini dari item tersebut.
    
    
    var body: some View {
//        List
        VStack{
            ScrollView{
                VStack{
                    ForEach(items, id: \.self) { item in
                        DisclosureGroup(
                            isExpanded: Binding<Bool>(
                                get: { selectedItems[item, default: false] },
                                set: { isExpanded in
                                    selectedItems[item] = isExpanded
                                }
                            ),
                            content: {
                                if let subItems = subItems[item] {
                                    ForEach(Array(subItems.enumerated()), id: \.1) { index, subItem in
                                        subItemExpanded(subItems: subItem)
                                            .padding(.vertical, 4)
                                        Divider()
                                        //                                Text(subItem)
                                        //                                    .padding(.leading)
                                    }
                                }
                            },
                            label: {
                                HStack{
                                    Text(item)
                                        .padding(.leading, 16)
                                    Spacer()
                                    Image(systemName: "trash.fill")
                                        .foregroundColor(Color.red)
                                }
                                .font(.title3)
                                .padding(.vertical, 8)
                            }
                        )
                    }
                }
            }
        }
        .navigationTitle(Text("Grocery List"))
        .padding(16)
//        }
    }
    
    func subItemExpanded(subItems: String) -> some View{
        @State var isChecked : Bool = false
        return HStack{
            Image(systemName: isChecked ? "checkmark.circle.fill" : "circle")
                .resizable()
                .frame(width: 25, height: 25)
                .onTapGesture {
                    isChecked.toggle()
                }
            Text(subItems)
            Spacer()
            Text("1sdm")
        }
        .frame(width: UIScreen.main.bounds.width * 0.8)
    }
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView()
    }
}
