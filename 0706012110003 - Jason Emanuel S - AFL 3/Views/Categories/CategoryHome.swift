//
//  CategoryHome.swift
//  0706012110003 - Jason Emanuel S - AFL 3
//
//  Created by MacBook Pro on 18/04/23.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
    
        //build hierarchical navigation structures in your app
        NavigationView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                        Text(key)
                }
            }
                .navigationTitle("Featured")
        }

    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
