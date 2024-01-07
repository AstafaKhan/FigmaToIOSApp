import SwiftUI

struct CodeVerificationEightView: View {
    @StateObject var codeVerificationEightViewModel = CodeVerificationEightViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Button(action: {
                                self.presentationMode.wrappedValue.dismiss()
                            }, label: {
                                Image("img_arrowleft")
                            })
                            .frame(width: getRelativeWidth(40.0), height: getRelativeWidth(40.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(ColorConstants.Bluegray9000c))
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeWidth(20.0), alignment: .bottom)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Blue50))
                                .padding(.vertical, getRelativeHeight(18.0))
                                .padding(.leading, getRelativeWidth(29.0))
                        }
                        .frame(width: getRelativeWidth(89.0), height: getRelativeHeight(40.0),
                               alignment: .leading)
                        .padding(.horizontal, getRelativeWidth(24.0))
                        ZStack(alignment: .topLeading) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeWidth(80.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                                           bottomLeft: 40.0, bottomRight: 40.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.trailing, getRelativeWidth(226.0))
                            Text(StringConstants.kMsgSelectYouAcco)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(230.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(42.71))
                                .padding(.trailing, getRelativeWidth(52.0))
                            Text(StringConstants.kMsgSelectAccounts)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(282.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(60.64))
                                .padding(.leading, getRelativeWidth(24.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(306.0), height: getRelativeHeight(80.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            TextField(StringConstants.kLblIlaSavings,
                                      text: $codeVerificationEightViewModel.selectedText)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Bluegray900)
                                .padding()
                            Image("img_xmlid1431")
                                .resizable()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Green600))
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(7.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(39.0),
                               alignment: .trailing)
                        .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                bottomRight: 6.0)
                                .stroke(ColorConstants.Bluegray900,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0)
                                .fill(ColorConstants.Bluegray9000c))
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        HStack {
                            TextField(StringConstants.kLblIlaKanz,
                                      text: $codeVerificationEightViewModel.notselectedText)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .foregroundColor(ColorConstants.Gray600)
                                .padding()
                            Image("img_xmlid1431")
                                .resizable()
                                .frame(width: getRelativeWidth(14.0),
                                       height: getRelativeHeight(10.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Gray500))
                                .padding(.top, getRelativeHeight(7.0))
                                .padding(.bottom, getRelativeHeight(8.0))
                                .padding(.leading, getRelativeWidth(30.0))
                                .padding(.trailing, getRelativeWidth(6.0))
                            Spacer()
                        }
                        .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(39.0),
                               alignment: .trailing)
                        .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                bottomRight: 6.0)
                                .stroke(ColorConstants.Gray400,
                                        lineWidth: 1))
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0)
                                .fill(Color.clear.opacity(0.7)))
                        .padding(.top, getRelativeHeight(20.0))
                        .padding(.leading, getRelativeWidth(24.0))
                        VStack(alignment: .leading, spacing: 0) {
                            HStack {
                                TextField(StringConstants.kLblIlaCurrent,
                                          text: $codeVerificationEightViewModel.selectedoneText)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .padding()
                                Image("img_xmlid1431")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(10.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.Green600))
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(7.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(39.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.Bluegray9000c))
                            HStack {
                                TextField(StringConstants.kLblIlaKanz,
                                          text: $codeVerificationEightViewModel.notselectedoneText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                Image("img_xmlid1431")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(10.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                               bottomLeft: 12.0, bottomRight: 12.0)
                                            .fill(ColorConstants.Gray500))
                                    .padding(.top, getRelativeHeight(7.0))
                                    .padding(.bottom, getRelativeHeight(8.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(6.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(326.0), height: getRelativeHeight(39.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(20.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(98.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(16.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        Button(action: {
                            codeVerificationEightViewModel
                                .nextScreen = "SomethingWentWrongElevenView"
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
                                    .padding(.top, getRelativeHeight(290.0))
                                    .padding(.horizontal, getRelativeWidth(26.0))
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
                        .padding(.top, getRelativeHeight(290.0))
                        .padding(.horizontal, getRelativeWidth(26.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(708.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(24.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongElevenView(),
                                   tag: "SomethingWentWrongElevenView",
                                   selection: $codeVerificationEightViewModel.nextScreen,
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

struct CodeVerificationEightView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationEightView()
    }
}
