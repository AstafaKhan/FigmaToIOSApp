import SwiftUI

struct LoginSignupView: View {
    @StateObject var loginSignupViewModel = LoginSignupViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .trailing, spacing: 0) {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack(alignment: .bottomTrailing) {
                            HStack {
                                ZStack(alignment: .center) {
                                    Image("img_group33861")
                                        .resizable()
                                        .frame(width: getRelativeWidth(113.0),
                                               height: getRelativeHeight(107.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Text(StringConstants.kLblLogin)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(65.0),
                                               height: getRelativeHeight(30.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(36.36))
                                        .padding(.horizontal, getRelativeWidth(24.0))
                                }
                                .hideNavigationBar()
                            }
                            .frame(width: getRelativeWidth(113.0), height: getRelativeHeight(107.0),
                                   alignment: .leading)
                            .padding(.bottom, getRelativeHeight(78.0))
                            .padding(.trailing, getRelativeWidth(238.0))
                            VStack(alignment: .leading, spacing: 0) {
                                Text(StringConstants.kLblMobileNumber)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(117.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.trailing)
                                HStack {
                                    Text(StringConstants.kLbl218)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(37.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(21.0))
                                    Image("img_arrowright")
                                        .resizable()
                                        .frame(width: getRelativeWidth(14.0),
                                               height: getRelativeHeight(7.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.top, getRelativeHeight(25.0))
                                        .padding(.bottom, getRelativeHeight(23.0))
                                        .padding(.leading, getRelativeWidth(11.0))
                                    Text(StringConstants.kLblEnterNumber)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .fontWeight(.regular)
                                        .foregroundColor(ColorConstants.Gray600)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(105.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                        .padding(.vertical, getRelativeHeight(17.0))
                                        .padding(.leading, getRelativeWidth(12.0))
                                    Spacer()
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(55.0), alignment: .leading)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(80.0),
                                   alignment: .bottomTrailing)
                            .padding(.top, getRelativeHeight(104.04))
                            .padding(.leading, getRelativeWidth(24.0))
                            HStack {
                                Text(StringConstants.kLblLanguage)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(69.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kKanitRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(35.0),
                                           height: getRelativeHeight(21.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Image("img_arrowright_gray_900")
                                    .resizable()
                                    .frame(width: getRelativeWidth(4.0),
                                           height: getRelativeHeight(8.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(10.0))
                                    .padding(.trailing, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(128.0), height: getRelativeHeight(20.0),
                                   alignment: .topTrailing)
                            .padding(.bottom, getRelativeHeight(122.0))
                            .padding(.leading, getRelativeWidth(223.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(185.0),
                               alignment: .leading)
                        Text(StringConstants.kLblPassword)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(230.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(24.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourPass,
                                          text: $loginSignupViewModel.formText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                    .keyboardType(.default)
                                Image("img_vector")
                                    .resizable()
                                    .frame(width: getRelativeWidth(20.0),
                                           height: getRelativeHeight(11.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(21.0))
                                    .padding(.bottom, getRelativeHeight(22.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(24.0))
                                Spacer()
                            }
                            .onChange(of: loginSignupViewModel.formText) { newValue in

                                loginSignupViewModel.isValidFormText = newValue
                                    .isValidPassword(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(24.0))
                            if !loginSignupViewModel.isValidFormText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(55.0), alignment: .center)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(55.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Red500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(24.0))
                            .onTapGesture {
                                loginSignupViewModel.nextScreen = "AccountFormOneView"
                            }
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(17.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(18.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                    VStack {
                        Button(action: {
                            loginSignupViewModel.nextScreen = "SomethingWentWrongSixView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblLogin)
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
                                    .padding(.leading, getRelativeWidth(24.0))
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
                        .padding(.leading, getRelativeWidth(24.0))
                        HStack {
                            Text(StringConstants.kMsgDonTHaveAnA)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(157.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblSignUp)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.IndigoA7007a)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(51.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.leading, getRelativeWidth(4.0))
                        }
                        .onTapGesture {
                            loginSignupViewModel.nextScreen = "AccountFormView"
                        }
                        .frame(width: getRelativeWidth(212.0), height: getRelativeHeight(18.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(25.0))
                        .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(98.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(40.0))
                    .padding(.trailing, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongSixView(),
                                   tag: "SomethingWentWrongSixView",
                                   selection: $loginSignupViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AccountFormOneView(),
                                   tag: "AccountFormOneView",
                                   selection: $loginSignupViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: AccountFormView(),
                                   tag: "AccountFormView",
                                   selection: $loginSignupViewModel.nextScreen,
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

struct LoginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSignupView()
    }
}
