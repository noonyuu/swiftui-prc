//
//  ContentView.swift
//  swiftui-prc
//
//  Created by shimizu on 2024/08/12.
//

import SwiftUI
//import SwiftData

struct ContentView: View {
//    @Environment(\.modelContext) private var modelContext
//    @Query private var items: [Item]

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: minion().navigationTitle("ミニオン")){
                    Text("VStack,HStack,ZStackの練習")
                        .foregroundColor(.yellow)
                }
            }
            .padding()
            VStack {
                NavigationLink(destination: object().navigationTitle("オブジェクト")){
                    Text("オブジェクトの練習")
                }
            }
            .padding()
            VStack {
                NavigationLink(destination: calculator().navigationTitle("消費税計算")){
                    Text("消費税計算")
                }
            }
            .padding()
            VStack {
                NavigationLink(destination: dice().navigationTitle("サイコロ")){
                    Text("サイコロ")
                }
            }
        }
//        NavigationSplitView {
//            List {
//                ForEach(items) { item in
//                    NavigationLink {
//                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
//                    } label: {
//                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
//                    }
//                }
//                .onDelete(perform: deleteItems)
//            }
//            .toolbar {
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    EditButton()
//                }
//                ToolbarItem {
//                    Button(action: addItem) {
//                        Label("Add Item", systemImage: "plus")
//                    }
//                }
//            }
//        } detail: {
//            Text("Select an item")
//        }
//    }
//
//    private func addItem() {
//        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
//        }
//    }
//
//    private func deleteItems(offsets: IndexSet) {
//        withAnimation {
//            for index in offsets {
//                modelContext.delete(items[index])
//            }
//        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
