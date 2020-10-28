//
//  ViewController.swift
//  testSwiftDemo
//
//  Created by csk on 2020/7/23.
//  Copyright © 2020 csk. All rights reserved.
//

import UIKit
//import RxCocoa
import RxSwift
//import Ta
//var button:UIButton?
import YYKit
import LocalAuthentication

var table = UITableView()

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
//        let aa = 70;
        let cc = "1";
        let bb:Int = Int(cc)!
        
//        let d:Int = Int(cc)!
        
        let a:Int = bb + 1
        
        print(bb,a)
        
        
        self.test()
        
//        let nd = self.aa(name: "ddd", value: "ad")
        
        let button = UIButton.init(type: UIButton.ButtonType.custom)
        button.frame = CGRect.init(x: 100, y: 100, width: 100, height: 30)
        button.setTitle("1233", for:UIControl.State.normal)
//        button?.addTarget(self, action:#selector(click(bt:button!)), for: UIControl.Event.touchUpInside)
//        button.add
        button.addTarget(self, action: #selector(click(bt:)), for: UIControl.Event.touchUpInside)
        button.backgroundColor = UIColor.red
        self.view.addSubview(button)
        
//        self.creatTable()
//        
//        self.jianbian()
        
//        self.labelKit()
    }

    
    @objc func click(bt:UIButton) -> Void {
        print(bt.titleLabel!.text ?? "222")
//        self.face()
        self.labelKit()
    }
    
    func test() -> Void {
        var names = ["ann","fsss","wsss","ssss",2] as [Any]
        
        names[1] = "1111"
        
        names.insert("String", at: 1)
        
        for name in names {
            print("hello,\(name)")
        }
    }
    
    func aa(name:String,value:String) -> String {
        return "\(name) + \(value)"
    }
    

    func creatTable() -> Void {
        table = UITableView.init(frame: CGRect.init(x: 0, y: 400, width: 300, height: 300), style: UITableView.Style.plain)
        table.delegate = self
        table.dataSource = self
        table.register(UINib.init(nibName: "TableViewCell5", bundle: nil), forCellReuseIdentifier: "aa")
        self.view.addSubview(table)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aa", for: indexPath) as! TableViewCell5
        
        cell.lll.text = String(indexPath.row)
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func face() -> Void {
        let lacon = LAContext.init()
        lacon.localizedFallbackTitle = ""
        let issupport:Bool = lacon .canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: nil)
        if issupport {
            lacon .evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "0000") { (s, error) in
                if s {
                    print("验证成功")
                }else
                {
                    let _:String = self.errorMsg(error: error! as NSError)
                }
            }
        }else
        {
            
        }
    }
    
    func errorMsg(error:NSError) -> String {
        if error.code == -8 {
            return "TouchID尝试次数或FaceID尝试次数，已被锁"
        }else if error.code == -7 {
            return "未开启TouchID权限(没有可用的指纹)或FaceID权限未开启"
        }else if error.code == -6 {
            return "iPhoneX设置里面没有开启FaceID权限/非iPhoneX手机且该手机不支持TouchID(如iPhone5、iPhone4s)"
        }else
        {
            return "其他问题"
        }
    }
    
    func jianbian() -> Void {
        let view:UIView = UIView.init(frame: CGRect.init(x: 210, y: 100, width: 100, height: 100))
        
        self.view.addSubview(view)
        
        
        let circle:CAShapeLayer = CAShapeLayer.init()
        let path:UIBezierPath = UIBezierPath.init(arcCenter: CGPoint.init(x: 50, y: 50), radius: 40, startAngle: CGFloat(-M_PI_2), endAngle: CGFloat(-M_PI_2)+CGFloat(M_PI*2), clockwise: true)
        circle.path = path.cgPath
//        circle.position = CGPoint.init(x: 10, y: 10)
        circle.fillColor = UIColor.clear.cgColor
        circle.lineWidth = 10
        
        
        circle.strokeColor = UIColor.red.cgColor
        circle.strokeStart = 0.0
        circle.strokeEnd = 1.0
        circle.frame = view.bounds
//        view.layer .addSublayer(circle)
        

        let gra:CAGradientLayer = CAGradientLayer.init()
        gra.frame = CGRect.init(x: 50, y: 0, width: 50, height: 100)
//        view.layer .addSublayer(gra)
        
        gra.startPoint = CGPoint.init(x: 1, y: 0)
        gra.endPoint = CGPoint.init(x: 1, y: 1)
        
        gra.colors = [UIColor.purple.cgColor,UIColor.yellow.cgColor]
//        gra.locations = [1.0,1.0]
//        gra.cornerRadius = 50
        
        let gradientLayer:CALayer = CALayer.init();
        gradientLayer.frame = view.bounds;
        
        view.layer .addSublayer(gradientLayer)
        
        gradientLayer .addSublayer(gra)
        
        
        gra.mask = circle
        
        
        let gra2:CAGradientLayer = CAGradientLayer.init()
        gra2.frame = CGRect.init(x: 0, y: 0, width: 50, height: 100)
        
        gra2.startPoint = CGPoint.init(x: 0, y: 1)
        gra2.endPoint = CGPoint.init(x: 0, y: 0)
        
        gra2.colors = [UIColor.yellow.cgColor,UIColor.purple.cgColor]
//        gra2.mask = circle
        gradientLayer .addSublayer(gra2)
    }

    func labelKit() -> Void {
//        let label:YYLabel = YYLabel.init()
//        label.text = "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000"
//        label.font = UIFont.systemFont(ofSize: 17)
//        label.textColor = UIColor.black
//        label.numberOfLines = 0
//        label.textVerticalAlignment = YYTextVerticalAlignment.top
//        label.frame = CGRect.init(x: 0, y: 0, width: 100, height: 60)
//        self.view.addSubview(label)
//        let ex:NSMutableAttributedString = NSMutableAttributedString.init(string: "...展开")
//        ex.font = label.font
//
////        let high:NSRange = ex.st//Range.init(NSRange.init(location: ex.length - 2, length: 2), in: ex.string)!
//        ex .setColor(UIColor.blue, range: NSRange.init(location: 0, length: ex.length - 2))
//
//        let light:YYTextHighlight = YYTextHighlight.init()
//        light .setFont(label.font)
//        light .setColor(UIColor.yellow)
//        [light .tapAction]
        let vc:ViewController2 = ViewController2.init()
        vc.modalPresentationStyle = UIModalPresentationStyle.fullScreen//UIModalPresentationFullScreen
        self.present(vc, animated: true) {
//
            var array:NSArray = [1,2,3]
            var dic = [Int:String]()
            self.ablock(des: "123") { (value) -> (Void) in
                
            }
        }
    }
    
    func ablock(des name:String,suc:(String) -> (Void)) -> Void {
//        suc("1")
//        var array:[String] = ["1,2,3"]
        
        let num:(age:Int, String,sc:Double) = (1,"2",3.0)
        print(num.0,num.age)
        
        var (a,b,c) = (1,2,3)
        (a,b) = (b,a)
        
        suc(name)
    }
    
}

