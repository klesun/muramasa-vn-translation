//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_010.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_011vs.nss";

}

scene mc04_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_009.nss"


//◆景明サイド
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	Delete("上背景");
	SoundPlay("@mbgm36", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　村正の指示に従い、その十字路を真っ直ぐ駆け抜け
ようとして――
　刹那。視界の端を<RUBY text="よ">過</RUBY>ぎった光景に、俺は慌てて足を
止めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大廊下
	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100010a00">
「大尉殿!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　廊下の先。
　兵士が二人と――馬乗りになって誰かを組み伏せて
いる少壮の男。

　捕らわれの身は女性のそれ。
　……紛れもなく大鳥大尉！

　こちらの声が届いたのだろう。
　上の男が、一瞥を寄越してきた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	DeleteStR(0, true);
	Delete("絵背景10");

	CreateTextureSP("絵背景20", 12, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	StL(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(0,false);

	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0100020a06">
「あれは貴様の仲間か、香奈枝」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0100030a03">
「……」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0100040a06">
「チ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_走る07", 1000);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　短い舌打ち。
　その半瞬に、男は状況を即断した様子だった。<k>――
俺は劒冑を装甲した武者。男は軽武装。彼に従う兵士
も通常装備。<k>――戦力優越は完全に<RUBY text="こちら">当方</RUBY>。

　<RUBY text="ばった">蝗虫</RUBY>の挙動で男が香奈枝嬢から跳び離れる。
　そのまま俺とは逆方向に、廊下を駆け去っていった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0100050a03">
「……ッッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝立つ
	OnSE("se人体_動作_起きる01", 1000);

	StL(1000,@0,@30,"cg/st/st香奈枝_通常_私服c.png");
	Move("@StL*", 300, @0, @-30, Dxl1, false);
	FadeStL(300,true);

	WaitKey(200);

	CreateSE("SE01","se人体_足音_走る07");
	MusicStart("SE01",0,1000,0,1100,null,false);
	Move("@StL*", 600, @-200, @0, Axl2, false);
	DeleteStL(300, true);

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	DeleteStA(0,true);

	SetVolume("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　軽く咳き込みながら起き上がるや、大鳥大尉も彼を
追って走り出した。
　男の速度は相当だが、大尉の足もたった今まで首を
絞め上げられていた人間のそれではない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	Delete("絵背景20");
	DrawDelete("黒幕１", 500, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100060a00">
「大尉――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆香奈枝去る

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　呼びかけは黙殺された。
　一顧だにせず、大尉は背を向ける。

　逃走する男しか、眼中にはないようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100070a00">
（まさか？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　男の身なりを思い起こす。
　……歴とした上将の装い。若さに見合うとは言えぬ
……ではあれが、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士
	OnSE("se戦闘_銃器_構える01",1000);
	StR(1100,@40,@0,"cg/st/st六波羅兵士_通常_制服.png");
	StL(1000,@-40,@0,"cg/st/st六波羅兵士_通常_制服.png");
	FadeStR(300,false);

	Wait(100);
	OnSE("se戦闘_銃器_構える01",1000);
	FadeStL(300,true);

	WaitAction("@StL*", null);
	CreatePlainSP("絵板写", 19900);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100080a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆殴打二度
	CreateTextureSP("絵背景40", 15000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景40", 0, 1100, 1100, null, true);

	CreateTextureEXadd("絵背景50", 16000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Rotate("絵背景50", 0, @0, @0, @180, null,true);
	Zoom("絵背景50", 0, 1100, 1100, null, true);

	DeleteStA(0,true);
	Delete("絵板写");

	OnSE("se戦闘_攻撃_殴る03", 1000);
	Shake("絵背景40", 200, 20, 0, 0, 0, 1000, Dxl2, false);

	Wait(150);

	OnSE("se戦闘_攻撃_殴る02", 1000);
	Fade("絵背景50",100,1000,null,false);
	Shake("絵背景40", 200, 0, 20, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw大鳥軍兵士Ｉ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／大鳥兵士Ｉ】
<voice name="ｅｔｃ／大鳥兵士Ｉ" class="その他男声" src="voice/mc04/0100090e179">
「ぎは！」

{	NwC("cg/fw/nw大鳥軍兵士Ｊ.png");}
//【ｅｔｃ／大鳥兵士Ｊ】
<voice name="ｅｔｃ／大鳥兵士Ｊ" class="その他男声" src="voice/mc04/0100100e180">
「げほッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばたばた。
	CreatePlainSP("絵板写", 19900);

	Wait(10);
	Delete("絵背景50");
	Delete("絵背景40");

	FadeDelete("絵板写", 1000, false);

	OnSE("se人体_衝撃_転倒01", 1000);
	OnSE("se人体_衝撃_転倒02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　大鳥大尉の背中に銃口を合わせようとした、二人の
兵士を殴り倒す。
　重傷を負わせぬよう加減はした……が、数時間ほど
は起き上がれまい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100110a00">
（あれが大鳥獅子吼なのか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　二人の容態を確認しつつ、胸中に呟く。
　篠川公方大鳥獅子吼――想像していた以上に若く、
想像していた以上に圭角の鋭い相貌であった。

　あれが香奈枝嬢の、父親の仇。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0100120a01">
《追うの？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100130a00">
「……いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　両者は既に俺の視野から失せている。
　まだ見えていたとしても、決断は変わらなかった。

　大尉が俺の呼ばわりに反応しなかった、その理由が
わかっている。
　――そう、決めていた事だ。俺と大尉の目的は違う。
互いに助け合いはしない。

　今は結果的に俺が大尉を救ったのかもしれないが、
それは単に偶然の仕様だ。
　協力したわけではない。しかし、更にここから追う
となると、話は変わる。

　俺は自分の責務を投げ捨てて、
　彼女の戦いを妨げる事になる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0100140a00">
「行くぞ。
　<RUBY text="おれ">村正</RUBY>の目的は銀星号だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0100150a01">
《――ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se特殊_鎧_駆動音01", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　身体の向きを転じて、再び走り出す。
　足音は冷たく、豪奢な通路に<RUBY text="こだま">反響</RUBY>した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_011vs.nss"