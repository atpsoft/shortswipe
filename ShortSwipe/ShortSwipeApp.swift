import SwiftUI

struct ContentView: View {
  @State var items = [1, 2, 3]
  var body: some View {
    List {
      ForEach(0..<10) { index in
        Text("Item \(index)")
          .swipeActions(edge: .leading) {
            Button(
              action: { print("swiped \(index)") },
              label: { Image(systemName: "star") }
            )
          }
        /* something like this would be the ideal solution
         .swipeActions(edge: .leading, action: {
           print("swiped \(index)")
         })
         */
      }
    }
  }
}

@main
struct ShortSwipeApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}
