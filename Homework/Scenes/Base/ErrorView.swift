import SwiftUI

struct ErrorView: View {
    var error: Error
    var onRetry: (() -> Void)
    var body: some View {
        VStack(alignment: .center) {
            Text("😭")
                .font(.system(size: 60))
            Text("There was an error: \(error.localizedDescription)")
                .font(.system(size: 20))
                .bold()
                .padding(.top, 10)
                .lineLimit(nil)
            
            Button(action: {
                self.onRetry()
            }) {
                Text("Retry")
                    .font(.system(size: 14))
                    .bold()
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }.padding(.top, 10)
        }
    }
}

