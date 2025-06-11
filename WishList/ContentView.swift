//
//  ContentView.swift
//  WishList
//
//  Created by João Felipe Schwaab on 10/06/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var wishes: [Wish]
    
    @State private var isAlertShowing: Bool = false
    @State private var title: String = ""
    @State private var description: String = ""
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(wishes) { wish in
                    VStack(alignment: .leading){
                        Text(wish.title)
                            .font(.title.weight(.light))
                            .padding(.vertical, 2)
                        Text(wish.descriptionWish)
                            .font(.caption)
                            .padding(.vertical, 2)
                    }
                    .swipeActions {
                        Button("Delete", role: .destructive) {
                            modelContext.delete(wish)
                        }
                    }
                }
            }
            .navigationTitle("WishList")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isAlertShowing.toggle()
                    } label: {
                        Image(systemName: "plus")
                            .imageScale(.large)
                    }
                }
                
                if wishes.isEmpty != true {
                    ToolbarItem(placement: .bottomBar) {
                        Text("You have \(wishes.count) wishes")
                    }
                }
            }
            .alert("Create a new wish", isPresented: $isAlertShowing) {
                TextField("Enter a wish", text: $title) {
                    
                }
                TextField("Enter a description", text: $description)
                Button {
                    modelContext.insert(Wish(title: title, descriptionWish: description))
                    title = ""
                    description = ""
                } label: {
                    Text("Save")
                }
            }
            .overlay {
                if wishes.isEmpty {
                    ContentUnavailableView("My Wishlist", systemImage: "heart.circle", description: Text("No wishes yet. Add one to get started."))
                }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Wish.self)
}
