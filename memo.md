# Blackjackの仕様
カードが52枚で13*4
このデッキはシャッフルされたランダムない配列
カードを2以上のプレイヤーが引いていく
Aと10が1or11のスコア
J,Q,Kは10のスコア
他は数字がそのままスコア
21を超えるまでカードを追加で引くことが出来る
21を超えたら即終了
ディーラーは17未満で必ず引く



カードを1枚引くメソッドにして、最初はこのメソッドを2回実行する感じはどう？

PlayerクラスはCardクラスを読み込んでcardインスタンスを作ってくれる
MainからはPlayerクラスのインスタンスでそのままゲームが出来る
最終的にはGameのインスタンスにひきすうとしてPlayerインスタンスを渡すとかになる?

Gameクラスはゲームを司るところカードのシャッフルやドローはここでやるスコアの計算も
Cardクラスはカードを司る静的なところカードの宣言だけでいい
Playerクラスはプレイヤーを司るところプレイヤーネームと持ってる手札、そのスコアを持つ