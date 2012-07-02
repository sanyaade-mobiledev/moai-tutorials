MOAIViewportの座標系を変更する方法を解説します。

	viewport = MOAIViewport.new ()
	viewport:setSize ( 320, 480 )
	viewport:setScale ( 320, -480 )
	viewport:setOffset ( -1, 1 )

デフォルトでは、座標の中心はレイヤーの中央にあります。
また、x方向に座標をプラスすると右側に、y方向に座標をプラスする上側に移動します。

MOAIでは、座標系を変更する事が可能です。
上記のコードでは、スケールを反対にする事でy方向の座標をひっくり返しています。
また、offsetを指定する事で、座標の原点を左上原点に変更しています。

	gfxQuad = MOAIGfxQuad2D.new ()
	gfxQuad:setTexture ( "moai.png" )
	gfxQuad:setRect ( -64, -64, 64, 64 )
	gfxQuad:setUVRect(0, 0, 1, 1)

ビューポートの座標系を反対にしただけだと、オブジェクトの表示も反対になります。
上記のsetUVRect関数によって、UVマッピングを適切に設定します。