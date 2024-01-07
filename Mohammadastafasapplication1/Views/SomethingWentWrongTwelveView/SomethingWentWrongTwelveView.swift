import SwiftUI

struct SomethingWentWrongTwelveView: View {
    @StateObject var somethingWentWrongTwelveViewModel = SomethingWentWrongTwelveViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack(alignment: .trailing) {
                                Image("img_group33861")
                                    .resizable()
                                    .frame(width: getRelativeWidth(113.0),
                                           height: getRelativeHeight(107.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.trailing, getRelativeWidth(55.0))
                                Text(StringConstants.kMsgWelcomeBackJ)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(59.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(24.0))
                            }
                            .hideNavigationBar()
                        }
                        .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(107.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Text(StringConstants.kLblYourBanks)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(84.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(22.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(130.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack {
                        VStack {
                            HStack {
                                HStack {
                                    Image("img_download1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(47.0),
                                               height: getRelativeHeight(46.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0))
                                    Text(StringConstants.kMsgIlaDigitalB)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(125.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(6.0))
                                }
                                .frame(width: getRelativeWidth(178.0),
                                       height: getRelativeHeight(46.0), alignment: .center)
                                Spacer()
                                Image("img_vector_bluegray_905")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(9.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(18.0))
                                    .onTapGesture {
                                        somethingWentWrongTwelveViewModel
                                            .nextScreen = "SomethingWentWrongSixView"
                                    }
                            }
                            .frame(width: getRelativeWidth(298.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            VStack {
                                HStack {
                                    Text(StringConstants.kLblIlaSavings)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(16.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(82.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(6.0))
                                    Spacer()
                                    Text(StringConstants.kLbl900000Lyd)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(16.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(7.0))
                                        .padding(.trailing, getRelativeWidth(14.0))
                                }
                                .frame(width: getRelativeWidth(296.0),
                                       height: getRelativeHeight(35.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                        bottomLeft: 6.0,
                                                        bottomRight: 6.0)
                                        .stroke(ColorConstants.Bluegray900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.Bluegray9000c))
                            }
                            .frame(width: getRelativeWidth(296.0), height: getRelativeHeight(35.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            HStack {
                                Image("img_group33865")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        somethingWentWrongTwelveViewModel
                                            .nextScreen = "SomethingWentWrongTwoView"
                                    }
                                Spacer()
                                Image("img_group33885")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(25.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            HStack {
                                Text(StringConstants.kLblHistory)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblDeLink)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(220.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .padding(.horizontal, getRelativeWidth(14.0))
                            VStack {
                                HStack {
                                    Text(StringConstants.kLblIlaCurrent)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(16.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(80.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(7.0))
                                    Spacer()
                                    Text(StringConstants.kLbl900000Lyd)
                                        .font(FontScheme
                                            .kInterMedium(size: getRelativeHeight(16.0)))
                                        .fontWeight(.medium)
                                        .foregroundColor(ColorConstants.Bluegray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(96.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.top, getRelativeHeight(8.0))
                                        .padding(.bottom, getRelativeHeight(7.0))
                                        .padding(.trailing, getRelativeWidth(14.0))
                                }
                                .frame(width: getRelativeWidth(296.0),
                                       height: getRelativeHeight(35.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                        bottomLeft: 6.0,
                                                        bottomRight: 6.0)
                                        .stroke(ColorConstants.Bluegray900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 6.0, topRight: 6.0,
                                                           bottomLeft: 6.0, bottomRight: 6.0)
                                        .fill(ColorConstants.Bluegray9000c))
                            }
                            .frame(width: getRelativeWidth(296.0), height: getRelativeHeight(35.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0))
                            .padding(.top, getRelativeHeight(14.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            HStack {
                                Image("img_group33865")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .onTapGesture {
                                        somethingWentWrongTwelveViewModel
                                            .nextScreen = "SomethingWentWrongTwoView"
                                    }
                                Spacer()
                                Image("img_group33885")
                                    .resizable()
                                    .frame(width: getRelativeWidth(22.0),
                                           height: getRelativeWidth(22.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .frame(width: getRelativeWidth(198.0), height: getRelativeHeight(25.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(10.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                            HStack {
                                Text(StringConstants.kLblHistory)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(42.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                Spacer()
                                Text(StringConstants.kLblDeLink)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(45.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                            }
                            .frame(width: getRelativeWidth(220.0), height: getRelativeHeight(16.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(3.0))
                            .padding(.horizontal, getRelativeWidth(14.0))
                        }
                        .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(287.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Bluegray101))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.leading, getRelativeWidth(23.0))
                        HStack {
                            Image("img_group33868")
                                .resizable()
                                .frame(width: getRelativeWidth(25.0),
                                       height: getRelativeWidth(25.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                            Text(StringConstants.kMsgConnectMoreBa)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(157.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(6.0))
                        }
                        .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(25.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(39.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeWidth(351.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(19.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Spacer()
                            Image("img_group_33863")
                                .resizable()
                                .frame(width: getRelativeWidth(17.0),
                                       height: getRelativeWidth(17.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 14.5, topRight: 14.5,
                                                           bottomLeft: 14.5, bottomRight: 14.5)
                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .IndigoA7007a,
                                                ColorConstants
                                                    .Gray902]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)))
                                .padding(.vertical, getRelativeHeight(7.0))
                                .padding(.horizontal, getRelativeWidth(13.0))
                            TextField(StringConstants.kLblTransfer,
                                      text: $somethingWentWrongTwelveViewModel.group33879Text)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(12.0)))
                                .foregroundColor(ColorConstants.Black900)
                                .padding()
                        }
                        .frame(width: getRelativeWidth(127.0), height: getRelativeHeight(43.0),
                               alignment: .leading)
                        .overlay(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                                bottomRight: 9.0)
                                .stroke(ColorConstants.Black900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                                   bottomRight: 9.0)
                                .fill(ColorConstants.WhiteA700))
                        .padding(.horizontal, getRelativeWidth(113.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(187.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongTwoView(),
                                   tag: "SomethingWentWrongTwoView",
                                   selection: $somethingWentWrongTwelveViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SomethingWentWrongThreeView(),
                                   tag: "SomethingWentWrongThreeView",
                                   selection: $somethingWentWrongTwelveViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SomethingWentWrongSixView(),
                                   tag: "SomethingWentWrongSixView",
                                   selection: $somethingWentWrongTwelveViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SomethingWentWrongTwelveView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongTwelveView()
    }
}
