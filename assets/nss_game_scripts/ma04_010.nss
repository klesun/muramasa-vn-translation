//<continuation number="1120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_010.nss_MAIN
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

//嶋：確認用
//$Ichizyou_Flag = 5;
//$Kanae_Flag = 5;

	RouteChicker();

	//▼ルートフラグ、選択肢、次のGameName
	if($RC_N["一条"] < $RC_N["香奈枝"]){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($RC_N["一条"] > $RC_N["香奈枝"]){

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}

	$PreGameName = $GameName;

	$GameName = "ma04_011.nss";

}

scene ma04_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_009.nss"


//◆片瀬海岸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　今日の海岸は冷涼だった。
　昨日に比べれば、別天地かと思える程に。それでも
まだ暦の上の季節に見合うとは言えなかったが、半袖
で過ごすことに辛さを覚える程度の肌寒さではある。

　この尋常ならざる気温変化に、地元の人々は陰鬱な
吐息をつくだけだった。聞けば、やはりこれも頻繁に
起こる事象なのだという。
　……江ノ島が<RUBY text="・・・・">おかしく</RUBY>なってから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆分岐。一条の好感度が高ければ０９Ａ。
//◆香奈枝の好感度が高いなら０９Ｂ。

}



scene ma04_010.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//――――――――――――――――――――――――――――――
.//●０９Ａ

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm17",0,1000,true);
	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/bg/bg040_江ノ島全景_01.jpg");
	Fade("絵背景100", 0, 1000, null, false);
	FadeDelete("上背景", 600, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100010a02">
「夜までは待ちですか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100020a00">
「そうなるな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一条と二人、並んで島を眺めやる。
　潜入は夜。ならば昼の内に僅かでも情報を求めたい
ところだが、今日は海水浴客の姿がなく彼ら相手の店
も戸を閉めている。聞き込みには不適の状況だった。

　時間の空費は惜しいが、ここは仕方がない。
　焦らず、待つほかになかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(0,true);
	FadeDelete("絵背景100", 500, false);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100030a02">
「……寂しいですね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100040a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　別に一条は心理状態を伝えたわけではない。それは
すぐにわかった。
　周囲の有様を言っている。

　日が天頂を指す前の海岸ならば、漁に精を出す人々
で賑わっていて良さそうなものだ。
　しかし今、それはない。あるのは海に出ない船と、
海を眺めるばかりの漁師が数人と――寂寞たる空気。

　これが今の片瀬海岸の、真実の姿なのだろう。
　昨日のような喧騒は所詮この地域と何らの関わりも
持たない人々によって演出されたものに過ぎない。

　明媚の地江ノ島は奪われ、その窓口もまた枯れ果て
つつあるのだ。
　<RUBY text="なにゆえ">何故</RUBY>にか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100050a02">
「……許さねぇ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　口の中だけでの、一条の呟き。
　それはどうしてか、俺の耳まで届いた。

　前から、気にしていたからなのかもしれない。
　この少女が時折見せる、尖鋭的な敵愾心は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100060a00">
「……一条は」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100070a02">
「はい？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100080a00">
「六波羅が、憎いか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　戸惑ったように見えた。
　唐突だったせいだろう。

　しかしほんの一瞬。
　彼女にとって、それは己に問い直すべくもない事柄
であったに違いない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100090a02">
「憎いです。
　だって、<RUBY text="・・・・・">間違ってる</RUBY>じゃないですか」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　否定の仕様もない弾劾。
　
　――そう。六波羅の圧政は、間違っている。

　どのような政府でも瑕瑾を探せばきりがない、
　六波羅のような統治者でもいないよりはまし、
　現今の世界情勢を思えば軍事政権もやむなし、<k>
　……六波羅とて、弁護の余地はいくらでもある。

　が、そんな賢しらな理屈が、この針の如く迷いない
弾劾に対して、何の壁になるだろう。
　どう言い繕おうが、彼らが間違っているのは事実な
のだ――誤りを犯しているのは事実なのだ。

　非道という誤りを。

　小賢しい弁護はその実、幕府を守るためのものでは
なく、面と向かって幕府の誤りを非難できない無力感、
屈辱感から己を守るためのものである。
　そんなものに、この少女は一顧だにくれない。

　敵の邪悪からも己の無力からも目を逸らさず、真実
を貫徹せんとする。
　それは異奇なまでの、<RUBY text="つよ">勁</RUBY>さといえた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100110a00">
「お前の力では六波羅を倒せない」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100120a02">
「……はい」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100130a00">
「それでも憎むのか」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100140a02">
「はい。
　それは、関係のないことですから」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100150a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　――関係ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100160a02">
「無力は悔しいです。だからあたしも戦える
力が欲しいです。
　でも……たとえこの先ずっと、無力なまま
でも。あたしは六波羅を憎みます」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100170a02">
「あいつらが間違っている事に変わりはない
んですから。
　あたしは絶対、六波羅を認めません。否定
します。力の有る無しには関わりなく」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　――戦わねばならないから戦う。
　その決断に、勝つか負けるかという計算は必要ない。

　そんな言葉を思い出した。
　いつか誰かが誰かに放った、不遜な言い草。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100180a00">
「そうか、一条」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100190a02">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100200a00">
「お前は六波羅と戦うか。
　力がどれほど及ばなかろうと」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100210a02">
「はい」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100220a00">
「俺もそうだ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100230a02">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100240a00">
「敵の力は確実に俺を凌駕する。
　比べる事が馬鹿馬鹿しい程、圧倒的な開き
がある」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100250a00">
「だが……戦わねばならない」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100260a02">
「……銀星号、ですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100270a00">
「そうだ」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100280a02">
「正直……信じられません。
　湊斗さんよりも……しかもそんな比べ物に
ならないほど強いなんて」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100290a00">
「事実だ。つまらぬ謙遜は言わん。
　過去に幾度か、あれと太刀を交える機会が
あったが――」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100300a00">
「掠り傷一つ、負わせ得た<RUBY text="ためし">例</RUBY>はない」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100310a02">
「……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100320a00">
「それでも俺はあれを制する。
　力の不足は必然たる戦いから逃げる言い訳
にはならない。戦いが必然であるなら元より
逃げ場などはない」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100330a00">
「ただ、敵を打ち砕く力を得るのみだ」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100340a02">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100350a02">
「はい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100360a00">
「一条……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　少女の顔貌を見つめる。
　瞳孔の奥に潜む、細い刃の危うさを。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆照れ
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100370a02">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100380a00">
「お前と俺は似ているのかもしれない。
　こんなところだけが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　だからだろうか。
　ふと、予言めいた言葉が口をついた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100390a00">
「お前はいずれ力を手に入れるだろう」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0100400a02">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100410a00">
「その力が……
　お前に相応しい、<RUBY text="・・・・・">正しきもの</RUBY>であることを
祈る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_011.nss"

}


//――――――――――――――――――――――――――――――
.//●０９Ｂ
scene ma04_010.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm18",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100420a03">
「景明さま、おなかすきません？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100430a00">
「まだ、さほどには」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100440a03">
「じゃ、もう少ししたら集まってお昼にしま
しょう。
　わたくし、あの江ノ島丼というものを一度
食べてみたいんです」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100450a00">
「……サザエの卵綴じがどうして江ノ島なの
か、自分としては些か疑問ですが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　海岸線を歩く。
　同道するのは香奈枝嬢だけだった。ほかは別行動を
とっている。

　散歩ではなく、夜に備えた情報収集のつもりだった
が、その思惑は達せられそうになかった。
　聞き込もうにも人が少ないのだ。閑散としている。
この涼気が季節外れの海水浴客を散らせたからだろう。

　程々の所で、切り上げるべきと思われた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100460a00">
「戻りましょうか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100470a03">
「もう少し、海を見ていきません？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100480a00">
「戻りながらでも見られます」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100490a03">
「あん。そのナチュラルに女心を踏みにじる
朴念仁っぷりがとっても素敵……。
　くらくら、くら」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100500a00">
「大丈夫ですか。大尉殿」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100510a03">
「景明さまの魅力がわたくしを惑わすのです。
　これは……恋？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100520a00">
「錯覚です。
　気を確かにお持ち下さい」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100530a03">
「こうして景明さまのお側にいるだけで動悸
が激しくなりますの……ああっ。わたくしは
一体、どうしてしまったのかしら？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100540a00">
「心臓疾患の一種と考えられます。
　医師の診断をお受け下さい」

{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100550a03">
「違います……！
　わたくしの胸に巣食ういばらの園、これは
きっと、景明さまの真心からのお言葉があれ
ば……！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100560a00">
（真心から……）

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100570a03">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100580a00">
「貴方は、錯乱しています」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100590a03">
「わかりました。もうそれでいいです。
　じゃあ少し休みましょう」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100600a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　足を止める。
　辺りには、誰もいなかった。

　都合の良いことであったかもしれない。
　彼女が何かを、俺に話したがっているのはわかって
いた。

　沈黙を友として待つ。
　程なく、予期していたものは訪れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100610a03">
「景明さま」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100620a00">
「はい、大尉殿」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100630a03">
「また、戦いになりますね」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100640a00">
「……は。
　おそらくは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　江ノ島にあるものが、銀星号と関わるにせよそうで
ないにせよ。
　その秘事を知ることは――平和ならざる衝突を意味
せずにおかないだろう。

　六波羅が隠している何かを暴き立て、かつ平穏裡に
脱出しようというのは、少々楽観が過ぎる。
　そうできるなら、それに越した事はないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100650a03">
「また、人が死にますね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100660a00">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　軽い口調で投げられる、鋭い棘。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100670a03">
「景明さまは……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100680a00">
「……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100690a03">
「人を殺すのが、お好きですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　その問いには、絶句した。
　呼吸すら忘れる。

　大鳥大尉はこちらを窺っている。
　注意深く――瞳は深く下ろされた瞼が隠していても
口元でわかる。<RUBY text="・・・・・・・・">笑っていない微笑</RUBY>を湛えた口元で。

　彼女は覗き込んでいる。
　俺の――<RUBY text="しんり">心裏</RUBY>を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100700a00">
「……好きでは、ありません」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100710a03">
「お嫌いですか？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100720a00">
「……はい。
　嫌悪します」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100730a00">
「殺人行為はおぞましいものです。
　決して――」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100740a00">
「容認できません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　矛盾。
　殺人者がそれを口にする、不合理。

　その矛盾を、大尉が指摘することはなかった。
　ただ、<RUBY text="わら">嗤</RUBY>った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100750a03">
「わたくしは……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100760a00">
「……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100770a03">
「人を殺すことが好きです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　<RUBY text="わら">哂</RUBY>った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100780a03">
「人の生命を<RUBY text="こうりゃく">寇掠</RUBY>する瞬間……
　享楽を覚えずにいられません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景100", 5100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	Request("絵背景100", Smoothing);

	SetShade("絵背景100", HEAVY);
	Move("絵背景100", 0, 100, -75, null, true);

	CreateTextureEX("絵背景200", 5200, 213, -681, "cg/st/resize/st香奈枝_射撃_私服a_m.png");
	Move("絵背景200", 0, @-100, @0, null, true);

	Move("絵背景100", 1200, -15, -75, null, false);
	Move("絵背景200", 1000, @+100, @0, null, false);
	OnSE("se戦闘_銃器_構える02",1000);

	Fade("絵背景100", 300, 1000, null, false);
	Fade("絵背景200", 300, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　いつしか。
　衣の裾から取り出された長銃は、先端を俺へ向けて
いた。

　俺の心臓へ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100790a03">
「残念。
　景明さまとは、趣味が合いませんのね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100800a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100810a00">
「嗜好とは人それぞれ。
　なれど些か、下らぬご趣味かと」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100820a03">
「そう思われます？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100830a00">
「はい。
　こうも思います」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100840a03">
「何でしょう」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100850a00">
「恥を知れ、と」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100860a03">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　大鳥大尉は噴き出した。
　慌てて口元に手をあて――しかし尚、笑う。

　普通の人間なら爆笑というところだ。
　彼女の受けてきた教育はそんな振舞いを許さないの
だろう。

　くつくつ、くつくつと。
　笑う。

　耳に障った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100870a00">
「お楽しみ頂けたようで幸い。
　諧謔のつもりはなかったのですが」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100880a03">
「ええ……本当に。
　今のは楽しませて頂きました」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100890a03">
「お礼に……わたくしも一つ。
　楽しい話をいたしましょう」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100900a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100910a03">
「むかしむかし……
　ある山奥に、鬼が住んでおりました」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100920a03">
「鬼はそれはそれは強く、猪や熊でさえも鬼
にはかないませんでした。
　鬼はいつしか山の主と呼ばれ、恐れられる
ようになりました」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100930a03">
「鬼はやがて、人里へも目を向けます。
　人間にも自分の強さを見せ付けてやりたく
なったのです」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100940a03">
「鬼は山を下り、麓の村で暴れ回りました。
　男を殺し、子供を喰らい、女を犯し……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100950a03">
「<RUBY text="・・・">大喜び</RUBY>で、村を荒らし尽くしたそうです」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0100960a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100970a03">
「しかし、村を治める領主は勇敢な侍でした。
　村を守るため、敢然と鬼に立ち向かったの
です」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100980a03">
「鬼は強く、領主は幾度となく敗れ、傷つき
ました。
　それでも領主は諦めずに戦い、遂には山の
仙人の助けを得て、鬼を打ち倒したのです」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0100990a03">
「皆は喜びました。
　しかしやがて、困ったことに気づきました」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101000a03">
「鬼に犯された娘たちのお腹が、三月も経た
ないうちに膨れてきたのです。
　そう。鬼の子供を身籠ってしまったのです」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101010a03">
「このままではまた鬼が生まれてきてしまう。
　やむを得ず、領主は<RUBY text="・・・・">泣く泣く</RUBY>、娘達を集め
て焼き殺しました。鬼に汚された魂を清める
ために、そうするよう仙人が助言したのです」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0101020a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101030a03">
「こうして、村は平和を取り戻しました。
　領主は生き神様と崇められ、死後は神社に
祀られて本当の神様になったそうです」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101040a03">
「めでたし、めでたし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　大尉が口を閉ざす。
　辺りが静かになる。

　沈黙。
　静寂。

　彼女の唇が震えた。
　痙攣するように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101050a03">
「ぷっ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0101060a00">
「……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101070a03">
「くくっ……あははっ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101080a03">
「あはははははははは！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101090a03">
「あぁぁはははははははははははははは!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆空？
//◆銃声ずぎゅーん。
//◆ちょっと間を取って
	SetVolume("@mbgm*", 1, 1, null);
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");//ダミー注意
	CreateTextureEX("絵背景1000", 6100, Center, -4873, "cg/bg/bg202_旋回演出背景山a_01.jpg");

	Move("絵背景1000", 1000, @0, @800, Dxl2, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景1000", 100, 1000, null, true);
	Delete("絵背景100");
	Delete("絵背景200");
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	WaitKey(1000);
	SetVolume("@mbgm*", 4000, 1000, null);
	FadeDelete("絵背景1000", 2000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101100a03">
「……さ。
　そろそろ参りましょうか」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0101110a03">
「景明さま」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0101120a00">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　首筋に出来た火傷を一度、指先で擦って。
　俺は頷いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_011.nss"

}



