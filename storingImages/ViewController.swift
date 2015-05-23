//
//  ViewController.swift
//  storingImages
//
//  Created by Scott Yoshimura on 5/22/15.
//  Copyright (c) 2015 west coast dev. All rights reserved.
//


import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

  /*
        //lets start by creating a url for our image
        //since this will be immutable lets use a let
        let imageURL = NSURL(string: "http://media.liveauctiongroup.net/i/13481/13751086_2.jpg?v=8CF47C518F3F5A0")
        
        //next lets set up a url request. this is saying i will want to make a request at at sometime in the future
        let urlRequest = NSURLRequest(URL: imageURL!)
        
        //we want to make an asynchronous request. we do this alot when working with hte web.
            //we want to is get the contents of the file, put them into an image variable, and then set it to an image which we will put on the users screen. *And we want to do this in the right order.
            //lets set up the asynchronous request. the queue is just the standard cue, one of many possible when running cues. the completion handler is the method that will be run when the process of getting the url is completed, failed or not. there are three variables that are returned from this variable. basic response, the data of the image, and if there has been an error.
        
        //we want to create a connection, then create an asynchronous request, and then run the code below, and the code below will only run when the asynchronous request is complete or errors. this is "multithreading", doing two things at once.
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue(), completionHandler:
            //lets error out this below code and just set up some code
            //<#(NSURLResponse!, NSData!, NSError!) -> Void##(NSURLResponse!, NSData!, NSError!) -> Void#>//
            //we are passing our urlRequest, uses the NSoperationsQue, and when it completes or fails it will give an error
                {
                //we want to grab the above three variables as new names and use them in our method below
                    response, data, error in
                    
                    //lets check to see if there is an error
                    if error != nil {
                        println("there was an error")
                        //we could try to get more dettails
                    } else {
                        //lets create the image variable from the data variable
                        let image0 = UIImage(data: data)
                        
                        //self.viewImage.image = image0
                        //note because we are in a closure, we can use self to access teh viewImage outlet in the view controller. 
                        //now lets save the image for the user so we can access it again without downloading it
                        var documentsDirectory:String? //this will be the folder holding our data
                        
                        //lets create an array of AnyObjects
                        var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                            //the above method will search for directories in the app where we can save files. this will return an array of paths of folders that we can store our documents in
                        
                        if paths.count > 0 {
                            //if paths has objects, then we will use the first one
                            //we will set the documents directory with the first one as a string
                            documentsDirectory = paths[0] as? String
                            //lets provide a path to save the image to. we will force the documentsDirectory
                            var savePath = documentsDirectory! + "/engrave1911.jpg"
                            //lets save the file using NSFileManager, default manager, and create a file at the path with the data from above.
                            NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                            
                            self.viewImage.image = UIImage(named: savePath)
                        }
                        
                    }
                    
                })
   */
        
        
    //now lets just recal the image that is already saved
        var documentsDirectory:String? //this will be the folder holding our data
        
        //lets create an array of AnyObjects
        var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
        //the above method will search for directories in the app where we can save files. this will return an array of paths of folders that we can store our documents in
        
        if paths.count > 0 {
            //if paths has objects, then we will use the first one
            //we will set the documents directory with the first one as a string
            documentsDirectory = paths[0] as? String
            //lets provide a path to save the image to. we will force the documentsDirectory
            var savePath = documentsDirectory! + "/engrave1911.jpg"
            
            self.viewImage.image = UIImage(named: savePath)
        }

        
        
    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

