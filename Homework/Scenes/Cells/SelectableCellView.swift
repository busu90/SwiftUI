import SwiftUI

struct SelectableCellView: View {
    @State var selected = false
    var title: String
    var body: some View {
        HStack {
            if selected {
                Image("check_full")
                    .resizable()
                    .frame(width: 30, height: 30)
            } else {
                Image("check_empty")
                    .resizable()
                    .frame(width: 30, height: 30)
            }
            Text(title)
                .font(.system(size: 20))
                .bold()
            Spacer()
        }.padding().onTapGesture {
            self.selected.toggle()
        }
    }
}

#if DEBUG
struct SelectableCellView_Previews: PreviewProvider {
    static var previews: some View {
        SelectableCellView(title: "Do something")
    }
}
#endif
