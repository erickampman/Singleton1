//
//  Singleton.swift
//  Singleton1
//
//  Created by Eric Kampman on 4/14/24.
//

import Foundation
import SwiftData

@Model
final class Singleton: Identifiable {
	@Attribute(.unique) var id: String
	var info = ""
	
	init(id: String) {
		self.id = id
	}
}
