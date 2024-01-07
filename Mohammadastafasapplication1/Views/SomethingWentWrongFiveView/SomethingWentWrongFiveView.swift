import SwiftUI

struct SomethingWentWrongFiveView: View {
    @StateObject var somethingWentWrongFiveViewModel = SomethingWentWrongFiveViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("img_group_3")
                        .resizable()
                        .frame(width: getRelativeWidth(288.0), height: getRelativeHeight(236.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.top, getRelativeHeight(156.0))
                        .padding(.horizontal, getRelativeWidth(42.0))
                    Text(StringConstants.kMsgDeLinkingAcco)
                        .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                        .fontWeight(.semibold)
                        .foregroundColor(ColorConstants.Gray900)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(186.0), height: getRelativeHeight(47.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(15.0))
                        .padding(.horizontal, getRelativeWidth(42.0))
                    Text(StringConstants.kMsgYouSuccessfull)
                        .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorConstants.Gray600)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(width: getRelativeWidth(290.0), height: getRelativeHeight(34.0),
                               alignment: .center)
                        .padding(.top, getRelativeHeight(8.0))
                        .padding(.horizontal, getRelativeWidth(42.0))
                    Button(action: {
                        somethingWentWrongFiveViewModel.nextScreen = "SomethingWentWrongSixView"
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
                                .padding(.vertical, getRelativeHeight(191.0))
                                .padding(.horizontal, getRelativeWidth(42.0))
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
                    .padding(.vertical, getRelativeHeight(191.0))
                    .padding(.horizontal, getRelativeWidth(42.0))
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongSixView(),
                                   tag: "SomethingWentWrongSixView",
                                   selection: $somethingWentWrongFiveViewModel.nextScreen,
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

struct SomethingWentWrongFiveView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongFiveView()
    }
}
