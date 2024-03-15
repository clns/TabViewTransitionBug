import SwiftUI

struct ContentView: View {
    @State private var showTabView = false
    var body: some View {
        VStack {
            Button("Toggle TabView") {
                showTabView.toggle()
            }
            Spacer()
            if showTabView {
                TabView {
                    Text("Page One")
                    Text("Page Two")
                }
                .tabViewStyle(.page)
                .transition(.slide)
            }
        }
        .animation(.default, value: showTabView)
        .padding()
    }
}

#Preview {
    ContentView()
}

@main
struct TabViewTransitionBugApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
