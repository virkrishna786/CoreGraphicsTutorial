//
//  ParentClass.swift
//  CruzSortMeApp
//
//  Created by Admin media on 1/10/17.
//  Copyright © 2017 Gopal Gupta. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation


class ParentClass : NSObject {
    var navigation: UINavigationController?
    
//    func getYCordinateAccordingToScreenSize(getValue: Float) -> Float {
//        return ((getValue * (UIScreen.main.bounds.size.height))/kHeight)
//    }
//    
//    func getXCordinateAccordingToScreenSize(getValue: Float) -> Float {
//        return ((getValue * (UIScreen.main.bounds.size.width))/kWidth)
//    }
//    
//    // MARk :  SETWIDTH
//    
//    func setWidth(width: Float) -> Float {
//        return (width * (UIScreen.main.bounds.size.height))/kHeight
//    }
//    
//    
//    func setHeight(height: Float) -> Float {
//        return (height * (UIScreen.main.bounds.size.height))/kHeight
//    }
//    
//    func setFont(fontSize: Float)-> Float {
//        return (fontSize * (UIScreen.main.bounds.size.width))/kWidth
//    }
    
    //MARK: VALID PHONE NUMBER CHECK
    
    func  noIsValid(phoneNumber : String) -> Bool {
        
        let phoneRegExp = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegExp)
        
        if phoneTest.evaluate(with: phoneNumber){
            
            return true
        }
        return false
    }
    
    func logout() {
//        defaults.removeObject(forKey: "userId")
//        defaults.removeObject(forKey: "uIDString")
//        defaults.removeObject(forKey: "E_name")
//        defaults.removeObject(forKey: "email")
//        defaults.removeObject(forKey: "mobile")
//        defaults.removeObject(forKey: "token")
//        defaults.removeObject(forKey: "dob")
//        defaults.removeObject(forKey: "dom")
//        defaults.removeObject(forKey: "isPwdChanged")
//        defaults.removeSuite(named: "pId")
        print("logOut")
        
    }
    
    func convertDateFormater(date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-YYYY"//this your string date format
       // dateFormatter.timeZone = TimeZone(identifier: "UTC")
        let date = dateFormatter.date(from: date)
        dateFormatter.dateFormat = "dd-MMM-yyyy"///this is you want to convert format
        let timeStamp = dateFormatter.string(from: date!)
       // dateFormatter.timeZone = TimeZone(identifier: "UTC")
        let dates = dateFormatter.date(from: timeStamp)
        return dates!
    }
    
    func  changeStringToDate(dateString : String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy" //Your date format
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00") //Current time zone
        let date = dateFormatter.date(from: dateString) //according to date format your date string
        print(date ?? "") //Convert String to Date
        return date!
    }
    
    func convertdateToString (date: Date) -> String {
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: date)
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "dd-MMM-yyyy"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        return myStringafd
    }
    
    
    
    func convertDateFormateForNewHomePage(date: Date) -> String {
        let formatter = DateFormatter()
        // initially set the format based on your datepicker date
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        let myString = formatter.string(from: date)
        // convert your string to date
        let yourDate = formatter.date(from: myString)
        //then again set the date format whhich type of output you need
        formatter.dateFormat = "yyyy-MM-dd"
        // again convert your date to string
        let myStringafd = formatter.string(from: yourDate!)
        return myStringafd
    }
    
    func convertDateFormateForAge(string: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        let date = dateFormatter.date(from: string)!
        dateFormatter.dateFormat = "MMM, dd"
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    
    func  convertDateFormateForLineChart(string: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        let date = dateFormatter.date(from: string)!
        dateFormatter.dateFormat = "dd-MMM"
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    
    
    
    func convertStringToDate(date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-mm-yyyy" //Your date format
        // dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00") //Current time zone
        let date = dateFormatter.date(from: "dd-MMM-yyyy") //according to date format your date string
        print(date ?? "") //Convert String to Date}
        return date!
    }
    func convertStringToDateTo(date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy" //Your date format
        // dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00") //Current time zone
        let date = dateFormatter.date(from: "dd-MMM-yyyy") //according to date format your date string
        print(date ?? "") //Convert String to Date}
        return date!
    }
    
    
    func convertTimeStringToDate(time: String) -> Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm" //Your date format
        //dateFormatter.timeZone = TimeZone(abbreviation: "GMT+5:30")
        dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
       //dateFormatter.timeZone = TimeZone(abbreviation: "GMT+0:00") //Current time zone
        let date = dateFormatter.date(from: time) //according to date format your date string
        print(date ?? "") //Convert String to Date}
        return date!
        
    }
    
    func convertDateFormatForPostNotifcation(postNotificationTIme: String) -> String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd-MMM-yyy HH:mm"
    let date = dateFormatter.date(from: postNotificationTIme)!
    dateFormatter.dateFormat = "HH:mm"
    let dateString = dateFormatter.string(from: date)
    return dateString
    
    }
    
    func UTCToLocal(date:String, fromFormat: String, toFormat: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = fromFormat
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+5:30")
        
        let dt = dateFormatter.date(from: date)
        dateFormatter.timeZone = TimeZone.current
        dateFormatter.dateFormat = toFormat
        return dateFormatter.string(from: dt!)
    }
    
    func convertDateFormatForPostNotifcations(postNotificationTIme: String) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "h:mma"
        dateFormatter.timeZone = TimeZone(abbreviation: "GMT+5:30")
        let date = dateFormatter.date(from: postNotificationTIme)!
       // dateFormatter.timeZone = TimeZone(abbreviation: "GMT+5:30")
        dateFormatter.dateFormat = "HH:mm"
        let dateString = dateFormatter.string(from: date)
        return dateString
        
    }
    
    func convertdateFormat(string: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMM-yyyy"
        let date = dateFormatter.date(from: string)!
        dateFormatter.dateFormat = "dd-MMM-YYYY"
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    
    func makeCircularImage(image: UIImageView) {
       
    }
    
    // MARK:- image Resize
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
    
    func setBlankView(label : UILabel)  -> UILabel{
        
        var customView = UILabel()
        customView = UILabel(frame: CGRect(x: 50, y: 200, width: 200, height: 30))
        customView.backgroundColor = UIColor.clear
        customView.text = "No Record Found"
        customView.textAlignment = NSTextAlignment.center
        customView.textColor = UIColor.white
        return customView
    }
   
    func msg(message: String, title: String = "")
        {
            let alertView = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Ok", style: .default, handler: { (action) in
                if message == "" {
                   // navigationController?.popToRootViewController(animated: true)
                }else {
                    
                }
            }))
            
            UIApplication.shared.keyWindow?.rootViewController?.present(alertView, animated: true, completion: nil)
        }
    
    
    func backButtonForNavigation()-> UIButton {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        button.setImage(UIImage(named: "backButtonBlank"), for: UIControlState.normal)
        button.setImage(UIImage(named: "backButtonFilled"), for: UIControlState.highlighted)
        return button
    }
    
  
    func showAlert(){
        let Alert = ParentClass()
        Alert.msg(message: "please check the internet connection", title: "Alert")
    }
    
    func showAlertWithApiFailure() {
    let Alert = ParentClass()
      Alert.msg(message: "Some thing went wrong" ,title:  "Alert")
}
    
    func showAlertWithApiMessage(message: String){
        let Alert = ParentClass()
        Alert.msg(message: message ,title:  "Alert")
    }
    
    func setSideMenu(customView:UIView) -> UIView{
        let customView = UIView()
        let screenSize: CGRect = UIScreen.main.bounds
       // let screenwidth = screenSize.width
        let screenheight = screenSize.height
          print("sdsfgds",screenheight)
        if (screenheight == 568) {
            customView.frame = CGRect(x: 200, y: 61, width: 300, height: 734)
        }else if (screenheight == 667) {
            customView.frame = CGRect(x: 200, y: 61, width: 300, height: 734)
        }else {
            customView.frame = CGRect(x: 200, y: 61, width: 300, height: 734)
        }
        customView.backgroundColor = UIColor.clear
        return customView
    }
    
    //MARK: - validate email
    
    func validateEmailAddress(yourEmail:String)-> Bool{
        let emailRegex:String = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
        let email:NSPredicate = NSPredicate(format: "SELF MATCHES %@",emailRegex);
        return email.evaluate(with: yourEmail);
    }
    
    //MARK: - Find out thumbnail from video path
    
    func getThumbnailFrom(path: URL) -> UIImage? {
        do {
            let asset = AVURLAsset(url: path , options: nil)
            let imgGenerator = AVAssetImageGenerator(asset: asset)
            imgGenerator.appliesPreferredTrackTransform = true
            let cgImage = try imgGenerator.copyCGImage(at: CMTimeMake(0, 1), actualTime: nil)
            let thumbnail = UIImage(cgImage: cgImage)
            return thumbnail
        } catch let error {
            print("*** Error generating thumbnail: \(error.localizedDescription)")
            return nil
        }
    }
    
    
    
    //MARK: - check phone 
    
    
    func validatePhone(yourNumber: String)->Bool
    {
        NSLog("%@",yourNumber);
        let PHONE_REGEX = "[0-9]{6,14}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: yourNumber)
        return result
    }
    //MARK: CHECK INTERNET CONNECTION
    
//    func checkInternetConnection() -> Bool {
//        
//        let  reachability: Reachability
//        do {
//            reachability = try Reachability.NetworkStatus
//            //  try reachability.startNotifier()
//            
//        } catch {
//            print("Unable to create Reachability")
//            return false
//        }
//        
//        
//        //       NSNotificationCenter.defaultCenter().addObserver(self, selector:#selector(CommonClass.checkForReachability(_:)), name: ReachabilityChangedNotification, object: nil);
//        if(reachability.currentReachabilityStatus ==  .NotReachable)
//        {
//            return false
//        }
//        else
//        {
//            return true
//        }
//        
//    }
//    

    
}


