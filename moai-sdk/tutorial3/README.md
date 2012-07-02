MOAIPropを同期的にアニメーションする方法を解説します。

	function threadFunc ()
	 
		local action
	 
		action = prop:moveRot ( 0, 0, 180, 3 )
		MOAIThread.blockOnAction ( action )
	 
		action = prop:moveLoc ( 64, 0, 0, 2 ) 
		MOAIThread.blockOnAction ( action )
	 
		action = prop:moveScl ( -0.5, -0.5, 0, 1 ) 
		MOAIThread.blockOnAction ( action )
	
		action = prop:moveRot ( 0, 0, -180, 3 )
		MOAIThread.blockOnAction ( action )
		
	end
	
	thread = MOAICoroutine.new ()
	thread:run ( threadFunc )

moveLocなどの関数は、処理が非同期に行われるため、アニメーションが完了するまで待機したい場合、
上記のような方法でMOAIActionオブジェクトを待機させます。

MOAICoroutineはMOAIActionを継承したクラスで、
同期的にアニメーションさせたい場合や、ゲームループを実現したい場合に使用します。
run関数に非同期で実行したい関数を指定します。

引数に与えられたthreadFuncでは、MOAIThread.blockOnActionによりアクションを待機させています。
blockOnAction関数により、MOAIActionオブジェクトのアニメーションが完了するまで待機させる事が可能です。

