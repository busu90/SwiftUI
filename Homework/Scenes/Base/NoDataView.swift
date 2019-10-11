import SwiftUI

struct NoDataView: View {
    var onRetry: (() -> Void)?
    var body: some View {
        VStack(alignment: .center) {
            Text("😅")
                .font(.system(size: 60))
            Text("There is no data")
                .font(.system(size: 20))
                .bold()
                .padding(.top, 10)
            Button(action: {
                self.onRetry?()
            }) {
                Text("Refresh")
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

#if DEBUG
struct NoDataView_Previews: PreviewProvider {
    static var previews: some View {
        NoDataView()
    }
}
#endif
