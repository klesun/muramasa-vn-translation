//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_005.nss_MAIN
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
	#bg009_鎌倉住宅街b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_006.nss";

}

scene md06_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_004.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

/*
	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果雨", 150, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
*/

	SoundPlay("@mbgm31", 0, 1000, true);
	OnBG(100, "bg014_鎌倉繁華街_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

//◆兵士
	StL(1000, @0, @0, "cg/st/st六波羅兵士_通常_制服.png");
	FadeStL(300, true);

	SetNwC("cg/fw/nw巡邏兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／巡邏兵Ａ】
<voice name="ｅｔｃ／巡邏兵Ａ" class="その他男声" src="voice/md06/0050010e120">
「今度は何処だって!?」

{	NwC("cg/fw/nw巡邏兵Ｂ.png");}
//【ｅｔｃ／巡邏兵Ｂ】
<voice name="ｅｔｃ／巡邏兵Ｂ" class="その他男声" src="voice/md06/0050020e121">
「六地蔵だ！
　米屋に難民の集団が押し込んだらしい」

{	NwC("cg/fw/nw巡邏兵Ａ.png");}
//【ｅｔｃ／巡邏兵Ａ】
<voice name="ｅｔｃ／巡邏兵Ａ" class="その他男声" src="voice/md06/0050030e120">
「くそ、あっちでもこっちでも……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士去る
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStL(300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　命の使い道を考える。

　悔恨がもたらすものは何もない。
　そうする暇を惜しんで、俺はより有意義な何らかの
行動をしなくてはならない筈だった。

　過ちを悔いるなら、
　せめて償うために、何事かを為さねばならない。

　俺は、俺と光に起因する現世界の混乱を収めるため、
働くべきなのだ。
　それが当然であろう。当然の責任であろう。

　…………しかし。

　俺に、何ができるのか。

　この俺がどうやって、世界各地の大小様々の争いを
止められるのか。

　争う双方を検分し、より善き側に肩入れし、悪しき
側を攻め滅ぼすのか？

　……馬鹿な。

　俺の善悪判断に、何程の意味がある。
　価値基準は様々で、善悪の判断も諸人それぞれだと
いうのに。

　武は所詮、善悪相殺。
　誰もが己の善を信じて他者の善を滅ぼしているのだ。

　そうと知って、なお偽善の戦いを為す――
　
　できる事ではない。

　偽善はもう飽食した。
　第一、偽善の勝利は次の争いの温床にしかならない。

　ならばどうするか。

　争いの間に立って、平和を訴えるか。

　理想的だ。

　きっと、これが正しい。

　だが、<RUBY text="・・・・・・">俺にできるか</RUBY>となれば話は変わる。

　善行を為すにも資格が要る。
　これまで散々人と争い、殺してきた者が、争うのを
止めろと叫んだところで、そこに説得力が宿るだろう
か。

　誰が耳を貸すだろうか。

　無理だ。

　土台、人を馬鹿にしている。

　……なら。
　俺はどうすればいい。

　どうしようもないのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0050040a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　そう。
　<RUBY text="・・・・・・・・">どうしようもない</RUBY>。

　俺にできる事は破壊と殺戮だけで、平和をもたらす
<RUBY text="すべ">術</RUBY>などなかった。
　
　だから、俺は――

　幾多の命を奪い、世に災いを振り撒いておきながら。
　裁かれもせず、撒いた災いを摘む事もできず、ただ
漫然と生き延び生き続ける。

　そうするしかない。
　……そうするだけの、この余命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg015_鎌倉路地裏_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SetNwC("cg/fw/nw巡邏兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／巡邏兵Ａ】
<voice name="ｅｔｃ／巡邏兵Ａ" class="その他男声" src="voice/md06/0050050e120">
「抵抗するな！
　おとなしく、奪った物を返せ！」

{	NwC("cg/fw/nw暴動集団Ａ.png");}
//【ｅｔｃ／暴動民Ａ】
<voice name="ｅｔｃ／暴動民Ａ" class="その他男声" src="voice/md06/0050060e254">
「うるせえ！
　こっちだって好きでやってんじゃねえっ!!」

{	NwC("cg/fw/nw暴動集団Ｂ.png");}
//【ｅｔｃ／暴動民Ｂ】
<voice name="ｅｔｃ／暴動民Ｂ" class="その他男声" src="voice/md06/0050070e255">
「死にたくなけりゃどいてろ兵隊！」

{	NwC("cg/fw/nw巡邏兵Ｂ.png");}
//【ｅｔｃ／巡邏兵Ｂ】
<voice name="ｅｔｃ／巡邏兵Ｂ" class="その他男声" src="voice/md06/0050080e121">
「貴様らァ――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃声。悲鳴
	OnSE("se戦闘_攻撃_ライフル撃つ4回", 1000);
	CreateSE("SE02", "se背景_ガヤ_悲鳴01");
	MusicStart("SE02", 0, 1000, 0, 1000, null,false);

	WaitKey(2000);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0050090a00">
「あ、く……」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0050100a00">
「あぁぁ――ぐぁぁぁァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　俺は生きている……。

　何故、生きているのだ。

　何の為に、俺は生きるのだ。

　……何の為に!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_006.nss"