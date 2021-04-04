//<continuation number="1940">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_003.nss_MAIN
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
	#bg057_普陀楽城廊下_03=true;
	#bg045_普陀楽城公方の間_03a=true;
	#ev222_茶々丸Ｈ_a=true;
	#ev222_茶々丸Ｈ_b=true;
	#ev222_茶々丸Ｈ_c=true;
	#ev222_茶々丸Ｈ_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_004.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#md03_003=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

..//ジャンプ指定
//前ファイル　"md03_002.nss"


//◆廊下

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg057_普陀楽城廊下_03.jpg");
	FadeBG(0, true);

	CreateSE("歩く", "se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("歩く", 0, 1000, 0, 1000, null,true);

	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030010a07">
「うまくやったね、お兄さん」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030020a00">
「何が」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030030a07">
「さっきの。
　うまいこと雷蝶のツボ突いておだて上げる
なんて、なかなかの曲者でありますなー」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030040a00">
「ああ……あれか」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030050a00">
「あれなら単に本心だ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030060a07">
「ふーん」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030070a07">
「…………」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030080a07">
「……え？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("歩く", 1000, 0, null);


//◆茶々丸の間。bg045

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg045_普陀楽城公方の間_03a.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　普陀楽城の奥まった一角。
　ここが、堀越公方足利茶々丸の居住区らしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆茶々丸私服

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030090a07">
「まっ、とにかくこれで挨拶は済んだし。
　今日はもうなんにもないな」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030100a07">
「のんびりしましょ。
　明日からはなんやらかんやら忙しいしねー」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ふーやれやれなどと年寄りくさい嘆息を洩らしつつ、
茶々丸が腰を下ろそうとする。<k>
　
　その首根を、俺は背後から掴んだ。

　手近にあった卓の上へ引き据える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	OnSE("se人体_衝撃_転倒01", 1000);


//◆茶々丸消去
	DeleteStL(300,false);

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030120a07">
「ふえ？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：茶々丸襲われ

	CreateTextureEX("襲われ", 5000, @0, @0, "cg/ev/ev222_茶々丸Ｈ_a.jpg");
	CreateTextureEX("襲われ２", 5000, -512, -110, "cg/ev/resize/ev222_茶々丸Ｈ_al.jpg");
	Request("襲われ２", Smoothing);
	Zoom("襲われ２", 0, 800, 800, null, true);
	Fade("襲われ２", 1000, 1000, null, false);
	Move("襲われ２", 2000, @100, @-300, Dxl2, true);
	Fade("襲われ", 0, 1000, null, true);
	Delete("@OnBG*");


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	CreateTextureSP("襲われ", 5000, @0, @0, "cg/ev/ev222_茶々丸Ｈ_a.jpg");
	CreateTextureSP("襲われ２", 5000, -512, -110, "cg/ev/resize/ev222_茶々丸Ｈ_al.jpg");
	Request("襲われ２", Smoothing);
	Zoom("襲われ２", 0, 800, 800, null, true);
	Move("襲われ２", 2000, @100, @-300, Dxl2, true);

	//リコ背景抹消
	RecoIn();
}
//========================================================


	FadeDelete("襲われ２", 1000, true);
	Wait(1000);
//■音楽に関してはまだ未決で　そもそも「友愛」って雰囲気じゃない inc櫻井
	SoundPlay("@mbgm19", 0, 1000, true);

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030140a07">
「にゃーーーー!?
　何ですかこの急展開ーーー!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030150a07">
「ちょっ、たんまっ、たんまたんまっ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030160a00">
「騒ぐな」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　じたばたもがく小柄な体を押さえながら命じる。
　もう一方の、服を<RUBY text="は">剥</RUBY>ぐ手も休めない。

　これはなかなか器用な芸の筈だが、茶々丸からそれ
を賞賛する言葉はなかった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030170a07">
「なな何するのーーー!?」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030180a00">
「……わからんか？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030190a07">
「わからんっていうか、わかるのが怖いって
いうかっ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030200a00">
「犯す」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030210a07">
「わー！　やっぱりかー！
　こういうことはちゃんと手順を踏んでから
にして欲しいと強く抗議します！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030220a07">
「女の子には心の準備とか必要です！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030230a00">
「すればいい」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030240a07">
「現在進行形で犯されながらでは無理かと！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030250a00">
「…………」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030260a07">
「会話のスルーパス禁止ーー！
　せめて説明してよー！　いったい何ゆえに
あては今こうして大人の階段を三段飛ばしで
駆け上がってしまっているのでしょう!?」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030270a00">
「説明？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　その一単語を反復する。
　手は止めなかったが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030280a00">
「説明なら、お前がしろ。茶々丸」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030290a07">
「な、なんの？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030300a00">
「こんな御仕着を寄越し――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　軍服の堅苦しさを感じつつ、言い募る。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030310a00">
「普陀楽へ連れて来た挙句に、副官だと？
　何の茶番だ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030320a07">
「それはその……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030330a00">
「俺がいつお前の手下になった」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030340a07">
「そ、それは形だけだってば。
　ちゃんとした地位についててもらった方が
お兄さんも動きやすいかと思って」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030350a00">
「余計な世話だ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　剥き出しにした乳房を、俺は片手で握った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030360a07">
「ひゃぅ！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030370a00">
「いいか……茶々丸。
　念を押しておく」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030380a00">
「俺はお前に協力などしない」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030390a07">
「う……うん」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030400a00">
「お前が俺に協力するのだ」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030410a00">
「光を救うために」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030420a07">
「うん……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030430a00">
「それができないと云うなら――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　俺は、首根を掴む手に力を掛けた。
　<RUBY text="・・・">明確な</RUBY>力を。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030440a00">
「お前を生かしておく必要もない」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030450a07">
「の、のーっ！
　それやります！　死力を尽くして全力で！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030460a07">
「ていうかそれがあての目的っす!!」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030470a00">
「わかっている。
　お前が事の順序を履き違えていなければ、
それでいい」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030480a00">
「俺は光のためにしか動かん。
　堀越公方、お前に手を貸すのは、それが光
の身に益する限りにおいてだ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030490a07">
「ハイ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030500a00">
「副官か。
　面倒な事を」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0030510a00">
「何かにつけ、さっきの<RUBY text="・・・・">あの連中</RUBY>と面を突き
合わせなくてはならんわけか。
　どいつもこいつも、一癖二癖どころか……
むしろ癖しかないような将軍ども」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030520a07">
「あはは、ほんとだねー」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030530a00">
「お前が筆頭だ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030540a07">
「あうち……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030550a00">
「想像するだに疲れる。
　登校拒否児の心情がわかるな」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030560a07">
「で、でもでも。
　勝手にやっちゃったのはごめんなさいなの
ですが」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030570a07">
「やっぱりそれなりの立場にいてくれた方が、
色々やりやすいと思いますのです。
　あてとしても、お兄さんに普陀楽を任せて
外で動けるようになるし……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030580a00">
「ふん」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030590a07">
「というわけなんで……あの……
　許していただけると、嬉しいなー、なんて
思ったりとか……」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030600a00">
「……まぁいい。
　既成事実はどうにもならん」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030610a00">
「この際、副官の地位とやらをせいぜい活用
するまでだ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030620a07">
「わーい！
　そんな前向きなお兄さんが大好きさー！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030630a07">
「この埋め合わせは必ずするからね！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030640a00">
「そうか。
　なら、そのままおとなしくしていろ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030650a07">
「はーい！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030660a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030670a07">
「……？……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030680a07">
「えっ!?
　ひょっとして、危機的状況は全く変わって
ない!?」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030690a00">
「おとなしくしていろと言ったぞ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030700a07">
「はぅあーーー！
　あのそのですからその、こういうことには
ラブでロマンなプロセスというものがっ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030710a00">
「要らん」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030720a07">
「うっ、うー……
　じゃあ…………せめて」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030730a07">
「お兄さん……あてのこと、好き？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030740a00">
「別に」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030750a07">
「血も涙もねぇ!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030760a07">
「欲望だけかー！
　そんなに可愛いあてを犯したいのかー！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030770a00">
「それも別に。大して」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030780a07">
「全否定かよ!!」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030790a07">
「えぅー。
　じゃあなんで、こんなことすんのー」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030800a00">
「身体に教え込んでやろうと思っただけだ。
　お前の、立場をな」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030810a07">
「立場？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030820a00">
「お前は俺の道具だ。
　それだけのものだと思っておけ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030830a07">
「……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆ＣＧ差分

	CreateTextureEX("襲われ02", 5100, @0, @0, "cg/ev/ev222_茶々丸Ｈ_b.jpg");
	Fade("襲われ02", 1000, 1000, null, true);
	Delete("襲われ");

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆照れ
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030840a07">
「……ぁ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030850a00">
「……？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030860a07">
「あ、あの。
　今の、もう一度。わんすもあ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030870a00">
「もあ？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030880a07">
「もう一度、言って」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030890a00">
「……お前は俺の道具だ。
　茶々丸」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030900a07">
「…………」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030910a07">
「はぅ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030920a00">
「？」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIFO(150);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　何やら様子がおかしくなった。
　……まぁ、構う事でもないのだが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030930a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030940a00">
「何だ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030950a07">
「……あの、どうすれば……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030960a00">
「どう？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030970a07">
「こ、こういうコトをするとき」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0030980a07">
「作法といいますか、決まりといいますか」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0030990a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　俺は指先で、茶々丸の髪を一房つまみ、軽く弄んだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031000a07">
「……っ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031010a00">
「もう足掻かんのか」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031020a07">
「おとなしくしろって、お兄さんが」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031030a00">
「言葉の綾だ。
　別に逆らっても構わん。ねじ伏せて言う事
を聞かせるだけだからな」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031040a07">
「……きちく……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031050a00">
「従順ならそれでもいいが。
　で……何も知らんだと？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031060a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031070a00">
「<RUBY text="おぼこ">稚魚</RUBY>か」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031080a07">
「……っ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　眼下の少女の頬に、さっと朱が昇った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031090a00">
「人の寝床に入り込むような真似をしていた
割りに」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031100a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031110a00">
「あの時も、俺が本当に手を出していたら、
どうしていいかわからなかったという事か？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031120a07">
「……羞恥プレイ禁止ぃ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031130a00">
「そうか、茶々丸。
　お前は男を知らない癖に、あんな事をして
いたのか」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031140a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031150a00">
「存外に可愛い奴だ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031160a07">
「……ぅ〜……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　陰に笑いを絡めてそう言うと、茶々丸は目を閉じた。
　余程に恥ずかしいのか、<RUBY text="うなじ">項</RUBY>までが赤味を帯びている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031170a00">
「自分で慰めた事くらいはあるのだろう？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031180a07">
「……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031190a00">
「無いのか？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031200a07">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　俺は、片手で茶々丸の尻を張った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031210a07">
「あぅっ！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031220a00">
「答えろ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031230a07">
「な、無い……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031240a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031250a00">
「本当にか」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031260a07">
「ぅ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　べそをかきながらに、頷く。
　嘘ではないらしい。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031270a00">
「…………。
　ここに」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　指先で、局部をつついてやる。
　小さな背が跳ねた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031280a07">
「ひゃっ」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031290a00">
「突っ込んでやるつもりなんだがな」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031300a07">
「……そ、それくらいはわかるよ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031310a00">
「濡れていないと、やりにくい。
　……やりようが無いわけでもないが」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　戸棚に酒の用意があるのを見て、呟く。

　真っ当な方法としては、手業で官能を呼び起こして
やるべきなのだろうが。
　
　面倒だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031320a00">
「濡らせ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　自慰も知らないと言った娘に、俺はそう命じた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031330a07">
「……えっと……」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031340a07">
「どう……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031350a00">
「どうとでも、だ。
　方法は問わん」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031360a00">
「濡れていないとお前を<RUBY text="・・・・・">使いにくい</RUBY>。
　使いやすいようになればそれでいい」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031370a07">
「……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031380a07">
「う……うん。
　わかった……やってみる……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031390a00">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　無理難題を言いつけたつもりだったのだが。
　案に相違して、茶々丸は拒まなかった。

　どうするのやら。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031400a07">
「……はぁ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031410a07">
「……んっ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031420a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031430a00">
「命じておいて、何だが」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031440a00">
「何をしている？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031450a07">
「……お兄さんが……使いやすいように……
してるの」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031460a07">
「お兄さんが、濡れてた方がいいって望むの
なら……そうなる……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031470a07">
「だって……あては……
　……お兄さんの……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031480a07">
「ふっ……くぅ……！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031490a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031500a00">
「……？……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　眺めているうち、茶々丸の呼吸は徐々に荒く、肌は
汗ばみ始める。
　体温が上昇している様子に見えた。

　手を当ててみると、実際に熱い。
　
　――これは？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031510a07">
「……ッ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031520a07">
「ぁ……っ……
　……こ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031530a07">
「これで……いい？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031540a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　その場所に触れてみる。
　……熱く、潤みを含んでいた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031550a00">
「どんな芸だ……？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031560a07">
「芸なんてひどい……。
　お兄さんの要望に応えただけ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031570a00">
「確かにそうだが」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　水道の蛇口を捻って水を出すのとは話が違うのだ。
　濡れろと言われたから濡れるというものでもないだ
ろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031580a07">
「……ね……
　使って……くれるんだよね……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031590a00">
「……」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031600a07">
「お兄さんが……あてを。
　思うままに」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　切なげな視線が俺を射る。
　
　どうしてか、<RUBY text="・・・">ざわり</RUBY>とした衝動が背筋を走った。

　――そうだ。
　俺はこいつを犯すために、こうしている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031610a00">
「足を開け」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031620a07">
「……あい……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031630a00">
「それでいい。
　そうしていろ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　足利茶々丸を掌握したい。
　その衝動が、男性器官を屹立させる。

　処女への配慮は省いた。
　そんなものは要らない。

　露出させた器官をあてがう。
　挿入する。

　貫く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＧ差分
	CreateTextureEX("襲われ03", 5200, @0, @0, "cg2/ev/ev222_茶々丸Ｈ_c.jpg");
	Fade("襲われ03", 1000, 1000, null, true);
	Delete("襲われ02");

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031640a07">
「……ぁ――ッッッ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　少女の身体が弓なりに反る。
　形にならない慟哭が、震える口元からこぼれている
ようだった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031650a00">
「入っているぞ……。
　わかるか？」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031660a07">
「……っ……ん……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031670a00">
「狭いな。
　ここが一番奥か」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031680a00">
「わかるか……茶々丸」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031690a07">
「っ……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　痛みのせいか衝撃のためか、言葉を発する余裕すら
無いらしい。
　潤んだ眼差しだけが俺に向けられる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031700a00">
「奪っているぞ……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031710a00">
「お前は俺のものにされている」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031720a07">
「――――ッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 300, 1000, null, true);
	CreateTextureEX("襲われ04", 5000, @0, @0, "cg2/ev/ev222_茶々丸Ｈ_d.jpg");
	Fade("襲われ04", 0, 1000, null, true);
	Delete("襲われ03");
	Fade("白フラ", 300, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	Fade("白フラ", 1500, 0, null, true);

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031730a07">
「……ぁ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031740a07">
「は……っ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031750a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031760a00">
（達した？）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　真逆、と思う。
　初めて男を受け入れる処女が。こうも容易く。

　しかし、この反応は――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031770a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031780a00">
「許せん<RUBY text="やつ">女</RUBY>だな」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031790a07">
「ぇ……ぁ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031800a00">
「俺がお前の中に――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　下腹部を撫でてやる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031810a00">
「ぶち撒けてやる前に。
　先に果てるとは」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031820a07">
「……はて……？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031830a07">
「ぁ……あて…………今……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　前後不覚の様子で、朦朧と<RUBY text="うわごと">譫言</RUBY>を呟く。
　少女の心はまだ、現実から一歩遅れた辺りを漂って
いるらしい。

　無知性的な瞳が俺の顔を映していた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031840a07">
「お兄さん……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031850a00">
「……くっ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　笑う。

　思った以上に――
　期待した以上にずっと、この娘は――

　<RUBY text="・・">教育</RUBY>し甲斐がありそうだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/md03/0031860a00">
「教えてやる。
　色々とな」

//【景明】
<voice name="景明" class="景明" src="voice/md03/0031870a00">
「まずは……罰からだ」

{	NwR("cg/fw/nw茶々丸.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031880a07">
「……？……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　適当に済ませる気は、もうなくなった。
　じっくりと――念入りに、やる。

　夜は長い。
　時間を掛けて、困ることは何もない。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆※余力あったら書き足そう。

	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 1500, 1000, null, true);


	SetNwC("cg/fw/nw茶々丸.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031890a07">
「はぅっ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031900a07">
「わっ、噛まないで、そんなとこ……！」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031910a07">
「ちょっ――そんな、何処に指――」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031920a07">
「……ひぃ……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031930a07">
「いうこときく、ききますから――」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/0031940a07">
「…………あーー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
		ClearWaitAll(1500, 1500);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"md03_004.nss"