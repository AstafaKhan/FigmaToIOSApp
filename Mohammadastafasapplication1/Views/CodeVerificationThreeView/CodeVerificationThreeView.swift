import SwiftUI

struct CodeVerificationThreeView: View {
    @StateObject var codeVerificationThreeViewModel = CodeVerificationThreeViewModel()
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
                        ZStack(alignment: .bottomTrailing) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeWidth(80.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                                           bottomLeft: 40.0, bottomRight: 40.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.bottom, getRelativeHeight(154.0))
                                .padding(.trailing, getRelativeWidth(197.0))
                            Image("img_download1")
                                .resizable()
                                .frame(width: getRelativeWidth(178.0),
                                       height: getRelativeHeight(174.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                           bottomLeft: 10.0, bottomRight: 10.0))
                                .padding(.top, getRelativeHeight(60.0))
                                .padding(.leading, getRelativeWidth(99.0))
                            Text(StringConstants.kLblConnectBank)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(166.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(196.71))
                                .padding(.trailing, getRelativeWidth(87.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(277.0), height: getRelativeHeight(234.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kMsgIlaDigitalB)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(69.0))
                        Text(StringConstants.kLblUsername)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(32.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourUser,
                                          text: $codeVerificationThreeViewModel.formText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: codeVerificationThreeViewModel.formText) { newValue in

                                codeVerificationThreeViewModel.isValidFormText = newValue
                                    .isText(isMandatory: false)
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
                            if !codeVerificationThreeViewModel.isValidFormText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(55.0), alignment: .trailing)
                            }
                        }
                        Text(StringConstants.kLblPassword)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(75.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(18.0))
                            .padding(.horizontal, getRelativeWidth(21.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourPass,
                                          text: $codeVerificationThreeViewModel.formoneText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                    .keyboardType(.default)
                            }
                            .onChange(of: codeVerificationThreeViewModel.formoneText) { newValue in

                                codeVerificationThreeViewModel.isValidFormoneText = newValue
                                    .isValidPassword(isMandatory: true)
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
                            if !codeVerificationThreeViewModel.isValidFormoneText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(55.0), alignment: .trailing)
                            }
                        }
                        Text(StringConstants.kMsgForgotPassword)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(14.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Red500)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(122.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(20.0))
                            .padding(.horizontal, getRelativeWidth(23.0))
                        Button(action: {
                            codeVerificationThreeViewModel.nextScreen = "CodeVerificationEightView"
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
                                    .padding(.top, getRelativeHeight(65.0))
                                    .padding(.horizontal, getRelativeWidth(23.0))
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
                        .padding(.top, getRelativeHeight(65.0))
                        .padding(.horizontal, getRelativeWidth(23.0))
                    }
                    .frame(width: getRelativeWidth(348.0), height: getRelativeHeight(708.0),
                           alignment: .leading)
                    .padding(.trailing, getRelativeWidth(27.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CodeVerificationEightView(),
                                   tag: "CodeVerificationEightView",
                                   selection: $codeVerificationThreeViewModel.nextScreen,
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

struct CodeVerificationThreeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationThreeView()
    }
}
