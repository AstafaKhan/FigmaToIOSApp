import SwiftUI

struct SomethingWentWrongTwoView: View {
    @StateObject var somethingWentWrongTwoViewModel = SomethingWentWrongTwoViewModel()
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
                                    .padding(.vertical, getRelativeHeight(5.0))
                                    .onTapGesture {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }
                                Text(StringConstants.kMsgTransferHistor)
                                    .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                    .fontWeight(.bold)
                                    .foregroundColor(ColorConstants.Gray900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(160.0),
                                           height: getRelativeHeight(25.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(25.0))
                            }
                            .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                        }
                        .frame(width: getRelativeWidth(192.0), height: getRelativeHeight(25.0),
                               alignment: .leading)
                        .padding(.trailing)
                        Text(StringConstants.kLblIlaSavings2)
                            .font(FontScheme.kInterBold(size: getRelativeHeight(16.0)))
                            .fontWeight(.bold)
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(95.0), height: getRelativeHeight(20.0),
                                   alignment: .topLeading)
                            .padding(.top, getRelativeHeight(27.0))
                            .padding(.trailing, getRelativeWidth(10.0))
                        Text(StringConstants.kLbl29102023)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(11.0))
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .background(ColorConstants.Bluegray101)
                            .padding(.top, getRelativeHeight(15.0))
                            .padding(.horizontal, getRelativeWidth(94.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        RowchullianCell()
                                            .onTapGesture {
                                                somethingWentWrongTwoViewModel
                                                    .nextScreen = "SomethingWentWrongOneView"
                                            }
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(328.0), alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                        Text(StringConstants.kLbl28102023)
                            .font(FontScheme.kInterRegular(size: getRelativeHeight(14.0)))
                            .fontWeight(.regular)
                            .padding(.leading, getRelativeWidth(11.0))
                            .foregroundColor(ColorConstants.Gray900)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(103.0), height: getRelativeHeight(22.0),
                                   alignment: .topLeading)
                            .background(ColorConstants.Bluegray101)
                            .padding(.top, getRelativeHeight(21.0))
                            .padding(.horizontal, getRelativeWidth(94.0))
                        VStack(spacing: 0) {
                            ScrollView(.vertical, showsIndicators: false) {
                                LazyVStack {
                                    ForEach(0 ... 2, id: \.self) { index in
                                        Rowchullian1Cell()
                                    }
                                }
                            }
                        }
                        .frame(width: getRelativeWidth(328.0), alignment: .center)
                        .padding(.top, getRelativeHeight(13.0))
                    }
                    .frame(width: getRelativeWidth(329.0), height: getRelativeHeight(645.0),
                           alignment: .center)
                    .padding(.horizontal, getRelativeWidth(22.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongOneView(),
                                   tag: "SomethingWentWrongOneView",
                                   selection: $somethingWentWrongTwoViewModel.nextScreen,
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

struct SomethingWentWrongTwoView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongTwoView()
    }
}
