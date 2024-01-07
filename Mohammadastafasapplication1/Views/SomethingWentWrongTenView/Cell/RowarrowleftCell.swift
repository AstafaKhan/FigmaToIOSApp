import SwiftUI

struct RowarrowleftCell: View {
    var body: some View {
        HStack {
            HStack {
                ZStack(alignment: .center) {
                    ZStack {}
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 20.0, topRight: 20.0, bottomLeft: 20.0,
                                                   bottomRight: 20.0)
                                .fill(ColorConstants.Bluegray9000c))
                    Image("img_group33875")
                        .resizable()
                        .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(21.0),
                               alignment: .leading)
                        .scaledToFit()
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.bottom, getRelativeHeight(10.0))
                        .padding(.horizontal, getRelativeWidth(11.24))
                }
                .hideNavigationBar()
                .frame(width: getRelativeWidth(35.0), height: getRelativeHeight(40.0),
                       alignment: .leading)
                Text(StringConstants.kLblChangePassword)
                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                    .fontWeight(.medium)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(101.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.leading, getRelativeWidth(14.0))
            }
            .frame(width: getRelativeWidth(153.0), height: getRelativeHeight(40.0),
                   alignment: .leading)
            Image("img_arrowleft_gray_900")
                .resizable()
                .frame(width: getRelativeWidth(1.0), height: getRelativeHeight(8.0),
                       alignment: .leading)
                .scaledToFit()
                .padding(.leading, getRelativeWidth(152.0))
        }
        .frame(width: getRelativeWidth(310.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowarrowleftCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowarrowleftCell()
 }
 } */
