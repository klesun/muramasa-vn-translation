//<continuation number="670">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_014.nss_MAIN
{


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
	#bg035_鎌倉サーキット俯瞰a_01=true;
	#bg039_競技場客席a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_015.nss";

}

scene ma03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_013.nss"

//◆鎌倉サーキット

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　翌日、本予選。
　俺は他の三人に少し遅れて競技場へ到着していた。
昨日のうちに署長へ手配を依頼していた件について、
確認を取っていたためだ。

　幸い、本予選はまだ開始されていなかった。
　コース上に騎影はない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 1000, true);


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140010a02">
「……ポリスチームに、ですか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140020a00">
「ああ。
　署長に依頼して手を回して貰った。我々は
今後、ポリスチームの構成員として行動する
事ができる」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140030a00">
「これが証明証だ。
　持っておけ。関係者以外は立ち入り禁止の
区画にも、これを示せば堂々と入れる。昨日
のように忍び込む必要はない」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140040a02">
「はいっ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140050a03">
「だいぶ行動しやすくなりますね。
　逆に、ライバルチームの人間ということで
警戒させてしまう場合もあるかもしれません
けれど……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140060a04">
「その辺りは臨機応変でようございましょう」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140070a03">
「そうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se背景_ガヤ_サーキット02_L");
	CreateSE("SE02","se背景_ガヤ_サーキット04_L");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そんな話をするうちに、本予選開始を知らせるアナ
ウンス、続いて空砲が鳴り響く。
　既に待ち構えていたと思しきチームがおよそ十余り、
ピットに飛び出して騎手をコースへ送り出した。

{
//あきゅん「SE：要望：レース中の環境音ループ対応」
	MusicStart("SE01",2000,700,0,1000,null,true);
	MusicStart("SE02",500,1000,0,1000,null,true);
}
　<RUBY text="たちま">忽</RUBY>ち合図の空砲など圧する<RUBY text="がったり">合当理</RUBY>の轟音が唸り狂い、
人型の銃弾が舗道の上を疾駆し始める。
　そしてその轟響をもかき消す勢いで、観客席からは
熱狂的な声援が沸き上がった。

　レースの始まりだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140080a02">
「……どうですかっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　装甲競技に慣れていない一条は、耳をやられたのだ
ろう。両手で音を防ぎつつ尋ねてくる。
　レースを知っている人間にとって、開始直後の狂乱
は常識。大鳥主従は平然としていた。

　俺はサーキットを確認した。
　翔京、タムラ、どちらの姿もない。

　開始直後の混乱に巻き込まれて騎体を損なう危険を
案じたに違いなかった。場慣れた振舞いである。
　事実、二、三騎ほどが第一コーナーで衝突し合い、
跳ね飛ばされて早くも無惨な姿を<RUBY text="エスケープゾーン">退避域</RUBY>に晒している。

　うち一騎はサンドトラップに頭から突入していた。
　あれはもう駄目だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140090a00">
「村正。現状報告」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0140100a01">
《該当騎なし。
　……ちなみに、壁に突っ込んだあれは迅速
な救助が必要》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140110a00">
「そのようだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 2500, 1000, null);
	SetVolume("SE02", 2500, 500, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　コントロールタワーの屋上からでも、村正の視力を
もってすればそこまで視認できるのだろう。
　俺の肉眼でも衝突の具合から想像はついた。

　だが、サーキット場のスタッフはこのような事態に
慣れている。
　すぐさま数人が飛び出し、火炎を噴く<RUBY text="アフターバーナー">補助推進器</RUBY>に
消火剤を浴びせ、騎手を救い出していた。

　あの様子なら、命に別状はないだろう。
　劔冑は全損し、鉄屑に成り果ててしまっているが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0140120a01">
《……脆いのね》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140130a00">
「そういうものだ。仕方ない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　呆れたような困惑したような村正の呟きに答える。
　戦乱の時代を生きた鍛冶師にしてみれば、高空から
墜落したならさもあれ地表で衝突事故を起こした程度
で壊れる劔冑など論外に違いないが。

　競技用劔冑は低空機動力において優れる反面、身体
強化性能、装甲強度など戦闘に関係する能力は大きく
劣る。
　理由は簡単で、必要がないからだ。

　規定上合法である体当たり、そして衝突事故から、
騎手の生命を守る程度の甲鉄があれば充分とされる。
　他の工夫は全て速度を、運動性を高めるために費や
される。そうでなくては勝てる騎体は完成しない。

　極限まで速度を追求した劔冑は生命を守る装甲さえ
ぎりぎりの底辺に抑えられるのが常だった。
　一条にかぶりを振って返答を伝え、そんな霊柩車も
同然の代物に全存在を託す闘争者らの姿を見続ける。

　二強の姿はまだ無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140140a04">
「早くも一騎、突出しておりますね」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140150a03">
「ヨコタンのスーパーハウンド……
　このラインナップでは敵無しでしょう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140160a00">
「騎体だけでなく騎手も一流です。
　ベルト駆動の翼をよく御している」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140170a03">
「駆動ロスが少ないだけに制御が手強い部分
もあるはずですのにね。
　教科書的なコーナー攻めも、まずはお見事」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140180a02">
「なあ……。
　今日のこいつは、どういうルールのレース
なんだ？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140190a04">
「昨日とおおむね同じでございますよ。規定
時間内に達成した<RUBY text="ベストラップ">周回記録</RUBY>を競います。
　その上位二〇騎が、明日の決勝レースへの
出場権を得られる次第で」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140200a02">
「じゃあ、さっさと始めた方が有利なんじゃ
ねえのか？
　まだ出てきてないチームは大分いるよな？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140210a04">
「基本的にその通りでございますが、慌てる
乞食は貰いが少ないとも申します。
　焦りすぎると先刻のように、痛い目を見る
こともございますので」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140220a02">
「ああ、そっか……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140230a04">
「決勝進出がほぼ確実の実力チームにとって、
恐れるべきは敵よりも事故。
　頃合を見て参加し、充分な記録を出したら
速やかに退去する。それが<RUBY text="セオリー">定石</RUBY>でございます」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140240a02">
「あ、もう引き上げてる」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140250a04">
「そう、あのように。
　ヨコタンでございますね。記録は……一分
二七秒一九。なるほど、なるほど」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140260a02">
「いい記録なのか？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140270a04">
「上位五騎の内には間違いなく入ります」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140280a02">
「へぇ……
　ん？　あれは何やってんだ？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140290a04">
「はて。何か信号旗が出たようでございます
が……
　お嬢さま、お分かりになりませんか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140300a03">
「……無効騎航の通告、ですね。二五番――
イシュトラ蜥蜴兵団さんのダガーアプティマ
に対して。
　どうやらアーチオーバーのようです」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140310a02">
「アーチオーバー？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140320a03">
「コースの上に、いくつも<RUBY text="アーチ">半円橋</RUBY>が掛かって
いますでしょう？
　レーサーは必ずあの下をくぐっていかなく
てはならないのです」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140330a02">
「……あぁ、なるほど。そりゃそうか。
　あいつらは空飛んでるんだから、そういう
ルールがなけりゃコースなんて意味ないよな」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140340a03">
「くぐり損ねた場合は、そこから先の騎航を
無効にされてしまいますの。
　戻ってくぐり直さない限り」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140350a04">
「ま、予選では大した問題ではありません。
次の周回で気をつければ良いだけのことです
から。
　しかし決勝レースでは致命的になります」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140360a00">
「最少でも五秒から十秒のタイムロスは覚悟
しなくてはならない。そうなれば勝利はまず
無理だ。
　レースが荒れている場合は、また別だがな」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140370a02">
「はぁ……。
　ところでわりと気になってたんですけど。
湊斗さんてもしかして、<RUBY text="アーマーレース">装甲競技</RUBY>が好きなん
ですか？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140380a00">
「好きだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　学生時代は装甲競技研究会に属していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140390a02">
「あ、やっぱり。
　……じゃっ、じゃあ、湊斗さん。あたしに
教えてくれませんかっ。レースのこと、色々」

{	SetVolume("SE01", 500, 500, null);
	SetVolume("SE02", 500, 0, null);
	SetVolume("@mbgm22", 500, 0, null);
	SoundPlay("@mbgm25",500,1000,true);
	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140400a04">
「お嬢さまぴーんち！
　敵は『あなたと趣味を合わせたいの』攻勢
に出てまいりました。この戦法は単純ながら
男心に訴えるところ大、極めて有効です！」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140410a03">
「なんですってーー!?
　許さなくてよそのようなことッ！」

{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140420a02">
「ばっ、ちがっ、違う!!
　あたしはただ……知っておけば捜査の役に
立つんじゃないかと思ってっ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140430a04">
「見事な建前でございます。
　では、本音の方は？」

{	FwC("cg/fw/fw一条_照れ.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140440a02">
「えっ？　うん。湊斗さんのことを、もっと
知りたいから……
{	SetComic(@0,@0,15);
	FwC("cg/fw/fw一条_怒りa.png");}
　じゃねぇー!!　なに言わせやがる!?」

{	DeleteComic();
	SetComic(@0,@0,13);
	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140450a03">
「乙女ちっく」

{	DeleteComic();
	SetComic(@0,@0,13);
	FwC("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140460a04">
「乙女ちっく」

{	DeleteComic();
	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140470a02">
「口に接着剤塗るぞてめーらっ!?
　み、湊斗さんも何とか言ってくださいっ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140480a00">
「良いのか」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140490a02">
「え？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140500a00">
「レースの事……
　発祥に始まり、欧州での爆発的流行、大和
での幕開け、発展」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140510a00">
「<RUBY text="４ＷＤ">四翼駆動</RUBY>の発明、<RUBY text="アフターバーナー">補助推進器</RUBY>の登場、田村
鉄鋼斎の偉業、ヨコタンの怪物騎ハウンドの
欧州侵攻、広中兄弟の苦闘――」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140520a00">
「話し始めたら一時間では終わらんが」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140530a02">
「……え、えーと」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140540a00">
「いや、丸一日は必要になる。
　シャフト駆動・チェーン駆動・ベルト駆動
のそれぞれの長短について説明し、五四〇型
アフターバーナーの機構を図説」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140550a00">
「そしてボールベアリングが駆動系に及ぼす
影響の実態と避けて通れないアンダーステア
対策について述べ、ミッドシップ構造の功罪
に移り、四翼独立サスペンション」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140560a00">
「これはホットボルトとその前後作品を比較
評価して解説するのが最もわかりやすいが、
であればまず順序としてタムラの<RUBY text="２ＷＤ">二翼駆動</RUBY>騎
における傑作・<RUBY text="ワスプ">雀蜂</RUBY>の評価から――」

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140570a02">
「あ、あのー。湊斗さん？」

{	DeleteComic();
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140580a03">
「景明さま、しっかりなさって！
　なんだかキャラが変わっていましてよ！」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140590a02">
「……あたしが悪いの？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140600a04">
「殿方には押してはならないスイッチという
ものがあるのでございます。年齢、人格には
一切関係なく。
　どうかご注意くださいませ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140610a00">
「――つまりサンダーボルトの登場によって
タムラの四駆はひとまず完成の領域へ到達を
果たしたと云えるのだが、それは反面、翔京
や横森との差を浮き彫りにしたとも云え――」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0140620a04">
「まあそれはそれとして、コレはいかが致し
ましょうか？」

{	Move("@StL*", 200, @-300, @0, Axl1, false);
	DeleteStL(200,false);
	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140630a03">
「とー」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がす。
	CreateTextureSP("絵ＳＴ2000", 2000, -1024, middle, "cg/st/resize/st香奈枝_通常_私服a_l.png");
	Move("絵ＳＴ2000", 0, @0, @+210, Dxl1, true);

	Move("絵ＳＴ2000", 300, @1024, @0, Dxl1, true);

	CreatePlainSP("絵振", 5000);
	Wait(1);
	CreateColorSP("絵フラ", 5500, "#FFFFFF");
	SetVolume("@mbgm25", 300, 0, null);
	SetVolume("SE01", 300, 0, null);
	OnSE("se戦闘_攻撃_殴る02",1000);
	Wait(10);
	FadeDelete("絵フラ", 100, false);
	FadeFR2("絵振",0,1000,300,0,0,10,Dxl2, true);
	Delete("絵振");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　首筋に良い一撃が入った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("絵ＳＴ2000", 200, @-60, @0, null, false);
	FadeDelete("絵ＳＴ2000", 200, true);

	StL(1000, @-30, @0,"cg/st/st香奈枝_通常_私服a.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140640a00">
「…………失礼。
　いささか我を失っていたようです」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0140650a03">
「もう、景明さまったら。うふふ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0140660a00">
「一条。話は暇のある時にしよう。
　今の俺達にはやることがある」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0140670a02">
「は、はい。そうですね」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――



..//好感度分岐
//◆好感度分岐。好感度が最も高いヒロインのミニイベントに接続する。
//◆ただし、全ヒロインが一定値に達していない場合はイベント無しのルートへ

..//ジャンプ指定
//※嶋流　次のスクリプトに関して、ヒロイン別にスクリプト内で分岐します。
//次ファイル　"ma03_015.nss"

}


