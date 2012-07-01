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
-- MOAI SDK V1.0以前の実装で、互換性の為に残されているにすぎないため、使うべきではありません。
--layer = MOAILayer2D.new ()
layer:setViewport ( viewport )
MOAIRenderMgr.pushRenderPass ( layer )
-- MOAI SDK V1.0以前の実装で、互換性の為に残されているにすぎないため、使うべきではありません。
--MOAISim.pushRenderPass ( layer )

gfxQuad = MOAIGfxQuad2D.new ()
gfxQuad:setTexture ( "moai.png" )
gfxQuad:setRect ( -64, -64, 64, 64 )

prop = MOAIProp.new ()
prop:setDeck ( gfxQuad )
layer:insertProp ( prop )

