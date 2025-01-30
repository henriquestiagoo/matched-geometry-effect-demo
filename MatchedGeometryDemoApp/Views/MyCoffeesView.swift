//
//  ContentView.swift
//  MatchedGeometryDemoApp
//
//  Created by Tiago Henriques on 27/01/2025.
//

import SwiftUI

struct MyCoffeesView: View {
    let columns: [GridItem] = Array(
        repeating: .init(.flexible()),
        count: 3
    )
    @Namespace private var namespace
    private let coffeesNamespace = "coffeesNamespace"
    @State private var favoriteCoffees: [Coffee] = []
    private var suggestedCoffees: [Coffee] = Coffee.sampleData
    public var filteredSuggestedCoffees: [Coffee] { suggestedCoffees.filter { !favoriteCoffees.contains($0) } }

    var body: some View {
        ScrollView {
            VStack {
                HeaderView(title: "Favorites")

                LazyVGrid(columns: columns) {
                    if favoriteCoffees.isEmpty {
                        CoffeePlaceholderView()
                    } else {
                        ForEach(favoriteCoffees) { coffee in
                            CoffeeView(coffee: coffee)
                                .matchedGeometryEffect(id: "\(coffee.name)_\(coffeesNamespace)", in: namespace)
                                .onTapGesture {
                                    withAnimation(.easeIn) {
                                        favoriteCoffees.removeAll { $0.id == coffee.id }
                                    }
                                }
                        }
                    }
                }

                HeaderView(title: "Suggested")
                    .padding(.top)

                LazyVGrid(columns: columns) {
                    if filteredSuggestedCoffees.isEmpty {
                        CoffeePlaceholderView()
                    } else {
                        ForEach(filteredSuggestedCoffees) { coffee in
                            CoffeeView(coffee: coffee)
                                .matchedGeometryEffect(id: "\(coffee.name)_\(coffeesNamespace)", in: namespace)
                                .onTapGesture {
                                    withAnimation(.easeIn) {
                                        favoriteCoffees.append(coffee)
                                    }
                                }
                        }
                    }
                }
            }
            .padding(.all)
        }
        .navigationBarTitle("My Coffees", displayMode: .inline)
    }
}

#Preview {
    NavigationStack {
        MyCoffeesView()
    }
}
