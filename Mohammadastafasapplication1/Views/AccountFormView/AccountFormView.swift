import SwiftUI

struct AccountFormView: View {
    @StateObject var accountFormViewModel = AccountFormViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Group {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(20.0),
                                       height: getRelativeHeight(18.0), alignment: .leading)
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0)
                                        .fill(ColorConstants.Blue50))
                                .padding(.horizontal, getRelativeWidth(93.0))
                            ZStack(alignment: .topLeading) {
                                ZStack {}
                                    .hideNavigationBar()
                                    .frame(width: getRelativeWidth(80.0),
                                           height: getRelativeWidth(80.0), alignment: .topLeading)
                                    .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                                               bottomLeft: 40.0, bottomRight: 40.0)
                                            .fill(ColorConstants.Gray50))
                                    .padding(.bottom, getRelativeHeight(17.0))
                                    .padding(.trailing, getRelativeWidth(70.0))
                                Text(StringConstants.kLblSignUp2)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(91.0),
                                           height: getRelativeHeight(30.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(57.64))
                                    .padding(.trailing, getRelativeWidth(35.0))
                                Text(StringConstants.kLblMobileNumber2)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray901)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(126.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(77.04))
                                    .padding(.leading, getRelativeWidth(24.0))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(150.0), height: getRelativeHeight(97.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(9.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                Spacer()
                                Text(StringConstants.kLbl218)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(37.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(17.0))
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
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray600)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(105.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.vertical, getRelativeHeight(17.0))
                                    .padding(.leading, getRelativeWidth(12.0))
                                    .padding(.trailing, getRelativeWidth(125.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .trailing)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(5.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            Text(StringConstants.kLblName)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(53.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterYourName,
                                              text: $accountFormViewModel.formText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.alphabet)
                                }
                                .onChange(of: accountFormViewModel.formText) { newValue in

                                    accountFormViewModel.isValidFormText = newValue
                                        .isText(isMandatory: false)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(55.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                if !accountFormViewModel.isValidFormText {
                                    Text("Please enter valid text.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(55.0),
                                               alignment: .trailing)
                                }
                            }
                            Text(StringConstants.kLblEmail)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(50.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterEmailHer,
                                              text: $accountFormViewModel.formoneText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.emailAddress)
                                }
                                .onChange(of: accountFormViewModel.formoneText) { newValue in

                                    accountFormViewModel.isValidFormoneText = newValue
                                        .isValidEmail(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(55.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                if !accountFormViewModel.isValidFormoneText {
                                    Text("Please enter valid email.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(55.0),
                                               alignment: .trailing)
                                }
                            }
                            Text(StringConstants.kMsgPasswordMini)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(225.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(26.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                        }
                        Group {
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterYourPass2,
                                              text: $accountFormViewModel.formtwoText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.default)
                                    Image("img_vector")
                                        .resizable()
                                        .frame(width: getRelativeWidth(20.0),
                                               height: getRelativeHeight(11.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.vertical, getRelativeHeight(22.0))
                                        .padding(.leading, getRelativeWidth(30.0))
                                        .padding(.trailing, getRelativeWidth(26.0))
                                    Spacer()
                                }
                                .onChange(of: accountFormViewModel.formtwoText) { newValue in

                                    accountFormViewModel.isValidFormtwoText = newValue
                                        .isValidPassword(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(56.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(4.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                if !accountFormViewModel.isValidFormtwoText {
                                    Text("Please enter valid password.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(56.0),
                                               alignment: .trailing)
                                }
                            }
                            Text(StringConstants.kMsgConfirmPasswor)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(149.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgConfirmYourNe,
                                              text: $accountFormViewModel.formthreeText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.default)
                                }
                                .onChange(of: accountFormViewModel.formthreeText) { newValue in

                                    accountFormViewModel.isValidFormthreeText = newValue
                                        .isValidPassword(isMandatory: true)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(56.0), alignment: .trailing)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(5.0))
                                .padding(.leading, getRelativeWidth(10.0))
                                if !accountFormViewModel.isValidFormthreeText {
                                    Text("Please enter valid password.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(56.0),
                                               alignment: .trailing)
                                }
                            }
                            HStack {
                                Button(action: {}, label: {
                                    Image("img_xmlid1431_white_a700")
                                })
                                .frame(width: getRelativeWidth(18.0),
                                       height: getRelativeWidth(18.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                    .IndigoA7007a,
                                                ColorConstants
                                                    .Gray902]),
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)))
                                Text(StringConstants.kLblIAgreeWith)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray800)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(77.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(8.0))
                                Text(StringConstants.kLblTerms)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.IndigoA7007a)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(41.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                                Text(StringConstants.kLbl3)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Gray800)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(10.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(5.0))
                                Text(StringConstants.kLblPrivacyPolicy)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.IndigoA7007a)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(94.0),
                                           height: getRelativeHeight(17.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(4.0))
                                Spacer()
                            }
                            .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(20.0),
                                   alignment: .leading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                            Button(action: {
                                accountFormViewModel.nextScreen = "CodeVerificationTwoView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblCreateAccount)
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
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                            .IndigoA7007a,
                                                        ColorConstants
                                                            .Gray902]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing)))
                                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0,
                                                y: 4)
                                        .padding(.top, getRelativeHeight(40.0))
                                        .padding(.leading, getRelativeWidth(10.0))
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
                            .padding(.top, getRelativeHeight(40.0))
                            .padding(.leading, getRelativeWidth(10.0))
                            HStack {
                                Text(StringConstants.kMsgAlreadyHaveAn)
                                    .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                                    .fontWeight(.medium)
                                    .foregroundColor(ColorConstants.Gray800)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(173.0),
                                           height: getRelativeHeight(20.0), alignment: .leading)
                                Spacer()
                                Text(StringConstants.kLblLogin)
                                    .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                                    .fontWeight(.semibold)
                                    .foregroundColor(ColorConstants.IndigoA7007a)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(38.0),
                                           height: getRelativeHeight(20.0), alignment: .leading)
                                    .padding(.leading, getRelativeWidth(4.0))
                            }
                            .frame(width: getRelativeWidth(215.0), height: getRelativeHeight(20.0),
                                   alignment: .trailing)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(56.0))
                        }
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(794.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .frame(width: getRelativeWidth(351.0), alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.trailing, getRelativeWidth(24.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CodeVerificationTwoView(),
                                   tag: "CodeVerificationTwoView",
                                   selection: $accountFormViewModel.nextScreen,
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

struct AccountFormView_Previews: PreviewProvider {
    static var previews: some View {
        AccountFormView()
    }
}
