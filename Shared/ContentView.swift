//
//  ContentView.swift
//  Shared
//
//  Created by Rajendran Eshwaran on 1/21/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        //visitingCardView()
        //visitingCardView2()
        //visitingCardView3()
        //buttonView()
        txtView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct txtView:View{
    @State private var text:String = ""
    @State private var pwd:String = ""
    @State private var username:String = ""
    @State private var password:String = ""
    @State private var namecomp = PersonNameComponents()
    @State private var fullText: String = "This is some editable text..."

    var body: some View{
        VStack{
            Group{
                TextField("Enter Your Name", text: $text).padding().border(.red, width: 5.0)
                TextField("Enter Your Name", text: $text).padding().textFieldStyle(.roundedBorder).border(.green, width: 2.0)
                TextField("Enter Your Name",text: $text).padding().foregroundColor(.white).background(Capsule()).cornerRadius(5.0).shadow(color: Color.red, radius: 1, x: 0, y: 0)
                TextField("Enter Your Name", text: $text).padding().background(LinearGradient(colors: [Color.red,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)).foregroundColor(.white)
                TextField("Enter Your Name", text: $text).padding().background(LinearGradient(gradient: Gradient(colors: [Color.yellow,Color.red]), startPoint: .topLeading, endPoint: .bottomTrailing)).background(in: Capsule())
                TextField("Enter Your Password",text: $pwd,onEditingChanged: { (chaging) in
                    print("You on EditChanging",chaging)
                })
                TextField("Enter Your Password",text: $pwd,onCommit: { print("You, Pressed the return button")
                })
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .textInputAutocapitalization(.words)
                    .onSubmit {
                        
                    }
                Form {
                    TextField(text: $username, prompt: Text("Required")) {
                        Text("Username")
                    }
                    SecureField(text: $password, prompt: Text("Required")) {
                        Text("Password")
                    }
                }
                
                TextEditor(text: $fullText).background(.gray).foregroundColor(.black)
            }
        }
    }
}
struct buttonView:View{
    @State private var isTap:Bool = false
    var body: some View{
        VStack{
            Group{
                Button(action: {printText()}){
                HStack{
                    Image(systemName: "bookmark.square").resizable().aspectRatio( contentMode: .fit).frame(width: 20, height: 20)
                    Text("BookMark")
                }.padding(10).overlay(RoundedRectangle(cornerRadius: 5.0).stroke(lineWidth: 3))
                }
            
            Button("Simple Button"){
                isTap.toggle()
            }
            .buttonStyle(PlainButtonStyle())
            .background(.red)
            .clipShape(Capsule())
            .foregroundColor(.white)
            
            Button("Plain Button Style"){}.buttonStyle(PlainButtonStyle())
            
            Button(action: {printText()}, label: {
                Text("Clicked")
                    .buttonStyle(.borderedProminent)
            })
            
            Button(role: .destructive, action: {printText()}, label: {Text("Clicked 2")})
            
            Button("Styled Buttons"){}.buttonStyle(BorderlessButtonStyle())
            
            Button("Action New1"){}.tint(.green).buttonStyle(.bordered).controlSize(.large)
            
            Button("Action New2"){}.tint(.red).buttonStyle(.bordered)
            
            Button("Action New3"){}.tint(.black).buttonStyle(.bordered).buttonBorderShape(.capsule)
            
            Button("Action New4"){}.tint(.green).controlSize(.large).buttonStyle(.borderedProminent)
            
            }
            if isTap
            {
                Text("Simple Button Tapped")
            }
        }
    }
    func printText()
    {
        print("Clicked")
    }
}
struct visitingCardView3:View{
    @State private var screen = UIScreen.main.bounds.size
    
    var body: some View{
        VStack(alignment:.leading){
            VStack(alignment:.leading){
                Text("MICHEL JOHN").font(Font.system(size: 30)).padding(.trailing,150)
            Text("Solution Manager")
            }
            Spacer()
            HStack{
                Image(systemName: "house")
                VStack{
                    Text("(Home Phone) 123456677").fontWeight(.light)
                }
            }
            HStack{
                Image(systemName: "phone")
                VStack{
                    Text("(Mobile Phone) 123456677").fontWeight(.light)
                }
            }
            HStack{
                Image(systemName: "faxmachine")
                VStack{
                    Text("(Fax) 784748").fontWeight(.light)
                }
            }
            HStack{
                Image(systemName: "mail")
                VStack{
                    Text("YourEmail@gmail.com").fontWeight(.light)
                }
            }
            Spacer()
        }.frame(width: screen.width, height: screen.height/3)
            .background(.green.opacity(0.2))
        
    }
    
}
struct visitingCardView2:View{
    @State private var screen = UIScreen.main.bounds.size
    var body: some View
    {
        VStack{
            VStack{
                HStack{
                    Image(systemName: "house.circle")
                        .resizable()
                        .clipShape(Circle())
                        .aspectRatio(contentMode: .fit)
                        .background(.yellow)
                        .frame(width: 50, height: 50).padding()
                    Spacer()
                    VStack{
                        Text("ROTHMAN PROPERTIES").foregroundColor(.white)
                            .fontWeight(.bold).font(Font.system(size: 25))
                        Text("A Traditional of Trust, Since 1983")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    Spacer()
                }
                
            }.frame(width: screen.width, height: screen.height/10)
                . background(.black)
            Spacer()
            
            HStack(spacing:10){
                VStack(alignment:.leading){
                    Text("Dwine John Smith").fontWeight(.bold)
                    Text("Your Life Style")
                    Text("(Phone) 123456677").fontWeight(.light)
                    Text("(Fax) 344545444").fontWeight(.light)
                    Text("1003 W King Rd").fontWeight(.light)
                    Text("Texas,Houston,18455").fontWeight(.light)
                    Text("YourName@gmail.com").padding(.top,10)
                }
                Spacer()
                Image("actor")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .frame(width: 60, height: 200)
                    .offset(y: -7)
                    .rotationEffect(.degrees(180))
                    .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0 , z: 0))
            }
        }.frame(width: screen.width, height: screen.height/3).background(.gray.opacity(0.2))
    }
}
struct visitingCardView:View{
    @State private var screen = UIScreen.main.bounds.size
    var body: some View{
        VStack(){
            HStack{
                Image("actor")
                    .resizable()
                    .aspectRatio(contentMode:.fill)
                    .clipShape(Circle())
                    .shadow(radius: 20)
                    .frame(width:100)
                    .offset(x: -50)
                    
                Spacer()
                HStack{
                    VStack{
                        Text("Dwine John Smith").fontWeight(.bold)
                        Text("Your Life Style")
                        Text("(Phone) 123456677").fontWeight(.light)
                        Text("(Fax) 344545444").fontWeight(.light)
                        Text("1003 W King Rd").fontWeight(.light)
                        Text("Texas,Houston,18455").fontWeight(.light)
                        Text("YourName@gmail.com").padding(.top,10)
                    }
                }
                Spacer()
            }
        }.frame(width: screen.width, height: screen.height/4)
            .background(.gray.opacity(0.2))
            .shadow(radius: 10)
    }
}
