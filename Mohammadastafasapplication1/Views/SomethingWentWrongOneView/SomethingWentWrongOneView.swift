import SwiftUI

struct SomethingWentWrongOneView: View {
    @StateObject var somethingWentWrongOneViewModel = SomethingWentWrongOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            ZStack(alignment: .center) {
                ZStack {}
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(779.0),
                           alignment: .bottomLeading)
                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                               bottomRight: 12.0)
                            .fill(ColorConstants.WhiteA700))
                    .padding(.top, getRelativeHeight(33.0))
                VStack(alignment: .leading, spacing: 0) {
                    Group {
                        HStack {
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
                                        somethingWentWrongOneViewModel
                                            .nextScreen = "SomethingWentWrongTwoView"
                                    }
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        Text(StringConstants.kMsgTransactionAmo)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(133.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(37.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kLbl10000Lyd)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgTransactionDat)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(112.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kLbl29102023)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgTransactionEff)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(174.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    Group {
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kLbl29102023)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblReference)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(67.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(30.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kMsg291020233213213)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(137.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(17.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLblDescription)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(5.0))
                        Text(StringConstants.kMsgFamilySupport)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(296.0), height: getRelativeHeight(88.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                    }
                    Group {
                        Text(StringConstants.kMsgTransactionSta)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(124.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(22.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Divider()
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(1.0),
                                   alignment: .center)
                            .background(ColorConstants.Gray500)
                            .padding(.top, getRelativeHeight(6.0))
                        Text(StringConstants.kLblCompleted)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(72.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(19.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Button(action: {}, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblShare)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(282.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                            bottomLeft: 8.0, bottomRight: 8.0)
                                            .stroke(ColorConstants.Black900,
                                                    lineWidth: 1))
                                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                               bottomLeft: 8.0, bottomRight: 8.0)
                                            .fill(Color.clear.opacity(0.7)))
                                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                    .padding(.top, getRelativeHeight(29.0))
                                    .padding(.horizontal, getRelativeWidth(22.0))
                            }
                        })
                        .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(55.0),
                               alignment: .center)
                        .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                bottomRight: 8.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                                   bottomRight: 8.0)
                                .fill(Color.clear.opacity(0.7)))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(29.0))
                        .padding(.horizontal, getRelativeWidth(22.0))
                    }
                }
                .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(706.0),
                       alignment: .center)
                .padding(.vertical, getRelativeHeight(67.18))
                .padding(.horizontal, getRelativeWidth(24.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongTwoView(),
                                   tag: "SomethingWentWrongTwoView",
                                   selection: $somethingWentWrongOneViewModel.nextScreen,
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

struct SomethingWentWrongOneView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongOneView()
    }
}
