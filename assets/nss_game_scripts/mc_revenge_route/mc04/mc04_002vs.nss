//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_002vs.nss_MAIN
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
	#ev182_車で突入する景明と大鳥主従=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_003.nss";

}

scene mc04_002vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_001.nss"

//◆空？
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Zoom("絵背景100", 0, 1800, 1800, null, true);

	Delete("上背景");
	Zoom("絵背景100", 1500, 1000, 1000, Dxl2, false);
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　正門はほとんど一瞬の内に突破した。
　門衛はやにわの<RUBY text="・・">砲撃</RUBY>に両目を瞬かせつつ口を開ける
以外、何もできなかったようだ。

　それを指して惰弱、無警戒と<RUBY text="そし">謗</RUBY>るのは酷だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0010a04">
「一気に抜けますよ、お嬢さま！」


{	OnSE("se戦闘_攻撃_ライフル構え01", 1000);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0020a03">
「おーらいっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾走カー。
//◆ＥＶ：さよが運転、景明は乗ってるだけ。香奈枝
//◆は立ってライフル乱射。
//◆車はヴォクスホール・プリンスヘンリー改
	SoundPlay("@mbgm36", 0, 1000, true);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Delete("@onBG*");

/*
	CreateTextureSP("疾走カー", 800, @0, @0, "cg/ev/ev182_車で突入する景明と大鳥主従.jpg");
	CreateTextureSP("疾走カー2", 800, @0, @0, "cg/ev/ev182_車で突入する景明と大鳥主従.jpg");

	Request("疾走カー*", Smoothing);
	SetBlur("疾走カー*", true, 1, 500, 50, false);
	Zoom("疾走カー*", 0, 2500, 2500, null, true);

	DrawDelete("黒幕１", 200, 500, "slide_02_01_0", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);

//	Zoom("疾走カー*", 600, 1100, 1100, Dxl2, true);
	Fade("疾走カー2", 0, 300, null, false);
	Shake("疾走カー2", 1000, 1, 12, 0, 1, 1000, Dxl2, false);

	Wait(600);
*/
	CreateTextureSP("疾走カー大", 800, @-450, @0, "cg/ev/resize/ev182_車で突入する景明と大鳥主従l.jpg");

	CreateSE("SE01","se背景_ガヤ_戦闘カー爆走02");
	CreateSE("SEL01","se背景_ガヤ_戦闘カー爆走01_L");

	Shake("疾走カー大", 2000, 0, 5, 0, 0, 1000, null, false);
	Move("疾走カー大", 2000, @-100, @0, null, false);
	DrawDelete("黒幕１", 200, 500, "slide_02_01_0", false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",5000,1000,0,1000,null,true);

	Wait(1500);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("疾走カー大");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	SetVolume("SEL01", 3000, 500, null);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　篠川の大鳥本家邸宅は実に広大であり、正門から奥
屋敷まで数キロの道のりはあるに違いない。
　しかし、この分ではそれこそあっという間だろう。

　道筋を迷わない点に不思議はなかった。俺にとって
は未知の地でも、大鳥主従にすればここは<RUBY text="ホーム">我が家</RUBY>。
　構造を把握していて当然だ。

　当然で済まないのはこの速度である。
　時速一〇〇キロ――あるいは一五〇キロに迫ろうか。

　これだけの速度を出しながら然程の揺れもないのは、
見事というより、もはや異様と評するべきだった。
　<RUBY text="プリンス・ヘンリー">往年の名車</RUBY>はまさしく風のように地を滑る。

　道々の警備隊も高貴なる暴走車を眺め送るばかり。
　たまに、状況判断の早い隊が行く手に展開しても、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetVolume("SEL01", 2000, 500, null);

	SetNwR("cg/fw/nw警備隊長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／警備隊長】
<voice name="ｅｔｃ／警備隊長" class="その他男声" src="voice/mc04/002vs0030e062">
「そこの車両、停まれ！」


//【ｅｔｃ／警備隊長】
<voice name="ｅｔｃ／警備隊長" class="その他男声" src="voice/mc04/002vs0040e062">
「停まらねば撃つ――って聞けよぉ!!」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0050a03">
「スワヒリ語でお言いなさい！」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆掃射。パララララ
	OnSE("se戦闘_銃器_機関銃乱射02", 1000);

	CreateColorEXadd("白", 15000, "WHITE");
	Fade("白", 0, 1000, null, true);

	Delete("絵背景50");
	CreateTextureSP("疾走カー", 800, @0, @0, "cg/ev/ev182_車で突入する景明と大鳥主従.jpg");
	CreateTextureSP("疾走カー2", 800, @0, @0, "cg/ev/ev182_車で突入する景明と大鳥主従.jpg");
	Request("疾走カー*", Smoothing);
	SetBlur("疾走カー*", true, 1, 500, 50, false);
	Zoom("疾走カー*", 0, 2500, 2500, null, true);

$ループムーブナット名 = "@疾走カー2";
$ループムーブタイム = 2000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);


	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);

	Zoom("疾走カー*", 600, 1100, 1100, Dxl2, false);
	Fade("疾走カー2", 0, 300, null, false);
	Shake("疾走カー2", 1000, 1, 12, 0, 1, 1000, Dxl2, false);

	Fade("白", 100, 0, null, true);
	Fade("白", 10, 1000, null, true);
	Fade("白", 150, 0, null, true);
	Fade("白", 50, 1000, null, true);
	Fade("白", 300, 0, null, true);
	Fade("白", 50, 1000, null, true);
	Fade("白", 300, 0, null, true);

	OnSE("se戦闘_攻撃_擲弾筒準備", 1000);

	SetFwR("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0060a04">
「気が違う人に言葉は無駄でございますぞ、
警備の方々！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆擲弾筒。どかーん。
//★ inc遠藤 揺れ修正
	SetVolume("@OnSE*", 1000, 0, null);

	CreateSE("SE00a","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(900);

	OnSE("se戦闘_破壊_爆発03", 1000);

	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

/*

	CreateTextureSP("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreatePlainEX("絵板写", 900);
	Request("絵板写", Smoothing);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, true);

	Shake("絵板写", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("黒幕１");

	Zoom("絵板写", 2000, 1000, 1000, null, true);

	Delete("絵板写");

*/
//おがみ：素材定義
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 2, 200, 70, false);

	CreateSE("SE05","se戦闘_破壊_大爆発01");


//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);

	FadeDelete("黒幕１", 100, false);
	Fade("絵色100", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	Move("絵背景400", 0, -510, -120, null, true);


	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");
	Delete("疾走カー2");

	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);
	FadeDelete("絵色100", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……手本のような<RUBY text="ブリッツクリーク">電撃戦</RUBY>の前には無益であった。
　蜘蛛の子を散らしてへたり込む警備兵らの姿を背後
に見送り、少なからぬ同情を覚えつつ呟く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景500",1000,true);


	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0070a00">
「これは無い」


{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0080a04">
「有り得ませんな」


{	FwR("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0090a03">
「ほんとね」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0100a00">
「…………」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0110a00">
「全員そう思っていて、何故こんな正面突破
作戦になったのでしょうか」


{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0120a04">
「成り行きかと」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0130a03">
「作戦を考えているあいだに、篠川へ着いて
しまったからかしら？」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0140a00">
「だからと言って、そのまま突っ込む理由は
何処にも無かったのでは……」


{	FwR("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0150a04">
「まったくその通りでございますな。
　湊斗さま、そういう叡智はもう少し早めに
披露してくださいませんと」


{	FwR("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0160a03">
「そうねぇ。
　もう、困った御方っ」


{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0170a00">
「………………今後は留意しておきます」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　何をどう留意すれば良いのやらまるでわからないが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0180a04">
「ま、結果的には図に当たりましたかと。
　篠川でもたもたしていればたちまち公方府
の諜報網に引っ掛かり、先手を打たれたやも
しれませぬし――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆擲弾筒準備。かちゃかちゃ。
	OnSE("se戦闘_攻撃_擲弾筒準備", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);
	CreateSE("SE00a","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(900);

//◆ずどーん。ぼーん。

//★ inc遠藤 以下爆発修正
	CreateTextureEX("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("爆発2", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	Request("爆発*", Smoothing);
	Zoom("爆発", 0, 1500, 1500, null, true);
	Move("爆発", 1400, @-250, @0, DxlAuto, false);
	Fade("爆発", 150, 1000, null, false);

	OnSE("se戦闘_破壊_爆発03", 1000);
	Shake("爆発", 300, 20, 20, 0, 0, 200, Dxl3, false);

	Zoom("爆発2", 0, 2000, 2000, null, true);
	Move("爆発2", 0, @-200, @0, DxlAuto, false);
	Fade("爆発2", 150, 200, null, true);
	Fade("爆発2", 150, 0, null, true);
	WaitKey(100);

	Shake("爆発", 1000, 40, 40, 0, 0, 1000, Dxl2, false);

	Move("爆発2", 0, @-300, @0, DxlAuto, false);
	Fade("爆発2", 150, 600, null, true);
	Fade("爆発2", 800, 0, Axl2, true);
	Delete("爆発2");
	FadeDelete("爆発", 300, true);



	SetFwR("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0190a04">
「婚約の儀と軍の再編を同時に進める無理が、
さしもの獅子吼殿をしても本邸の警備に粗を
生じさせてしまった模様でございます。
　でなくば、こうも容易くは参りますまい」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0200a00">
「……は。ところで。
　その、先程から景気良く乱発しているそれ
は一体」


{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0210a04">
「英軍横流しの<RUBY text="ヘビーフィスト">擲弾筒</RUBY>でございますよ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆がちゃがちゃ。
	OnSE("se戦闘_攻撃_擲弾筒準備", 1000);

	WaitKey(1000);

//◆ずどーん。ぼーん。
	CreateSE("SE00a","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE00a",0,1000,0,800,null,false);

/*
	WaitKey(900);

	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se戦闘_破壊_爆発03", 1000);
	CreateTextureEX("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("爆発2", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	Request("爆発*", Smoothing);
	Zoom("爆発", 0, 1500, 1500, null, true);
	Move("爆発", 1400, @250, @0, DxlAuto, false);
	Fade("爆発", 150, 800, null, false);

	Shake("爆発", 300, 20, 20, 0, 0, 200, Dxl3, false);

	Zoom("爆発2", 0, 2000, 2000, null, true);
	Move("爆発2", 0, @200, @0, DxlAuto, false);
	Fade("爆発2", 150, 200, null, true);
	Fade("爆発2", 150, 0, null, true);
	WaitKey(100);

	Shake("爆発", 950, 40, 40, 0, 0, 200, Dxl3, false);

	Move("爆発2", 0, @300, @0, DxlAuto, false);
	Fade("爆発2", 150, 600, null, true);
	Fade("爆発2", 800, 0, Axl2, true);
	Delete("爆発2");
	FadeDelete("爆発", 300, true);

*/

//おがみ：素材定義
	CreateTextureEX("絵背景400", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEX("絵背景500", 17000, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateColorEXadd("絵色100", 17500, "WHITE");
	Request("絵背景400", Smoothing);
	Request("絵背景500", Smoothing);
	Zoom("絵背景400", 0, 2000, 2000, null, true);
	Zoom("絵背景500", 0, 1200, 1200, null, true);
	SetBlur("絵背景500", true, 2, 200, 70, false);

	CreateSE("SE05","se戦闘_破壊_大爆発01");


//おがみ：爆発動作
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("絵色100", 0, 1000, null, true);

	FadeDelete("黒幕１", 100, false);
	Fade("絵色100", 150, 0, null, false);
	Fade("絵背景400", 0, 1000, null, true);
	DrawTransition("絵背景400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
//	Wait(50);
	Move("絵背景400", 0, -312, -100, null, true);
	Wait(50);
	Move("絵背景400", 0, -350, -150, null, true);
	Wait(50);
	Move("絵背景400", 0, -510, -120, null, true);


	Fade("絵色100", 50, 1000, null, true);
	Delete("絵背景200");
	Delete("絵背景400");

	Fade("絵背景500", 0, 1000, null, true);
	Zoom("絵背景500", 500, 1000, 1000, Dxl2, false);
	EffectZoomadd(18000, 6000, 4000, "cg/ef/ef026_汎用爆撃.jpg", false);
	FadeDelete("絵色100", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　言いながら、さよ侍従は運転の傍ら器用にその兵器
を準備して、撃ち放った。
　前方に布陣しかけていた警備兵の一団が泡を食って
散開する。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景500",1000,false);

	SetFwR("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0220a04">
「年代物ですが、なかなか侮れぬもので」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0230a00">
「どうやってそんな物を」


{	FwR("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0240a04">
「さて？　さよも詳しいところは存じませぬ。
　この車と共々、手配してくださった<RUBY text="いえ">永倉家</RUBY>
の<RUBY text="あに">義兄</RUBY>に訊いてみませんことには……」


{	FwR("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0250a03">
「不思議よねー。
　こんなの何処で売ってるのかしら？」


{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0260a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　永倉家というのも、一筋縄ではいかない家のようだ。
　世評に大鳥家の<RUBY text="・・">黒幕</RUBY>などと囁かれるのも、あながち
根も葉もなき事とは言えないらしい。

　……さよ侍従のこれまでの行状を思うなら、こんな
感慨は今更なのかもしれないが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/002vs0270a04">
「そろそろ奥屋敷でございます。
　皆様、ご用意を！」


{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/002vs0280a03">
「ええ！」


{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/002vs0290a00">
「承知」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆疾走
//◆ききー。スピンターン
//スピンターンは次のファイルの冒頭で行われています
//しかし、イベントCGの構図が不明なため今後演出が変わる可能性大いにあり inc櫻井

//	OnSE("se戦闘_攻撃_振る04", 1000);
	OnSE("se戦闘_乗り物_バイク_スリップ", 1000);

	SetVolume("SEL*", 1000, 0, null);

	CreateColorEX("絵色100", 1500, "BLACK");

	CreateTextureEX("いどう", 850, @0, @0, "cg/ef/ef002_汎用移動.jpg");
	Shake("疾走カー", 1300, 3, 3, 0, 0, 1000, null, false);

	Zoom("疾走カー", 200, 1400, 1400, DxlAuto, false);
	Rotate("疾走カー", 300, @0, @20, @0, DxlAuto, false);
	Move("疾走カー", 300, @300, @0, DxlAuto, false);

	Fade("絵色100", 300, 1000, null, true);


	Wait(1000);
	SetVolume("SE*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);
	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"mc04_003.nss"


