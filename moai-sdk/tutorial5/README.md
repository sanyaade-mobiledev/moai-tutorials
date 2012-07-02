フレーム毎のゲームループの作成方法を解説します。

	function mainLoop()
		while true do
			prop:addLoc(1, 1, 0)
			coroutine.yield()
		end
	end
	
	thread = MOAICoroutine.new ()
	thread:run ( mainLoop )

ゲームループを作成する場合、MOAICoroutineを使用します。
MOAICoroutine.run関数にはメインループとなる関数(mainLoop)を指定します。

mainLoop関数では、メインループを作成するために、while文で無限にループするようにします。
このループ内で、coroutine.yield()を実行する事で、1フレーム毎に待機させる事ができます。

チュートリアルでは、MOAIPropオブジェクトを移動する処理を行っています。