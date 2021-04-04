//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_009.nss_MAIN
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
	#bg015_鎌倉路地裏_01=true;
	#bg104_普陀楽城外郭大船方面_01=true;
	#ev802_戦争絵シリーズその２=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_010.nss";

}

scene md04_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_008.nss"

//◆街路
//◆村正
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg014_鎌倉繁華街_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm15", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",2000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　迷ったが、結局は人型で行動することに決めた。

　蜘蛛の姿の方が隠形術には優れる。
　しかし武者の感覚まで騙し切れるものではないし、
そうして発見された場合、今の情勢下では問答無用で
撃墜されてしまいかねない。

　甲鉄造りの蜘蛛が自分は民間人だと言い張っても、
耳を貸す者はいないだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090010a01">
（御堂は……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　普陀楽の城へ戻ったはずだった。

　何やらこの鎌倉を――この関東を？　この大和を？
――包む状況が劇的な変化に晒されているらしい。
　建朝寺を囲んだ幕府の一団は、潮が引くように去り、
去るに際して寺の面々を捕らえる手間さえ惜しんだ。

　助かったといえば、助かったのだが。
　
　……私としては何も解決していない。

　景明を追わなくてはならなかった。
　追い――彼の劒冑として、すべきことをせねばなら
ない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg015_鎌倉路地裏_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　大通りを避け、路地の狭間から狭間へ移る。

　今、鎌倉を埋め尽くしつつある集団――進駐軍とか
呼ばれている、大和人ではなく蝦夷でもない異国人の
軍勢――は、どうやら民衆を家に閉じ込めておきたい
らしい。繰り返される放送がそう告げている。

　見つかると、面白くないことになりそうだった。
　この蝦夷の姿ならいきなり攻撃されることもないだ
ろうが、さりとて見逃してもらえるとも思えない。

　拘束されるのは避けられまいし、そうなっては困る。
　隙を見て抜け出すにしても、歴とした軍隊が相手で
は余りに危険が大き過ぎる。

　細心の注意を払って見つからないよう心掛けるに、
<RUBY text="し">如</RUBY>くはなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(500);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090020a01">
（これは……<RUBY text="こぶくろやがわ">小袋谷川</RUBY>ね）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　道路の傍らにさほど広くもない川が流れているのを
見て、脳裏の地図と突き合わせる。
　この町中は幾度も駆け巡ったから、そう迷うことも
なかった。

　普陀楽城の外周を覆う、<RUBY text="かしおがわ">柏尾川</RUBY>の支流だ。
　ここにこれがあるということは……もう近い。

　足に鞭を入れて、走る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動。bg104

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg104_普陀楽城外郭大船方面_01.jpg");
	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);

	Wait(1000);

	Shake("絵背景100", 1500, 0, 5, 0, 0, 1000, Dxl2, false);
	CreateSE("SE01","se背景_ガヤ_戦闘_空爆_L");
	MusicStart("SE01",2000,500,0,1000,null,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
	Wait(500);

//◆ぼーん。砲声
	OnSE("se背景_ガヤ_戦闘_艦砲射撃_L", 1000);

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090030a01">
「……ッッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　そして、私は立ち<RUBY text="すく">竦</RUBY>んだ。

　普陀楽城――
　それはもう目前。そこに見えている。目と鼻の先だ。

　物理の上での距離はほんのわずか。

　けれど。
　<RUBY text="・・">現実</RUBY>の上での距離は、果てしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃声、砲声
//◆ev802
	CreateSE("銃撃戦", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("銃撃戦", 500, 700, 0, 1000, null,true);

	CreateTextureEX("ev802", 15000, @0, @0, "cg/ev/ev802_戦争絵シリーズその２.jpg");
	Fade("ev802", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("銃撃戦", 2000, 300, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　銃を構えた歩兵の隊列。
　筒先を揃えて火を吹く砲門群。
　突進の機を待ち構える鉄の車両。

　それらに向けて放たれる、城壁からの射撃、砲撃。
　噴煙たなびく先の空を見れば、両陣の武者が自在に
舞い、剣を交えては打ち離れ、離れてはまた打ち交え。

　鉄火の響きと輝きを儚く散らし、命を一つまた一つ
と、その繚乱の渦へ沈めてゆく。
　柏尾川の<RUBY text="おも">面</RUBY>は早くも、<RUBY text="あけ">朱</RUBY>の<RUBY text="いろ">彩</RUBY>を加えられつつあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0090040a01">
「……<RUBY text="いくさ">戦争</RUBY>……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　始まっている。

　異国の大軍と、
　景明のいる、六波羅幕府の軍勢との戦争が。

　――もう、始まってしまっていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("銃撃戦", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	ClearWaitAll(2000, 1500);
}

..//ジャンプ指定
//次ファイル　"md04_010.nss"