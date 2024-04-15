//
//  ContentView.swift
//  Singleton1
//
//  Created by Eric Kampman on 4/14/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
	@Environment(\.modelContext) var modelContext
	@Query(sort: \Singleton.id) private var singletons: [Singleton]
	
    var body: some View {
        VStack {
			if !singletons.isEmpty {
				EditSingletonView(singleton: singletons.first!)
			} else {
				Text("!!!!")
			}
        }
        .padding()
		.onAppear {
			onAppear()
		}
    }
	
	func onAppear() {
		if singletons.isEmpty {
			modelContext.insert(Singleton(id: "New Item"))
		}
	}
}

#Preview {
	let config = ModelConfiguration(isStoredInMemoryOnly: true)
	let container = try! ModelContainer(for: Singleton.self, configurations: config)
    return ContentView()
		.modelContainer(container)
}

