このソースコードは、最も簡単なMOAIのサンプルです。
以下に解説します。

	MOAISim.openWindow ( "tutorial", 320, 480 )

MOAISimクラスは、MOAI-Frameworkの動作を操作するためのクラスです。
まず、あなたはウインドウを起動します。

引数にはタイトル、画面のサイズを指定します。

デスクトップアプリケーションの場合、引数の画面サイズがそのまま使用されます。
モバイルアプリケーションの場合、引数に設定した画面サイズが使用されるわけではなく、
端末固有の画面サイズが適用されます。

	viewport = MOAIViewport.new ()
	viewport:setSize ( 320, 480 )
	viewport:setScale ( 320, 480 )

次に、ビューポートを生成します。

MOAIのクラスは、new関数でインスタンス化して使用します。
ここでは、MOAIViewportのオブジェクトを生成します。

setSize関数では、画面上のサイズを指定します。

setScale関数では、ビューポートのスケールを指定します。
1対1の場合は画面と表示のスケールは一致します。

MEMO:
インスタンス化したオブジェクトは、userdata型となります。
インタフェースは、metatableの__indexによって定義されていますので、
__indexのプロパティを列挙する事で内容を確認できます。

	layer = MOAILayer.new ()
	layer:setViewport ( viewport )
	MOAIRenderMgr.pushRenderPass ( layer )

次にMOAILayerオブジェクトを作成します。
MOAILayerのにはビューポートを設定します。
MOAILayerは、MOAIPropを描画するレイヤーの役割を果たします。

MEMO:
MoaiSDKのサンプルではMOAILayer2D,MOAIProp2Dを使用しています。
しかし、これらのクラスはV1.0以前の互換性を確保する為に残されている非推奨なクラスです。
また、MOAITextBoxなどでは2Dインタフェースが用意されていません。

http://getmoai.com/forums/post3003.html?hilit=moaiTextBox2d#p3003

	gfxQuad = MOAIGfxQuad2D.new ()
	gfxQuad:setTexture ( "moai.png" )
	gfxQuad:setRect ( -64, -64, 64, 64 )
	
	prop = MOAIProp.new ()
	prop:setDeck ( gfxQuad )
	layer:insertProp ( prop )

最後に、MOAIDeckとMOAIPropオブジェクトを作成します。

MOAIDeckは描画の為の基本クラスです。
MOAIGfxQuad2Dは、MOAIDeckを継承したクラスで、Textureを描画するシンプルなクラスです。

MOAIPropは、MOAIで一番重要なクラスです。
オブジェクトの描画、移動などを行うために使用します。
MOAIPropにはMOAIDeckを設定して描画します。

最後に、MOAILayerオブジェクトにMOAIPropを追加する事で描画されます。
