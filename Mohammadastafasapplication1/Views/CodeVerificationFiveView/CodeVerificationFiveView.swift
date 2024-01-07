import SwiftUI

struct CodeVerificationFiveView: View {
    @StateObject var codeVerificationFiveViewModel = CodeVerificationFiveViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
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
                                Text(StringConstants.kLblSelectAccount)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(150.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(25.0))
                            }
                            .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(182.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Text(StringConstants.kMsgSelectAccounts)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray800)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(36.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        VStack {
                            HStack {
                                Text(StringConstants.kLblIlaSavings)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(82.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(14.0))
                                    .padding(.bottom, getRelativeHeight(11.0))
                                    .padding(.leading, getRelativeWidth(20.0))
                                Spacer()
                                Text(StringConstants.kLbl900000Lyd)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(92.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(10.0))
                                    .padding(.trailing, getRelativeWidth(15.0))
                            }
                            .frame(width: getRelativeWidth(329.0), height: getRelativeHeight(46.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(ColorConstants.Bluegray90049))
                        }
                        .frame(width: getRelativeWidth(329.0), height: getRelativeHeight(46.0),
                               alignment: .leading)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(31.0))
                        VStack {
                            HStack {
                                Text(StringConstants.kLblIlaCurrent)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(80.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(11.0))
                                    .padding(.bottom, getRelativeHeight(12.0))
                                    .padding(.leading, getRelativeWidth(19.0))
                                Spacer()
                                Text(StringConstants.kLbl150000Lyd)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Bluegray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(89.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(10.0))
                                    .padding(.bottom, getRelativeHeight(13.0))
                                    .padding(.trailing, getRelativeWidth(16.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(43.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                    bottomRight: 6.0)
                                    .stroke(ColorConstants.Bluegray900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                       bottomRight: 6.0)
                                    .fill(Color.clear.opacity(0.7)))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(43.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 6.0, topRight: 6.0, bottomLeft: 6.0,
                                                   bottomRight: 6.0))
                        .padding(.top, getRelativeHeight(19.0))
                        Button(action: {
                            codeVerificationFiveViewModel.nextScreen = "SomethingWentWrong12View"
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
                                    .padding(.top, getRelativeHeight(447.0))
                                    .padding(.horizontal, getRelativeWidth(21.0))
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
                        .padding(.top, getRelativeHeight(447.0))
                        .padding(.horizontal, getRelativeWidth(21.0))
                    }
                    .frame(width: getRelativeWidth(329.0), height: getRelativeHeight(723.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(18.24))
                    .padding(.horizontal, getRelativeWidth(22.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrong12View(),
                                   tag: "SomethingWentWrong12View",
                                   selection: $codeVerificationFiveViewModel.nextScreen,
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

struct CodeVerificationFiveView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationFiveView()
    }
}
