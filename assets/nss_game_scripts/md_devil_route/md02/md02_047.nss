//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_047.nss_MAIN
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
	#ev001_銀星号事件イメージ１=true;
	#bg047_景明故郷町b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_001.nss";

}

scene md02_047.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_046.nss"


//◆銀星号災厄
//◆殺戮と汚染。狂乱。


	PrintBG("上背景", 30000);

	SoundPlay("@mbgm37", 0, 1000, true);

	CreateColorSP("黒幕１", 5000, "BLACK");
//	CreateTexture("狂乱", 3000, @0, @0, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureSP("狂乱", 3000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureSP("狂乱2", 3000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Zoom("狂乱2", 0, 1200, 1000, null, true);
	Fade("狂乱2", 0, 300, null, true);

	DrawEffect("狂乱2", 50, "LowWave ", 0, 100, null);

	SoundPlay("@mbgm37", 0, 1000, true);
	CreateSE("SE01", "se戦闘_銀星号_精神汚染波_L");
	CreateSE("SE02", "se背景_ガヤ_合戦01");
	MusicStart("SE01", 3000, 500, 0, 1000, null,true);
//■狂っているっぽさを出すため、50%速度で再生　inc櫻井
	MusicStart("SE02", 3000, 300, 0, 500, null,true);

	CreateColorEX("薄黒幕", 4999, "BLACK");

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(1000);
	Fade("薄黒幕", 1000, 300, null, true);


//《生と死の選択を己に課す命題として自ら問う》
//《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》

	CreateTextureEX("唄1", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
	CreateTextureEX("唄2", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");


	Move("唄1", 0, @0, @-80, null, true);
	Move("唄2", 0, @0, @-40, null, true);


	Move("唄1", 600, @0, @-10, Dxl1, false);
	Fade("唄1", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄2", 600, @0, @-10, Dxl1, false);
	Fade("唄2", 600, 1000, null, false);

	WaitKey();

	Fade("唄1", 500, 0, null, false);
	Fade("唄2", 500, 0, null, true);
	Delete("唄*");

//《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》
//《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》
//《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》
//《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》

	CreateTextureEX("唄3", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
	CreateTextureEX("唄4", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
	CreateTextureEX("唄5", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
	CreateTextureEX("唄6", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");


	Move("唄3", 0, @0, @-80, null, true);
	Move("唄4", 0, @0, @-40, null, true);
	Move("唄5", 0, @0, @0, null, true);
	Move("唄6", 0, @0, @+40, null, true);

	Move("唄3", 600, @0, @-10, Dxl1, false);
	Fade("唄3", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄4", 600, @0, @-10, Dxl1, false);
	Fade("唄4", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄5", 600, @0, @-10, Dxl1, false);
	Fade("唄5", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄6", 600, @0, @-10, Dxl1, false);
	Fade("唄6", 600, 1000, null, false);

	WaitKey();

	Fade("唄3", 500, 0, null, false);
	Fade("唄4", 500, 0, null, false);
	Fade("唄5", 500, 0, null, false);
	Fade("唄6", 500, 0, null, true);
	Delete("唄*");


//《生の意味を信じる者よ道化の真摯な詭弁を聞け》
//《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》
//《生命に問いを向けるなら道化と悪魔は匙を持ち》
//《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》
//《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
//《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

	CreateTextureEX("唄7", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
	CreateTextureEX("唄8", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
	CreateTextureEX("唄9", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
	CreateTextureEX("唄10", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
	CreateTextureEX("唄11", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
	CreateTextureEX("唄12", 16000, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");

//もとは-80　そこから＋40ずつして位置を調整　inc櫻井
	Move("唄7", 0, @0, @-100, null, true);
	Move("唄8", 0, @0, @-60, null, true);
	Move("唄9", 0, @0, @-20, null, true);
	Move("唄10", 0, @0, @+20, null, true);
	Move("唄11", 0, @0, @+60, null, true);
	Move("唄12", 0, @0, @+100, null, true);


	Move("唄7", 600, @0, @-10, Dxl1, false);
	Fade("唄7", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄8", 600, @0, @-10, Dxl1, false);
	Fade("唄8", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄9", 600, @0, @-10, Dxl1, false);
	Fade("唄9", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄10", 600, @0, @-10, Dxl1, false);
	Fade("唄10", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄11", 600, @0, @-10, Dxl1, false);
	Fade("唄11", 600, 1000, null, false);

	WaitKey(2000);

	Move("唄12", 600, @0, @-10, Dxl1, false);
	Fade("唄12", 600, 1000, null, false);

	WaitKey();

	Fade("唄1", 500, 0, null, false);
	Fade("唄2", 500, 0, null, false);
	Fade("唄3", 500, 0, null, false);
	Fade("唄4", 500, 0, null, true);
	Delete("唄*");

//表示しないようにしておく inc櫻井
/*

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
《生と死の選択を己に課す命題として自ら問う》
《されば嘲笑の歓喜する渦に喜劇の幕よいざ上がれ》

《嵐の夜に吼え立てる犬は愚かな盗賊と果敢に戦う》
《温かい巣で親鳥を待つ雛は蛇の腹を寝床に安らぐ》
《木漏れ日の下で生まれた獅子は幾千の鹿を飽食し》
《せせらぎを聞く蛙の卵は子供が拾って踏みつぶす》

《生の意味を信じる者よ道化の真摯な詭弁を聞け》
《死の恐怖に震える者よ悪魔の仮面は黒塗りの鏡》
《生命に問いを向けるなら道化と悪魔は匙を持ち》
《生命を信じ耽溺するなら道化と悪魔は冠を脱ぐ》
《獣よ踊れ野を馳せよ唄い騒いで猛り駆けめぐれ》
《いまや如何なる鎖も檻も汝の前には朽ちた土塊》

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

*/

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 2500, 1000, null, true);
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);
	Delete("狂乱");
	Delete("狂乱2");
	Delete("薄黒幕");

	Wait(2000);

	CreateSE("歩く", "se人体_足音_歩く02_L");
	MusicStart("歩く", 0, 1000, 0, 1000, null, false);
	WaitKey(2000);


//◆破壊跡。bg047a_夜


	OnBG(100, "bg047_景明故郷町b_03.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",1500,true);

	SetVolume("歩く", 1000, 0, null);


	Wait(1000);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470010a00">
「……ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm15", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="おびただ">夥</RUBY>しい死があった。
　幾多の命がただ無為に、引き裂かれ、意味を失って
散っていた。

　――誰が招いた？

　――誰がこの災厄を起こした？

　銀星号？

　……違う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆村正

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470020a01">
「…………」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470030a01">
「貴方を追っていたら……
　銀星号の<RUBY text="けはい">香気</RUBY>がして」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470040a01">
「まさかと思って来てみたんだけど……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470050a01">
「……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470060a01">
「ごめんなさい……。
　来るのが……遅かった……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　いつの間にか村正が傍らに立ち、詫びていた。

　だが、何を詫びるのだろう。
　村正がこの地獄の原因か？

　違う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470070a00">
「俺が……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470080a01">
「……御堂」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470090a00">
「……俺の誤断が……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　防げた筈の災いを、防がせなかった。

　これは阻止できたのだ！
　俺が光を、殺していれば！

　俺にはそれが可能だった。
　なのにしなかった。

　だからこうなった!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470100a00">
「…………殺す」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470110a01">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470120a00">
「殺す……
　光を……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。病床の光・現在
//■つい先ほどのことなため、回想はおかしいから別方法 inc櫻井

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	OnSE("se擬音_回想_フラッシュバック01", 1000);
	
//ev128_病床の光_g

	CreateTexture("絵回想100", 2000, Center, Middle, "cg/ev/ev128_病床の光_g02.jpg");
	Fade("フラッシュ白",300,500,null,true);
	WaitKey(1500);

	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵回想*");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	Wait(500);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470130a00">
「……ッッ……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470140a00">
「あ――アアアア」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470150a07">
「できない。
　……お兄さんには、できないな」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470160a01">
「っ!?」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470170a07">
「しょっ――と」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸出現
//◆村正を組み伏せる

	StCR(900, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStCR(300,false);


	OnSE("se人体_衝撃_転倒03", 1000);


	DrawDelete("@StR*", 150, 100, "slide_02_01_1", true);


	Wait(1000);

	DeleteStA(300,true);


	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470180a01">
「っ……貴方！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm04", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　堀越公方――足利茶々丸。
　完全な奇襲で村正を組み伏せ、そこにいる。

　しかし、目は膝下の村正を見ていない。
　真っ直ぐ俺に注がれていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470190a07">
「お兄さんはどうしようもなく湊斗光を愛し
てる。
　まるで……呪いのように」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470200a00">
「…………」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470210a07">
「お兄さんは御姫を殺せない。
　そうなると……あてが用意できる運命は、
もう一つの方になるな」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470220a01">
「何をする気!?」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470230a07">
「これ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　掌の中に――
　白く、輝く、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	CreateColorEXadd("たまご", 15000, "WHITE");
	CreateColorEXadd("たまご２", 1500, "WHITE");
	DrawTransition("たまご２", 0, 200, 200, 500, null, "cg/data/circle_01_00_0.png", true);

	OnSE("se特殊_その他_卵生成01", 1000);

	Fade("たまご", 500, 1000, null, true);
	Fade("たまご２", 0, 700, null, true);

	Fade("たまご", 1000, 0, null, true);


	Wait(500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470240a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

// ボックス分け
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
〝卵〟!?
　何故、それが堀越公方の手に。

　真逆……これは、光が俺に使おうとしていたものか。
　汚染波の結晶だと言っていた、あの――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470250a07">
「チャンス到来、だね」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470260a01">
「さ……させるかぁ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ばちばち。発電音


//◆ef035


	CreateSE("SE01", "se戦闘_攻撃_電撃帯電01");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);

	CreateColorEXadd("たまご", 3000, "WHITE");

	Fade("たまご", 300, 1000, null, true);
	Fade("たまご２", 0, 0, null, true);
	Delete("たまご２");

	CreateTextureSP("蜘蛛の巣", 2000, @0, @0, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	CreatePlainSP("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	DrawDelete("たまご", 100, 100, "beam_03_00_1", true);
	SetBlur("絵板写", 8, true, 400, 200);

	Fade("絵板写", 0, 500, Dxl1, true);
	Zoom("絵板写", 100, 1100, 1100, Dxl2, false);
	Fade("絵板写", 500, 800, null, true);

	Zoom("絵板写", 1000, 1000, 1000, Dxl1, false);
	Fade("絵板写", 1000, 0, null, true);

	SetFwC("cg/fw/fw茶々丸_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470270a07">
「うるせえ。
　いいとこで……邪魔すんなっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆ずばーん。より強い力で吹き散らす。

	CreateSE("SE01", "se特殊_その他_茶々丸衝撃波");
	Delete("絵板写");

	MusicStart("SE01", 0, 1000, 0, 1000, null,false);
	EffectZoomDXadd(10000, 1000, 200, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	DrawDelete("蜘蛛の巣", 300, 100, "circle_01_00_1", true);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE02", "se特殊_陰義_発動03");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470280a01">
「なっ……!?」

{	SetVolume("SE*", 1000, 0, null);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470290a07">
「仕手がいなけりゃ五分と五分。
　じゃねえな……あての方が一枚上だ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470300a01">
「貴方、まさか」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470310a01">
「<RUBY text="・・・">まさか</RUBY>」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470320a07">
「さぁて……
　お兄さん？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470330a07">
「心の準備はそろそろＯＫ？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470340a00">
「――――」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470350a01">
「みっ……御堂！
　<RUBY text="・・・">呼んで</RUBY>！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470360a01">
「装甲して!!
　私を――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　動きを封じられた俺の劒冑が叫ぶ。

　そうだ。
　このままでは危うい。

　装甲し、甲鉄の守護で<RUBY text="あれ">卵</RUBY>の力を防ぐのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクションＡ。但し周囲の金属片無し

	StL(1000, @0, @0, "cg/st/st景明_装甲_私服a1.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStL(300, false);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470370a00">
「鬼に――」

{	FadeStR(300, false);
	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470380a07">
「湊斗光の命を救う方法がある」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆装甲アクションＢ。但し周囲の金属片無し

	CreatePlainSP("絵板写", 5000);
	StL(1000, @0, @0, "cg/st/st景明_装甲_私服b1.png");

	Shake("@StL*", 300, 5, 0, 0, 0, 1000, Dxl2, false);
	FadeStL(0, false);
	Wait(12);
	FadeDelete("絵板写", 300, false);

//◆ウェイト

	WaitKey(500);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470390a00">
「な」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0470400a00">
「なに……？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470410a07">
「助けたいんでしょ？
　魔王でも殺人鬼でも、湊斗光に生きていて
欲しいんでしょ？」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470420a07">
「あれはあと一月も保たずに衰弱死する。
　でも、その前に助ける方法はある……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470430a00">
「――――」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470440a01">
「駄目よ！
　聞いちゃ駄目っ！」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470450a01">
「どんな理由があったって……貴方の<RUBY text="こころ">心魂</RUBY>を
捨てていいわけが――」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470460a07">
「黙れってぇの!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆なんか力使った。

	CreateSE("SE01", "se特殊_陰義_幻影02");
	MusicStart("SE01", 0, 1000, 0, 1000, null,false);

	CreatePlainSP("絵板写", 100);
	Fade("絵板写", 0, 1000, null, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	DeleteStA(0,false);
	Fade("フラッシュ白",300,0,null,true);
	Shake("絵板写", 500, 0, 30, 0, 0, 300, null, true);
	Delete("絵板写");
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470470a01">
「あぐぅっ！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470480a00">
「村正！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470490a07">
「<RUBY text="・・・・">お兄さん</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆茶々丸以外にシャドー

	CreateColorSP("絵色白", 2000, "WHITE");
	CreateStencil("マスク１",1000,0,0,128,"cg/bg/bg047_景明故郷町a_03.jpg",false);
	SetAlias("マスク１","マスク１");
	CreateColor("マスク１/logoM001", 400, 0, 0, 1024, 576, "WHITE");
	SetAlias("マスク１/logoM001","マスク１/logoM001");
	Fade("マスク１/logoM001", 1000, 800, Dxl1, false);
	SetShade("マスク１", HEAVY);
	Fade("絵色白", 100, 0, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	StC(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	FadeStC(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　その瞬間、あらゆる音が奪われた。
　静寂――深海の底に沈むかの。

　足利茶々丸の声だけが唯一、神託めいて響く。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470500a07">
《湊斗光を救いたい。
　……それがお兄さんの、偽りない本心だ》

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470510a07">
《よね？》

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470520a00">
「――――――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　それは、

　それは……

　――――確かに、否定できない、俺の――――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆復帰

	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	FadeDelete("マスク１/logoM001", 1000,true);

	SetFwR("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470530a01">
「駄目ぇ!!」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470540a07">
「……貰ったよ。
　その、<RUBY text="ココロ">心魂</RUBY>!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆卵
//◆きゅいーん。光が
//◆汚染エフェクト

	CreateColorEXadd("たまご", 15000, "WHITE");

	OnSE("se特殊_雰囲気_共鳴01", 1000);
	Fade("たまご", 500, 700, null, true);
	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	CreateTextureEX("汚染", 14000, @0, @0, "cg/ef/ef034_精神汚染.jpg");
	Fade("汚染", 1000, 1000, null, false);


	DeleteStA(500,true);
	Fade("たまご", 1000, 0, null, true);

	CreateSE("SE01", "se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);


	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470550a00">
「……お……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0470560a00">
「おア……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470570a01">
「御堂!!」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470580a07">
「<RUBY text="それ">卵</RUBY>は人の魂を素直にする」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470590a07">
「さぁ――お兄さん！」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0470600a07">
「あなたの望みは!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆しゅぱー。更に強い光

	CreateColorEXadd("たまご", 15000, "WHITE");

	OnSE("se特殊_その他_辰気流蒸発", 1000);
	Fade("たまご", 500, 1000, null, true);

	DeleteStA(0,true);
	EffectZoomDXadd(10000, 1000, 100, "#FFFFFF", "cg/ef/ef034_精神汚染.jpg", false);
	Fade("たまご", 1000, 0, null, true);


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0470610a00">
「おおオオオオオオオオオオオアアアア!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　望み。

　俺の……望み？

　そんなものは――――――――決まっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0470620a01">
「……御堂ーーーーーーーっっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カキーン。ホワイトアウト。
//◆洗脳完了！っぽく。
	SetBlur("汚染", true, 3, 500, 100, false);
	CreateColorEXadd("汚染完了", 15000, "WHITE");

	OnSE("se特殊_雰囲気_崩壊音", 1000);
	OnSE("se特殊_その他_卵生成01", 1000);
	Zoom("汚染", 3000, 2000, 2000, Axl1, false);

	Wait(1500);
	Fade("汚染完了", 0, 1000, null, true);
	DrawTransition("汚染完了", 1500, 0, 1000, 500, null, "cg/data/zoom_01_00_0.png", true);
	Delete("@OnBG*");
	Delete("汚染");

//念のための inc櫻井
	CreateColorSP("下敷き", 50, "WHITE");
	FadeDelete("汚染完了",3000,true);
	SetVolume("SE*", 3000, 0, null);

	Wait(4000);

//◆Ｂパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
//あきゅん「演出：外注部分退避」
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",3000,true);

	Wait(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"md03_001.nss"