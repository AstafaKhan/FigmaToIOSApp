import SwiftUI

struct CodeVerificationSevenView: View {
    @StateObject var codeVerificationSevenViewModel = CodeVerificationSevenViewModel()
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
                                       height: getRelativeWidth(80.0), alignment: .topLeading)
                                .background(RoundedCorners(topLeft: 40.0, topRight: 40.0,
                                                           bottomLeft: 40.0, bottomRight: 40.0)
                                        .fill(ColorConstants.Gray50))
                                .padding(.bottom, getRelativeHeight(23.0))
                                .padding(.trailing, getRelativeWidth(230.0))
                            Text(StringConstants.kMsgConsentToConn)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(241.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(65.71))
                                .padding(.trailing, getRelativeWidth(45.0))
                            Text(StringConstants.kMsgPleaseAcceptT)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(286.0),
                                       height: getRelativeHeight(45.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(57.82))
                                .padding(.leading, getRelativeWidth(24.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(310.0), height: getRelativeHeight(103.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        ZStack(alignment: .leading) {
                            Image("img_arrowup")
                                .resizable()
                                .frame(width: getRelativeWidth(9.0), height: getRelativeHeight(7.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(298.48))
                                .padding(.trailing, getRelativeWidth(19.52))
                            HStack {
                                Text(StringConstants.kLblAccountDetails)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(124.0),
                                           height: getRelativeHeight(20.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(24.0))
                                Image("img_arrowleft_white_a700")
                                    .resizable()
                                    .frame(width: getRelativeWidth(10.0),
                                           height: getRelativeHeight(5.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(141.0))
                                    .padding(.trailing, getRelativeWidth(25.0))
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .leading)
                            .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0)
                                .stroke(ColorConstants.Gray400, lineWidth: 1))
                            .background(RoundedCorners(topLeft: 8.0, topRight: 8.0)
                                .fill(ColorConstants.DeepPurple700))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                               alignment: .trailing)
                        .padding(.top, getRelativeHeight(10.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        HStack {
                            Text(StringConstants.kMsgIAgreeToShar)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(210.0),
                                       height: getRelativeHeight(46.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.bottom, getRelativeHeight(9.0))
                            Button(action: {}, label: {
                                Image("img_xmlid1431")
                            })
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Gray500))
                            .padding(.top, getRelativeHeight(23.0))
                            .padding(.bottom, getRelativeHeight(22.0))
                            .padding(.leading, getRelativeWidth(60.0))
                            .padding(.trailing, getRelativeWidth(19.0))
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(69.0),
                               alignment: .trailing)
                        .background(ColorConstants.Bluegray101)
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        RowarrowupCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(327.0), alignment: .trailing)
                        .padding(.leading, getRelativeWidth(10.0))
                        Button(action: {
                            codeVerificationSevenViewModel.nextScreen = "CodeVerificationThreeView"
                        }, label: {
                            HStack(spacing: 0) {
                                Text(StringConstants.kLblConnectToBank)
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
                                    .padding(.top, getRelativeHeight(259.0))
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
                        .padding(.top, getRelativeHeight(259.0))
                        .padding(.leading, getRelativeWidth(10.0))
                    }
                    .frame(width: getRelativeWidth(351.0), height: getRelativeHeight(707.0),
                           alignment: .topLeading)
                    .padding(.trailing, getRelativeWidth(24.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: CodeVerificationThreeView(),
                                   tag: "CodeVerificationThreeView",
                                   selection: $codeVerificationSevenViewModel.nextScreen,
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

struct CodeVerificationSevenView_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerificationSevenView()
    }
}
