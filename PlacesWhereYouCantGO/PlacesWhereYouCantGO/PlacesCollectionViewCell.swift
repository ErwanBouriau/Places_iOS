//
//  PlacesCollectionViewCell.swift
//  PlacesWhereYouCantGO
//
//  Created by Erwan Bouriau on 03/12/2019.
//  Copyright © 2019 Erwan Bouriau. All rights reserved.
//

import UIKit

class PlacesCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var placeImage: UIImageView!
    
    // Enum for card states
    enum CardState {
        case collapsed
        case expanded
    }
    
    // Variable determines the next state of the card expressing that the card starts and collapased
    var nextState:CardState {
        return cardVisible ? .collapsed : .expanded
    }
    
    // Variable for card view controller
    var cardViewController:CardViewController!
    
    // Variable for effects visual effect view
    var visualEffectView:UIVisualEffectView!
    
    // Starting and end card heights will be determined later
    var endCardHeight:CGFloat = 0
    var startCardHeight:CGFloat = 0
    
    // Current visible state of the card
    var cardVisible = false

    // Empty property animator array
    var runningAnimations = [UIViewPropertyAnimator]()
    var animationProgressWhenInterrupted:CGFloat = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCard()
    }
    
    func displayImage(imagesrc: String) {
        placeImage.image = UIImage(named: imagesrc)
    }
    
    func setupCard() {
        // Setup starting and ending card height
        endCardHeight = self.frame.height * 0.75
        startCardHeight = 240
        
        // Add Visual Effects View
        visualEffectView = UIVisualEffectView()
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        visualEffectView.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: screenWidth, height: self.frame.height)
        self.addSubview(visualEffectView)

        // Add CardViewController xib to the bottom of the screen, clipping bounds so that the corners can be rounded
        cardViewController = CardViewController(nibName:"CardViewController", bundle:nil)
        self.addSubview(cardViewController.view)
        cardViewController.view.frame = CGRect(x: 0, y: self.frame.height - startCardHeight, width: self.bounds.width, height: endCardHeight)
        cardViewController.view.clipsToBounds = true

        // Add pan recognizers
        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(PlacesCollectionViewCell.handleCardPan(recognizer:)))

        cardViewController.handleArea.addGestureRecognizer(panGestureRecognizer)
    }
    
    // Handle pan gesture recognizer
    @objc
    func handleCardPan (recognizer:UIPanGestureRecognizer) {
        switch recognizer.state {
        case .began:
            // Start animation if pan begins
            startInteractiveTransition(state: nextState, duration: 0.9)
            
        case .changed:
            // Update the translation according to the percentage completed
            let translation = recognizer.translation(in: self.cardViewController.handleArea)
            var fractionComplete = translation.y / endCardHeight
            fractionComplete = cardVisible ? fractionComplete : -fractionComplete
            updateInteractiveTransition(fractionCompleted: fractionComplete)
        case .ended:
            // End animation when pan ends
            continueInteractiveTransition()
        default:
            break
        }
    }
    
    
    // Animate transistion function
     func animateTransitionIfNeeded (state:CardState, duration:TimeInterval) {
         // Check if frame animator is empty
         if runningAnimations.isEmpty {
             // Create a UIViewPropertyAnimator depending on the state of the popover view
             let frameAnimator = UIViewPropertyAnimator(duration: duration, dampingRatio: 1) {
                 switch state {
                 case .expanded:
                     // If expanding set popover y to the ending height and blur background
                     self.cardViewController.view.frame.origin.y = self.frame.height - self.endCardHeight
                     self.visualEffectView.effect = UIBlurEffect(style: .dark)
    
                 case .collapsed:
                     // If collapsed set popover y to the starting height and remove background blur
                     self.cardViewController.view.frame.origin.y = self.frame.height - self.startCardHeight
                     
                     self.visualEffectView.effect = nil
                 }
             }
             
             // Complete animation frame
             frameAnimator.addCompletion { _ in
                 self.cardVisible = !self.cardVisible
                 self.runningAnimations.removeAll()
             }
             
             // Start animation
             frameAnimator.startAnimation()
             
             // Append animation to running animations
             runningAnimations.append(frameAnimator)
             
             // Create UIViewPropertyAnimator to round the popover view corners depending on the state of the popover
             let cornerRadiusAnimator = UIViewPropertyAnimator(duration: duration, curve: .linear) {
                 switch state {
                 case .expanded:
                     // If the view is expanded set the corner radius to 30
                     self.cardViewController.view.layer.cornerRadius = 30
                     
                 case .collapsed:
                     // If the view is collapsed set the corner radius to 0
                     self.cardViewController.view.layer.cornerRadius = 0
                 }
             }
             
             // Start the corner radius animation
             cornerRadiusAnimator.startAnimation()
             
             // Append animation to running animations
             runningAnimations.append(cornerRadiusAnimator)
             
         }
     }
     
     // Function to start interactive animations when view is dragged
     func startInteractiveTransition(state:CardState, duration:TimeInterval) {
         
         // If animation is empty start new animation
         if runningAnimations.isEmpty {
             animateTransitionIfNeeded(state: state, duration: duration)
         }
         
         // For each animation in runningAnimations
         for animator in runningAnimations {
             // Pause animation and update the progress to the fraction complete percentage
             animator.pauseAnimation()
             animationProgressWhenInterrupted = animator.fractionComplete
         }
     }
     
     // Funtion to update transition when view is dragged
     func updateInteractiveTransition(fractionCompleted:CGFloat) {
         // For each animation in runningAnimations
         for animator in runningAnimations {
             // Update the fraction complete value to the current progress
             animator.fractionComplete = fractionCompleted + animationProgressWhenInterrupted
         }
     }
     
     // Function to continue an interactive transisiton
     func continueInteractiveTransition (){
         // For each animation in runningAnimations
         for animator in runningAnimations {
             // Continue the animation forwards or backwards
             animator.continueAnimation(withTimingParameters: nil, durationFactor: 0)
         }
     }
    

}

