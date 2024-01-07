import SwiftUI

struct CodeVerificationFourView: View {
    @StateObject var codeVerificationFourViewModel = CodeVerificationFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_82920641")
                        .resizable()
                        .frame(width: getRelativeWidth(365.0), height: getRelativeHeight(243.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(183.0))
                        .padding(.horizontal, getRelativeWidth(5.0))
                    VStack {
                        Text(StringConstants.kMsgOpenBankingTe)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.center)
                            .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(70.0),
                                   alignment: .center)
                        HStack {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(29.0),
                                       height: getRelativeHeight(8.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .IndigoA7007a,
                                                ColorConstants
                                                    .Gray902]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Bluegray101))
                                .padding(.leading, getRelativeWidth(4.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Bluegray101))
                                .padding(.leading, getRelativeWidth(7.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Bluegray101))
                                .padding(.leading, getRelativeWidth(7.0))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(8.0), height: getRelativeWidth(8.0),
                                       alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(ColorConstants.Bluegray101))
                                .padding(.leading, getRelativeWidth(7.0))
                        }
                        .frame(width: getRelativeWidth(87.0), height: getRelativeHeight(8.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                        Button(action: {
                            codeVerificationFourViewModel.nextScreen = "CodeVerification2View"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kMsgConnectYourBa)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .padding(.horizontal, getRelativeWidth(30.0))
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.center)
                                    .frame(width: getRelativeWidth(282.0),
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
                                    .padding(.top, getRelativeHeight(60.0))
                                    .padding(.horizontal, getRelativeWidth(10.0))
                            }
                        })
                        .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(55.0),
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
                        .padding(.top, getRelativeHeight(60.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(314.0), height: getRelativeHeight(209.0),
                           alignment: .center)
                    .padding(.vertical, getRelativeHeight(83.0))
                    .padding(.horizontal, getRelativeWidth(30.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: AccountFormView(),
                                   tag: "AccountFormView",
                                   selection: $codeVerificationFourViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: CodeVerification2View(),
                                   tag: "CodeVerification2View",
                                   selection: $codeVerificationFourViewModel.nextScreen,
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
        .onAppear {
            codeVerificationFourViewModel.nextScreen = "AccountFormView"
        }
    }
}

struct CodeVerificationFourView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationFourView()
    }
}
