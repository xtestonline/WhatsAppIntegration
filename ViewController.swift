//
//  ViewController.swift
//  WhatsAppIntegration
//
//  Created by Suraj MAC2 on 2/26/16.
//  Copyright © 2016 supaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Generals
    
    var urlToGo = NSURL(string: "whatsapp://send?text=Hello%20Friends%2C%20Sharing%20some%20data%20here%20On%20WhatsApp%20through%20another%20app!")

    
    //Controlls
    
    
    
    //Let's Play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "Hello Friends, Sharing some data here... ! With link \n\n http://www.google.com , This sample app was created by Suraj"
        let urlStringEncoded = urlString.stringByAddingPercentEncodingWithAllowedCharacters(.URLQueryAllowedCharacterSet())
        //URLHostAllowedCharacterSet
        urlToGo  = NSURL(string: "whatsapp://send?text=\(urlStringEncoded!)")
        print(urlToGo)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//TODO: - Send to WhatsApp Button click
    @IBAction func btnSendTextonlyClick(sender: AnyObject) {
        
        //Send only text goes here
        
        if UIApplication.sharedApplication().canOpenURL(urlToGo!){
            UIApplication.sharedApplication().openURL(urlToGo!)
        }else{
            let alertController = UIAlertController(title: "App Alert", message: "Whatsapp is not install on your device", preferredStyle: .Alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
            
            alertController.addAction(defaultAction)            
            presentViewController(alertController, animated: true, completion: nil)
   
        }
        
    }
    
    
    @IBAction func btnSendImageOnlyClick(sender: AnyObject) {
        
        //Send only image goes here
    }
    
}

