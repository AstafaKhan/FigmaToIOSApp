import SwiftUI

struct SomethingWentWrongTenView: View {
    @StateObject var somethingWentWrongTenViewModel = SomethingWentWrongTenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        HStack {
                            Image("img_arrowleft")
                                .resizable()
                                .frame(width: getRelativeWidth(7.0),
                                       height: getRelativeHeight(14.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.top, getRelativeHeight(6.0))
                                .padding(.bottom, getRelativeHeight(4.0))
                                .onTapGesture {
                                    self.presentationMode.wrappedValue.dismiss()
                                }
                            Text(StringConstants.kLblJohnDoe)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(91.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(13.0))
                        }
                        .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.trailing)
                    Text(StringConstants.kLblPreferences)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(92.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(38.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                    HStack {
                        HStack {
                            ZStack(alignment: .trailing) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(37.0),
                                           height: getRelativeHeight(40.0), alignment: .leading)
                                    .background(RoundedCorners(topLeft: 20.0, topRight: 20.0,
                                                               bottomLeft: 20.0, bottomRight: 20.0)
                                            .fill(ColorConstants.Bluegray9000c))
                                Image("img_group")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeWidth(20.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(10.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(37.0), height: getRelativeHeight(40.0),
                                   alignment: .center)
                            Text(StringConstants.kLblAppLanguage)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(97.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(14.0))
                        }
                        .frame(width: getRelativeWidth(149.0), height: getRelativeHeight(40.0),
                               alignment: .center)
                        Spacer()
                        HStack {
                            Text(StringConstants.kLblEnglish)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray600)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(46.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Image("img_arrowleft_gray_900")
                                .resizable()
                                .frame(width: getRelativeWidth(3.0), height: getRelativeHeight(8.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(17.0))
                        }
                        .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(17.0),
                               alignment: .bottom)
                        .padding(.top, getRelativeHeight(12.0))
                        .padding(.bottom, getRelativeHeight(10.0))
                    }
                    .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(40.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(16.0))
                }
                .frame(width: getRelativeWidth(312.0), height: getRelativeHeight(139.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(18.0))
                .padding(.horizontal, getRelativeWidth(28.0))
                Divider()
                    .frame(width: getRelativeWidth(321.0), height: getRelativeHeight(1.0),
                           alignment: .center)
                    .background(ColorConstants.Gray300)
                    .padding(.top, getRelativeHeight(36.0))
                    .padding(.horizontal, getRelativeWidth(28.0))
                VStack(alignment: .leading, spacing: 0) {
                    Text(StringConstants.kLblOther)
                        .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                        .fontWeight(.medium)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(44.0), height: getRelativeHeight(20.0),
                               alignment: .topLeading)
                        .padding(.trailing)
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 3, id: \.self) { index in
                                    RowarrowleftCell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(316.0), alignment: .leading)
                    .padding(.top, getRelativeHeight(11.0))
                }
                .frame(width: getRelativeWidth(316.0), height: getRelativeHeight(227.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(13.0))
                .padding(.horizontal, getRelativeWidth(28.0))
            }
            .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
            .background(ColorConstants.WhiteA700)
            .padding(.top, getRelativeHeight(30.0))
            .padding(.bottom, getRelativeHeight(10.0))
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(ColorConstants.WhiteA700)
        .ignoresSafeArea()
        .hideNavigationBar()
    }
}

struct SomethingWentWrongTenView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongTenView()
    }
}
