----------------------------------------------------------------
-- Copyright (c) 2010-2011 Zipline Games, Inc. 
-- All Rights Reserved. 
-- http://getmoai.com
----------------------------------------------------------------

MOAISim.openWindow ( "tutorial", 320, 480 )

viewport = MOAIViewport.new ()
viewport:setSize ( 320, 480 )
viewport:setScale ( 320, -480 )
viewport:setOffset ( -1, 1 )

layer = MOAILayer.new ()
layer:setViewport ( viewport )
MOAIRenderMgr.pushRenderPass ( layer )

gfxQuad = MOAIGfxQuad2D.new ()
gfxQuad:setTexture ( "moai.png" )
gfxQuad:setRect ( -64, -64, 64, 64 )
gfxQuad:setUVRect(0, 0, 1, 1)

prop = MOAIProp.new ()
prop:setDeck ( gfxQuad )
prop:setLoc(64, 64)
layer:insertProp ( prop )

