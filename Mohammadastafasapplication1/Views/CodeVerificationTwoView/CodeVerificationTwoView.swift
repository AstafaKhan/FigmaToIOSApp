import SwiftUI

struct CodeVerificationTwoView: View {
    @StateObject var codeVerificationTwoViewModel = CodeVerificationTwoViewModel()
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
                        ZStack(alignment: .center) {
                            ZStack {}
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(80.0),
                                       height: getRelativeWidth(80.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                                           bottomLeft: 40.0, bottomRight: 40.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.bottom, getRelativeHeight(35.0))
                                .padding(.trailing, getRelativeWidth(250.0))
                            Text(StringConstants.kMsgEnterVerificat)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(273.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(78.09))
                                .padding(.leading, getRelativeWidth(24.0))
                                .padding(.trailing, getRelativeWidth(33.0))
                            Text(StringConstants.kMsgPleaseEnterTh)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(306.0),
                                       height: getRelativeHeight(46.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(68.82))
                                .padding(.leading, getRelativeWidth(24.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(330.0), height: getRelativeHeight(115.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        OTPView(text: $codeVerificationTwoViewModel.otpviewOTP1, width: 320.0,
                                height: 55.0, fieldsCount: 6,
                                displayType: .roundedCorner,
                                defaultBackgroundColor: ColorConstants.Bluegray9000c,
                                filledBackgroundColor: ColorConstants.Bluegray9000c)
                            .frame(width: 320.0, height: 55.0)
                        Button(action: {
                            codeVerificationTwoViewModel.nextScreen = "SomethingWentWrongFourView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblSubmit)
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
                                    .padding(.top, getRelativeHeight(40.0))
                                    .padding(.horizontal, getRelativeWidth(24.0))
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
                        .padding(.horizontal, getRelativeWidth(24.0))
                        Text(StringConstants.kMsgDidnTReceive)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Gray800)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(211.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(25.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                        Text(StringConstants.kMsgResendCodeIn)
                            .font(FontScheme.kInterMedium(size: getRelativeHeight(14.0)))
                            .fontWeight(.medium)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(185.0), height: getRelativeHeight(17.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(7.0))
                            .padding(.horizontal, getRelativeWidth(24.0))
                        VStack {
                            VStack(spacing: 0) {
                                ScrollView(.vertical, showsIndicators: false) {
                                    LazyVStack {
                                        ForEach(0 ... 2, id: \.self) { index in
                                            RowoneCell()
                                        }
                                    }
                                }
                            }
                            .frame(width: getRelativeWidth(363.0), alignment: .center)
                            .padding(.top, getRelativeHeight(6.0))
                            .padding(.horizontal, getRelativeWidth(6.0))
                            HStack {
                                Button(action: {}, label: {
                                    HStack(spacing: 0) {
                                        Text(StringConstants.kLbl0)
                                            .font(FontScheme
                                                .kInterRegular(size: getRelativeHeight(25.0)))
                                            .fontWeight(.regular)
                                            .padding(.horizontal, getRelativeWidth(30.0))
                                            .padding(.vertical, getRelativeHeight(7.0))
                                            .foregroundColor(ColorConstants.Black900)
                                            .minimumScaleFactor(0.5)
                                            .multilineTextAlignment(.center)
                                            .frame(width: getRelativeWidth(117.0),
                                                   height: getRelativeHeight(46.0),
                                                   alignment: .center)
                                            .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                                       bottomLeft: 5.0,
                                                                       bottomRight: 5.0)
                                                    .fill(ColorConstants.WhiteA701))
                                            .shadow(color: ColorConstants.Bluegray400, radius: 0,
                                                    x: 0, y: 1)
                                    }
                                })
                                .frame(width: getRelativeWidth(117.0),
                                       height: getRelativeHeight(46.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 5.0, topRight: 5.0,
                                                           bottomLeft: 5.0, bottomRight: 5.0)
                                        .fill(ColorConstants.WhiteA701))
                                .shadow(color: ColorConstants.Bluegray400, radius: 0, x: 0, y: 1)
                                Image("img_delete")
                                    .resizable()
                                    .frame(width: getRelativeWidth(24.0),
                                           height: getRelativeHeight(17.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(13.0))
                                    .padding(.bottom, getRelativeHeight(15.0))
                                    .padding(.leading, getRelativeWidth(55.0))
                            }
                            .frame(width: getRelativeWidth(196.0), height: getRelativeHeight(46.0),
                                   alignment: .trailing)
                            .padding(.vertical, getRelativeHeight(7.0))
                            .padding(.horizontal, getRelativeWidth(50.0))
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(291.0),
                               alignment: .leading)
                        .background(ColorConstants.Bluegray100)
                        .shadow(radius: 108.73126983642578)
                        .padding(.top, getRelativeHeight(119.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(811.0),
                           alignment: .leading)
                    .background(ColorConstants.WhiteA700)
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(12.0))
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongFourView(),
                                   tag: "SomethingWentWrongFourView",
                                   selection: $codeVerificationTwoViewModel.nextScreen,
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

struct CodeVerificationTwoView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationTwoView()
    }
}
