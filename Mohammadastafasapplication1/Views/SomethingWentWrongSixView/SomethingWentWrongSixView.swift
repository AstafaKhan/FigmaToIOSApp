import SwiftUI

struct SomethingWentWrongSixView: View {
    @StateObject var somethingWentWrongSixViewModel = SomethingWentWrongSixViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            ZStack(alignment: .topTrailing) {
                                Image("img_group33861")
                                    .resizable()
                                    .frame(width: getRelativeWidth(113.0),
                                           height: getRelativeHeight(107.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.trailing, getRelativeWidth(55.0))
                                Text(StringConstants.kMsgWelcomeBackC)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(144.0),
                                           height: getRelativeHeight(55.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(28.55))
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
                        HStack {
                            HStack {
                                Image("img_download1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(47.0),
                                           height: getRelativeHeight(46.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                               bottomLeft: 10.0, bottomRight: 10.0))
                                Text(StringConstants.kMsgIlaDigitalB)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(125.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(178.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.bottom, getRelativeHeight(15.0))
                            .padding(.leading, getRelativeWidth(17.0))
                            Spacer()
                            ZStack(alignment: .center) {
                                Image("img_vector_bluegray_902")
                                    .resizable()
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(15.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Image("img_vector_bluegray_903")
                                    .resizable()
                                    .frame(width: getRelativeWidth(6.0),
                                           height: getRelativeHeight(5.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .padding(.horizontal, getRelativeWidth(6.0))
                                    .onTapGesture {
                                        somethingWentWrongSixViewModel
                                            .nextScreen = "SomethingWentWrongTwelveView"
                                    }
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(18.0), height: getRelativeHeight(15.0),
                                   alignment: .center)
                            .padding(.vertical, getRelativeHeight(31.0))
                            .padding(.trailing, getRelativeWidth(17.0))
                        }
                        .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(77.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Bluegray101))
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
                        .onTapGesture {
                            somethingWentWrongSixViewModel.nextScreen = "CodeVerificationFourView"
                        }
                        .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(25.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(34.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(136.0),
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
                                      text: $somethingWentWrongSixViewModel.group33879Text)
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
                    .padding(.vertical, getRelativeHeight(402.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongTwelveView(),
                                   tag: "SomethingWentWrongTwelveView",
                                   selection: $somethingWentWrongSixViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SomethingWentWrongThreeView(),
                                   tag: "SomethingWentWrongThreeView",
                                   selection: $somethingWentWrongSixViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CodeVerificationFourView(),
                                   tag: "CodeVerificationFourView",
                                   selection: $somethingWentWrongSixViewModel.nextScreen,
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

struct SomethingWentWrongSixView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongSixView()
    }
}
