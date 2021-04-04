//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_023.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_023.nss","ma03_SB2",true);
	Conquest("nss/ma03_023.nss","ma03_SB3",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_三世村正レーサー偽装=true;

	$PreGameName = $GameName;
	$GameName = "ma03_024.nss";

}

scene ma03_023.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_022.nss"

//◆決勝戦開会式。花火とか。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw雷蝶_不興.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230010a08">
《大和初、<RUBY text="アーマーレース">装甲競技</RUBY>国内統一選手権……
　大和<RUBY text="グランプリ">ＧＰ</RUBY>》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230020a08">
《決勝まで勝ち残った二十の<RUBY text="チーム">戦隊</RUBY>。そして、
彼らの戦いを見るために詰め掛けた観客席の
人々……。
　麿がなぜこの大会を開いたか教えましょう》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230030a08">
《美よ！
　麿は美しいものを見たいのよ！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230040a08">
《強い者は美しい！
　<RUBY text="たくみ">巧</RUBY>な者は美しい！
　賢い者は美しい！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230050a08">
《そして、速い者も美しいッ！
　風すらも置き去りにして直向に駆け抜ける
姿は、ただそれだけで目を奪われる美しさに
満ち満ちている！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230060a08">
《その美しさの極限は何処？
　決まっているわ……それは最も速いもの》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230070a08">
《最も速い者は、最も美しい！
　麿はその雄姿を見るために大和ＧＰを開催
したのよ！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230080a08">
《いいわね？　あなた達……
　選ばれし二十の騎手！》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230090a08">
《最高の美を見せなさいッ！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230100a08">
《ここに――
　大和ＧＰ、決勝戦の開始を宣言する!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆わーわー。花火どんどん。

	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateSE("SE02","se背景_ガヤ_サーキット04_L");
	MusicStart("SE02",0,1000,0,1000,null,false);

	WaitKey(3000);

	SetVolume("SE*", 5000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	Wait(1000);
	CreateSE("SE01","se背景_ガヤ_サーキット01_L");
	MusicStart("SE01",500,800,0,1000,null,true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230110a07">
《えー、程良い感じにナチュラルジャンキー
な開会挨拶でした。ありがとうございます。
　決勝開始までもう間もなく！　司会と解説
はワタクシ、<RUBY text="ダンガンライガー">弾丸雷虎</RUBY>がお送りします》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230120a08">
《なんでよッ!?》

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230130a07">
《放送席で大声出すなよケバ太》

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230140a08">
《誰がケバ太かっ！
　司会も解説も麿の手配した人間がちゃんと
いるはずでしょ!?　なんであんたなの！》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230150a07">
《あー、あいつら腹痛で休み。
　賞味期限の切れた牛乳なんて飲むから》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230160a08">
《……牛乳？》

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230170a07">
《や、ここんとこ伊豆高原の牛乳の売れ行き
が悪くてさー。<RUBY text="えぞ">北曾</RUBY>産に押され気味で。
　うちの蔵にもだいぶ余ってんだよね。ヨー
グルトになりかけのとか。バター風味のとか》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230180a08">
《あんたが飲ませたんじゃないのッ!!》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230190a07">
《さー、各チームとも現在ピットで騎航準備
に余念がありません！
　ミスは許されない！　戦いは既に始まって
いる！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230200a07">
《ではここで最速を争う二〇チームを順々に
紹介していきましょう。
　まずはポールポジション――》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230210a07">
《翔京ワークス〝三城七騎衆〟！
　騎体は黄金の翼の〝<RUBY text="ウルティマ・シュール">　理想　</RUBY>〟。
　騎手は<RUBY text="ガチンコ">真剣勝負</RUBY>最強と知る人ぞ知る<RUBY text="くるまごう">来馬豪</RUBY>》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230220a07">
《昨日の本予選では騎体名に恥じぬ凄まじい
<RUBY text="はしり">騎航</RUBY>を見せてくれましたッ！
　まさに<RUBY text="アーマーレース">装甲競技</RUBY>の覇王！　圧倒的なパワー
でこの決勝も制することができるか!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230230a08">
《……そうね。今のところはここが一番期待
できるかしら。
　ともすれば俗っぽい黄金の翼も、全国制覇
の意気の顕れと思えば悪くなくってよ》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230240a08">
《美しく闘いなさい！
　その黄金が<RUBY text="メッキ">鍍金</RUBY>と笑われないようにね！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230250a07">
《続いてタムラワークス〝<RUBY text="タムラ・ファイティング・ファクトリー">　Ｔ・Ｆ・Ｆ　</RUBY>〟！
　騎体は青く輝く〝<RUBY text="アベンジ">逆襲</RUBY>〟、
　騎手は悲運の天才の血を受け継ぐ皇路操》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230260a07">
《こちらの騎体も翔京ウルティマと同様昨日
が初登場！　驚天動地の爆走でしたッ！
　あれはこの青い<RUBY text="クルス">劔冑</RUBY>の性能を限界まで出し
切った結果か。それとも更に先があるのか!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230270a08">
《せめて、まぐれではないことを期待するわ。
　決勝をつまらない勝負にはして欲しくない
もの》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230280a08">
《限界を究めなさい！
　その青いボディにかけて！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230290a07">
《……おっと、開始が近いようです。
　巻いていきましょう》

//嶋：変更（ＲＧ−一〇ＣＸ）
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230300a07">
《三番手、シーサイドバーサーカーズ。
　ここはアソシエイブルのセミワークスです。
騎体は新鋭騎<RUBY text="レーシング・テン">ＲＧ-一〇</RUBY>ＣＸ》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230310a07">
《奥の手スリッパークラッチは果たして効果
を発揮するのかッ!?》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230320a08">
《ここの騎体はデザイン面であまり冒険して
ないわねぇ。
　性能の高さは認めるけど》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230330a07">
《四番手はヨコタンワークス。
　騎体は世界を獲った名騎ハウンドの発展型
<RUBY text="スーパーハウンド">超越猟犬</RUBY>》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230340a07">
《この騎体からベルト駆動へ転向！
　チェーンの翔京シャフトのタムラに対して
優位を示したいところだが!?》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230350a08">
《相変わらず不恰好な面構えね……。
　でも速さは正義よ。世界の頂点に立つため
の姿がこれだというなら、貫き通しなさい》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230360a07">
《続いてはベルトの本家、ヒラゴーワークス。
　新型騎〝<RUBY text="セクシー">魅惑</RUBY>〟を投入して五番グリッドを
確保！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230370a07">
《その異様なほど滑らかな<RUBY text="ハシリ">騎航</RUBY>には定評あり。
　……しかしセクシーって何だ？》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230380a08">
《この会社のネーミングセンスは時々よくわ
からないわね……》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230390a07">
《六番手、鎌倉マツイ。
　フラッグシップ〝<RUBY text="ザ・ゲイシャ">芸者</RUBY>〟に試作品と思しき
部品を積み込んでの登場だ！》

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230400a07">
《……ここもさぁ……
　どうしてこう毎度毎度、大和マニアの外国
人がつけたみたいなネーミングなんだ？》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230410a08">
《そういう人が担当なんでしょ？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230420a07">
《七番手！
　ゲッコーワークス、騎体〝<RUBY text="ジェントルダッシュ">疾走紳士</RUBY>〟！》

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230430a07">
《……おーい……》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230440a08">
《……いつの間にか面白ネーミング選手権に
なってるんじゃないでしょうね？　この大会
……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆コース上
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg038_サーキット直線_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	Wait(1000);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230450a07">
《えー、では一一番グリッド。
　官公庁代表ポリスチーム》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230460a07">
《騎体は予選で破損した<RUBY text="ホットボルト">火箭</RUBY>に代わり、その
独自アレンジバージョン――》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230470a07">
《〝<RUBY text="ホットドッグ">串焼腸詰</RUBY>〟だぁッ！》

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230480a07">
《てめーもかオイ!!》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0230490a08">
《それ、あんたがごり押しで突っ込んだ騎体
と騎手でしょうがッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	#av_三世村正レーサー偽装=true;

	CreateTextureEX("絵st100", 100, Center, InBottom, "cg/st/3d村正競技_立ち_通常.png");
	Move("絵st100", 0, @+150, @0, Dxl1, true);

	Move("絵st100", 500, @+50, @0, Dxl1, false);
	Fade("絵st100", 500, 1000, null, true);

//◆村正レーシングアレンジ
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230500a01">
《……何よ、あの名前……》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230510a00">
「……いや。
　お前の改装に手一杯で、名前を考えている
暇が……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　指定のグリッドに並びつつ、村正のぼやきに答える。
　若干の違和感はまだあった。外観擬装以外の意味を
持たないパーツの取り付けが、扱い慣れた劔冑の感覚
を異なるものにしている。

　いささかならず煩わしい。
　その思いは村正の方により強いものがあるだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230520a00">
「それにこれはこれで一応、歴とした由緒を
持つ名前ではある」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230530a01">
《いい加減なこと言わないの。
　私が無知だと思って》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230540a00">
「……本当なんだが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵st100", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　抗弁は呟きに留めて、周囲を見回す。
　見世物扱いのこの処遇に使命感で耐えているらしい
村正の神経を更に逆撫でするのは、無益なことでしか
ない。

　ピットの方角から視線を感じた。
　訝しげ、あるいは興味深げな。<RUBY text="レーサークルス">競技用劔冑</RUBY>を装って
いるとはいえ、彼らプロの<RUBY text="メカニック">整備師</RUBY>までは騙し通せない
のか。

　……流石に、彼らとて触ってみなくては真打と断定
するのは無理であろうけれども。
　その疑念程度は持たれていても不思議ではなかった。
レースが終了したら、早めに姿を消すべきだろう。

　タムラのアベンジも同種の視線を浴びている。
　……いや。違うものも混ざっていた。

　翔京のピットから向けられているそれ。
　いくつか、戸惑うように揺れるものがある。

　……成程。
　公にされていない筈の（大会本部に報告はしたが、
何の<RUBY text="リアクション">反応</RUBY>もない）昨夜の襲撃について知る人間か。

　襲撃団を送り込み、爆音を聞いた時点で、策の成功
を確信していたのかもしれない。
　であれば彼らには無傷の青い騎体があたかも不死の
怪物のように映るだろう。動揺も当然といえた。

　だが、先頭に立つ黄金の騎手にそんな様子は見受け
られない。何も知らないのか、知っていても既に心の
整理をつけているのか。
　彼は自分の世界に没頭を始めている。他の騎手もだ。

　辺りに注意を散らしている者など俺しかいない。
　やはりどうにも、浮いている。

　仕方ない。彼らとは目的が違う。
　彼らはレースで首位を奪うためにここにいる。だが
俺は、彼らの一騎をあるいは撲滅するために、ここへ
来ているのだ。

　このレースの中で、俺は異分子に過ぎない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230550a00">
「村正……気配はどうだ？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230560a01">
《……相変わらず、強く感じる。
　でも方向、距離はやっぱりわからない……
この周辺なのは間違いないのだけれど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230570a00">
「そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　やはり何らかの術による隠蔽か。
　二〇騎――否、俺を除いた一九騎の誰かが寄生体と
見るべきだ。

　誰であっても不思議ではない……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230580a00">
「孵化時期は？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230590a01">
《……もしかしたら、今この瞬間にも。
　正直、そうならないのが不思議なくらいに
<RUBY text="・・・">揺れて</RUBY>いる……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0230600a01">
《今日という日が昨日と呼ばれる頃までは、
決してもたないでしょうね。
　覚悟しておいて、御堂》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0230610a00">
「心得た」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　孵化は必ず今日の内。
　おそらくは、この決勝の内。

　一瞬たりと気は抜けないという事だ。
　心身を即応の体勢に置いておく必要がある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	PrintGO("上背景", 30000);
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	SetVolume("SE01", 500, 0, null);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230620a07">
《……さぁ全ての<RUBY text="アーマーレーサー">装甲騎手</RUBY>がスターティング
グリッドに揃った！
　いよいよスタートです！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230630a07">
《全騎手、全観衆、スタートランプに注目を！
　あれが青になった瞬間だッ！》

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0230640a07">
《大和最速を決する勝負が――
　今、火蓋を切るッ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1500);

..//ジャンプ指定
//次ファイル　"ma03_024.nss"

}


..//ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//昼間
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	//夜
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//ma03_SB3
function ma03_SB3($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
	SetBlur("Circuit_Bar", true, 3, 300, 8, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}
