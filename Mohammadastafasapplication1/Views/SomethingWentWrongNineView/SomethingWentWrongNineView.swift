import SwiftUI

struct SomethingWentWrongNineView: View {
    @StateObject var somethingWentWrongNineViewModel = SomethingWentWrongNineViewModel()
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
                    }
                    .frame(width: getRelativeWidth(347.0), height: getRelativeHeight(107.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack {
                        VStack {
                            Text(StringConstants.kMsgNoConnectedBa)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(210.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(48.0))
                                .padding(.leading, getRelativeWidth(56.0))
                                .padding(.trailing, getRelativeWidth(51.0))
                        }
                        .frame(width: getRelativeWidth(318.0), height: getRelativeHeight(117.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.WhiteA700))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 2)
                        .padding(.leading, getRelativeWidth(29.0))
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
                            somethingWentWrongNineViewModel.nextScreen = "CodeVerificationFourView"
                        }
                        .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(25.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(33.0))
                        .padding(.horizontal, getRelativeWidth(29.0))
                    }
                    .frame(width: getRelativeWidth(347.0), height: getRelativeHeight(175.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
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
                                      text: $somethingWentWrongNineViewModel.group33879Text)
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
                        .padding(.leading, getRelativeWidth(113.0))
                        .padding(.trailing, getRelativeWidth(113.0))
                    }
                    .frame(width: getRelativeWidth(347.0), height: getRelativeHeight(43.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(401.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongThreeView(),
                                   tag: "SomethingWentWrongThreeView",
                                   selection: $somethingWentWrongNineViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CodeVerificationFourView(),
                                   tag: "CodeVerificationFourView",
                                   selection: $somethingWentWrongNineViewModel.nextScreen,
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

struct SomethingWentWrongNineView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongNineView()
    }
}
