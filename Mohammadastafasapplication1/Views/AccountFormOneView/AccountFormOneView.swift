import SwiftUI

struct AccountFormOneView: View {
    @StateObject var accountFormOneViewModel = AccountFormOneViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack(alignment: .leading, spacing: 0) {
                        ZStack {}
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(20.0), height: getRelativeHeight(18.0),
                                   alignment: .leading)
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
                                .padding(.bottom, getRelativeHeight(18.0))
                                .padding(.trailing, getRelativeWidth(265.0))
                            Text(StringConstants.kMsgCreateNewPass)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(257.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(60.71))
                                .padding(.trailing, getRelativeWidth(64.0))
                            Text(StringConstants.kMsgYourNewPasswo)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(321.0),
                                       height: getRelativeHeight(45.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(52.82))
                                .padding(.leading, getRelativeWidth(24.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(345.0), height: getRelativeHeight(98.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(9.0))
                        .padding(.trailing, getRelativeWidth(5.0))
                        Text(StringConstants.kMsgNewPassword)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(263.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(24.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(170.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourNew,
                                          text: $accountFormOneViewModel.formText)
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
                                    .padding(.vertical, getRelativeHeight(22.0))
                                    .padding(.leading, getRelativeWidth(23.0))
                                    .padding(.trailing, getRelativeWidth(26.0))
                                Spacer()
                            }
                            .onChange(of: accountFormOneViewModel.formText) { newValue in

                                accountFormOneViewModel.isValidFormText = newValue
                                    .isValidPassword(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(24.0))
                            if !accountFormOneViewModel.isValidFormText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(56.0), alignment: .center)
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(56.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(4.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack(alignment: .leading, spacing: 0) {
                        Text(StringConstants.kMsgConfirmNewPas)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.horizontal, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(20.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                    VStack {
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgConfirmYourNe,
                                          text: $accountFormOneViewModel.formoneText)
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
                                    .padding(.vertical, getRelativeHeight(22.0))
                                    .padding(.leading, getRelativeWidth(30.0))
                                    .padding(.trailing, getRelativeWidth(26.0))
                                Spacer()
                            }
                            .onChange(of: accountFormOneViewModel.formoneText) { newValue in

                                accountFormOneViewModel.isValidFormoneText = newValue
                                    .isValidPassword(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(56.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.leading, getRelativeWidth(24.0))
                            if !accountFormOneViewModel.isValidFormoneText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(56.0), alignment: .center)
                            }
                        }
                        ZStack(alignment: .leading) {
                            Text(StringConstants.kLblCreatePassword)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(134.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(17.18))
                                .padding(.bottom, getRelativeHeight(17.82))
                                .padding(.horizontal, getRelativeWidth(96.0))
                            Button(action: {
                                accountFormOneViewModel.nextScreen = "SomethingWentWrongFourView"
                            }, label: {
                                HStack(spacing: 0) {
                                    Text(StringConstants.kLblCreatePassword)
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
                        }
                        .hideNavigationBar()
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
                        .padding(.leading, getRelativeWidth(24.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(151.0),
                           alignment: .leading)
                    .padding(.vertical, getRelativeHeight(5.0))
                    .padding(.trailing, getRelativeWidth(10.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongFourView(),
                                   tag: "SomethingWentWrongFourView",
                                   selection: $accountFormOneViewModel.nextScreen,
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

struct AccountFormOneView_Previews: PreviewProvider {
    static var previews: some View {
        AccountFormOneView()
    }
}
