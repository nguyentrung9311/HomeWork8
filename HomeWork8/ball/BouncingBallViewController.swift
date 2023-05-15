//
//  BouncingBallViewController.swift
//  HomeWork8
//
//  Created by TrungNV (Macbook) on 14/05/2023.
//

import UIKit

enum BallState {
    case down
    case up
}

class BouncingBallViewController: UIViewController {
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var ivBall: UIImageView!
    
    // Vị trí cao nhất mà quả bóng nảy lên
    var y = 0.0
    // Vị trí biến thiên (điểm chạm)
    var y1 = 0.0
    // Thời gian để quả bóng di chuyển hết quãng đường dài nhất
    let maxTime = 2.0
    // Thời gian để quả bóng di chuyển hét quãng đường từ y đến y1
    var time = 0.0
    // Trạng thái của quả bóng
    var ballState: BallState = .down
    
    override func viewDidLoad() {
        super.viewDidLoad()
        y = ivBall.bounds.height
        y1 = view.bounds.height - ivBall.bounds.height
        ivBall.center = CGPoint(x: view.center.x, y: ivBall.bounds.height / 2.0)
    }
    
    @IBAction func onBackClicked(_ sender: Any) {
        dismiss(animated: true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        ivBall.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            runAnimation(maxTime)
        }
    }
    
    private func runAnimation(_ animTime: Double) {
        UIView.animate(withDuration: animTime, delay: 0, options: ballState == .down ? .curveEaseIn : .curveEaseOut, animations: { [self] in
            ivBall.frame.origin.y = ballState == .down ? y1 : y
            
        }) { [self] _ in
            if ballState == .down {
                y += (y1 - y) / 3.5
                ballState = .up
            } else { ballState = .down }
            
            if y1 - y > 1 {
                time = maxTime - maxTime * (y / y1)
                if time < 0.05 { time = 0.05 }
                runAnimation(time)
            } else {
                btnBack.isHidden = false
            }
        }
    }
}
