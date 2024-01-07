import SwiftUI

struct SomethingWentWrongSevenView: View {
    @StateObject var somethingWentWrongSevenViewModel = SomethingWentWrongSevenViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    HStack {
                        HStack {
                            Text(StringConstants.kLblSummary)
                                .font(FontScheme.kInterSemiBold(size: getRelativeHeight(20.0)))
                                .fontWeight(.semibold)
                                .foregroundColor(ColorConstants.Gray900)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(93.0),
                                       height: getRelativeHeight(25.0), alignment: .topLeading)
                            Spacer()
                            Text(StringConstants.kLblClose)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.RedA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(37.0),
                                       height: getRelativeHeight(17.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(4.0))
                                .onTapGesture {
                                    somethingWentWrongSevenViewModel
                                        .nextScreen = "SomethingWentWrongElevenView"
                                }
                        }
                        .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(25.0),
                           alignment: .leading)
                    .padding(.top, getRelativeHeight(33.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
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
                           alignment: .center)
                    .padding(.top, getRelativeHeight(24.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                    HStack {
                        Text(StringConstants.kMsgIAgreeToShar)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                            .fontWeight(.regular)
                            .foregroundColor(ColorConstants.Black900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(210.0), height: getRelativeHeight(46.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(12.0))
                            .padding(.bottom, getRelativeHeight(9.0))
                            .padding(.leading, getRelativeWidth(13.0))
                        Spacer()
                        Button(action: {}, label: {
                            Image("img_xmlid1431")
                        })
                        .frame(width: getRelativeWidth(24.0), height: getRelativeWidth(24.0),
                               alignment: .center)
                        .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                                   bottomRight: 12.0)
                                .fill(ColorConstants.Green600))
                        .padding(.top, getRelativeHeight(23.0))
                        .padding(.bottom, getRelativeHeight(22.0))
                        .padding(.trailing, getRelativeWidth(19.0))
                    }
                    .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(69.0),
                           alignment: .center)
                    .background(ColorConstants.Bluegray101)
                    .padding(.horizontal, getRelativeWidth(24.0))
                    VStack(spacing: 0) {
                        ScrollView(.vertical, showsIndicators: false) {
                            LazyVStack {
                                ForEach(0 ... 1, id: \.self) { index in
                                    Rowarrowup1Cell()
                                }
                            }
                        }
                    }
                    .frame(width: getRelativeWidth(327.0), alignment: .center)
                    .padding(.horizontal, getRelativeWidth(24.0))
                    Button(action: {
                        somethingWentWrongSevenViewModel.nextScreen = "SomethingWentWrongSixView"
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
                                .padding(.vertical, getRelativeHeight(356.0))
                                .padding(.horizontal, getRelativeWidth(24.0))
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
                    .padding(.vertical, getRelativeHeight(356.0))
                    .padding(.horizontal, getRelativeWidth(24.0))
                }
                .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(778.0),
                       alignment: .leading)
                .background(RoundedCorners(topLeft: 12.0, topRight: 12.0, bottomLeft: 12.0,
                                           bottomRight: 12.0)
                        .fill(ColorConstants.WhiteA700))
                Group {
                    NavigationLink(destination: SomethingWentWrongElevenView(),
                                   tag: "SomethingWentWrongElevenView",
                                   selection: $somethingWentWrongSevenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: SomethingWentWrongSixView(),
                                   tag: "SomethingWentWrongSixView",
                                   selection: $somethingWentWrongSevenViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct SomethingWentWrongSevenView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongSevenView()
    }
}
