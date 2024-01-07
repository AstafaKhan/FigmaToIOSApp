import SwiftUI

struct SomethingWentWrongFourView: View {
    @StateObject var somethingWentWrongFourViewModel = SomethingWentWrongFourViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_group_236x288")
                        .resizable()
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(236.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(156.0))
                        .padding(.horizontal, getRelativeWidth(33.0))
                    Text(StringConstants.kMsgPasswordReset)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: getRelativeWidth(259.0), height: getRelativeHeight(25.0),
                               alignment: .topLeading)
                        .padding(.top, getRelativeHeight(26.0))
                        .padding(.horizontal, getRelativeWidth(33.0))
                    Text(StringConstants.kMsgYouHaveSucces)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(308.0), height: getRelativeHeight(37.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(19.0))
                        .padding(.horizontal, getRelativeWidth(33.0))
                    Button(action: {
                        somethingWentWrongFourViewModel.nextScreen = "LoginSignupView"
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
                                .padding(.vertical, getRelativeHeight(38.0))
                                .padding(.horizontal, getRelativeWidth(33.0))
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
                    .padding(.vertical, getRelativeHeight(38.0))
                    .padding(.horizontal, getRelativeWidth(33.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: LoginSignupView(),
                                   tag: "LoginSignupView",
                                   selection: $somethingWentWrongFourViewModel.nextScreen,
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

struct SomethingWentWrongFourView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongFourView()
    }
}
