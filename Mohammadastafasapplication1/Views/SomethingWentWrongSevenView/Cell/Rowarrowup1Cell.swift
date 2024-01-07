import SwiftUI

struct Rowarrowup1Cell: View {
    var body: some View {
        HStack {
            HStack {
                Text(StringConstants.kMsgAccountTransac)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Bluegray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(171.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(24.0))
                Image("img_arrowleft_black_900")
                    .resizable()
                    .frame(width: getRelativeWidth(8.0), height: getRelativeHeight(5.0),
                           alignment: .leading)
                    .scaledToFit()
                    .padding(.leading, getRelativeWidth(93.0))
                    .padding(.trailing, getRelativeWidth(25.0))
            }
            .frame(width: getRelativeWidth(325.0), height: getRelativeHeight(55.0),
                   alignment: .leading)
            .overlay(RoundedCorners().stroke(ColorConstants.Gray400, lineWidth: 1))
            .background(RoundedCorners().fill(ColorConstants.WhiteA700))
            Image("img_arrowup_gray_400")
                .resizable()
                .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(7.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(123.0))
        }
        .frame(width: getRelativeWidth(325.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct Rowarrowup1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowarrowup1Cell()
 }
 } */
