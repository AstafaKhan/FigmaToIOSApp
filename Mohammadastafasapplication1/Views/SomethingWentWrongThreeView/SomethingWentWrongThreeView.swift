import SwiftUI

struct SomethingWentWrongThreeView: View {
    @StateObject var somethingWentWrongThreeViewModel = SomethingWentWrongThreeViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Group {
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
                                    Text(StringConstants.kLblTransferFund)
                                        .font(FontScheme.kInterBold(size: getRelativeHeight(20.0)))
                                        .fontWeight(.bold)
                                        .foregroundColor(ColorConstants.Gray900)
                                        .minimumScaleFactor(0.5)
                                        .multilineTextAlignment(.leading)
                                        .frame(width: getRelativeWidth(136.0),
                                               height: getRelativeHeight(25.0),
                                               alignment: .topLeading)
                                        .padding(.leading, getRelativeWidth(25.0))
                                }
                                .frame(width: getRelativeWidth(168.0),
                                       height: getRelativeHeight(25.0), alignment: .leading)
                            }
                            .frame(width: getRelativeWidth(168.0), height: getRelativeHeight(25.0),
                                   alignment: .leading)
                            .padding(.trailing)
                            Text(StringConstants.kMsgBeneficiaryNam)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(144.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(18.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterYourBene,
                                              text: $somethingWentWrongThreeViewModel.formText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.alphabet)
                                }
                                .onChange(of: somethingWentWrongThreeViewModel
                                    .formText) { newValue in

                                        somethingWentWrongThreeViewModel.isValidFormText = newValue
                                            .isText(isMandatory: false)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(4.0))
                                if !somethingWentWrongThreeViewModel.isValidFormText {
                                    Text("Please enter valid text.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(55.0), alignment: .center)
                                }
                            }
                            Text(StringConstants.kLblIban)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(47.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterBeneficia,
                                          text: $somethingWentWrongThreeViewModel.formoneText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(5.0))
                            Text(StringConstants.kLblAccountNumber)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(138.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterBeneficia2,
                                              text: $somethingWentWrongThreeViewModel.formtwoText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.numberPad)
                                }
                                .onChange(of: somethingWentWrongThreeViewModel
                                    .formtwoText) { newValue in

                                        somethingWentWrongThreeViewModel
                                            .isValidFormtwoText = newValue
                                            .isNumeric(isMandatory: false)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(5.0))
                                if !somethingWentWrongThreeViewModel.isValidFormtwoText {
                                    Text("Please enter valid number.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(55.0), alignment: .center)
                                }
                            }
                            Text(StringConstants.kMsgConfirmAccount)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(203.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(16.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                        }
                        Group {
                            Group {
                                HStack {
                                    TextField(StringConstants.kMsgEnterBeneficia2,
                                              text: $somethingWentWrongThreeViewModel.formthreeText)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .foregroundColor(ColorConstants.Gray600)
                                        .padding()
                                        .keyboardType(.numberPad)
                                }
                                .onChange(of: somethingWentWrongThreeViewModel
                                    .formthreeText) { newValue in

                                        somethingWentWrongThreeViewModel
                                            .isValidFormthreeText = newValue
                                            .isNumeric(isMandatory: false)
                                }
                                .frame(width: getRelativeWidth(327.0),
                                       height: getRelativeHeight(55.0), alignment: .center)
                                .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                        bottomLeft: 4.0,
                                                        bottomRight: 4.0)
                                        .stroke(ColorConstants.Gray400,
                                                lineWidth: 1))
                                .background(RoundedCorners(topLeft: 4.0, topRight: 4.0,
                                                           bottomLeft: 4.0, bottomRight: 4.0)
                                        .fill(Color.clear.opacity(0.7)))
                                .padding(.top, getRelativeHeight(6.0))
                                if !somethingWentWrongThreeViewModel.isValidFormthreeText {
                                    Text("Please enter valid number.")
                                        .foregroundColor(Color.red)
                                        .font(FontScheme
                                            .kInterRegular(size: getRelativeHeight(16.0)))
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(55.0), alignment: .center)
                                }
                            }
                            Text(StringConstants.kLblAmount)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(69.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(24.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField(StringConstants.kMsgLydEnterAmoun,
                                          text: $somethingWentWrongThreeViewModel.priceText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(5.0))
                            Text(StringConstants.kLblDescription)
                                .font(FontScheme.kInterMedium(size: getRelativeHeight(16.0)))
                                .fontWeight(.medium)
                                .foregroundColor(ColorConstants.Gray901)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(88.0),
                                       height: getRelativeHeight(20.0), alignment: .topLeading)
                                .padding(.top, getRelativeHeight(12.0))
                                .padding(.trailing, getRelativeWidth(10.0))
                            HStack {
                                TextField(StringConstants.kMsgEnterTheDescr,
                                          text: $somethingWentWrongThreeViewModel.formfourText)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(16.0)))
                                    .foregroundColor(ColorConstants.Gray600)
                                    .padding()
                            }
                            .frame(width: getRelativeWidth(327.0), height: getRelativeHeight(55.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                    bottomRight: 4.0)
                                    .stroke(ColorConstants.Gray400,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 4.0, topRight: 4.0, bottomLeft: 4.0,
                                                       bottomRight: 4.0)
                                    .fill(Color.clear.opacity(0.7)))
                            .padding(.top, getRelativeHeight(4.0))
                            Button(action: {
                                somethingWentWrongThreeViewModel
                                    .nextScreen = "SomethingWentWrongEightView"
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
                                        .frame(width: getRelativeWidth(327.0),
                                               height: getRelativeHeight(55.0), alignment: .center)
                                        .background(RoundedCorners(topLeft: 8.0, topRight: 8.0,
                                                                   bottomLeft: 8.0,
                                                                   bottomRight: 8.0)
                                                .fill(LinearGradient(gradient: Gradient(colors: [ColorConstants
                                                            .IndigoA7007a,
                                                        ColorConstants
                                                            .Gray902]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing)))
                                        .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0,
                                                y: 4)
                                        .padding(.top, getRelativeHeight(56.0))
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
                            .padding(.top, getRelativeHeight(56.0))
                        }
                    }
                    .frame(width: getRelativeWidth(329.0), height: getRelativeHeight(722.0),
                           alignment: .center)
                    .padding(.top, getRelativeHeight(17.99))
                    .padding(.horizontal, getRelativeWidth(22.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: SomethingWentWrongEightView(),
                                   tag: "SomethingWentWrongEightView",
                                   selection: $somethingWentWrongThreeViewModel.nextScreen,
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

struct SomethingWentWrongThreeView_Previews: PreviewProvider {
    static var previews: some View {
        SomethingWentWrongThreeView()
    }
}
