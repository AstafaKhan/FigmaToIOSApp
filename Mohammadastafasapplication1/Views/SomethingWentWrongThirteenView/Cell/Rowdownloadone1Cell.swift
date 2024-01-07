import SwiftUI

struct Rowdownloadone1Cell: View {
    var body: some View {
        HStack {
            Image("img_download1_46x47")
                .resizable()
                .frame(width: getRelativeWidth(45.0), height: getRelativeHeight(46.0),
                       alignment: .leading)
                .scaledToFit()
                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0, bottomLeft: 10.0,
                                           bottomRight: 10.0))
                .padding(.leading, getRelativeWidth(17.0))
            Text(StringConstants.kMsgNationalBankO)
                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                .fontWeight(.semibold)
                .foregroundColor(ColorConstants.Gray900)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.leading)
                .frame(width: getRelativeWidth(181.0), height: getRelativeHeight(20.0),
                       alignment: .leading)
                .padding(.leading, getRelativeWidth(6.0))
            Button(action: {}, label: {
                Image("img_xmlid1431")
            })
            .frame(width: getRelativeWidth(22.0), height: getRelativeWidth(24.0),
                   alignment: .center)
            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                       bottomRight: 12.0)
                    .fill(ColorConstants.Gray500))
            .padding(.leading, getRelativeWidth(39.0))
            .padding(.trailing, getRelativeWidth(11.0))
        }
        .frame(width: getRelativeWidth(326.0), alignment: .leading)
        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                   bottomRight: 14.0)
                .fill(ColorConstants.Bluegray101))
        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
        .hideNavigationBar()
    }
}

/* struct Rowdownloadone1Cell_Previews: PreviewProvider {

 static var previews: some View {
 			Rowdownloadone1Cell()
 }
 } */
