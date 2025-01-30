//
//  CoffeeView.swift
//  MatchedGeometryDemoApp
//
//  Created by Tiago Henriques on 27/01/2025.
//

import SwiftUI

struct CoffeeView: View {
    let coffee: Coffee?

    init(coffee: Coffee? = nil) {
        self.coffee = coffee
    }

    var body: some View {
        Circle()
            .foregroundStyle(coffee == nil ? .gray : .brown)
            .overlay {
                Text(coffee?.name ?? "Lorem")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            .redacted(reason: coffee == nil ? .placeholder : [])
    }
}

#Preview {
    CoffeeView(coffee: Coffee.sampleData.first!)
        .padding()
}
