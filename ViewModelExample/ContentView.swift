import SwiftUI

// MARK: - ViewModel

class ContentViewModel: ObservableObject {
    @Published private(set) public var title: String

    init(
        title: String = "Hello, world!"
    ) {
        self.title = title
    }

    func welcomeAction() {
        title = "Welcome \(title)"
    }
}

// MARK: - View

struct ContentView: View {
    @ObservedObject private var viewModel = ContentViewModel()

    private var imageView: some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
    }

    var titleView: some View {
        Text(viewModel.title)
    }

    private var buttonView: some View {
        Button("Welcome", action: viewModel.welcomeAction)
    }

    var body: some View {
        VStack {
            imageView
            titleView
            buttonView
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
