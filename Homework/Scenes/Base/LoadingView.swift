import SwiftUI

struct LoadingView: View {
    @State var spin = false
    var body: some View {
        VStack(alignment: .center) {
            Image("loading")
                .resizable()
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(spin ? 360 : 0))
                .animation(Animation.linear(duration: 0.5).repeatForever(autoreverses: false))
                .onAppear() {
                    self.spin.toggle()
            }
            Text("Fetching data...")
                .font(.system(size: 20))
                .bold()
        }
    }
}

#if DEBUG
struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
#endif
