import SwiftUI

struct RowoneCell: View {
    var body: some View {
        HStack {
            Text(StringConstants.kLbl1)
                .font(FontScheme.kInterRegular(size: getRelativeHeight(25.0)))
                .fontWeight(.regular)
                .padding(.horizontal, getRelativeWidth(30.0))
                .padding(.vertical, getRelativeHeight(1.0))
                .foregroundColor(ColorConstants.Black900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(46.0),
                       alignment: .center)
                .background(ColorConstants.WhiteA701)
                .shadow(color: ColorConstants.Bluegray400, radius: 0, x: 0, y: 1)
            VStack {
                Text(StringConstants.kLbl22)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(25.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(12.0), height: getRelativeHeight(31.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(45.0))
                Text(StringConstants.kLblAbc)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(10.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(24.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(4.0))
                    .padding(.horizontal, getRelativeWidth(45.0))
            }
            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(ColorConstants.WhiteA701))
            .shadow(color: ColorConstants.Bluegray400, radius: 0, x: 0, y: 1)
            .padding(.leading, getRelativeWidth(6.0))
            VStack {
                Text(StringConstants.kLbl32)
                    .font(FontScheme.kInterRegular(size: getRelativeHeight(25.0)))
                    .fontWeight(.regular)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(13.0), height: getRelativeHeight(31.0),
                           alignment: .leading)
                    .padding(.horizontal, getRelativeWidth(46.0))
                Text(StringConstants.kLblDef)
                    .font(FontScheme.kInterBold(size: getRelativeHeight(10.0)))
                    .fontWeight(.bold)
                    .foregroundColor(ColorConstants.Black900)
                    .minimumScaleFactor(0.5)
                    .multilineTextAlignment(.leading)
                    .frame(width: getRelativeWidth(21.0), height: getRelativeHeight(13.0),
                           alignment: .leading)
                    .padding(.bottom, getRelativeHeight(4.0))
                    .padding(.horizontal, getRelativeWidth(46.0))
            }
            .frame(width: getRelativeWidth(115.0), height: getRelativeHeight(46.0),
                   alignment: .leading)
            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0, bottomLeft: 5.0,
                                       bottomRight: 5.0)
                    .fill(ColorConstants.WhiteA701))
            .shadow(color: ColorConstants.Bluegray400, radius: 0, x: 0, y: 1)
            .padding(.leading, getRelativeWidth(6.0))
        }
        .frame(width: getRelativeWidth(361.0), alignment: .leading)
        .hideNavigationBar()
    }
}

/* struct RowoneCell_Previews: PreviewProvider {

 static var previews: some View {
 			RowoneCell()
 }
 } */
