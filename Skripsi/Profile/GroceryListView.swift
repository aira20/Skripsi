//
//  GroceryListView.swift
//  Skripsi
//
//  Created by Mac-albert on 22/06/23.
//

import SwiftUI

struct GroceryListView: View {
    
    @State private var expandedItems: Set<String> = []

    let items = ["Item 1", "Item 2", "Item 3"]
    let subItems = ["SubItem 1.1", "SubItem 1.2", "SubItem 1.3"]

    var body: some View {
        ScrollView{
            ForEach(items, id: \.self) { item in
                DisclosureGroup(
                    isExpanded: Binding<Bool>(
                        get: { expandedItems.contains(item) },
                        set: { newValue in
                            if newValue {
                                expandedItems.insert(item)
                            } else {
                                expandedItems.remove(item)
                            }
                        }
                    ),
                    content: {
                        if expandedItems.contains(item) {
                            ForEach(subItems, id: \.self) { subItem in
                                HStack{
                                    Image(systemName: "circle")
                                        .resizable()
                                        .frame(width: 24, height: 24)
                                    Text(subItem)
                                    Spacer()
                                    Text("1 Sdm")
                                }
                                .padding(.leading, 32.0)
                            }
                        }
                    },
                    label: {
                        HStack {
                            Text(item)
                            Spacer()
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                        .font(.title2)
                        .padding(.vertical, 12.0)
                    }
                )
            }
        }.navigationTitle(Text("Grocery List"))
        .padding(16)
    }
    
//    var body: some View {
//        VStack{
//            HStack{
//                Text("Ayam Bakar")
//                Spacer()
//                Image(systemName: "trash")
//                Image(systemName: "chevron.down")
//            }
//
//        }.padding(8)
//    }
}

struct HStackWithBorder<Content: View>: View {
    let content: () -> Content
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.black, lineWidth: 1)
            HStack {
                content()
            }
            .padding(8)
        }
    }
}

struct GroceryListView_Previews: PreviewProvider {
    static var previews: some View {
        GroceryListView()
    }
}
