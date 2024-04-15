//
//  EditSingletonView.swift
//  Singleton1
//
//  Created by Eric Kampman on 4/14/24.
//

import SwiftUI

struct EditSingletonView: View {
	@Bindable var singleton: Singleton
	@Environment(\.modelContext) var modelContext

    var body: some View {
		VStack {
			TextField("Name", text: $singleton.id)
			TextField("Info", text: $singleton.info)
		}
    }
}

#Preview {
	let singleton = Singleton(id: "preview")
    return EditSingletonView(singleton: singleton)
}
