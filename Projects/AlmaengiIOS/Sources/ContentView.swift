import SwiftUI
import Feature

public struct ContentView: View {
    
    @AppStorage("_isFirstLaunching") var isFirstLaunching: Bool = true
    
    public var body: some View {
        AlmaengiTabBar()
            .fullScreenCover(isPresented: $isFirstLaunching) {
                LoginView()
            }
    }
}
