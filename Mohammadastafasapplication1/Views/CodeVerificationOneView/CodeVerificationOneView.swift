import SwiftUI

struct CodeVerificationOneView: View {
    @StateObject var codeVerificationOneViewModel = CodeVerificationOneViewModel()
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
                                    .padding(.vertical, getRelativeHeight(7.0))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                Text(StringConstants.kLblDeLinkAccount)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(159.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(25.0))
                            }
                            .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(191.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Image("img_download1")
                            .resizable()
                            .frame(width: getRelativeWidth(178.0), height: getRelativeHeight(174.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                       bottomLeft: 10.0, bottomRight: 10.0))
                            .padding(.top, getRelativeHeight(46.0))
                            .padding(.horizontal, getRelativeWidth(22.0))
                        Text(StringConstants.kMsgIlaDigitalB)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(24.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(188.0), height: getRelativeHeight(30.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(26.0))
                            .padding(.horizontal, getRelativeWidth(22.0))
                        Text(StringConstants.kLblUsername)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray901)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(79.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(32.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourUser,
                                          text: $codeVerificationOneViewModel.formText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                    .keyboardType(.alphabet)
                            }
                            .onChange(of: codeVerificationOneViewModel.formText) { newValue in

                                codeVerificationOneViewModel.isValidFormText = newValue
                                    .isText(isMandatory: false)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(5.0))
                            if !codeVerificationOneViewModel.isValidFormText {
                                Text("Please enter valid text.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(55.0), alignment: .leading)
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
                            .padding(.trailing, getRelativeWidth(10.0))
                        Group {
                            HStack {
                                TextField(StringConstants.kMsgEnterYourPass,
                                          text: $codeVerificationOneViewModel.formoneText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                                    .keyboardType(.default)
                            }
                            .onChange(of: codeVerificationOneViewModel.formoneText) { newValue in

                                codeVerificationOneViewModel.isValidFormoneText = newValue
                                    .isValidPassword(isMandatory: true)
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(5.0))
                            if !codeVerificationOneViewModel.isValidFormoneText {
                                Text("Please enter valid password.")
                                    .foregroundColor(Color.red)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .frame(width: getRelativeWidth(327.0),
                                           height: getRelativeHeight(55.0), alignment: .leading)
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
                            .padding(.trailing, getRelativeWidth(10.0))
                        Button(action: {
                            codeVerificationOneViewModel.nextScreen = "CodeVerificationFiveView"
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
                                    .padding(.top, getRelativeHeight(117.0))
                                    .padding(.horizontal, getRelativeWidth(22.0))
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
                        .padding(.top, getRelativeHeight(117.0))
                        .padding(.horizontal, getRelativeWidth(22.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(724.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(17.92))
                    .padding(.leading, getRelativeWidth(21.0))
                    .padding(.trailing, getRelativeWidth(27.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CodeVerificationFiveView(),
                                   tag: "CodeVerificationFiveView",
                                   selection: $codeVerificationOneViewModel.nextScreen,
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

struct CodeVerificationOneView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationOneView()
    }
}
