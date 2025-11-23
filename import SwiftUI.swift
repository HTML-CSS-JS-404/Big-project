import SwiftUI

struct ContentView: View {
    @State private var message = "Czekam na akcję..."

    var body: some View {
        VStack(spacing: 20) {
            Text("Twoja mini-apka macOS")
                .font(.title)
                .padding(.top, 10)

            Text(message)
                .font(.body)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(NSColor.windowBackgroundColor))
                .cornerRadius(10)

            Button("Zrób akcję") {
                message = "Akcja wykonana ✔️"
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            Spacer()
        }
        .padding(20)
        .frame(width: 400, height: 250)
    }
}

#Preview {
    ContentView()
}
