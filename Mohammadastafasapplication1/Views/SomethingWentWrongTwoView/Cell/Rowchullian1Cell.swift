import SwiftUI

struct Rowchullian1Cell: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text(StringConstants.kLblChullian)
                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                    .fontWeight(.semibold)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(60.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.trailing)
                Text(StringConstants.kLblFamilySupport)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Gray900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(83.0), height: getRelativeHeight(15.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(9.0))
            }
            .frame(width: getRelativeWidth(85.0), height: getRelativeHeight(44.0),
                   alignment: .leading)
            .padding(.leading, getRelativeWidth(34.0))
            Text(StringConstants.kLbl1000Lyd)
                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                .fontWeight(.medium)
                .foregroundColor(ColorConstants.Gray900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(123.0))
                .padding(.trailing, getRelativeWidth(13.0))
        }
        .frame(width: getRelativeWidth(326.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                   bottomRight: 14.0)
                .fill(ColorConstants.Bluegray101))
        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct Rowchullian1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowchullian1Cell()
 }
 } */
