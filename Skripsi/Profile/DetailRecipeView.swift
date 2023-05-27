//
//  DetailRecipeView.swift
//  Skripsi
//
//  Created by Mac-albert on 27/05/23.
//

import SwiftUI

struct DetailRecipeView: View {
    @State var items: [Barang] = [
        Barang(name: "Item 1", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 2", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 3", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 4", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 5", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang"),
        Barang(name: "Item 6", description: "Ini adalah barang yang sangat mewah dan tidak dapat dibeli dengan uang")
    ]
    
    var body: some View {
        VStack{
            ScrollView{
                VStack(spacing: 4){
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                    HStack{
                        Text("Food Name")
                        Image(systemName: "info.circle")
                    }
                    .font(.headline)
                    HStack{
                        HStack{
                            Image(systemName: "clock")
                            Text("30 Minutes")
                            
                        }
                        HStack{
                            Image(systemName: "fork.knife.circle")
                            Text("1 Portion")
                            
                        }
                    }
                    .font(.subheadline)
                    Text("Description & Source")
                        .font(.subheadline)
                    
                }
                ButtonView(icon: "plus", title: "Add to Grocery List") {
                    print("button tapped")
                }
                .padding(16)
                sectionInDetailRecipe(title: "Bahan Utama")
                sectionInDetailRecipe(title: "Bahan Pelengkap")
                sectionInDetailRecipe(title: "Peralatan")
            }
        }
    }
    
    func sectionInDetailRecipe(title: String) -> some View {
        VStack(alignment: .leading){
            HStack{
                Text(title)
                    .font(.headline)
                    .padding(.horizontal, 8)
                Spacer()
            }
            .padding(.vertical, 4)
            .frame(width: UIScreen.main.bounds.width)
            .foregroundColor(Color(hex: "#1D4536"))
            .background(Color(hue: 0.213, saturation: 0.009, brightness: 0.846))
                
            ForEach(items, id: \.name) { item in
                HStack{
                    Text(item.name)
                    Spacer()
                    Text(item.name)
                }
                Divider()
            }
            .padding(.horizontal, 8)
        }
    }
}

struct DetailRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailRecipeView()
    }
}
