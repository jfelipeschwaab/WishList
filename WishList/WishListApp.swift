//
//  WishListApp.swift
//  WishList
//
//  Created by João Felipe Schwaab on 10/06/25.
//

import SwiftUI
import SwiftData

@main
struct WishListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: Wish.self)
    }
}
