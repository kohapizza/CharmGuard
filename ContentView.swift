import SwiftUI

struct ContentView: View {
         
    var body: some View {
        TabView {
            TrainingView()
                .tabItem {
                    Image(systemName: "1.circle")
                    Text("Training")
                }
            
            HomeView()
                .tabItem {
                    Image(systemName: "2.circle")
                    Text("Home")
                }

            
            SettingView()
                .tabItem {
                    Image(systemName: "3.circle")
                    Text("Setting")
                }
        }
    }
}

#Preview {
    ContentView()
}
