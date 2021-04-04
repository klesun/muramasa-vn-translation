//<continuation number="470">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_012.nss_MAIN
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
	#bg011_拘置所内_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_013.nss";

}

scene md01_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_011.nss"

	SoundPlay("@mbgm16",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120010a00">
「……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120020a00">
「戻ったか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120030a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正見参
	PrintGO("上背景", 25000);
	CreateTextureSP("絵演背景", 4000, -43, -100, "cg/bg/resize/bg011_拘置所内_01am.jpg");
	CreateTextureSP("絵演立絵", 4100, -220, -400, "cg/st/3d村正蜘蛛_俯瞰.png");

	Move("絵演背景", 600, @0, 0, DxlAuto, false);

	Zoom("絵演立絵", 0, 750, 750, null, false);
	Rotate("絵演立絵", 0, @0, @0, @180, null,false);
	Request("絵演立絵", Smoothing);
	Move("絵演立絵", 600, @0, @100, DxlAuto, false);

	FadeDelete("上背景", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　やおら、天井に影が這う。
　赤い蜘蛛が逆しまに、俺の頭上へ現れていた。

　潜伏潜行を得手とする劒冑の到来は、いつもこう、
唐突だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120040a01">
《鎌倉市中を一通り、銀星号の<RUBY text="けはい">香気</RUBY>を探って
回ってみたけど》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120050a00">
「どうだった」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120060a01">
《何だか微妙ね……。
　かすかにあるような、錯覚のような》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120070a01">
《もしかしたら、いま何処かから近付きつつ
あるのかもしれない……。
　後で、もう一度見回ってみる》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120080a00">
「……そうか」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120090a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120100a01">
《？
　……なに？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120110a00">
「いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　深紅の甲鉄には所々、泥やら砂やらが跳ねていた。
　人目を避けて駆け回ったための汚れだろう。

　半生物である劒冑は、異物の付着や侵入に対処する
除去機能を備えている。
　このように汚れていても、別に掃除などする必要は
ない。

　が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120120a00">
（武人ならば）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　正調の武人ならば、我が武装の手入れを怠るものだ
ろうか。
　否、常に入念な整備を心掛けて当然であろう。

　常在戦場。敵はいつ現れるとも知れないのだ。
　襲われてから、刀の錆を捨て置いた不心得に地団駄
踏んでも遅い。

　今まで考えもしなかったが……
　やはり、そういうものであろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120130a00">
「村正。降りて来い」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120140a01">
《？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆降りた。
	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(0,true);
	CreateTextureEX("絵上面用", 5000, Center, Middle, "cg/bg/bg011_拘置所内_01a.jpg");
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演*", 300, @0, @-100, DxlAuto, true);
	Fade("絵上面用", 300, 1000, null, true);

	Delete("絵演*");
	Wait(1);
	Delete("絵上面用");

	CreateSE("SE02","se人体_足音_鎧歩く04");
	StL(1000, @-30, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120150a01">
《どうしたのよ？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120160a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120170a01">
《……えっ？》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120180a01">
《ちょっと――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ＥＶＣＧ？
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　丁度、手近に布巾があった。
　右手でそれを取り、左手で村正を引き寄せる。

　汚れは、横腹が一番酷いようだった。
　まずその周辺から拭っていく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120190a01">
《……》

{	SetVolume("@mbgm*", 2000, 0, null);}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120200a01">
《…………………………………………………
……………………………………………………
……………………………………………………
…………………………………………………》

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120210a01">
《きゃーーーーーーーーーー!!》

{	DeleteComic();
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120220a00">
「……何だ」

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120230a01">
《何だじゃないでしょっ！
　どっ、どっ、どこ触ってるの!!》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120240a00">
「お前の<RUBY text="はだ">甲鉄</RUBY>を……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120250a01">
《いやーー！
　好きものっ、へんたい！》

{//◆ばたばた。
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	CreateSE("SE01","se擬音_コミカル_蜘蛛村正暴れる");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120260a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　俺は蜘蛛の体を触ることで性的に発情する人間だと
思われているのだろうか……。
　それは確かに非常な変態であるが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se人体_足音_鎧歩く03",500);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120270a01">
《はなしてよー！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120280a00">
「落ち着け」

{	OnSE("se人体_足音_鎧歩く03",750);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120290a01">
《ちょっ、そんなことされたら……
　およめいけなくなるっ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120300a01">
《だっ、だめっ！　そこだめ！
　おなかさわらないでっ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120310a01">
《あーん、かかさまー！》

{	FwC("cg/fw/fw景明囚人_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120320a00">
「落ち着けというに！
　異常な性癖に目覚めそうだ！」

{	OnSE("se人体_足音_鎧歩く03",1000);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0120330a01">
《だーれーかーー!!》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばんばん。ドア叩く
	CreateSE("SE01","se人体_動作_叩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120340e038">
「〇四八号、何を騒いでいる!?
　開けるぞ！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120350a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――

//◆村正消失
//◆ばたん。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se日常_建物_牢獄扉開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DeleteStA(0,true);
	StR(1000, @0, @0,"cg/st/st景明_通常_囚人.png");
	FadeStR(0,true);
	DrawDelete("絵色黒", 300, 100, "blind_01_00_1", true);

	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120360e038">
「…………」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120370a00">
「…………」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120380e038">
「何だ？
　その珍妙なポーズは」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120390a00">
「単なる<RUBY text="イメージ・プレイ">妄想遊戯</RUBY>です、看守殿」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120400e038">
「……どんな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120410a00">
「人間大の蜘蛛と愉しむ性的交渉」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120420e038">
「…………………………………………」

//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120430e038">
「……そ……そうか……。
　邪魔をした……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたん
//◆で、もう一度がちゃ
	CreateSE("SE01","se日常_建物_扉開く07");
	$残時間=RemainTime("SE01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", $残時間, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	WaitKey(500);
	DeleteStA(0,true);
	CreateSE("SE01","se日常_建物_牢獄扉開く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120440a00">
「……何か？」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120450e038">
「あ、あのな……どうしても辛い時には相談
しろよ？
　大した力にはなれないと思うが、話くらい
は聞いてやれるし……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0120460a00">
「ご厚情、痛み入ります」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/md01/0120470e038">
「うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md01_013.nss"