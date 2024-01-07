import SwiftUI

struct SomethingWentWrongEightView: View {
    @StateObject var somethingWentWrongEightViewModel = SomethingWentWrongEightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(698.0),
                           alignment: .bottomLeading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(114.0))
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        HStack {
                            Text(StringConstants.kLblSummary)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblClose)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.RedA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(37.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                                .onTapGesture {
                                    somethingWentWrongEightViewModel
                                        .nextScreen = "SomethingWentWrongThreeView"
                                }
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(25.0),
                               alignment: .center)
                        .padding(.horizontal, getRelativeWidth(1.0))
                        Text(StringConstants.kMsgBeneficiaryNam2)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(117.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(2.0))
                        Text(StringConstants.kLblJohnDoe)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgBeneficiaryIba)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(110.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(2.0))
                        Text(StringConstants.kMsg123456789123456)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgBeneficiaryAcc)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(190.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    Group {
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(1.0))
                        Text(StringConstants.kLbl123465789)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgBeneficiaryBan)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(111.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(5.0))
                        Text(StringConstants.kLblBankXyz)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblDescription)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(28.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgLoremIpsumDol)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(267.0), height: getRelativeHeight(44.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Button(action: {
                            somethingWentWrongEightViewModel
                                .nextScreen = "SomethingWentWrongThirteenView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblContinue)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                        .IndigoA7007a,
                                                    ColorConstants
                                                        .Gray902]),
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing)))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(110.0))
                                    .padding(.horizontal, getRelativeWidth(1.0))
                            }
                        })
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                            .IndigoA7007a,
                                        ColorConstants
                                            .Gray902]),
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing)))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(110.0))
                        .padding(.horizontal, getRelativeWidth(1.0))
                    }
                }
                .frame(width: getRelativeWidth(329.0), height: getRelativeHeight(644.0),
                       alignment: .center)
                .padding(.top, getRelativeHeight(137.18))
                .padding(.horizontal, getRelativeWidth(23.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongThirteenView(),
                                   tag: "SomethingWentWrongThirteenView",
                                   selection: $somethingWentWrongEightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SomethingWentWrongThreeView(),
                                   tag: "SomethingWentWrongThreeView",
                                   selection: $somethingWentWrongEightViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .hideNavigationBar()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
        .hideNavigationBar()
    }
}

struct SomethingWentWrongEightView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongEightView()
    }
}
