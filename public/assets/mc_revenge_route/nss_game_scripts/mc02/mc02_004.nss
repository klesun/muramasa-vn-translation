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

scene mc02_004.nss_MAIN
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
	#bg029_キャノン中佐執務室_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_005.nss";

}

scene mc02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_003.nss"

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100, "bg029_キャノン中佐執務室_01.jpg");
	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	StL(1000, @20, @0, "cg/st/st香奈枝_通常_制服c.png");
	StCL(1000, @-100, @0, "cg/st/stさよ_通常_私服.png");
	FadeBG(0, true);
	SoundPlay("@mbgm36",0,1000,true);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);


//◆キャノンの部屋
//◆テキスト横書き

	FadeStR(300, true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040010b03">
「……以上か？」


{	FadeStL(300, false);
	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040020a03">
「はい」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040030b03">
「…………。
　舞殿宮を取り逃がした……か」


{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040040a03">
「ご期待に沿えず、申し訳ありません。
　処分は謹んでお受けいたします」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040050b03">
「――――」


{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040060a03">
「…………」

{	FadeStCL(300, false);
	FwH("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0040070a04">
「どうかお嬢さま、いえ大鳥大尉をお責めに
ならないでくださいませ。中佐殿。
　すべてはこの老いぼれが至らなんだための
不始末……」


{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040080a03">
「ええ。実はそーなんです」


{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0040090a04">
「というのは真っ赤な嘘だっぴょー。
　中佐殿、小官は上官の命令に従っただけで
あります。責任の所在をお間違えなきよう」


{	FwH("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040100a03">
「あなたそれでもわたくしの従者!?」


{	FwH("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0040110a04">
「言えた義理じゃねえだろ腐れミカン」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040120b03">
「……まあいいさ。
　どうしても抹殺しておく必要があったって
わけじゃない」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040130b03">
「ひとまず表舞台から退散させられたんなら、
それで充分だ。
　しばらくの間は余計なちょっかいもやめて
おとなしくしているだろう」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040140b03">
「……その間に<RUBY text="カタ">決着</RUBY>はつく。
　すべて」


{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040150a03">
「…………」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040160b03">
「ご苦労だった。
　下がって休んでくれ」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040170b03">
「貴官の次の配置は追って伝える」


{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0040180a03">
「……はい。
　失礼いたします」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆香奈枝退室

	DeleteStCL(300, false);
	DeleteStL(300, true);

	CreateSE("SE01","se日常_建物_扉閉める01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040190b03">
「……ふん……」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040200b03">
「逃げたにしろ、逃がしたにしろ、消えた奴
のことはどうでもいい。
　死んだ奴も」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040210b03">
「だが……
　捕虜、か」


//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0040220b03">
「湊斗景明。
　……ふむ。さて……ねぇ？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc02_005.nss"