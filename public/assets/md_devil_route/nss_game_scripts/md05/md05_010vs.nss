//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md05_010vs.nss_MAIN
{

	

	//CP_AllSet("村正");

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
	#ev241_森で発光する金神_a=true;
	#ev241_森で発光する金神_b=true;
	#ev241_森で発光する金神_c=true;
	#bg204_横旋回背景_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev242_金神激しく発光_b=true;
	#ev242_金神激しく発光_c=true;
	#ev242_金神激しく発光_e=true;
	#ev243_回避機動をとる村正_b=true;
	#bg001_空a_02=true;
	#bg204_横旋回背景_01=true;
	#ev929_村正重力増幅斬=true;
	#bg202_旋回演出背景山a_02=true;
	#ev241_森で発光する金神_d=true;
	#ev241_森で発光する金神_e=true;
	#bg107_富士山頂火口b_00=true;
	#bg201_旋回演出背景市街地_02=true;
	#ev924_銀星号飢餓虚空魔王星=true;
	#ev238_地球と太陽と月と金神_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene md05_010vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_009.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆戦闘開始
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(0,716);
	CP_IHPChange(0,10,null,false);

	MyTr_Count(0,557);
	CP_SpeedChange(0,548,null,false);

	CP_PowerChange(0,1000,null,false);

	CP_HighChange(0,2981,null,false);
	CP_AziChange(0,0,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);
	CP_RollBarMoveA();

	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	FrameShake();
	CreateTextureSP("絵空背景", 110, Center, Middle, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	MoveFFP1("@絵空背景",20000);

	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

//◆村正、騎航

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　後方で、激闘が開始されたようだった。
　空気が震え、その振動は<RUBY text="てつ">甲鉄</RUBY>と化した俺の皮膚にも
伝わってくる。

　絡み付く何かを振り切るようにして、空を駆けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆富士山頂へ
	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);

	SetVolume("SEL*", 10000, 0, null);

	CreateTextureSP("絵空背景弐", 100, Center, InTop, "cg/bg/resize/bg106_富士山遠望b_00l.jpg");

	//▼雲消去
	CloudZoomFade(600,false);

	Move("絵空背景弐", 800, @0, @-100, DxlAuto, false);

	Fade("絵空背景", 300, 0, null, false);
	Move("絵空背景", 300, @0, @200, null, false);
	Wait(300);
	MoveFFP1stop();
	Delete("絵空背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　山頂へ到達する。
　上方へ回り込み、俺は<RUBY text="・・">その</RUBY>全貌を視野に収めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆金神
//◆水晶の立体森林？　畸形ジャングルジム？
//◆つーか工場萌えの人が喜ぶ工場っぽい絵図？
//◆村正との対比で神のでかさを示す
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",3000,750,0,500,null,true);

	CreateTextureEX("絵ＥＶ０", 18050, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("絵ＥＶ０", 1000, 1000, null, true);

	WaitKey(1000);

	CreateTextureEX("絵ＥＶ", 18100, Center, InTop, "cg/ev/ev241_森で発光する金神_a.jpg");

	Fade("絵ＥＶ", 1000, 1000, null, true);
	Delete("絵ＥＶ０");

	WaitKey(1000);
	Cockpit_AllFade0();

	CreateTextureSP("絵ＥＶ２", 18000, Center, InTop, "cg/ev/ev241_森で発光する金神_b.jpg");
	Move("絵ＥＶ*", 3000, @0, -340, null, false);

	Wait(2800);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,500,0,1000,DxlAuto,false);
	FadeDelete("絵ＥＶ", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0010a01">
《……水晶の森……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　村正の呟きは、それほど的外れでもなかった。
　半透明の柱が複雑に入り組んで形成されているこの
立体――確かに森と言われれば森に思える。

　地面に根を生やしておらず、宙に浮いている時点で、
植生としての森林では決して有り得ないが。
　俺は帆船模型を思い出していた。完成する前、骨格
が剥き出しの模型は眼下の景観にどこか類似する。

　しかし、それは形状のみを評価した場合の話だ。
　少々の時間を投じて観察を進めれば、思うところは
また変わる。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆発光。稼動音
	CreateSE("SE01","se特殊_その他_神起動開始_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateSE("SE01a","se特殊_その他_神再生");
	MusicStart("SE01a",0,1000,0,2000,null,false);

	CreateTextureSP("絵ＥＶ２", 17000, Center, InTop, "cg/ev/ev241_森で発光する金神_c.jpg");
	CreateTextureSPadd("絵ＥＶ２覆", 17010, Center, InTop, "cg/ev/ev241_森で発光する金神_c.jpg");
	SetVertex("絵ＥＶ２覆", 790, 160);
	Zoom("絵ＥＶ２覆", 1200, 1100, 1100, Dxl2, false);
	FadeDelete("絵色白", 600, true);
	Wait(300);
	FadeDelete("絵ＥＶ２覆", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……それは<RUBY text="・・">稼動</RUBY>していた。

　洞穴の奥で獣が歯軋りするのを聴くに似た、奇怪な
重響。鉄鋸で大理石を切るかのようでもある。
　そんな音に同調して、〝森〟は変動する。

　一本の枝が二本に分岐する。
　その一方が別の枝に連結する。
　繋がった枝の表面を<RUBY text="こぶ">瘤</RUBY>状のものが走ってゆく。

　別の所では枝が縮退している。
　散開していた幾筋もの枝が末端から順々に引き込ま
れてゆき、一本の枝へ戻る――と思えばまた別の形へ
伸張を開始する。

　その様は俺に巨大な機械、そして工場を連想させた。
　
　
　…………銀星号らしき姿は、何処にも発見できない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 5000, 500, null);
	SetVolume("SE01", 5000, 0, null);

	CreatePlainSP("絵板写", 19000);
	Wait(1);
	CreateTextureSP("絵演金", 17100, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	CreateTextureEXadd("絵演金覆", 17110, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("絵演金覆", 0, 500, null, true);
	FadeDelete("絵板写", 500, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0020a00">
「あれが〝神〟か……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0030a01">
《……ええ……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0040a01">
《…………》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0050a00">
「……？　村正、どうした」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　肯定の返答にやや複雑なものを感じて、俺は問うた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0060a01">
《……あれは<RUBY text="・・・">本当に</RUBY>神なのかもしれない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0070a01">
《私達の》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0080a00">
「……金神だと思うのか？
　あれを」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　鍛冶神として蝦夷を中心に広く信仰されているその
名を云う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0090a01">
《うん。
　信じたくなかったけど。茶々丸の言ってた
ことだし……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0100a01">
《でもこの目で見て、わかるのよ。
　あれはきっと……<RUBY text="・・">原点</RUBY>》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0110a01">
《<RUBY text="わたしたち">劒冑</RUBY>の。
　<RUBY text="わたしたち">鍛冶師</RUBY>の……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 1, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
　茶々丸が――
　否、ウォルフ教授が述べた推論。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 10000, "#000000");

	CreateTextureSP("絵演回想", 5000, Center, Middle, "cg/ev/ev238_地球と太陽と月と金神_b.jpg");
	SetTone("絵演回想", Monochrome);

	FadeDelete("上背景", 1000, true);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
　遠い昔、金属の生命が地球に飛来した。
　それは地底深くに<RUBY text="うず">埋</RUBY>まり、地下水を介して己の要素
を地上へ送り届け、人の技術と結び付いて劒冑という
継嗣を誕生させた……。

　彼の論説が、この〝神〟の略史として正しいもので
あったのなら――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateTextureSP("絵演金", 17100, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	CreateTextureEXadd("絵演金覆", 17110, Center, Middle, "cg/ev/ev237_空に昇った金神_b.jpg");
	Fade("絵演金覆", 0, 500, null, true);

	FadeDelete("上背景", 1000, true);
	SetVolume("SE*", 2000, 750, null);
	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0120a01">
《あれの、ほんの小さな――砂の一粒よりも
小さなひとかけらが、<RUBY text="しんがね">心鉄</RUBY>を生む》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0130a01">
《劒冑の<RUBY text="ちから">異能</RUBY>の根源になる》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0140a00">
「……それはつまり、こういう意味か。
　あれは<RUBY text="・・・・・・・・・・・・・">無数の劒冑の集合体に等しい</RUBY>」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0150a00">
「即ち幾千倍、幾万倍の――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0160a01">
《幾億……幾兆……？
　いえ、とても計算なんて無理》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0170a01">
《とにかく劒冑と同質の力を、劒冑とは比較
にもならない規模で保有しているということ
よ》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0180a00">
「…………。
　計算上、対抗は可能か？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0190a01">
《こんな時のために昔の人が遺してくれた諺
があるんだけど、言っていい？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0200a00">
「ああ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0210a01">
《触らぬ神に祟りなし》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0220a00">
「……本当にそうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　洒落になっていなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0230a00">
「しかし。
　……汚染波の発信源はあれなのだろう？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0240a01">
《肯定》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0250a00">
「あれを破壊せねば汚染波は止められないの
だろう？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0260a01">
《肯定》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0270a00">
「……選択の余地は無いな？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0280a01">
《肯定！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、抜刀
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Move("絵演村正", 0, @288, @0, null, true);
	Shake("絵演村正", 2160000, 1, 2, 0, 0, 1000, null, false);

	CreateTextureSP("絵演空背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	SetVertex("絵演空背景", right, middle);

	$背景倍角変数 = 2.50;
	$背景倍角組込変数 = $背景倍角変数 * 1000;

	$横移動計算基準値 = ImageHorizon("絵演空背景") * $背景倍角変数;
	$横移動計算調整値 =  $横移動計算基準値 -1124;
	$横移動計算補正値 =  $横移動計算調整値 * (1);

	Zoom("絵演空背景", 0, $背景倍角組込変数, 1000, null, true);
	Move("絵演空背景", 100000, @$横移動計算補正値, @0, null, false);

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetVolume("SEL*", 600, 0, null);

	CreateSE("SEL10a","se戦闘_動作_空走行01_L");
	CreateSE("SEL10b","se戦闘_動作_空走行02_L");
	MusicStart("SEL10a",2000,750,0,1000,null,true);
	MusicStart("SEL10b",2000,750,0,1500,null,true);

	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0290a00">
「ならば行く。
　元より、祟られて困る身でもない！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0300a01">
《諒解！
　一つ派手に罰当たりな真似をしましょう！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆進む
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,750,0,500,null,true);

	SetVolume("SEL1*", 300, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm08",0,1000,true);

	Move("絵演村正", 300, @-1500, @0, Axl2, false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");
	DrawTransition("絵色白", 150, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	WaitKey(500);

	Delete("絵演空背景*");
	Delete("絵演村正*");

	CreateTextureSP("絵演", 17000, Center, -30, "cg/ev/ev242_金神激しく発光_a.jpg");
	Request("絵演", Smoothing);
	CreateSurfaceEX("絵効果サフ", 10000,1000,"@絵演");
	Fade("絵効果サフ", 0, 1000, null, true);

	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……しかし。
　かの〝金神〟は動いているものの、それはこちらに
対して何か行動を起こしたという様子ではない。

　あれは俺を認識していないのだろうか。
　いやそもそも、外界を認識して適切な行動を選択し
実行するような機能が備わっているのだろうか？

　単にエネルギーの塊に過ぎないのなら、恐れる必要
はない。
　この規模を考えるに破壊は相当な手間だが、根気と
慎重さがあれば無難にやり遂げられるだろう。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0310a00">
「まずは全容を確認する。
　村正、右手から回れ」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0320a01">
《諒解》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵効果サフ", 1000, 2000, 2000, null, false);
	Wait(500);
	Move("絵演", 500, @-256, @0, null, false);
	Rotate("絵効果サフ", 600, @0, @0, @-10, null,true);

//◆突然、金神が光る
//◆ＳＥ：神の声
	SetVolume("SEL*", 500, 0, null);
	CreateSE("SE01","se特殊_その他_神の声01");
	MusicStart("SE01",0,1000,0,1200,null,true);
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");
	Delete("絵演");
	Delete("絵効果サフ");
	FadeDelete("絵色白", 600, true);

//◆村正、ダウン
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

	MyLife_Count(300,680);
	CP_IHPChange(0,10,null,false);

	MyTr_Count(0,500);
	CP_SpeedChange(0,500,null,false);

	CP_PowerChange(0,1000,null,false);

	CP_HighChange(0,2977,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	Delete("絵演*");

	CreateTextureSP("絵空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");
	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Shake("絵空背景", 800, 0, 30, 0, 0, 1000, Dxl2, false);
	Shake("@CP_Frame*", 800, 0, 30, 0, 0, 1000, Dxl2, false);

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0330a00">
「あガッ――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆酷いノイズ
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0340a01">
《――――――――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　これは……幾度か茶々丸に聴かされた……<k>
　
　あの、<RUBY text="かみ">金神</RUBY>の声か！

　不味い。
　以前にも増して――<k>この、生の音声は強烈なものが
――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆計器混乱
	CreateSE("SE01a","se特殊_コックピット_アラーム");
	CreateSE("SE01b","se特殊_コックピット_探索01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,true);

	MyLife_Count(300,999);
	CP_IHPChange(300,1,null,false);
	CP_PowerChange(300,500,null,false);

	MyTr_Count(300,999);
	CP_SpeedChange(300,0,null,false);

	CP_AziChange(300,360,null,false);
	CP_RollBarMove2(300,360,Dxl2,false);

//◆落下
	CP_HighChange(3000,300,null,false);
	CP_AltChange(1000,-90,null,false);
	Move("絵空背景", 3000, @0, @-1152, AxlDxl, false);
	Zoom("絵空背景", 3000, 2000, 2000, null, false);

//あきゅん「ＣＰ：方位計とロールバーいじるために待ちを細かく分断」
	//Wait(1700);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(300);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(300);
		CP_RollBarMove2(300,-360,null,false);
		CP_AziChange(300,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);

	CreateSE("SE01b","se特殊_コックピット_探索02");
	MusicStart("SE01b",0,1000,0,1000,null,true);

//あきゅん「ＣＰ：方位計とロールバーいじるために待ちを細かく分断」
	//Wait(1000);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);
		Wait(300);
		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);

//◆ＳＥ神の声、急に小さくなる
	SetVolume("SE01", 2000, 100, Axl2);

//あきゅん「ＣＰ：方位計とロールバーいじるために待ちを細かく分断」
	//Wait(2000);
		Wait(300);

	Zoom("絵空背景", 10000, 5000, 5000, null, false);

		CP_RollBarMove2(300,360,null,false);
		CP_AziChange(300,360,null,false);
		Wait(200);
		CP_RollBarMove2(200,-360,null,false);
		CP_AziChange(200,-360,null,false);
		Wait(500);
		CP_RollBarMove2(500,360,null,false);
		CP_AziChange(500,360,null,false);
		Wait(1000);
		CP_RollBarMove2(1000,-360,null,false);
		CP_AziChange(1000,-360,null,false);

//◆計器と姿勢、回復
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01a","se特殊_コックピット_起動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorEXover("絵色機器", 5000, "#33FF00");
	Fade("絵色機器", 300, 1000, null, true);

	CreateSE("SE01b","se特殊_コックピット_起動音04");
	$残時間=RemainTime("SE01b");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//あきゅん「ＣＰ：ここで数値を元に戻す」
	MyLife_Count(200,500);
	CP_IHPChange(200,10,Dxl2,false);
	CP_PowerChange(200,1000,Dxl2,false);

	MyTr_Count(200,500);
	CP_SpeedChange(200,500,Dxl2,false);
	CP_RollBarMove2(600,0,null,false);

	CP_AziChange(200,0,Dxl2,false);

	Fade("絵色機器", $残時間, 0, Axl2, false);
	DrawDelete("絵色機器", $残時間, 100, "slide_02_00_0", true);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CP_AltChange(300,45,Dxl2,false);
	Move("絵空背景", 600, @0, @1728, AxlDxl, false);

	Wait(500);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Cockpit_AllFade0();
	Delete("絵演*");
	CreateTextureSP("絵演空", 100, Center, InBottom, "cg/bg/resize/bg002_空a_02.jpg");
	Move("絵演空", 650, @0, @300, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "slide_02_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0350a01">
《御堂、しっかり！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0360a00">
「……村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　別の世界へ飛びかけていた意識を急激に引き戻され、
俺はわずかに混乱した。

　金神の声が……遠退いている？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0370a00">
「何をした？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0380a01">
《音波を拡散させただけよ。
　茶々丸の術と違って指向性が強くなかった
から、何とかできた》

//ムー：↓台詞のカッコ修正しました。
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0390a01">
//《……多分だけど……
//　今のは単なる<RUBY text="・・">反応</RUBY>なんじゃない？」
《……多分だけど……
　今のは単なる<RUBY text="・・">反応</RUBY>なんじゃない？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0400a00">
「反応？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0410a01">
《急に何か嬉しいことがあったら歓声を上げ
るし、いきなり冷たい水をかけられたら悲鳴
を上げるでしょ。
　それと同じで……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　金神は<RUBY text="・・">つい</RUBY>騒いでしまっただけだ、と？

　何に反応して？<k>
　
　……俺達の接近にか？

　という事は？<k>
　
　……俺達の存在が認識されたという事か？

　するとどうなる？<k>
　
　……どうなる？

　それは当の〝神〟のみぞ知るところ――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆金神、重力波準備
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureSPadd("絵演上", 3100, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	CreateTextureSP("絵演", 3000, Center, -30, "cg/ev/ev242_金神激しく発光_b.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);
	Zoom("絵演上", 3000, 1000, 1000, Dxl2, false);
	FadeDelete("絵演上", 3000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0420a01">
《――――――――――に》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0430a01">
《逃げてぇッッッ!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0440a00">
「――――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆急回避
	CreateColorEX("絵色黒", 6000, "#000000");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, Axl2, true);

	CreateSE("S01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("S01",0,1000,0,1000,null,false);

	Delete("絵演*");

	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);

	Delete("絵色白");

//◆重力波。要はグラビティブラスト。
//◆なんかすげーものがマクロの空を貫いていきました。
//◆※ここで神の強大さを一気にダイレクトに演出する
	SetVolume("SE*", 1000, 0, null);

	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演１上", 3100, Center, Middle, "cg/ev/ev242_金神激しく発光_c.jpg");
	CreateTextureSP("絵演１", 3000, Center, Middle, "cg/ev/ev242_金神激しく発光_c.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);

	Delete("絵色黒");

	Zoom("絵演上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演上", 300, true);

	CreateTextureEXadd("絵演２上", 2910, -30, -260, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	CreateTextureSP("絵演２", 2900, -30, -260, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	SetBlur("絵演２", true, 3, 500, 30, false);
	Zoom("絵演２上", 0, 1500, 1500, null, false);
	Delete("絵演１*");

	Zoom("絵演２上", 300, 1000, 1000, Dxl2, false);
	Fade("絵演２上", 300, 800, null, true);
	Move("絵演２*", 300, -450, -115, Dxl2, true);
	FadeDelete("絵演２上", 1000, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0450a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0460a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 19000);

	Delete("絵演*");

	Cockpit_AllFade2();
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg001_空a_02.jpg");

	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	FrameShake();
	MoveFFP1("@絵空背景",20000);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	FadeDelete("絵板写", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　何かを言いたいのだが、口が動かない。
　不思議に思って自分の身体状況を確認してみると、
俺は上下の顎を大きく乖離させた格好で固まっていた。

　手動で一度口を閉ざしてから、改めて発言する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0470a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0480a01">
《……なに？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0490a00">
「これは個人的な推測に過ぎないのだが――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　考えつつ、慎重に意見を伝える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0500a00">
「今のビームがもしも直撃していたら、俺の
健康に著しい悪影響を及ぼしたのでは？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0510a01">
《及ぼすに決まってるでしょっ!!
　あんなの食らったら、小指の爪のさきっぽ
だって残るもんですかっ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　何故か村正は怒った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0520a01">
《あれは辰気の激流……河みたいなものよ。
　呑まれたら最後。粉々になって、その粉も
磨り潰されて、跡形も無くなる》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0530a00">
「こちらの操る辰気、あるいは磁気によって
防御できるか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0540a01">
《焼け石に水<RUBY text="・">滴</RUBY>程度ならね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　予想通りの答えが返る。

　何がなんでもあれは騎体運動で回避しなくてはなら
ないという事か。
　
　しかし……辰気。重力。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	EfRecoIn1(19000,600);
	CreateTextureSP("絵回想", 18990, Center, Middle, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星m.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0331]
　<RUBY text="グラビトンコントロール">引辰制御</RUBY>……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	Delete("絵回想*");
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0550a00">
「あれは<RUBY text="・・・・・・">銀星号の技能</RUBY>か？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0560a01">
《……そうね。
　辰気を操るのは<RUBY text="かかさま">二世</RUBY>の固有能力》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0570a00">
「やはりあの〝神〟は銀星号だという事か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0580a01">
《汚染波も出ているんだし、あそこにいるの
は間違いないと思うけれど。
　……でもさっきの声に、<RUBY text="かかさま">二世</RUBY>の気配は匂わ
なかった……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0590a01">
《貴方はどう？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0600a00">
「……そうだな。
　俺も光の声だとは思わなかった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　というより、言語思考を行っていると思えなかった。
　あの発声の基底に知性があるとしても、極めて低度
で原始的なものだろう。

　そう思うのは言語思考を当然とする人間の傲慢さに
過ぎないのかもしれないが。
　とりあえず、人間ないし人間に類似する頭脳はあの
〝神〟の内側に実在していないと思える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0610a01">
《……取り込まれたのかしら。
　<RUBY text="・・">捕食</RUBY>されて、<RUBY text="・・">消化</RUBY>されて》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0620a01">
《技能だけ、利用されている……？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0630a00">
「――――」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0640a00">
「仮に……そうだとしても。
　俺達のやるべき事は変わらん」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0650a01">
《……ええ。そうね》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、再び接近
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	//▼雲消去
	CloudZoomFade(0,false);
	MoveFFP1stop();

	Cockpit_AllFade0();

//◆金神、重力波
//◆避けー。
	CreateSE("SE02","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演２上", 2910, Center, Middle, "cg/ev/ev243_回避機動をとる村正_c.jpg");
	CreateTextureSP("絵演２", 2900, Center, Middle, "cg/ev/ev243_回避機動をとる村正_c.jpg");
	Zoom("絵演２上", 0, 1500, 1500, null, false);

	Delete("絵色黒");

	Zoom("絵演２上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演２上", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0660a00">
「……こちらを攻撃対象として認識している
のは間違いないようだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0670a01">
《みたい。
　敵意があるのか、食欲のためなのか、単に
鬱陶しがってるだけなのかは知らないけど》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　いずれにしろ、少なくともこちらがこの場を離脱し
ない限り、重力波の攻撃は止むまい。
　そして無論、今更逃げられる筈はなかった。

　……回避はさして難事でもない。

　発射前の準備動作が視認できる形で現れるし、狙い
も甘い。高度な運動予測などはせず<RUBY text="・・・">適当に</RUBY>撃っている
ようだ。
　注意していれば簡単に見切れる。

　だがその威力たるや、察する限り凄まじい。
　観客がいたなら臆病と謗られそうなほど充分な余裕
をもって避けているというのに、空間を越えて伝わる
<RUBY text="・・">余震</RUBY>には俺の全身を揺さぶるだけの激しさがあった。

　あれを受けたらどうなるのか。
　おそらく、村正が先だって言った事が全く正しいの
だろう。

　これは成功率九割の賭博なのかもしれないが、一割
が的中してしまった時のリスクが甚大に過ぎる。
　迅速に、可及的手早く、決着をつけるべきだ。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆接近
//◆野太刀一閃。ずどーん。
	CreateSE("SE01a","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE01b","se戦闘_衝撃_衝突01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1500,null,false);
	CreateColorSP("絵黒幕", 20000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵演２");

	CreateTextureSPadd("絵演上", 3010, -55, -190, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//◆神の声（低）
	CreateSE("SE02","se特殊_その他_神の声02");
	MusicStart("SE02",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　……良し。
　狙い過たず――この的の大きさで過つわけがないが
――野太刀の一打は金神を捉えた。

　枝が数本、砕けて散る。
　
〝神〟の苦鳴を、確かに聴いた。

　効いている！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0680a01">
《御堂、退避して！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0690a00">
「む!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆退避
//◆金神、反発。吹き飛ばされる村正
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演３上", 2910, Center, -30, "cg/ev/ev242_金神激しく発光_e.jpg");
	CreateTextureSP("絵演３", 2900, Center, -30, "cg/ev/ev242_金神激しく発光_e.jpg");
	Zoom("絵演３上", 0, 1500, 1500, null, false);

	Delete("絵演");

	Zoom("絵演３上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演３上", 300, true);

	Wait(300);

	CreateSE("SE03","se戦闘_破壊_爆発04");
	CreateSE("SE03a","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/bg/bg106_富士山遠望b_00.jpg");
	Wait(1);
	Delete("絵演３");
	CreatePlainSPadd("絵板写", 5000);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 1000, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0700a00">
「……っっ。
　村正、今のは何だ？」

//おがみ：音声合わせ修正
//《狙いもつけずに全身から辰気の波を放った
//のよ……こんな芸もあるのね。
//　範囲を絞らない分、威力は散ったみたいだ
//けれど》
{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0710a01">
《狙いもつけず、全身から辰気の波を放った
のよ……こんな芸もあるのね。
　範囲を絞らない分、威力は散ったみたいだ
けれど》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0720a01">
《至近距離で浴びたら、あれでも危険かも》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0730a00">
「深追いは禁物という事だな」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",2000,750,0,500,null,true);
	CreateTextureEX("絵演金", 5000, Center, Middle, "cg/ev/ev237_空に昇った金神_a.jpg");
	Fade("絵演金", 1000, 1000, null, true);
	Delete("絵演背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　<RUBY text="ヒット・アンド・アウェイ">一撃離脱戦法</RUBY>が必須か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0740a00">
「しかしどうやら、まるで歯が立たない相手
というわけでもないらしい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0750a01">
《ええ。
　金神は確かに私達の崇める神様だし、その
信仰はあれが<RUBY text="もとい">基</RUBY>なのかもしれないけど、それ
でも<RUBY text="・・・・・">あれ自体は</RUBY>あくまで単なるでっかい生物》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0760a01">
《絶対者でも超越者でもない。
　蹴って殴って叩き壊せる代物よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　その通りだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演*");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常.png");
	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	Wait(2000);

	SetVolume("SEL*", 100, 0, null);

//◆金神、重力波
	CreateSE("SE02","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateTextureSPadd("絵演１上", 3100, Center, -30, "cg/ev/ev242_金神激しく発光_c.jpg");
	CreateTextureSP("絵演１", 3000, Center, -30, "cg/ev/ev242_金神激しく発光_c.jpg");
	Zoom("絵演上", 0, 1500, 1500, null, false);

	Delete("絵演背景");
	Delete("絵演立絵");

	Zoom("絵演上", 300, 1000, 1000, Dxl2, false);
	FadeDelete("絵演上", 300, true);

//◆避けて
	CreateSE("SE03","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, InLeft, -134, "cg/ev/resize/ev243_回避機動をとる村正_bl.jpg");
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 60, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Move("絵窓/絵演立絵装甲", 400, -480, @0, Dxl2, false);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0770a00">
「村正、一つ試す！
　<RUBY text="・・・・・・・・・">運剣に辰気を重ねろ</RUBY>！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0780a01">
《――諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、エネルギー上昇
	CreateSE("SE01","se特殊_陰義_レールガン穿_準備");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateWindow("絵窓甲", 19500, 636, 0, 340, 576, false);
	SetAlias("絵窓甲","絵窓甲");
	Zoom("絵窓甲", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓甲/絵演重力溜", 19510, -360, InTop, "cg/ev/resize/ev905_村正電磁撃刀_cm.jpg");
	Move("絵窓甲/絵演重力溜", 450, 265, @0, Dxl2, false);
	Zoom("絵窓甲", 300, 1000, 1000, Dxl2, true);

	WaitAction("絵窓甲/絵演重力溜", null);

	Move("絵窓甲/絵演重力溜", 3000, 265, -277, DxlAuto, false);

	WaitAction("絵窓甲/絵演重力溜", null);

	CreateSE("SE01a","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE01a",0,1000,0,2000,null,false);
	CreatePlainSPadd("絵窓甲/絵板写", 19900);
	Wait(150);
	FadeDelete("絵窓甲/絵板写", 300, true);

//◆重力増幅斬撃
	SetVolume("SE01", 100, 0, null);
	CreateSE("SE02","se戦闘_村正_重力増幅斬撃");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 19550, Center, Middle, "cg/ev/ev929_村正重力増幅斬.jpg");
	CreateTextureSP("絵演", 19560, Center, Middle, "cg/ev/ev929_村正重力増幅斬.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演", 0, 1100, 1100, null, true);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(300);

//◆ずがどーん。
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 19610, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 19600, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵窓*");
	Delete("絵色白");

	Zoom("絵演上", 500, 1250, 1250, Dxl1, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

//◆神の声（低）
	CreateSE("SE04","se特殊_その他_神の絶叫");
	MusicStart("SE04",0,1000,0,750,null,false);

//◆村正離脱、富士山上に着地
	PrintGO("上背景", 25000);
	CreateSE("SE05","se戦闘_動作_空突進02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 150, 100, "slide_02_01_1", true);

	CreateTextureSP("絵演背景", 100, Center, -4960, "cg/bg/bg202_旋回演出背景山a_02.jpg");
	Move("絵演背景", 10000, @0, -2100, null, false);

	CreateTextureSP("絵演村正", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Rotate("絵演村正", 0, @0, @0, @120, null,true);
	Move("絵演村正", 0, @0, @576, null, true);

	Move("絵演村正", 450, @0, @-1500, null, false);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//◆bg107の丘周辺アップ画で
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵演村正");
	CreateTextureEX("絵演震用背景", 110, Center, Middle, "cg/bg/resize/bg107_富士山頂火口a_00l.jpg");
	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/resize/bg107_富士山頂火口a_00l.jpg");

	Fade("絵演震用背景", 0, 500, null, true);
	Shake("絵演震用背景", 650, 0, 10, 0, 0, 1000, Dxl2, false);

	CreateSE("SE06","se戦闘_動作_鎧_着地02");
	MusicStart("SE06",0,1000,0,1000,null,false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0790a00">
「どうだっ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0800a01">
《手応えは充分！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　重力加速を施した斬撃……
　武者を十騎まとめて裁断できる程の威力はあった筈
だが!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆金神
//◆神の声（低）
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,750,0,500,null,false);
	CreateSE("SE04","se特殊_その他_神の声02");
	MusicStart("SE04",0,750,0,500,null,true);
	CreateTextureEX("絵ＥＶ", 18100, Center, -30, "cg/ev/ev241_森で発光する金神_d.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　果たして〝神〟の偉容は傷付いていた。
　水晶の森の一部が、悪質な林業者に乱伐されたかの
様相を呈している。

　相当の痛手を与えたと思えた。
　現に〝神〟の悲鳴は長く尾を引き、もし村正が抑制
してくれていなかったら俺は両耳を押さえてのたうち
回っていたことだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆稼動音
//◆神の動き
	CreateSE("SEL01a","se特殊_その他_神起動開始_L");
	CreateSE("SE01","se特殊_その他_神再生");
	MusicStart("SEL01a",0,1000,0,1000,null,true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureEXadd("絵ＥＶ２覆", 18010, Center, -30, "cg/ev/ev241_森で発光する金神_e.jpg");
	CreateTextureSP("絵ＥＶ２", 18000, Center, -30, "cg/ev/ev241_森で発光する金神_e.jpg");

	CreateColorEXadd("絵色白", 19900, "#FFFFFF");

	Fade("絵ＥＶ２覆", 1500, 1000, null, false);
	FadeDelete("絵ＥＶ", 1500, false);
	Fade("絵色白", 300, 1000, null, true);

	Wait(500);

	FadeDelete("絵色白", 500, true);
	FadeDelete("絵ＥＶ２覆", 5000, false);

	SetVolume("SEL01a", 2000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0810a01">
《でも……再生してる》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0820a00">
「予測の範疇だ。
　神に非ずとも神のような力の主、この程度
の事はやらない方がおかしい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0830a01">
《どうするつもり？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0840a00">
「一撃で殺し切る。
　そうしてやれば再生などできまい。単純な
理屈だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0850a01">
《……<RUBY text="・・">やる</RUBY>わけね？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0860a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/3d村正最終_立ち_抜刀.png");
	FadeStR(0,true);

	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵ＥＶ*", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　電磁抜刀。

　太刀を使ってのそれではない。
　取り戻した野太刀を用いて為す<RUBY text="オワリノタチ">蒐窮一刀</RUBY>。

　一度も<RUBY text="ふる">揮</RUBY>った事はないが、わかる。
　相手が〝神〟であろうと必ず、滅ぼせる筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0870a00">
「村正、準備を――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆神、発光
//◆村正周囲。空間がぶれる
//◆※Ｎ２でラスタースクロール可能か？
	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	DrawEffect("絵演震用背景", 200, "LowWave", 0, 200, Axl2);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0880a01">
《――――これ、》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0890a00">
「ぬ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　<RUBY text="・・・・・・">視界がぶれる</RUBY>……？

　何だ。

　何の予兆だ。

　……ふと。
　耳元に、誰かの囁きを聴いたように思った。

　
　　　　　　　　　　死ぬぞ、と。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("@StR*", 200, @200, @0, Dxl2, false);
	DeleteStR(200,true);

//◆ずばーん。一瞬前までいた場所が圧壊する
//◆bg107a
	CreateSE("SE02","se特殊_その他_空間歪曲");
	CreateSE("SE02a","se戦闘_破壊_建物02");
	CreateTextureEX("絵演背景上", 19010, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");
	CreateTextureSP("絵演背景", 19000, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");

	CreateTextureEX("絵震用背景", 110, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg107_富士山頂火口b_00.jpg");

	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Fade("絵演背景上", 0, 500, null, true);
	Shake("絵演背景上", 2000, 1, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵演背景上");
	Delete("絵演背景");
	Delete("絵演震用背景");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0900a00">
「なッ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　一瞬前。
　ほんの刹那の過去、我が騎体の存在した小丘陵が。

　<RUBY text="・・">圧壊</RUBY>している。
　見る影もなく潰れ果てている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	CreateTextureEX("絵震用背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	FadeDelete("上背景", 300, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0910a00">
「何をされた!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0920a01">
《く――
　空間そのものを、曲げて》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0930a01">
《潰した……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　空間歪曲!?

　重力的な干渉でそんな現象を引き起こせるのか？
　
　……いや。そうか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：銀星号と飢餓虚空
	CreateTextureEX("絵演回想", 100, Center, Middle, "cg/ev/ev924_銀星号飢餓虚空魔王星.jpg");
	Fade("絵演回想", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　できる。
　銀星号が〝辰気の渦〟を発動させた時、その余りの
強重力のために、空間歪曲現象が発生していた……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵演回想", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//嶋：修正（対抗）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0940a01">
《あんなの、抵抗しようがない！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0950a00">
「重力波の攻撃と同じく、逃げに徹するのが
唯一の対処法か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　もっとも<RUBY text="・・・・">空間歪曲</RUBY>が相手では、それもどこまで有効
なのか。
　逃げたつもりで逃げられていない、そんな事にすら
なり得るのではないか……？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆神、発光
//◆空間歪曲予兆。ぶれ
	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵震用背景", 200, 500, null, false);
	DrawEffect("絵震用背景", 200, "LowWave", 0, 200, Axl2);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵震用背景", 600, false);
	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs0960a01">
《御堂、またっ！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs0970a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　どうする？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：可能な限り遠くへ離脱／遮蔽物を探す

}

..//ジャンプ指定
//◆可能な限り遠くへ離脱　"md05_010vsb.nss"
//◆遮蔽物を探す　"md05_010vsa.nss"


//★選択肢シーン
scene md05_010vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("可能な限り遠くへ離脱","遮蔽物を探す");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆可能な限り遠くへ離脱　"md05_010vsb.nss"
				$GameName = "md05_010vsb.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆遮蔽物を探す　"md05_010vsa.nss"
				$GameName = "md05_010vsa.nss";
		}
	}
}