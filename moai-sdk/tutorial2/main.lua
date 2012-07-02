----------------------------------------------------------------
-- Copyright (c) 2010-2011 Zipline Games, Inc. 
-- All Rights Reserved. 
-- http://getmoai.com
----------------------------------------------------------------

MOAISim.openWindow ( "tutorial", 320, 480 )

viewport = MOAIViewport.new ()
viewport:setSize ( 320, 480 )
viewport:setScale ( 320, 480 )

layer = MOAILayer.new ()
layer:setViewport ( viewport )
MOAIRenderMgr.pushRenderPass ( layer )

gfxQuad = MOAIGfxQuad2D.new ()
gfxQuad:setTexture ( "moai.png" )
gfxQuad:setRect ( -64, -64, 64, 64 )

prop = MOAIProp.new ()
prop:setDeck ( gfxQuad )
layer:insertProp ( prop )

prop:setLoc(-100, -100, 0)
prop:setRot(0, 0, 90)
prop:setColor(1, 1, 0.5, 1)
prop:setScl(0.5, 0.5, 1)

prop:moveLoc(100, 50, 0, 3)
prop:moveRot(0, 0, 360, 3)
prop:moveColor(-1, -1, -0.5, -1, 3)
prop:moveScl(1, 1, 0, 3)
