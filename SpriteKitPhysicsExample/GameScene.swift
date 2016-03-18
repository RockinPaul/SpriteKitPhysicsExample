//
//  GameScene.swift
//  SpriteKitPhysicsExample
//
//  Created by Pavel on 18.03.16.
//  Copyright (c) 2016 Pavel Zarudnev. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    override func didMoveToView(view: SKView)
    {
        SceneSetting()
        //SKSpriteNodeDemo()
        //SKShapeNodeDemo()
        //SKLabelNodeDemo()
        //CreatePhysics()
        PhysicsProperties()
    }
    
    
    func SceneSetting()
    {
        self.backgroundColor = SKColor.orangeColor()
        self.physicsWorld.gravity = CGVectorMake(0, -1);
    }
    
    
    func PhysicsProperties()
    {
        let RotateAngle  = 10 * (2 * M_PI)/360
        
        let Opora1 = SKShapeNode(rect: CGRectMake(-150/2, -10, 150, 20))
        Opora1.position = CGPointMake(100, 200)
        Opora1.strokeColor = SKColor.greenColor()
        Opora1.fillColor = SKColor.greenColor()
        Opora1.name = "Opora1"
        Opora1.physicsBody = SKPhysicsBody(rectangleOfSize: Opora1.frame.size)
        Opora1.physicsBody?.dynamic = false
        Opora1.zRotation = CGFloat(-RotateAngle)
        self.addChild(Opora1)
        
        let Opora2 = SKShapeNode(rect: CGRectMake(-150/2, -10, 150, 20))
        Opora2.position = CGPointMake(468, 200)
        Opora2.strokeColor = SKColor.redColor()
        Opora2.fillColor = SKColor.redColor()
        Opora2.name = "Opora2"
        Opora2.physicsBody = SKPhysicsBody(rectangleOfSize: Opora2.frame.size)
        Opora2.physicsBody?.dynamic = false
        Opora2.zRotation  = CGFloat(RotateAngle)
        self.addChild(Opora2)
        
        let Opora3 = SKShapeNode(rect:CGRectMake (-568/2, -10, 568, 20))
        Opora3.position = CGPointMake(568/2, 10)
        Opora3.strokeColor = SKColor.yellowColor()
        Opora3.fillColor = SKColor.yellowColor()
        Opora3.name = "Opora3"
        Opora3.physicsBody = SKPhysicsBody(rectangleOfSize: Opora3.frame.size)
        Opora3.physicsBody?.dynamic = false
        self.addChild(Opora3)
        
        let Circle1 = SKShapeNode(circleOfRadius: 15)
        Circle1.position = CGPointMake(250, 280)
        Circle1.strokeColor = SKColor.whiteColor()
        Circle1.fillColor = SKColor.blackColor()
        Circle1.name = "Circle1"
        Circle1.physicsBody = SKPhysicsBody(circleOfRadius: 15)
        Circle1.physicsBody?.restitution = 0
        self.addChild(Circle1)
        
        let Circle2 = SKShapeNode(circleOfRadius: 15)
        Circle2.position = CGPointMake(310, 280)
        Circle2.strokeColor = SKColor.whiteColor()
        Circle2.fillColor = SKColor.purpleColor()
        Circle2.name = "Circle2"
        Circle2.physicsBody = SKPhysicsBody(circleOfRadius: 15)
        Circle2.physicsBody?.restitution = 0.7
        self.addChild(Circle2)
        
        let Quad1 = SKShapeNode(rect: CGRectMake (-30/2, -30/2, 30, 30))
        Quad1.position = CGPointMake(50, 320)
        Quad1.strokeColor = SKColor.whiteColor()
        Quad1.fillColor = SKColor.whiteColor()
        Quad1.name = "Quad1"
        Quad1.physicsBody = SKPhysicsBody(rectangleOfSize: Quad1.frame.size)
        Quad1.physicsBody?.friction = 1
        self.addChild(Quad1)
        
        let Quad2 = SKShapeNode(rect: CGRectMake (-30/2, -30/2, 30, 30))
        Quad2.position = CGPointMake(518, 320)
        Quad2.strokeColor = SKColor.blackColor()
        Quad2.fillColor = SKColor.blackColor()
        Quad2.name = "Quad2"
        Quad2.physicsBody = SKPhysicsBody(rectangleOfSize: Quad2.frame.size)
        Quad2.physicsBody?.friction = 0.1
        self.addChild(Quad2)
    }
    
    func CreatePhysics()
    {
        let RectanglePhysics = SKShapeNode(rect: CGRectMake(-580/2, -10, 580, 20))
        RectanglePhysics.position = CGPointMake(280, 40)
        RectanglePhysics.fillColor = SKColor.whiteColor()
        RectanglePhysics.name = "Rectangle"
        RectanglePhysics.physicsBody = SKPhysicsBody(rectangleOfSize: RectanglePhysics.frame.size)
        RectanglePhysics.physicsBody?.dynamic = false
        self.addChild(RectanglePhysics)
        
        let CirclePhysics = SKShapeNode(circleOfRadius: 40)
        CirclePhysics.position = CGPointMake(100, 160)
        CirclePhysics.strokeColor = SKColor.greenColor()
        CirclePhysics.lineWidth = 5;
        CirclePhysics.name = "Circle"
        CirclePhysics.physicsBody = SKPhysicsBody(circleOfRadius: 40)
        CirclePhysics.physicsBody?.dynamic = true
        self.addChild(CirclePhysics)
        
        let Texture = SKTexture(imageNamed: "DerevoOpora")
        let TexturePhysics = SKSpriteNode(texture: Texture)
        TexturePhysics.position = CGPointMake(200, 180)
        TexturePhysics.size = CGSizeMake(100, 30)
        TexturePhysics.name = "TexturePhysics"
        TexturePhysics.physicsBody = SKPhysicsBody(rectangleOfSize: TexturePhysics.frame.size)
        TexturePhysics.physicsBody?.dynamic = true
        self.addChild(TexturePhysics)
        
        let TrianglePath = UIBezierPath()
        TrianglePath.moveToPoint(CGPointMake(0, 0))
        TrianglePath.addLineToPoint(CGPointMake(-50, -100))
        TrianglePath.addLineToPoint(CGPointMake(50, -100))
        TrianglePath.addLineToPoint(CGPointMake(0, 0))
        
        let TrianglePhysics = SKShapeNode(path: TrianglePath.CGPath)
        TrianglePhysics.position = CGPointMake(400, 190)
        TrianglePhysics.lineWidth = 2
        TrianglePhysics.strokeColor = SKColor.blackColor()
        TrianglePhysics.fillColor = SKColor.blueColor()
        TrianglePhysics.name = "Triangle"
        TrianglePhysics.physicsBody = SKPhysicsBody(polygonFromPath: TrianglePath.CGPath)
        TrianglePhysics.physicsBody?.dynamic = true
        self.addChild(TrianglePhysics)
        
        let LabelPhysics = SKLabelNode(text: "Xcode")
        LabelPhysics.position = CGPointMake(500, 200)
        LabelPhysics.fontSize = 22;
        LabelPhysics.physicsBody = SKPhysicsBody(edgeLoopFromRect: CGRectMake(-25, -25, 50, 50))
        LabelPhysics.name = "Label"
        self.addChild(LabelPhysics)
    }
    
    
    func SKSpriteNodeDemo()
    {
        let Texture = SKTexture(imageNamed: "desert_BG")
        
        let BackgroundSprite = SKSpriteNode(texture: Texture)
        BackgroundSprite.size = CGSizeMake(640, 320)
        BackgroundSprite.position = CGPointMake(0, 0)
        BackgroundSprite.anchorPoint = CGPointMake(0, 0)
        BackgroundSprite.name = "BackgroundSprite"
        self.addChild(BackgroundSprite)
        
        let SimpleSprite = SKSpriteNode(color: UIColor.blueColor(), size: CGSizeMake(50, 50))
        SimpleSprite.position = CGPointMake(200, 150)
        SimpleSprite.zPosition = 1;
        SimpleSprite.name = "SimpleSprite"
        self.addChild(SimpleSprite)
        
        let ImageSprite = SKSpriteNode(imageNamed: "DerevoOpora")
        ImageSprite.position = CGPointMake(250, 50)
        ImageSprite.size = CGSizeMake(100, 15)
        ImageSprite.name = "ImageSprite"
        self.addChild(ImageSprite)
    }
    
    
    func SKShapeNodeDemo()
    {
        let Circle = SKShapeNode(circleOfRadius: 20)
        Circle.position = CGPointMake(50, 200)
        Circle.lineWidth = 10
        Circle.strokeColor = SKColor.blueColor()
        Circle.fillColor = SKColor.redColor()
        Circle.name = "Circle"
        self.addChild(Circle)
        
        let Quad = SKShapeNode(rect: CGRectMake(0, 0, 50, 50))
        Quad.position = CGPointMake(100, 200)
        Quad.lineWidth = 4
        Quad.strokeColor = SKColor.whiteColor()
        Quad.fillColor = SKColor.blackColor()
        Quad.name = "Quad"
        self.addChild(Quad)
        
        let Ellips = SKShapeNode(ellipseInRect: CGRectMake(0, 0, 50, 90))
        Ellips.position = CGPointMake(200, 200)
        Ellips.lineWidth = 2
        Ellips.strokeColor = SKColor.greenColor()
        Ellips.fillColor = SKColor.purpleColor()
        Ellips.glowWidth = 5
        Ellips.name = "Ellips"
        self.addChild(Ellips)
        
        let RoundedRectPath = UIBezierPath(roundedRect: CGRectMake(0, 0, 50, 50), cornerRadius: 12)
        let RoundedRect = SKShapeNode(path: RoundedRectPath.CGPath, centered:true)
        RoundedRect.position = CGPointMake(50, 100)
        RoundedRect.lineWidth = 2
        RoundedRect.strokeColor = SKColor.blueColor()
        RoundedRect.fillColor = SKColor.redColor()
        RoundedRect.name = "RoundedRect"
        self.addChild(RoundedRect)
        
        let TrianglePath = UIBezierPath()
        TrianglePath.moveToPoint(CGPointMake(0, 0))
        TrianglePath.addLineToPoint(CGPointMake(-25, -50))
        TrianglePath.addLineToPoint(CGPointMake(25, -50))
        TrianglePath.addLineToPoint(CGPointMake(0, 0))
        
        let Triangle = SKShapeNode(path: TrianglePath.CGPath, centered: true)
        Triangle.position = CGPointMake(200, 70)
        Triangle.lineWidth = 2
        Triangle.strokeColor = SKColor.blackColor()
        Triangle.fillColor = SKColor.blueColor()
        Triangle.name = "Triangle"
        self.addChild(Triangle)
    }
    
    
    func SKLabelNodeDemo()
    {
        let First = SKLabelNode(fontNamed: "Chalkduster")
        First.position = CGPointMake(280, 200)
        First.fontSize = 25;
        First.fontColor = SKColor.whiteColor()
        First.color = SKColor.blueColor()
        First.colorBlendFactor = 0.5
        First.text = "Habra Habr!"
        First.horizontalAlignmentMode = SKLabelHorizontalAlignmentMode.Center
        self.addChild(First)
        
        let Second = SKLabelNode(text: "Романов-Кошкин-Захарьин-Голштейн-Готторпский")
        Second.fontName = "Chalkboard SE Bold"
        Second.fontColor = SKColor.blackColor()
        Second.position = CGPointMake(280, 50)
        Second.fontSize = 20
        self.addChild(Second)
    }
}
