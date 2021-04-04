//<continuation number="550">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_029vs.nss_MAIN
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
	#bg001_空a_03=true;
	#ev005_斬り割られた兜=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_001.nss";

}

scene md03_029vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md03_028vs.nss"


//◆茶々丸と村正


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	StL(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	StR(1000, @0, @0, "cg/st/st茶々丸_通常_制服b.png");
	FadeStL(0, false);
	FadeStR(0, false);
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１", 500, true);


	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0010a07">
「――――――――」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0020a07">
「は……はへ？」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/029vs0030a01">
「……今の……まさか……」

//【村正】
<voice name="村正" class="村正さん" src="voice/md03/029vs0040a01">
「江ノ島の……あの時の？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆膝丸

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteStA(0, true);
	CreateTextureSP("そら", 1000, @0, @0, "cg/bg/bg001_空a_03.jpg");
	CreateTextureEX("絵ＳＴＣ200", 1500, -360, -290, "cg/st/3d膝丸_騎航_抜刀.png");
	Fade("絵ＳＴＣ200", 0, 1000, null, true);
	Shake("絵ＳＴＣ200", 2160000, 0, 1, 0, 0, 1000, null, false);

$ループムーブナット名 = "@絵ＳＴＣ200";
$ループムーブタイム = 30000;

	CreateProcess("プロセス", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス","プロセス");

	Request("プロセス", Start);

	CloudZoomSet(1000);
	CloudZoomStartB(1000,800,800,1000,1000);
	CloudZoomVertex(0,@-1000,@0,null,false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);

	SetFwC("cg/fw/fw雷蝶_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0050a08">
「……何よ、あの化け物……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0060a08">
「茶々丸、あんた何を連れて来たのよ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明


	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("プロセス");
	CloudZoomDelete(0,true);
	Delete("そら");
	Delete("絵ＳＴＣ200");
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　周囲の状況を確認する。
　……ほぼ、決着はつきつつあるようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0070a00">
「茶々丸、ぼんやりしているな。
　村正の相手をするなら、真面目にやれ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0080a07">
「あ……うん……」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0090a00">
「何だその目は？」

{	FwC("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0100a00">
「今更、何を怯える？
　何を驚く……」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0110a00">
「俺は<RUBY text="・・・・・">湊斗光の師</RUBY>だぞ」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0120a07">
「そ――そうだ……ね。
　あは、はははは……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　丸きり小動物の目でこちらを見上げてくる茶々丸に
それ以上構わず、俺は黒瀬へ近付いた。
　武者の回復は早い。

　立ち直る前に<RUBY text="とど">止</RUBY>めを刺しておく必要がある……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆署長

	CreateSE("SE01","se人体_動作_一歩");
	MusicStart("SE01",0,1000,0,700,null,false);
	WaitKey(500);
	StC(1000, @0, @0, "cg/st/st署長_戦闘_制服.png");
	FadeStC(500, true);

	Wait(500);

	SetFwL("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0130a00">
「……署長」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0140a11">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm14", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　彼は、俺の前に立ち塞がった。
　太刀を手にしている――劒冑を装甲する時、黒瀬が
投げ出したものだ。

　剣の本来の所有者にも、力量がおさおさ劣らぬ事は、
足取り一つ見ればわかる。
　否、見る間でもなく。湊斗光の師が湊斗景明である
なら、更にその師たる者は彼なのだ。

　菊池明堯。
　――人生の一時期のみ、湊斗明堯と名乗った。

　俺の養父。
　湊斗統の夫。

　そして、
　湊斗光の、<RUBY text="・・・・・・・・・">父たり得なかった父</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0150a11">
「二度目だな」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0160a00">
「……？」

{	FwL("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0170a11">
「お前の――その剣」

{	FwL("cg/fw/fw景明汚染_冷笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0180a00">
「ああ……そうか。
　貴方は一度、見ていたな」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0190a00">
「あの時」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ。割れた兜

	EfRecoIn1(18000,300);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/ev/ev005_斬り割られた兜.jpg");
	EfRecoIn2(100);
	WaitKey(1500);

	EfRecoOut1(100);
	Delete("絵回想100");
	EfRecoOut2(300,true);

	SetFwL("cg/fw/fw署長_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0200a11">
「…………」

{	FwL("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0210a11">
「あの時、お前を壊したのは私だ。
　その過ちは今更、どうしようもない……が」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0220a11">
「今度は……壊れゆくままにしておきたくは
ない」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0230a00">
「……」

{	FwL("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0240a11">
「村正の精神干渉を受けろ、景明。
　元に戻れ」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0250a00">
「元に……？」

{	FwL("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0260a11">
「……」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0270a00">
「それがどういう意味なのか、わかっていて
言っているのか？
　署長……」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0280a00">
「菊池明堯！」

{	FwL("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0290a11">
「……景明……」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0300a00">
「誰が光を愛するのだ!?」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0310a00">
「俺があいつを捨ててしまったら！
　もう統様はいない……」

{	FwL("cg/fw/fw景明汚染_哄笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0320a00">
「そして貴方は！
　とうの昔に、光を捨てている！」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0330a11">
「――――」

{	FwL("cg/fw/fw景明汚染_愉悦.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0340a00">
「ああ、それが悪いとは言わない。
　貴方に光への愛情を期待するのは、無理な
相談というものだろう」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0350a00">
「責めはしない。
　見捨てて、何処へでも去ればいい」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0360a00">
「だが……俺の邪魔をするな!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0);//―――――――――――――――――――――――――――――

//◆切り結ぶ。ここＣＧ用意？
//	OnSE("se人体_動作_後ずさり01",1000);
//	CreateTextureEX("まえ", 2000, @0, @0, "cg/ef/ef003_汎用移動.jpg");
//	Fade("まえ", 200, 1000, null, false);
//	Zoom("まえ", 200, 1500, 1500, null, false);


	OnSE("se戦闘_攻撃_刀振る01",1000);

	CreateColorSP("黒幕２", 2001, "BLACK");
	CreateColorEXadd("白幕", 2500, "WHITE");
//	Fade("黒幕２", 0, 1000, null, false);


	Fade("白幕", 100, 1000, null, true);
	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	CreateTextureSPadd("絵演1", 2002, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
//	DrawTransition("絵演1", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", false);
	CreateTextureSPadd("絵演2", 2003, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
//	DrawTransition("絵演2", 50, 0, 1000, 100, null, "cg/data/beam_02_00_0.png", true);
	OnSE("se戦闘_攻撃_刀衝突02",1000);
	CreateTextureSPadd("ひばな", 10000, @0, @0, "cg/ef/ef044_火花a.jpg");
	DeleteStA(0, true);
	Fade("黒幕１", 0, 1000, null, true);
	FadeDelete("白幕", 500, false);
	Fade("ひばな", 1000, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　打ち付けた太刀は、同等の質量で阻まれた。
　鋼と鋼が食い合い、微量の鉄粉を空に撒く。

　二振りの剣を×字にした体勢で、俺と彼は凝固した。
　
　吉野御流合戦礼法――<RUBY text="はいむし">這虫</RUBY>の形。

　敵が剛力で押して来たならば、引き外して敵の体を
泳がせ、その隙を斬る。
　敵が後方へ退こうとしたならば、一息に押し出して
押し倒し、押し斬る。足絡みの併用が効果的だ。

　対手の進退を瞬時に見極め、即応して勝つ法。
　俺は――そして当然彼も、この術技を心得ている。

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0);//―――――――――――――――――――――――――――――

//	Delete("まえ");
	SetFwL("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0370a00">
「俺は光を捨てない」

{	FwL("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0380a11">
「……」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0390a00">
「俺だけは光を愛する！
　妨げる者は許さん！」

//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0400a00">
「誰であっても!!」

{	FwL("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0410a11">
「……景明」

{	FwL("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0420a11">
「それは……愛情ではない……」

{	FwL("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0430a00">
「――――」

{	FwL("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0440a11">
「呪いだ。
　お前は、自分で自分を呪っている」

{	FwL("cg/fw/fw景明汚染_激情.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0450a00">
「黙れェ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆ぎりぎり。鍔迫り合い
//◆緊迫。そこへ。
//◆ぐおーんずしゃー。竜騎兵が一騎、着陸。


//	Request("絵演1", Smoothing);
//	Request("絵演2", Smoothing);

//	SetBlur("絵演1", true, 2, 500, 50, false);
//	SetBlur("絵演2", true, 2, 500, 50, false);



	SetShade("絵演1", SEMIHEAVY);
	SetShade("絵演2", SEMIHEAVY);

	Shake("絵演1", 1000, 1, 2, 0, 0, 400, Axl1, false);
	Shake("絵演2", 1000, 2, 1, 0, 0, 600, Dxl3, false);
	Zoom("絵演2", 0, 1020, 1020, null, false);
	Zoom("絵演1", 0, 1050, 1050, null, false);

	Rotate("絵演2", 1000, @1, @-2, @5, null, false);
	Rotate("絵演1", 1000, @-1, @3, @-15, null, false);
	CreateTextureSPadd("ひばな", 10000, @0, @0, "cg/ef/ef044_火花a.jpg");

	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 20, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("ひばな", 10, 0, null, true);

	SetVolume("@mbgm*", 1000, 0, null);

	Fade("ひばな", 500, 0, null, false);
	Fade("絵演*", 500, 0, null, false);
	Fade("黒幕２", 500, 0, null, false);
//	WaitKey(500);
	OnSE("se戦闘_動作_空突進04",1000);

	WaitKey(1500);

	OnSE("se戦闘_動作_鎧_着地01",1000);

//	WaitKey(1150);
	Wait(500);



	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md03/029vs0460a00">
「!!」

{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/029vs0470a11">
「……っ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("ひばな");
	Delete("絵演*");
	Delete("黒幕２");

	CreateColorEXadd("絵色100", 1500, "WHITE");

	CreateSE("SE01","se人体_動作_一歩");
	OnSE("se戦闘_攻撃_刀衝突01",1000);

	Fade("絵色100", 0, 1000, null, true);

	Fade("絵色100", 1000, 0, null, true);


/*
	Fade("黒幕２", 0, 1000, null, true);
	Fade("ひばな", 0, 1000, null, true);
	Fade("絵演*", 0, 1000, null, true);
	SetBlur("絵演1", true, 2, 500, 50, false);
	SetBlur("絵演2", true, 2, 500, 50, false);
	Move("絵演1", 100, @-300, @-300, null, false);
	Move("絵演2", 100, @300, @300, null, false);
	Rotate("絵演1", 100, @0, @20, @-60, Axl3, false);
	Rotate("絵演2", 100, @0, @-20, @60, Axl3, false);
	MusicStart("SE01",0,1000,0,700,null,false);
	Fade("ひばな", 1000, 0, null, false);
	FadeDelete("黒幕*", 1000, false);
	FadeDelete("絵演*", 500, false);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　突如の轟音に、俺と署長は揃って飛び離れた。
　
　何だ――異変か？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆六波羅竜騎兵
	SoundPlay("@mbgm34",0,1000,true);

	StR(1000, @100, @0, "cg/st/3d九四式竜騎兵_立ち_通常.png");
	OnSE("se特殊_鎧_駆動音01", 1000);
	Move("@StR*", 300, @-100, @0, Dxl2, false);
	FadeStR(300, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……竜騎兵だ。
　六波羅正規の。

　今の音は着陸音だったらしい。
　余程に急いで<RUBY text="とんで">騎航して</RUBY>きたのか、合当理が荒々しく
煙を吹いている。

　しかし、何故？
　増援？　そんなものが必要な局面ではないが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetNwC("cg/fw/nw竜騎兵.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／伝令竜兵】
<voice name="ｅｔｃ／伝令竜兵" class="その他男声" src="voice/md03/029vs0480e225">
「閣下ぁっ！
　小弓中将閣下!!　堀越中将閣下!!」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0490a07">
「や、ンなでっかい声で呼ばなくてもここに
いるって。
　ちっと落ち着け。深呼吸しろ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0500a08">
「何かあったの？」

{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／伝令竜兵】
<voice name="ｅｔｃ／伝令竜兵" class="その他男声" src="voice/md03/029vs0510e225">
「至急、普陀楽へお戻り下さい！」

{	NwC("cg/fw/nw竜騎兵.png");}
//【ｅｔｃ／伝令竜兵】
<voice name="ｅｔｃ／伝令竜兵" class="その他男声" src="voice/md03/029vs0520e225">
「進駐軍がッ――
　横須賀艦隊が、相模湾の警戒線を突破して
来ました!!」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md03/029vs0530a08">
「――――は？」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0540a07">
「な」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md03/029vs0550a07">
「なにぃぃぃぃぃィィィ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆Ｃパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,3);

	ClearWaitAll(3000, 2000);

/*
	ClearWaitAll(2000, 2000);

	CreateSE("SE01","se戦闘_攻撃_刀衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/sys/Telop/lg_村正.jpg");
	CreateColorSP("絵色黒地", 100, "#000000");

	Wait(100);

	FadeDelete("絵色白", 1000, true);

	WaitKey(2000);

	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"md04_001.nss"