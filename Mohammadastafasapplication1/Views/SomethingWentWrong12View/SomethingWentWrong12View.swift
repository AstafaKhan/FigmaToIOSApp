import SwiftUI

struct SomethingWentWrong12View: View {
    @StateObject var somethingWentWrong12ViewModel = SomethingWentWrong12ViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_group_2")
                        .resizable()
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(236.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(156.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Text(StringConstants.kMsgPaymentSuccess)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(194.0), height: getRelativeHeight(25.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(28.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Text(StringConstants.kMsg2000LydWasTr)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(247.0), height: getRelativeHeight(17.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(18.0))
                        .padding(.horizontal, getRelativeWidth(43.0))
                    Button(action: {}, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblShare)
                                .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                                .fontWeight(.bold)
                                .padding(.horizontal, getRelativeWidth(30.0))
                                .padding(.vertical, getRelativeHeight(17.0))
                                .foregroundColor(ColorConstants.Black900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.center)
                                .frame(width: getRelativeWidth(282.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                        bottomLeft: 8.0,
                                                        bottomRight: 8.0)
                                        .stroke(ColorConstants.Black900,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                           bottomLeft: 8.0, bottomRight: 8.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                                .padding(.top, getRelativeHeight(128.0))
                                .padding(.horizontal, getRelativeWidth(43.0))
                        }
                    })
                    .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .overlay(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                            bottomRight: 8.0)
                            .stroke(ColorConstants.Black900,
                                    lineWidth: 1))
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(Color.clear.opacity(0.7)))
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(128.0))
                    .padding(.horizontal, getRelativeWidth(43.0))
                    Button(action: {
                        somethingWentWrong12ViewModel.nextScreen = "SomethingWentWrongSixView"
                    }, label: {
                        HStack(spacing: 0) {
                            Text(StringConstants.kLblHome)
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
                                .padding(.top, getRelativeHeight(25.0))
                                .padding(.bottom, getRelativeHeight(23.0))
                                .padding(.horizontal, getRelativeWidth(43.0))
                        }
                    })
                    .frame(width: getRelativeWidth(282.0), height: getRelativeHeight(55.0),
                           alignment: .center)
                    .background(RoundedCorners(topLeft: 8.0, topRight: 8.0, bottomLeft: 8.0,
                                               bottomRight: 8.0)
                            .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                        .IndigoA7007a,
                                    ColorConstants.Gray902]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)))
                    .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                    .padding(.top, getRelativeHeight(25.0))
                    .padding(.bottom, getRelativeHeight(23.0))
                    .padding(.horizontal, getRelativeWidth(43.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongSixView(),
                                   tag: "SomethingWentWrongSixView",
                                   selection: $somethingWentWrong12ViewModel.nextScreen,
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

struct SomethingWentWrong12View_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrong12View()
    }
}
