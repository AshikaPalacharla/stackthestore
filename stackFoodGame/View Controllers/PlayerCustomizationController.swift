//
//  ViewController.swift
//  stackFoodGame
//
//  Created by Nakul Nandhakumar on 5/7/20.
//  Copyright © 2020 Nakul Nandhakumar. All rights reserved.
//

import UIKit
import CoreData


class PlayerCustomizationController: UIViewController {
    
    @IBOutlet weak var CustomPic1: UIImageView!
    @IBOutlet weak var CustomPic2: UIImageView!
    @IBOutlet weak var CustomPic3: UIImageView!
    @IBOutlet weak var CustomPic4: UIImageView!
    @IBOutlet weak var CustomPic5: UIImageView!
    @IBOutlet weak var CustomPic6: UIImageView!
    
    @IBOutlet weak var Pic1: UIImageView!
    @IBOutlet weak var Pic2: UIImageView!
    @IBOutlet weak var Pic3: UIImageView!
    @IBOutlet weak var Pic4: UIImageView!
    @IBOutlet weak var Pic5: UIImageView!
    @IBOutlet weak var Pic6: UIImageView!
    
    @IBOutlet weak var PressPic1: UIButton!
    @IBOutlet weak var PressPic2: UIButton!
    @IBOutlet weak var PressPic3: UIButton!
    @IBOutlet weak var PressPic4: UIButton!
    @IBOutlet weak var PressPic5: UIButton!
    @IBOutlet weak var PressPic6: UIButton!
    
    var tabCount = Int()
    var id = Int()
    var imageName = String()
    var iconName = String()
    
    
    override func viewDidLoad() {
        getData()
        idchecker(id: id)
        tabCountChecker(tabCount: tabCount)
        super.viewDidLoad()
    }
    
    @IBAction func PressPic1(_ sender: Any)
    {
        id = 1
        imageName = "boychef"
        iconName = "boychef"
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
        let newCount = NSManagedObject(entity: Count!, insertInto:  context)
        
        newCount.setValue(id, forKey: "id")
        newCount.setValue(tabCount, forKey: "tabCount")
        newCount.setValue(imageName, forKey: "name")
        newCount.setValue(iconName, forKey: "iconName")
        do {
            try context.save()
            print("Save successful")
            getData()
        } catch {
            print("Save failed")
        }
        idchecker(id: id)
    }
    
    @IBAction func PressPic2(_ sender: Any)
    {
        id = 2
        imageName = "girlchef"
        iconName = "girlchef"
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
         
         let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
         let newCount = NSManagedObject(entity: Count!, insertInto:  context)
         
         newCount.setValue(id, forKey: "id")
         newCount.setValue(tabCount, forKey: "tabCount")
         newCount.setValue(imageName, forKey: "name")
         newCount.setValue(iconName, forKey: "iconName")
         do {
             try context.save()
             print("Save successful")
             getData()
         } catch {
             print("Save failed")
         }
        idchecker(id: id)
    }
    
    @IBAction func PressPic3(_ sender: Any)
    {
        id = 3
        imageName = "frog"
        iconName = "frog"
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
         
         let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
         let newCount = NSManagedObject(entity: Count!, insertInto:  context)
         
         newCount.setValue(id, forKey: "id")
         newCount.setValue(tabCount, forKey: "tabCount")
         newCount.setValue(imageName, forKey: "name")
         newCount.setValue(iconName, forKey: "iconName")
         do {
             try context.save()
             print("Save successful")
             getData()
         } catch {
             print("Save failed")
         }
        idchecker(id: id)
    }
    
    @IBAction func PressPic4(_ sender: Any)
    {
        /*
        Avatar Table

        1 boychef
        2 girlchef
        3 penguin
        
        fetch - avatar -- get only id 4
        
        fetch - player: go to player.first
        
        player.avatar = avatar
        
        save()*/
        
        
        id = 4
        imageName = "penguin"
        iconName = "penguin"
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
         
         let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
         let newCount = NSManagedObject(entity: Count!, insertInto:  context)
         
         newCount.setValue(id, forKey: "id")
         newCount.setValue(tabCount, forKey: "tabCount")
         newCount.setValue(imageName, forKey: "name")
         newCount.setValue(iconName, forKey: "iconName")
         do {
             try context.save()
             print("Save successful")
             getData()
             print(imageName)
             print(iconName)
         } catch {
             print("Save failed")
         }
        idchecker(id: id)
    }
    
    @IBAction func PressPic5(_ sender: Any)
    {
        id = 5
        imageName = "image5"
        iconName = "image5"
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
         
         let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
         let newCount = NSManagedObject(entity: Count!, insertInto:  context)
         
         newCount.setValue(id, forKey: "id")
         newCount.setValue(tabCount, forKey: "tabCount")
         newCount.setValue(imageName, forKey: "name")
         newCount.setValue(iconName, forKey: "iconName")
         do {
             try context.save()
             print("Save successful")
             getData()
         } catch {
             print("Save failed")
         }
        idchecker(id: id)
    }
    
    @IBAction func PressPic6(_ sender: Any)
    {
        id = 6
        imageName = "image6"
        iconName = "image6"
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
         
         let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
         let newCount = NSManagedObject(entity: Count!, insertInto:  context)
         
         newCount.setValue(id, forKey: "id")
         newCount.setValue(tabCount, forKey: "tabCount")
         newCount.setValue(imageName, forKey: "name")
         newCount.setValue(iconName, forKey: "iconName")
         do {
             try context.save()
             print("Save successful")
             getData()
         } catch {
             print("Save failed")
         }
        idchecker(id: id)
    }
    
    @IBAction func NextArrow(_ sender: Any)
    {
        tabCount += 1
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
        let newCount = NSManagedObject(entity: Count!, insertInto:  context)
        
        newCount.setValue(tabCount, forKey: "tabCount")
        newCount.setValue(id, forKey: "id")
        newCount.setValue(imageName, forKey: "name")
        newCount.setValue(iconName, forKey: "iconName")
        do {
            try context.save()
            print("Save successful")
            getData()
        } catch {
            print("Save failed")
        }
        tabCountChecker(tabCount: tabCount)
    }
    
    @IBAction func PreviousArrow(_ sender: Any)
    {
        tabCount += 1
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let Count = NSEntityDescription.entity(forEntityName: "Avatar", in: context)
        let newCount = NSManagedObject(entity: Count!, insertInto:  context)
        
        newCount.setValue(tabCount, forKey: "tabCount")
        newCount.setValue(id, forKey: "id")
        newCount.setValue(imageName, forKey: "name")
        newCount.setValue(iconName, forKey: "iconName")
        do {
            try context.save()
            print("Save successful")
            getData()
        } catch {
            print("Save failed")
        }
        tabCountChecker(tabCount: tabCount)
    }

    func getData()
    {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Avatar")
        request.returnsObjectsAsFaults = false
        do
        {
            let result = try context.fetch(request)
            for data in result as! [NSManagedObject]
            {
                tabCount = data.value(forKey: "tabCount") as! Int
                id = data.value(forKey: "id") as! Int
                imageName = data.value(forKey: "name") as! String
                iconName = data.value(forKey: "iconName") as! String
            }
            print("Data successfully fetched")
        }
        catch
        {
            print("Fetch failed")
        }
    }
    
    func idchecker(id: Int)
    {
        if id == 0 {
            Pic1.isHidden = true
            Pic2.isHidden = true
            Pic3.isHidden = true
            Pic4.isHidden = true
            Pic5.isHidden = true
            Pic6.isHidden = true
        }
        if id == 1 {
            Pic1.isHidden = false
            Pic2.isHidden = true
            Pic3.isHidden = true
            Pic4.isHidden = true
            Pic5.isHidden = true
            Pic6.isHidden = true
        }
        if id == 2 {
            Pic1.isHidden = true
            Pic2.isHidden = false
            Pic3.isHidden = true
            Pic4.isHidden = true
            Pic5.isHidden = true
            Pic6.isHidden = true
        }
        if id == 3 {
            Pic1.isHidden = true
            Pic2.isHidden = true
            Pic3.isHidden = false
            Pic4.isHidden = true
            Pic5.isHidden = true
            Pic6.isHidden = true
        }
        if id == 4 {
            Pic1.isHidden = true
            Pic2.isHidden = true
            Pic3.isHidden = true
            Pic4.isHidden = false
            Pic5.isHidden = true
            Pic6.isHidden = true
        }
        if id == 5 {
            Pic1.isHidden = true
            Pic2.isHidden = true
            Pic3.isHidden = true
            Pic4.isHidden = true
            Pic5.isHidden = false
            Pic6.isHidden = true
        }
        if id == 6 {
            Pic1.isHidden = true
            Pic2.isHidden = true
            Pic3.isHidden = true
            Pic4.isHidden = true
            Pic5.isHidden = true
            Pic6.isHidden = false
        }
    }
    
    func tabCountChecker(tabCount: Int)
    {
        if (tabCount.magnitude % 2) == 0 {
            CustomPic1.isHidden = false
            CustomPic2.isHidden = false
            CustomPic3.isHidden = false
            CustomPic4.isHidden = true
            CustomPic5.isHidden = true
            CustomPic6.isHidden = true
            
            PressPic1.isHidden = false
            PressPic2.isHidden = false
            PressPic3.isHidden = false
            PressPic4.isHidden = true
            PressPic5.isHidden = true
            PressPic6.isHidden = true
        }
        if (tabCount.magnitude % 2) == 1 {
            CustomPic1.isHidden = true
            CustomPic2.isHidden = true
            CustomPic3.isHidden = true
            CustomPic4.isHidden = false
            CustomPic5.isHidden = false
            CustomPic6.isHidden = false
            
            PressPic1.isHidden = true
            PressPic2.isHidden = true
            PressPic3.isHidden = true
            PressPic4.isHidden = false
            PressPic5.isHidden = false
            PressPic6.isHidden = false
        }
    }

}

