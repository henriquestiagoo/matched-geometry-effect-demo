//
//  HeaderView.swift
//  MatchedGeometryDemoApp
//
//  Created by Tiago Henriques on 27/01/2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .textCase(.uppercase)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    HeaderView(title: Coffee.sampleData.first!.name)
        .padding()
}
