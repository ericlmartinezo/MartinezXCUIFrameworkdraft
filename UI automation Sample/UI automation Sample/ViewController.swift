//
//  ViewController.swift
//  Vapor-XCTest
//
//  Created by Eric Martinez on 12/20/2019.
//  Copyright © 2019 Eric Martinez. All rights reserved.
//

import UIKit

struct MyGitHub: Codable {
    
    let name: String?
    let location: String?
//    let blog: URL?
    let followers: Int?
    let avatarUrl: URL?
    let repos: Int?
    
    private enum CodingKeys: String, CodingKey {
        case name
        case location
//        case blog
        case followers
        case repos = "public_repos"
        case avatarUrl = "avatar_url"
    }
}

class ViewController: UIViewController {
    
    @IBAction func ShowGithubInfo(_ sender: Any) {
        
        let userText = gitUname.text?.lowercased()
        let baseUrl = ProcessInfo.processInfo.environment["BASEURL",  default: "https://api.github.com"]
        print(baseUrl)
        guard let gitUrl = URL(string: baseUrl + "/users/" + userText!) else { return }
        print(gitUrl)
        URLSession.shared.dataTask(with: gitUrl) { (data, response
            , error) in
            
            guard let data = data else { return }
            do {
                
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(MyGitHub.self, from: data)
                
                
                
                DispatchQueue.main.sync {
                    if let gimage = gitData.avatarUrl {
                        let data = try? Data(contentsOf: gimage)
                        let image: UIImage = UIImage(data: data!)!
                        self.gravatarImage.image = image
                    }
                    
                    
                    if let gname = gitData.name {
                        self.name.text = gname
                    }
                    if let glocation = gitData.location {
                        self.location.text = glocation
                    }
                    
                    if let gfollowers = gitData.followers {
                        self.followers.text = String(gfollowers)
                    }
                    
                    if let grepos = gitData.repos {
                        self.blog.text = String(grepos)
                    }
                    self.setLabelStatus(value: false)
                }
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
    }
    @IBOutlet weak var gitUname: UITextField!
    var imageUrl: URL?
    var newImage: UIImage?
    
    @IBOutlet weak var blog: UILabel!
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var followers: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var gravatarImage: UIImageView!
    
    @IBOutlet weak var gname: UILabel!
    @IBOutlet weak var glocation: UILabel!
    @IBOutlet weak var grepos: UILabel!
    @IBOutlet weak var gfollowers: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLabelStatus(value: true)
        overrideUserInterfaceStyle = .dark
    }
    
    func setLabelStatus(value: Bool) {
        name.isHidden = value
        location.isHidden = value
        followers.isHidden = value
        blog.isHidden = value
        gname.isHidden = value
        glocation.isHidden = value
        gfollowers.isHidden = value
        grepos.isHidden = value
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
