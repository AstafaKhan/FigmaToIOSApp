import SwiftUI

struct CodeVerification2View: View {
    @StateObject var codeVerification2ViewModel = CodeVerification2ViewModel()
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
                                .padding(.bottom, getRelativeHeight(25.0))
                                .padding(.trailing, getRelativeWidth(244.0))
                            Text(StringConstants.kMsgSelectYourBan)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(24.0)))
                                .fontWeight(.bold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(199.0),
                                       height: getRelativeHeight(30.0), alignment: .topLeading)
                                .padding(.bottom, getRelativeHeight(67.71))
                                .padding(.trailing, getRelativeWidth(101.0))
                            Text(StringConstants.kMsgPleaseSelectB)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.Gray800)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(300.0),
                                       height: getRelativeHeight(46.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(58.82))
                                .padding(.leading, getRelativeWidth(24.0))
                        }
                        .hideNavigationBar()
                        .frame(width: getRelativeWidth(324.0), height: getRelativeHeight(105.0),
                               alignment: .leading)
                        .padding(.top, getRelativeHeight(7.0))
                        .padding(.trailing, getRelativeWidth(10.0))
                        HStack {
                            HStack {
                                ZStack(alignment: .leading) {
                                    Image("img_download1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(47.0),
                                               height: getRelativeHeight(46.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0))
                                    Image("img_download1")
                                        .resizable()
                                        .frame(width: getRelativeWidth(47.0),
                                               height: getRelativeHeight(46.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .background(RoundedCorners(topLeft: 10.0, topRight: 10.0,
                                                                   bottomLeft: 10.0,
                                                                   bottomRight: 10.0))
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(46.0), alignment: .center)
                                ZStack(alignment: .leading) {
                                    Text(StringConstants.kMsgIlaDigitalB)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(125.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                    Text(StringConstants.kMsgIlaDigitalB)
                                        .font(FontScheme
                                            .kInterSemiBold(size: getRelativeHeight(16.0)))
                                        .fontWeight(.semibold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(125.0),
                                               height: getRelativeHeight(20.0),
                                               alignment: .topLeading)
                                }
                                .hideNavigationBar()
                                .frame(width: getRelativeWidth(125.0),
                                       height: getRelativeHeight(20.0), alignment: .center)
                                .padding(.leading, getRelativeWidth(6.0))
                            }
                            .frame(width: getRelativeWidth(178.0), height: getRelativeHeight(46.0),
                                   alignment: .center)
                            .padding(.top, getRelativeHeight(16.0))
                            .padding(.bottom, getRelativeHeight(15.0))
                            ZStack(alignment: .leading) {
                                Image("img_xmlid1431")
                                    .resizable()
                                    .frame(width: getRelativeWidth(14.0),
                                           height: getRelativeHeight(10.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.top, getRelativeHeight(6.79))
                                    .padding(.bottom, getRelativeHeight(7.21))
                                    .padding(.horizontal, getRelativeWidth(4.79))
                                Button(action: {}, label: {
                                    Image("img_xmlid1431")
                                })
                                .frame(width: getRelativeWidth(24.0),
                                       height: getRelativeWidth(24.0), alignment: .center)
                                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                           bottomLeft: 12.0, bottomRight: 12.0)
                                        .fill(ColorConstants.Green600))
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                                   alignment: .center)
                            .background(RoundedCorners(topLeft: 12.0, topRight: 12.0,
                                                       bottomLeft: 12.0, bottomRight: 12.0)
                                    .fill(ColorConstants.Green600))
                            .padding(.top, getRelativeHeight(27.0))
                            .padding(.bottom, getRelativeHeight(26.0))
                            .padding(.leading, getRelativeWidth(97.0))
                            .padding(.trailing, getRelativeWidth(11.0))
                        }
                        .frame(width: getRelativeWidth(328.0), height: getRelativeHeight(77.0),
                               alignment: .trailing)
                        .background(RoundedCorners(topLeft: 14.0, topRight: 14.0, bottomLeft: 14.0,
                                                   bottomRight: 14.0)
                                .fill(ColorConstants.Bluegray101))
                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 1, id: \.self) { index in
                                        RowdownloadoneCell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(328.0), alignment: .trailing)
                        .padding(.top, getRelativeHeight(13.0))
                        .padding(.leading, getRelativeWidth(10.0))
                        Button(action: {
                            codeVerification2ViewModel.nextScreen = "CodeVerificationSevenView"
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
                                    .padding(.top, getRelativeHeight(227.0))
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
                        .padding(.top, getRelativeHeight(227.0))
                        .padding(.horizontal, getRelativeWidth(10.0))
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
                    NavigationLink(destination: CodeVerificationSevenView(),
                                   tag: "CodeVerificationSevenView",
                                   selection: $codeVerification2ViewModel.nextScreen,
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

struct CodeVerification2View_Previews: PreviewProvider {
    static var previews: some View {
        CodeVerification2View()
    }
}
