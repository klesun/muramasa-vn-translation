//<continuation number="220">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_026vs.nss_MAIN
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
	#bg056_建長寺三門前_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	#av_黒瀬童子=true;

	$PreGameName = $GameName;
	$GameName = "md03_027vs.nss";

}

scene md03_026vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_025vs.nss"


//◆景明サイド

	PrintBG("上背景", 30000);
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	CreateColorSP("黒幕１", 20000, "BLACK");
	Delete("上背景");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	SoundPlay("@mbgm13", 0, 1000, true);

	SetFwC("cg/fw/fw景明汚染_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0010a00">
「……驚いたな。少々」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　一条が劒冑を持ち、しかも中々に使いこなしていた
事にもだが――
　それ以上に、小弓公方今川雷蝶の強さ。

　武辺の人物と聞いてはいた。
　しかし、何分にも足利家の御曹司。轟く武名の半分
は宣伝目的で演出されたものであろうと、高を<RUBY text="くく">括</RUBY>って
いたのだが。

　どうもあの公方、武人としての評価に<RUBY text="・・・">掛け値</RUBY>は全く
無かったようだ。
　六波羅正規兵と比べても遜色ない動きを示している
一条に相対しながら、まるで寄せ付けていない。

　俺が見るに、八幡宮で戦った<RUBY text="ちちおや">護氏</RUBY>を凌駕する。
　<RUBY text="タイプ">性質</RUBY>は全く違うにせよ、光に迫る力量の持ち主では
ないのか……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw黒瀬_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0020b26">
「何処を見ている！」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0030a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬

	StL(1000, @0, @30, "cg/st/st黒瀬_戦闘_私服.png");
	FadeStL(300, true);

	Wait(200);

	SetFwC("cg/fw/fw景明汚染_冷笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0040a00">
「まだ抵抗するつもりか？
　おとなしくしていた方が、楽に死ねるだけ
得だと思うが」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0050b26">
「寝言を……！
　何処の腑抜けが、戦いを投げるか」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0060b26">
「背後には舞殿宮殿下がおられるというのに
……この程度の傷で！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);
	Move("@StL*", 300, @, @-30, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　黒瀬が立ち上がる。

　用意良く脚甲を付けていたことは、刃先の手応えで
わかっている。
　が、それで防げるというものでもない。

　一撃浴びた被害は骨まで及んでいるだろう。
　それで立つのだから、大した意志力であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明汚染_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0070a00">
「戦いたいなら、相手をしよう。
　だが、その傷では結果は見えているな……」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0080b26">
「……」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0090b26">
「…………」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0100a00">
「……どうした。なぜ出し惜しむ？
　そんな場合ではなかろう」

{	FwC("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0110a00">
「迷っていては命を取り落とすぞ」

{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0120b26">
「貴公……気付いて、」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0130a00">
「戦うなら、<RUBY text="・・・">隠し玉</RUBY>を出せ。
　でなくば、こちらも相手のし甲斐がない」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0140b26">
「正気か」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0150a00">
「生死の際で物惜しみをする男よりは正常な
頭をしているつもりだ」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0160b26">
「…………」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0170b26">
「これは亡き父の形見……
　いつか岡部の旗を再び掲げ、堂々と倒幕の
兵を挙げる時までは決して使うまいと誓って
いたが」

{	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0180b26">
「止む無し！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばさっ。装束脱ぎ捨てる音
//◆ガキーン。装甲した
//◆武者・黒瀬童子
	#av_黒瀬童子=true;

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");
	CreateSE("SE00a","se人体_動作_抱きつき01");
	CreateSE("SE00b","se人体_動作_跳躍02");
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, 0, -344, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);

	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//おがみ：黒瀬戦闘立ち絵　完成次第作成
	CreateTextureEX("絵演窓上/絵立絵", 16200, -484, -108, "cg/st/resize/st黒瀬_戦闘_私服l.png");
//	Zoom("絵演窓上/絵立絵", 0, 2000, 2000, null, true);

	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);


	Wait(300);

	MusicStart("SE00a",0,1000,0,1000,null,false);

	Move("絵演窓上/絵演背景", 600, @100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);


	MusicStart("SE00b",0,1000,0,1000,null,false);
	Fade("絵フラ", 600, 1000, null, true);

	Delete("絵演窓*");
	Delete("絵色100");

	Wait(500);

	CreateTextureSP("絵演甲冑", 16200, -350, -50, "cg/st/resize/3d黒瀬_立ち_抜刀l.png");
	SetBlur("絵演甲冑", true, 2, 500, 100, false);

	CreateTextureSP("絵演背景", 16100, 0, 0, "cg/bg/bg056_建長寺三門前_03.jpg");
	Zoom("絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演背景", HEAVY);
	Request("絵演背景", Smoothing);

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Wait(1000);

	Move("絵演甲冑", 3000, @-200, @0, Dxl2, false);
	Move("絵演背景", 3000, @-100, @0, Dxl2, false);

	Fade("絵フラ", 1000, 0, null, true);

	Wait(1500);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵演*");
	StC(1000, @0, @0,"cg/st/3d黒瀬_立ち_抜刀.png");
	FadeStA(0,true);

	Wait(500);
	OnSE("se人体_足音_鎧歩く03",1000);

	FadeDelete("絵フラ", 2000, true);

	Wait(500);

	SetFwR("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0190a00">
「やはり劒冑か」

{	FwR("cg/fw/fw黒瀬武者_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0200b26">
「貴公には恩がある。
　殺しはせん」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/026vs0210b26">
「が――腕一本は諦めて貰おう」

{	FwR("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/026vs0220a00">
「……ククク」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	ClearWaitAll(0, 0);

}

..//ジャンプ指定
//次ファイル　"md03_027vs.nss"