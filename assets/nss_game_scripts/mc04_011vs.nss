//<continuation number="950">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_011vs.nss_MAIN
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

	$GameName = "mc04_012.nss";

}

scene mc04_011vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_010.nss"

//◆玄関前の攻防
//◆銃撃戦ＳＥ。但しマシンガンは無し。
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	CreateSE("銃撃戦", "se戦闘_銃器_拳銃銃撃戦01_L");
	MusicStart("銃撃戦", 0, 1000, 0, 1000, null,true);
	OnBG(100, "bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SetNwC("cg/fw/nw大鳥軍将校Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0010e168">
「……くそォ！
　あの畜生、うまく車を盾にしやがる」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0020e168">
「しかも婆ァの癖にやたら速いわしつこいわ
正確だわ……手に負えんな！
　別班の準備はまだか!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｋ.png");}
//【ｅｔｃ／大鳥兵士Ｋ】
<voice name="ｅｔｃ／大鳥兵士Ｋ" class="その他男声" src="voice/mc04/011vs0030e181">
「まだです！
　合図はありません」


{	NwC("cg/fw/nw大鳥軍兵士Ｌ.png");}
//【ｅｔｃ／大鳥兵士Ｌ】
<voice name="ｅｔｃ／大鳥兵士Ｌ" class="その他男声" src="voice/mc04/011vs0040e182">
「せめてあの<RUBY text="かべ">車</RUBY>さえなければ……
　隊長、小銃じゃあ埒が明きません。<RUBY text="ホイ">自走砲</RUBY>
を持ってきて一気に、」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0050e168">
「とっくにやってるよ。婆さんが館を後ろに
背負ってなければな！
　流れ弾が壁を破ってお偉いさんに命中でも
したら、我々全員打ち首獄門だ」


{	NwC("cg/fw/nw大鳥軍兵士Ｌ.png");}
//【ｅｔｃ／大鳥兵士Ｌ】
<voice name="ｅｔｃ／大鳥兵士Ｌ" class="その他男声" src="voice/mc04/011vs0060e182">
「それって多分このまま足止め食わされてて
も同じっすよ！
　獅子吼様の御気性を考えると！」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0070e168">
「……」


{	NwC("cg/fw/nw大鳥軍兵士Ｍ.png");}
//【ｅｔｃ／大鳥兵士Ｍ】
<voice name="ｅｔｃ／大鳥兵士Ｍ" class="その他男声" src="voice/mc04/011vs0080e183">
「ちィ……
　要は一発当てりゃあいいんだ。一発！」


{	NwC("cg/fw/nw大鳥軍兵士Ｍ.png");}
//【ｅｔｃ／大鳥兵士Ｍ】
<voice name="ｅｔｃ／大鳥兵士Ｍ" class="その他男声" src="voice/mc04/011vs0090e183">
「年甲斐もねぇクソババァがッ――」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0100e168">
「馬鹿、うかつに頭出すな！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばきゅーん。撃たれた
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Fade("フラッシュ白",300,0,null,true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｍ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥兵士Ｍ】
<voice name="ｅｔｃ／大鳥兵士Ｍ" class="その他男声" src="voice/mc04/011vs0110e183">
「がッッ!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ばた。
	OnSE("se人体_衝撃_転倒01", 1000);

	SetNwC("cg/fw/nw大鳥軍将校Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0120e168">
「……くっ」


{	NwC("cg/fw/nw大鳥軍兵士Ｋ.png");}
//【ｅｔｃ／大鳥兵士Ｋ】
<voice name="ｅｔｃ／大鳥兵士Ｋ" class="その他男声" src="voice/mc04/011vs0130e181">
「隊長！」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0140e168">
「何だ!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｋ.png");}
//【ｅｔｃ／大鳥兵士Ｋ】
<voice name="ｅｔｃ／大鳥兵士Ｋ" class="その他男声" src="voice/mc04/011vs0150e181">
「合図です」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0160e168">
「――――」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0170e168">
「……良し。支援する。
　敵の注意をこっちに引き付けるんだ」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0180e168">
「俺に合わせて、全員で一斉に――」


{	NwC("cg/fw/nw大鳥軍兵士Ｌ.png");}
//【ｅｔｃ／大鳥兵士Ｌ】
<voice name="ｅｔｃ／大鳥兵士Ｌ" class="その他男声" src="voice/mc04/011vs0190e182">
「げっ!?
　たっ隊長！　婆ァが！」


{	NwC("cg/fw/nw大鳥軍将校Ｂ.png");}
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0200e168">
「今度は何だよ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がっちゃん。擲弾筒用意
	OnSE("se戦闘_攻撃_擲弾筒準備", 1000);

	Wait(1000);

	SetNwC("cg/fw/nw大鳥軍将校Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0210e168">
「…………」


//【ｅｔｃ／大鳥将校Ｂ】
<voice name="ｅｔｃ／大鳥将校Ｂ" class="その他男声" src="voice/mc04/011vs0220e168">
「て、擲弾筒……！
　まだ隠し持ってやがったのかァ!!」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0230a04">
「最後の一発でございます。
　では皆様方、ご機嫌よう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどーん。ぼーん。吹っ飛んだ。

	SetVolume("銃撃戦", 1000, 0, null);

/*
	CreateColorSP("黒幕１", 25000, "WHITE");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);
	
	CreateTextureSP("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreatePlainEX("絵板写", 900);
	Fade("絵板写", 0, 1000, null, true);
	Zoom("絵板写", 0, 2000, 2000, null, true);

	Shake("絵板写", 1000000, 2, 3, 0, 0, 1000, DxlAuto, false);
	DrawTransition("黒幕１", 150, 1000, 0, 100, null, "cg/data/circle_02_01_1.png", true);
	Delete("黒幕１");

	Zoom("絵板写", 2000, 1000, 1000, null, true);

	Delete("絵板写");

	FadeDelete("爆発", 1500, true);

*/
	CreateSE("SE00a","se戦闘_攻撃_高速徹甲弾発射01");
	MusicStart("SE00a",0,1000,0,800,null,false);

	WaitKey(1000);

	OnSE("se戦闘_破壊_爆発03", 1000);

	CreateTextureEX("爆発", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureEXadd("爆発2", 900, @0, @0, "cg/ef/ef026_汎用爆撃.jpg");
	Request("爆発*", Smoothing);
	Zoom("爆発", 0, 1500, 1500, null, true);
	Zoom("爆発2", 0, 2000, 2000, null, true);

	Shake("爆発", 300, 20, 20, 0, 0, 200, Dxl3, false);
	Fade("爆発", 150, 1000, null, false);
	Fade("爆発2", 150, 200, null, true);
	Fade("爆発2", 150, 0, null, true);

	Shake("爆発", 950, 40, 40, 0, 0, 200, Dxl3, false);

	Fade("爆発2", 300, 1000, null, false);

	CreateColorSP("白", 15000, "WHITE");
	DrawTransition("白", 100, 0, 1000, 100, null, "cg/data/circle_02_00_0.png", true);

	CreatePlainSPadd("絵板写", 110);
	Fade("絵板写", 2100, 0, DxlAuto, false);
	Shake("絵板写", 2100, 0, 20, 0, 0, 1000, Dxl1, false);

	Delete("爆発2");
	FadeDelete("爆発",1000,false);
	FadeDelete("白", 1800, true);

	WaitKey(500);

	WaitAction("絵板写", null);
	Delete("絵板写");

//◆さよ

//伏せてたのが起きる という演出 inc櫻井
	StC(1000, @0, @60, "cg/st/stさよ_通常_私服.png");
	Move("@StC*", 300, @0, @-60, DxlAuto, false);

	FadeStC(300, true);

	SetFwR("cg/fw/fwさよ_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0240a04">
「さて。
　これでしばらくは<RUBY text="インターミッション">休憩時間</RUBY>」


{	FwR("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0250a04">
「――と？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆斬撃
//◆すさー。避ける婆さん。


	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_down(@0, @0,1200);
	SL_downfade(10);


	Move("@StC*", 100, @-200, @0, DxlAuto, false);


	Wait(200);


	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0260a04">
「伏兵……なるほど。
　本命はこちらでございましたか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士数人。白兵装備

	StR(1000, @80, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StCR(900, @-80, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	FadeStCR(300, false);
	Wait(150);
	FadeStR(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0270e184">
「不気味なくらい素早い婆さんだ。
　なんで今のを躱す？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0280a04">
「反復横跳びが日課でございますゆえ」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0290e184">
「……しかし、銃は手放しちまったな。
　上着の下に拳銃を隠し持ってるってことも
なさそうだ」


//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0300e184">
「ここまでにしとこうぜ？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0310a04">
「と、申されますと」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0320e184">
「難しいことはなんも言ってねえだろ。
　両手を頭の後ろで組んで、そこに伏せな」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0330a04">
「は」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆伏せ。
	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,850,null,false);
	Move("@StC*", 300, @0, @100, null, false);
	DeleteStC(300,true);

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0340a04">
「これでよろしいので」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0350e184">
「……やれって言っといて何だけど。
　やたら素直だなおい」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0360a04">
「昔から真っ直ぐで良い子だと言われており
ました」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0370e184">
「どう思う？」


{	NwC("cg/fw/nw大鳥軍兵士Ｏ.png");}
//【ｅｔｃ／大鳥兵士Ｏ】
<voice name="ｅｔｃ／大鳥兵士Ｏ" class="その他男声" src="voice/mc04/011vs0380e185">
「一五〇パーセント罠」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0390e184">
「うん。俺もそう思う。
　このまま斬っとくか」


{	NwC("cg/fw/nw大鳥軍兵士Ｏ.png");}
//【ｅｔｃ／大鳥兵士Ｏ】
<voice name="ｅｔｃ／大鳥兵士Ｏ" class="その他男声" src="voice/mc04/011vs0400e185">
「賛成」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0410a04">
「敬老精神が足りませんぞキック！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆足を薙ぎ払う蹴り
//◆兵士転倒

	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateMovie("ムービー１", 1200, Center, Middle, false, false, "dx/mv剣戟_右から左.ngs");
	WaitAction("ムービー１", null);
	Delete("ムービー１");

	Shake("@StR*", 300, 3, 1, 0, 0, 1000, DxlAuto, false);
	Shake("@StMR*", 300, 3, 1, 0, 0, 1000, DxlAuto, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0420e184">
「だはッ!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｏ.png");}
//【ｅｔｃ／大鳥兵士Ｏ】
<voice name="ｅｔｃ／大鳥兵士Ｏ" class="その他男声" src="voice/mc04/011vs0430e185">
「――<RUBY text="カポエイラ">黒人蹴技術</RUBY>ッ？」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0440a04">
「いえ、ただの猿真似でございます！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆下から突き上げる蹴り
//◆兵士倒す
//◆起きるさよ。格闘用立ち絵？
	OnSE("se戦闘_攻撃_殴る01", 1000);

	CreateTextureEX("絵背景501", 9000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景501", 0, 1200, 1200, null, false);
	FadeFR2("絵背景501",0,1000,300,@0,@0,40,Dxl2, true);
	DeleteStR(0, false);
	DeleteStCR(0, true);
	OnSE("se人体_衝撃_転倒03", 1000);

	FadeDelete("絵背景501", 1000, true);

	OnSE("se人体_動作_一歩", 1000);

	StL(1000, @50, @100, "cg/st/stさよ_戦闘_私服.png");
	FadeStL(300, false);

	Move("@StL*", 300, @-50, @-100, null, true);
	SetBlur("@StL*", true, 3, 500, 30,false);

	StCR(900, @-20, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StR(1000, @140, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	Move("@StMR*", 300, @-60, @0, Dxl2, false);
	FadeStCR(300, false);
	Wait(100);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｐ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ｅｔｃ／大鳥兵士Ｐ】
<voice name="ｅｔｃ／大鳥兵士Ｐ" class="その他男声" src="voice/mc04/011vs0450e186">
「ばばあ……！」


{	NwC("cg/fw/nw大鳥軍兵士Ｑ.png");}
//【ｅｔｃ／大鳥兵士Ｑ】
<voice name="ｅｔｃ／大鳥兵士Ｑ" class="その他男声" src="voice/mc04/011vs0460e187">
「どうあっても殺すか殺されるかを続けたい
らしいな」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0470a04">
「そのようなことはございませんよ？
　この歳になると、<RUBY text="・・">戯れ</RUBY>でいちいち人を殺す
のも億劫で……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0480a04">
「ですからどうかご安心を。
　<RUBY text="・・・・">ほどほど</RUBY>のところで、済ませて差し上げま
しょう」


{	NwC("cg/fw/nw大鳥軍兵士Ｐ.png");}
//【ｅｔｃ／大鳥兵士Ｐ】
<voice name="ｅｔｃ／大鳥兵士Ｐ" class="その他男声" src="voice/mc04/011vs0490e186">
「とりあえず――その口を閉じろ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆唐竹に斬り
//◆さよ、避け
//◆拳打
//◆兵士食らって倒れ

	Move("@StL*", 100, @180, @0, AxlAuto, false);

	CreateTextureSPadd("絵背景500", 10000, -200, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPadd("絵背景501", 10000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	OnSE("se戦闘_攻撃_殴る02", 1000);

	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);


	Move("@StR*", 300, @0, @100, null, false);
	DeleteStR(300, false);
	OnSE("se人体_衝撃_転倒03", 1000);


	FadeDelete("絵背景*", 500, true);

	SetNwL("cg/fw/nw大鳥軍兵士Ｑ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／大鳥兵士Ｑ】
<voice name="ｅｔｃ／大鳥兵士Ｑ" class="その他男声" src="voice/mc04/011vs0500e187">
「シィッッ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆次の兵士
//◆横薙ぎ
//◆さよ、しゃがみ避け
//◆アッパー
//◆兵士食らう。倒れ

	CreateTextureSPadd("絵背景500", 10000, -200, 0, "cg/ef/ef014_汎用横軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	Move("@StL*", 100, @0, @60, DxlAuto, true);

	FadeDelete("絵背景500", 1000, false);



	OnSE("se戦闘_攻撃_殴る01", 1000);
	CreateColorSPadd("白", 15000, "WHITE");
	Move("@StL*", 300, @50, @-60, DxlAuto, false);
	DeleteStL(300,false);
	DrawDelete("白", 200, 80, "slide_07_00_1", true);


	Move("@StMR*", 300, @0, @100, null, false);
	DeleteStCR(300, false);
	OnSE("se人体_衝撃_転倒03", 1000);

	FadeDelete("絵背景*", 500, true);



//◆次の兵士。二人
//◆袈裟斬り
//◆さよ避け
//◆ハイキック
//◆兵士一人倒れ


	StR(1000, @60, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StCR(900, @-60, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	StC(1000, @0, @30, "cg/st/stさよ_戦闘_私服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);
	Rotate("@StMR*", 0, @0, @180, @0, null, true);

	FadeStC(300, false);

	SetBlur("@StL*", true, 3, 500, 50,false);

	FadeStR(300, false);

	FadeStCR(300, true);



	Move("@StC*", 100, @180, @-30, null, false);
	DeleteStC(100, true);

	CreateTextureSPadd("絵背景500", 10000, -200, 0, "cg/ef/ef011_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPadd("絵背景501", 11000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");

	OnSE("se戦闘_攻撃_殴る03", 1000);

	Zoom("絵背景501", 0, 1200, 1200, null, false);
	Zoom("絵背景501", 200, 1000, 1000, Dxl2, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, false);

	Move("@StR*", 300, @0, @100, null, false);
	DeleteStR(300, false);
	OnSE("se人体_衝撃_転倒03", 1000);

	FadeDelete("絵背景*", 500, true);


//◆もう一方の兵士、中央に位置移動
//◆刺突
//◆さよ避け
//◆正面直突き。ずがん。

	DeleteStCR(150,true);

	StC(900, @0, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	FadeStC(150, true);


	OnSE("se戦闘_攻撃_刀振る02",1000);
	SL_centerin(@50, @0,1000);

	SL_centerinfade2(5);


	CreateTextureSP("絵背景501", 11000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景501", 0, 1100, 1100, null, true);

	OnSE("se戦闘_攻撃_殴る05", 1000);

	Zoom("絵背景501", 200, 1300, 1300, null, false);
	Shake("絵背景501", 500, 50, 0, 0, 0, 1000, Dxl3, true);


	FadeDelete("絵背景*", 500, true);



//◆鳩尾を打ち抜かれたと思いねえ。

	SetNwL("cg/fw/nw大鳥軍兵士Ｒ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／大鳥兵士Ｒ】
<voice name="ｅｔｃ／大鳥兵士Ｒ" class="その他男声" src="voice/mc04/011vs0510e188">
「――かッ、は」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばたん。兵士倒れ
//◆↑以上の演出の詳細はリソースと相談。

	OnSE("se人体_衝撃_転倒03", 1000);
	Move("@StC*", 300, @0, @100, null, false);
	Shake("@StC*", 300, 2, 1, 0, 0, 500, null, false);
	DeleteStC(300, true);

//◆さよ

	StL(1500, @0, @0, "cg/st/stさよ_通常_私服.png");
	StR(900, @0, @0, "cg/st/st六波羅兵士_抜刀_制服.png");
	Rotate("@StR*", 0, @0, @180, @0, null, true);

	FadeStR(300, false);
	FadeStL(300, true);


	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0520e184">
「………………」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0530a04">
「スタンディングオベーションをなさりたい
なら、ご遠慮なくどうぞ」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0540e184">
「こんなの有りか？」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0550a04">
「自分の眼で見たものが真実でございます。
　ま、見えない所にも色々と真実は転がって
おりますけどねぇ」


{	NwC("cg/fw/nw大鳥軍兵士Ｎ.png");}
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0560e184">
「どう報告すりゃいいんだ……。
　ばーさん一人にどつき回されて負けました
なんて言って、獅子吼様が許すわけねー……」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0570e195">
《安心しろ。中将閣下は道理を曲げぬ御方。
　<RUBY text="・・・・・・・・・・">相手が永倉さよだった</RUBY>と言えばそれで納得
して下さろう》


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0580a04">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆竜騎兵着陸。次々と。

	OnSE("se戦闘_動作_鎧_着地01", 1000);

	DeleteStA(300,true);

	WaitKey(1500);
	OnSE("se特殊_鎧_駆動音02", 1000);

	StR(1000, @160, @0, "cg/st/3d九四式竜騎兵_立ち_通常.png");
	StCR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_通常.png");

	StL(1000, @40, @0, "cg/st/3d九四式指揮官_立ち_通常.png");

	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeStL(300, false);
	Wait(100);
	CreateSE("SE01a","se人体_足音_鎧歩く04");
	MusicStart("SE01a",0,1000,0,800,null,false);
	FadeStR(300, false);
	Wait(100);
	CreateSE("SE01b","se人体_足音_鎧歩く04");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	FadeStCR(300, true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｎ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／大鳥兵士Ｎ】
<voice name="ｅｔｃ／大鳥兵士Ｎ" class="その他男声" src="voice/mc04/011vs0590e184">
「ど――<RUBY text="ドラグーンズ">竜騎兵隊</RUBY>!!」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0600a04">
「……次から次へと困ったものですねぇ。
　この婆に時代活劇の主人公でも張らせたい
のでございましょうか……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0610a04">
「のどかに静かに余生を過ごすのだけが望み
の老体に、あまり無理をさせないでください
ませぬかなァ」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0620e195">
「お戯れを。
　永倉流骨法術の冴え、まるで衰えたように
見えませなんだぞ」


//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0630e195">
「十年前、散々道場の床に叩きつけられた頃
のことを思い出しました」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0640a04">
「……おや。
　どうも声に聞き覚えがあると思えば」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0650a04">
「昔、可愛がって差し上げた<RUBY text="・・・">お子様</RUBY>ではござ
いませんか」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0660e195">
「……ええ。小官だけではありません。
　今ここにいる者の半分は、かつてあなたに
自尊心をへし折られた経験の持ち主ですよ」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0670e196">
「――――」


{	NwC("cg/fw/nw竜騎兵Ｃ.png");}
//【ｅｔｃ／大鳥竜騎Ｃ】
<voice name="ｅｔｃ／大鳥竜騎Ｃ" class="その他男声" src="voice/mc04/011vs0680e197">
「――――」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0690a04">
「これはこれはお懐かしい。
　ちょっとした同窓会のようではございませ
んか」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0700a04">
「久闊を叙し、皆で昔語でもいたしましょう。
　いやはや、人間老いると、こういう集まり
が一番の楽しみになるものでございましてな」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0710e195">
「……折角のお申し出なれど。
　先に職責を果たさねばなりませぬゆえ」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0720a04">
「まぁまぁそう言わず。
　こんな場合に備えて、そこの車に酒肴の品
も積んでございます」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0730e195">
「…………」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0740e196">
「高遠、付き合うな。
　この方は時間を与えれば与えるほど、何を
仕込んでくるかわからん」


//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0750e196">
「老獪さで張り合える相手ではない。
　何も考えずに斬る、それだけに徹するべき
だ」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0760e195">
「わかっている。
　香奈枝様と一緒に海外追放された、永倉の
鬼子母神……どれほど<RUBY text="・・・・・・・">始末に負えない</RUBY>かなど、
今さら教えてもらうまでもない」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0770e196">
「うむ」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0780a04">
「……いえ。
　ちょっとお待ちを。今のストップ」

//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0790a04">
「はっきり申し上げておきますが、海外追放
されたのは香奈枝様だけであって、このさよ
はあくまで自分の意思で同行したのですよ？
　まとめて捨てられたわけではございません」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0800a04">
「そこのところを決してお間違えなきよう」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0810e195">
「…………」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0820e196">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


//◆ムカ表情。笑顔に怒りマークか。

	SetFwC("cg/fw/fwさよ_笑顔.png");
	SetComic(@0, @0, 15);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0830a04">
「二百パーセント信じられねーって目ですな。
　師の言葉を疑う者は何事も上達しませんぞ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0840a04">
「<RUBY text="じょうせいし">常静子</RUBY>いわく、<RUBY text="いささ">聊</RUBY>かも師言を信ぜざる者は
とてもその奥を究むる人に<RUBY text="あら">非</RUBY>ずと――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0143]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0850e195">
「――<RUBY text="しか">然</RUBY>れども師、<RUBY text="からて">無手</RUBY>にて<RUBY text="つるぎ">金剛</RUBY>に勝利すと
云はんに、<RUBY text="これ">是</RUBY>を信ぜん人は、是も<RUBY text="また">亦</RUBY>その奥に
至る人に非ず」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0860a04">
「……都合の悪い部分は引用しないように」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0870e196">
「高遠」


{	NwC("cg/fw/nw竜騎兵Ａ.png");}
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0880e195">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆竜騎兵抜刀


//	OnSE("se戦闘_動作_武装準備01", 1000);

	StR(900, @100, @0, "cg/st/3d九四式竜騎兵_立ち_抜刀.png");
	StL(900, @0, @0, "cg/st/3d九四式指揮官_立ち_抜刀.png");
	StCR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	OnSE("se戦闘_動作_刀構え01", 1000);

	FadeStR(250, true);
	OnSE("se戦闘_動作_刀構え01", 1000);

	FadeStL(350, true);
	OnSE("se戦闘_動作_刀構え01", 1000);

	FadeStCR(550, true);


	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0890e195">
「恩師に刃を向けるは無道なれど……これも
主命。
　いや、武の道においてはこれこそが師への
報恩と心得る――」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0900a04">
「いえそれ有り得ませんからな。
　びみょーにもっともらしく聞こえてしまう
あたりが曲者ですがやっぱりそれって単なる
恩知らずですからな常識的に考えて」


{	NwC("cg/fw/nw竜騎兵Ｂ.png");}
//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0910e196">
「一対多の数の差など、あなたは気にも留め
ますまいが……
　たとえ<RUBY text="おうきょう">奥境</RUBY>の達人と云えど、覆せぬ優劣が
ある」


//【ｅｔｃ／大鳥竜騎Ｂ】
<voice name="ｅｔｃ／大鳥竜騎Ｂ" class="その他男声" src="voice/mc04/011vs0920e196">
「劒冑無くして劒冑には勝てない！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵展開

	StR(1000, @100, @0, "cg/st/3d九四式竜騎兵_立ち_戦闘a.png");
	StL(1000, @0, @0, "cg/st/3d九四式指揮官_立ち_戦闘c.png");
	StCR(1000, @-100, @0, "cg/st/3d九〇式指揮官_立ち_戦闘a.png");
	OnSE("se戦闘_動作_刀構え02", 1000);

	FadeStR(50, true);
	OnSE("se戦闘_動作_刀構え02", 1000);

	FadeStL(50, true);
	OnSE("se戦闘_動作_刀構え02", 1000);

	FadeStCR(50, true);


	SetNwC("cg/fw/nw竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／大鳥竜騎Ａ】
<voice name="ｅｔｃ／大鳥竜騎Ａ" class="その他男声" src="voice/mc04/011vs0930e195">
「御覚悟!!」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0940a04">
「――ふぅ。
　相変わらず、<RUBY text="・・・・">駄目な子</RUBY>たちでございます」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/011vs0950a04">
「いったい何を見ているのか。
　劒冑なら……<?>
{Wait(500);}
とうに装甲しておりましょう」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_012.nss"