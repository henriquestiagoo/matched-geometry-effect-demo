//
//  CoffeePlaceholderView.swift
//  MatchedGeometryDemoApp
//
//  Created by Tiago Henriques on 27/01/2025.
//

import SwiftUI

struct CoffeePlaceholderView: View {
    var body: some View {
        ForEach(0..<3) { _ in
            CoffeeView()
        }
    }
}

#Preview {
    CoffeePlaceholderView()
}
