//
//  ViewController.swift
//  Session1
//
//  Created by Nihad Ismayilov on 09.04.22.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    private let vm = MainViewModel()
    
    //MARK: - UI Components
    
    let view2:UIView = UIView()
    
    private lazy var view1: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 20
        
        view.frame = CGRect.init(x: 50, y: 50, width: 100, height: 100)
        
        let tapGestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(onClick))
        view.addGestureRecognizer(tapGestureRecognizer)
        view.isUserInteractionEnabled = true
        
        return view
    }()
    
    private lazy var btn1: UIButton = {
        let btn = UIButton()
        btn.setTitle("Button is enabled", for: .normal)
        btn.setTitle("Button is disabled", for: .disabled)
        btn.setTitleColor(UIColor.systemGreen , for: .normal)
        btn.setTitleColor(UIColor.gray, for: .disabled)
        
        btn.frame = CGRect.init(x: 50, y: 200, width: 150, height: 40)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        
        btn.addTarget(self, action: #selector(onBtnClick), for: .touchUpInside)
        
        return btn
    }()
    
    private lazy var image1: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage.init(named: "bird")
        imageView.contentMode = .scaleAspectFit
        
        imageView.frame = CGRect.init(x: 50, y: 250, width: 100, height: 100)
        
        return imageView
    }()
    
    private lazy var slider1: UISlider = {
        let slider = UISlider()
        
        slider.frame = CGRect.init(x: 50, y: 380, width: 300, height: 30)
        slider.addTarget(self, action: #selector(onSliderChange(_:)), for: .valueChanged)
        
        
        return slider
    }()
    
    private lazy var stackView1: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 16
        
        stackView.frame = CGRect.init(
            x: 20,
            y: 40,
            width: self.view.frame.width - 40,
            height: 1000)
        
        stackView.backgroundColor = .lightGray
        
        return stackView
    }()
    
    private lazy var viewChild1: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue

        return view
    }()
    
    private lazy var viewChild2: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed

        return view
    }()
    
    private lazy var viewChild3: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow

        return view
    }()
    private lazy var viewChild4: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue

        return view
    }()
    
    private lazy var viewChild5: UIView = {
        let view = UIView()
        view.backgroundColor = .systemRed

        return view
    }()
    
    private lazy var scrollView1: UIScrollView = {
        let view = UIScrollView()
        
        view.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
        
        view.contentSize = CGSize.init(width: self.view.frame.width, height: self.stackView1.frame.height)
        
        return view
    }()
    
    private lazy var scrollView2: UIScrollView = {
        let view = UIScrollView()
        
        view.frame = CGRect.init(x: 0, y: 0, width: self.view.frame.width, height: 152)
        
        view.contentSize = CGSize.init(width: self.stackView2.frame.width + 20, height: 152 + 16)
        
        view.bounces = false
        view.contentInset  = UIEdgeInsets.init(
            top: 8,
            left: 10,
            bottom: 8,
            right: 10)
        
        return view
    }()
    
    private lazy var stackView2: UIStackView = {
        let stackView = UIStackView()
        
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.spacing = 8
        
        stackView.frame = CGRect.init(
            x: 0,
            y: 0,
            width: 800,
            height: 152)
        
        stackView.backgroundColor = .lightGray
        
        return stackView
    }()
    
    // MARK: - Parent delegates
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        //self.view.addSubview(self.view1)
        //self.view.addSubview(self.btn1)
        //self.view.addSubview(self.image1)
        //self.view.addSubview(self.slider1)
        
        self.view.addSubview(scrollView1)
        
        self.scrollView1.addSubview(stackView1)
        
        self.stackView1.addArrangedSubview(viewChild1)
        self.stackView1.addArrangedSubview(viewChild2)
        self.stackView1.addArrangedSubview(viewChild3)
        self.stackView1.addArrangedSubview(viewChild4)
        self.stackView1.addArrangedSubview(viewChild5)
        self.stackView1.addArrangedSubview(scrollView2)
        
        self.scrollView2.addSubview(stackView2)
        
        for i in 0...8 {
            let childView = self.getRectangleView(152)
            stackView2.addArrangedSubview(childView)
        }
        
        //task2()
    }
    
    func getRectangleView(_ size: Int) -> UIView {
        let view = UIView()
        
        view.backgroundColor = .systemBlue
        
        view.frame = CGRect.init(x: 0, y: 0, width: size, height: size)
        
        return view
    }
    
    @objc func onClick() {
        print("on clicked")
        btn1.isEnabled.toggle()
    }
    
    @objc func onBtnClick() {
        print("on btn clicked")
    }
    
    @objc func onSliderChange(_ slider: UISlider) {
        print("on slider changed: \(slider.value)")
        view1.backgroundColor = UIColor.init(red: CGFloat(slider.value), green: 0.5, blue: 0.5, alpha: 1.0)
    }
    
    func task2() {
        let bestFriend = "Chingiz"
        print(bestFriend)

        let myName = "Nihad"
        let myAddress = "Bineqedi"

        print(myName)
        print(myAddress)

        let randomNum = Int.random(in: 10...20)

        print(Double(randomNum)/4)

        let x = Int.random(in: 0...100)

        print(x)

        print("The number smaller by 22 is: \(x - 22)")
        print("The number bigger by 22 is: \(x + 22)")

        let reminder = x % 2

        print("the reminder of the division by 2 iS \(reminder)")

        let num1 = Int.random(in: 0...100)
        let num2 = Int.random(in: 0...100)
        let num3 = Int.random(in: 0...100)
        let sum = num1 + num2 + num3

        print("the sum of 3 random numbers is \(sum)")

    }
}
