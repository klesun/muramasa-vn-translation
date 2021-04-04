//<continuation number="1710">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_011.nss_MAIN
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
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_黒瀬童子=true;

	$PreGameName = $GameName;

	$GameName = "mb03_012.nss";

}

scene mb03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_010.nss"

//◆建朝寺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

	StR(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStR(300,true);

	Wait(500);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110010a10">
「……間違いないんか？
　署長」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110020a11">
「……残念ながら。
　複数の経路から入手した情報です」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110030a11">
「小弓公方府にて大規模な軍事行動の準備が
開始されている、と」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110040a10">
「目的は……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110050a11">
「公にされてはおりません。
　が、現状を鑑みれば……まず……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110060a10">
「疑いは、ないわな」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110070a11">
「……準備に時間を掛けているのが救いです。
　こちらの戦力を読めないせいでしょう」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110080a11">
「何かしらの手を打つ暇が無いわけではあり
ません」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110090a10">
「……て言うても」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110100a11">
「……」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110110a10">
「命運尽きたかなぁ。
　わし」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110120a11">
「いえ……京都へお逃れ下さい。
　いかに幕府でも禁裏へ兵を押し進めるのは
無理です」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110130a11">
「鎌倉からの脱出は、私がすぐに手配を――」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110140a10">
「そうもいかんやろう？
　菊池……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110150a11">
「……宮殿下」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110160a10">
「ここで退いたら、もう再起の目は無いわ。
　舞殿宮は死んだも同然や……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110170a10">
「死んだも同然のくせに、生きてるってのは
タチ悪いなぁ。
　さんざん謀略事を弄んできた奴が、責任も
取らんで」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110180a11">
「しかし」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110190a10">
「わしも恥を知ってる。
　おまさんも知ってるはずえ」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110200a10">
「あの戦場でわしらが<RUBY text="ひと">人間</RUBY>のままでいられた
んは、そいつを忘れなかったからやないか。
　そやろ……？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110210a11">
「宮殿下……」


{	SetVolume("@mbgm*", 100, 1, null);
	NwC("cg/fw/nwその他.png");}
//【ｅｔｃ／十傑Ａ】
<voice name="ｅｔｃ／十傑Ａ" class="その他男声" src="voice/mb03/0110220e111">
「良い覚悟だ。
　では名誉ある死を迎えて頂くことにしよう。
舞殿宮春煕親王殿下」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110230a11">
「何っ――」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110240a10">
「誰や!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆すたっ。武者一騎登場。厩衆の色違い？
//◆かっこ良さげな演出付きで
	SoundPlay("@mbgm09",0,1000,true);
	CreateSE("SE01","se戦闘_動作_突進01");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演背景", 3100, InRight, Middle, "cg/bg/resize/bg032_八幡宮奥舞殿内b_03al.jpg");
	Move("絵演背景", 0, @0, @-150, null, true);


//あきゅん「演出：半影にするか影にするか悩み中なり」
//	CreateTextureSP("絵演立絵", 4000, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常c.png");
	CreateStencil("マスク",4010,center,InBottom,128,"cg/st/3d九四式竜騎兵_立ち_通常c.png",false);
	SetAlias("マスク","マスク");
	CreateColorSP("マスク/色黒", 4020, "#000000");
	SetBlur("絵演背景", true, 3, 300, 70, false);
	SetBlur("マスク", true, 3, 300, 70, false);
	Move("絵演立絵", 0, @-766, @0, null, true);
	Move("マスク", 0, @-766, @0, null, true);

//おがみ：カット演出
	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/resize/bg032_八幡宮奥舞殿内b_03al.jpg");
	SetShade("絵演窓上/絵演背景", HEAVY);


	CreateTextureEX("絵演窓上/絵立絵", 16200, -150, -200, "cg/st/resize/3d九四式竜騎兵_立ち_通常.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

//	Move("絵演窓上/絵演背景", 60000, @-100, @0, null, false);
//	Move("絵演窓上/絵立絵", 60000, @-200, @0, null, false);


	DrawDelete("絵色黒", 150, 100, "slide_01_01_1", false);
	Move("絵演立絵", 1000, @612, @0, DxlAuto, false);
	Move("マスク", 1000, @612, @0, DxlAuto, false);
	Move("絵演背景", 1000, @612, @0, DxlAuto, true);


	Wait(1500);

	Fade("絵演窓上/絵演背景", 1000, 1000, null, false);
	Fade("絵演窓上/絵立絵", 1000, 1000, null, true);


	SetNwR("cg/fw/nw小弓十傑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／十傑Ａ】
<voice name="ｅｔｃ／十傑Ａ" class="その他男声" src="voice/mb03/0110250e111">
「くっくっく……オレは小弓十傑が一人。
　人呼んで天敗星の」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//――――――――――――――――――――――――

//◆剣閃ずばー。
	SetVolume("@mbgm09", 100, 0, null);
	CreateSE("SE01","se戦闘_攻撃_刀刺さる03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("絵演斬", 17000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演斬", 0, 1100, 1100, null, true);
	Request("絵演斬", Smoothing);
	Shake("絵演斬", 300, 0, 4, 0, 0, 1000, DxlAuto, true);
	Delete("絵演立絵");
	Delete("絵演背景");
	Delete("絵演窓上*");
	Delete("マスク*");

	StL(1000, @0, @0,"cg/st/3d九四式竜騎兵_立ち_通常c.png");
	FadeStA(0,true);

	Wait(200);
	Delete("絵演斬");

	SetNwC("cg/fw/nw小弓十傑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／十傑Ａ】
<voice name="ｅｔｃ／十傑Ａ" class="その他男声" src="voice/mb03/0110260e111">
「ギャアアアアアアアアアアアアア!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばた。
	CreateTextureEX("絵演震", 150, Center, Middle, "cg/bg/bg032_八幡宮奥舞殿内b_01.jpg");
	CreateSE("SE01b","se戦闘_衝撃_鎧転倒01");
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @-10, @60, null, false);
	DeleteStL(300,true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵演震", 0, 600, null, true);
	Shake("絵演震", 200, 0, 4, 0, 0, 1000, Dxl2, true);
	Delete("絵演震");

	StL(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110270a02">
「背中ががら空きだ。
　間抜け」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110280a10">
「一条くん！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110290a11">
「景明……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　一条は太刀を正宗へ戻すと、死骸を邪魔そうに<RUBY text="ど">退</RUBY>か
して室内へ踏み入った。
　その後に続いて俺も入る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110300a10">
「……よう来てくれたねえ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110310a00">
「危ういところでしたか」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110320a11">
「ああ。
　この男、小弓の者だと言っていた……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110330a11">
「今川雷蝶の放った刺客に間違いない」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110340a00">
「……では……」


{	FwC("cg/fw/fw署長_警戒.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110350a11">
「軍事行動を準備中という情報もある。
　……彼は我々を滅ぼすことに決めたようだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　俺は思わず面を伏せた。

　……最悪の事態になってしまった。
　とうとう。

　己で招いた事に責任を取る、その覚悟は出来ている。
　だが、それが己一人で済まないのは問題だった。

　この場の人々について、せめて生命の安全は確保せ
ねばならない……。
　俺は気持ちを立て直して、顔を上げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110360a00">
「そういう事であれば、猶予は一刻も許され
ません。
　宮殿下、どうか脱出の御支度を。不肖この
景明が警護仕ります」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110370a10">
「そう言うてくれるのは、嬉しいけどな」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110380a11">
「……景明。
　宮殿下は、ここへ残られる」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110390a00">
「それは！」


{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110400a10">
「ほれ。わし、こんなんでも帝の一族やろ？
　国民の手前、あんましみっともない真似は
できなくてなぁ」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110410a10">
「最後の始末くらいきっちりつけんと……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110420a00">
「署長！」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110430a11">
「私も脱出をお勧めした。
　しかし……それが誇りの喪失を意味すると、
宮殿下がお考えならば」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110440a11">
「私はその御意思を尊重する。
　舞殿宮殿下の<RUBY text="しまい">仕舞</RUBY>を見届け、殉じよう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110450a00">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110460a10">
「勿論、景明くん達が付き合うこたない。
　署長、おまさんもな。もう充分世話焼いて
もろたし」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110470a11">
「ええ。色々御世話をさせて頂きました。
　この際ですから最後までお付き合いします。
どのみち私が見逃されることもないでしょう
からね」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110480a00">
「自分も――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　せめて、最低限の責任だけは――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110490a10">
「あかんえ。
　おまさんにはやることがあるやろう？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110500a00">
「……宮殿下」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110510a11">
「銀星号の件を頼む。
　あれを止められるのはお前だけだ。景明」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110520a00">
「署長……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　俯く。
　重い無力感に、頭を押し付けられる心地だった。

　何もできないのか。

　この事態を招いた責任の一端は間違いなく俺にある。
　俺のやりよう次第でこの帰結は変えられた。

　にも拘わらず、俺はここで何もできないのか。
　ただ落ち延びるだけか。

　銀星号を<RUBY text="おと">墜</RUBY>す、その使命の為に。
　確かにそれは他の何物にも代えて果たさねばならぬ
俺の責務だ。

　だが……
　それでも、しかし……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110530a02">
「行きましょう、湊斗さん」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110540a00">
「一条……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110550a02">
「下総へ。
　小弓公方今川雷蝶を殺しに」


{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110560a00">
「――!?」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110570a10">
「へっ……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110580a11">
「――――」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110590a02">
「先手を打つんです。
　殺される前に殺す」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110600a02">
「そうすればみんな解決します」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110610a00">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110620a10">
「そりゃ……まぁ……
　けど、なぁ……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110630a11">
「……仮にそれが成功するとしてもだ。
　次は篠川、堀越の両公方が――」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110640a02">
「ならそいつらも殺せばいい」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110650a00">
「一条、」


{	SoundPlay("@mbgm17",0,1000,true);
	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110660a02">
「どうせ六波羅は滅ぼすんです。
　<RUBY text="・・・・・・・・">奴等は悪ですから</RUBY>」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110670a02">
「あの山犬どもがこの六年間やってきた事を
思えば、滅ぼす以外の選択肢なんて最初から
なかった。
　予定よりもそれが少し早まるってだけです」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110680a02">
「奴等を滅ぼして、この国を正しく立て直し
ましょう」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110690a10">
「…………。
　けど六波羅が<RUBY text="の">無</RUBY>うなったら、進駐軍の天下
になってしまうよ？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110700a02">
「……そうでした。
　あの連中も大和を私物化したいんでしたね。
そのために六波羅を野放しにしてた……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110710a02">
「なら、あいつらもこの国から叩き出します」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110720a11">
「……」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110730a10">
「……そ……
　そら、ちょっと、無茶やないか……？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110740a02">
「できます。
　あたしは古河公方を斃した」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110750a02">
「――きっと誰もそんなことができるなんて
思ってなかった。
　でもあたしはやれた」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110760a02">
「だから、できる。
　<RUBY text="・・・・・・・・・・">この世の悪を滅ぼせる</RUBY>」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110770a02">
「目の前にある悪を……
　どうしようもないから、仕方ないからって
言って、見逃してやる必要はもう無いんだ」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110780a02">
「あたしと正宗……それに湊斗さんがいれば。
　絶対、誰にも負けないから」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　凛とした声は、とうとう。
　全ての反駁を封殺した。

　何も言い返せない。
　言うべきことはある。ある筈だ……少女のあまりに
無謀な信仰には、何かを。

　だが声にならない。
　俺は<RUBY text="けお">気圧</RUBY>されていた。親王と署長も大同小異だろう。

　今の一条は昔日の彼女ではない。
　つい昨日の、殺人の恐怖に震えていた彼女とも違う。

　かつて彼女には意思だけだった。
　正義を貫くという意思だけがあった。暴力で弱者を
踏みにじる者を許したくないという意思だけがあった。

　それは子供の浮薄な夢に過ぎなかった。
　一つの事実もなく、そもそも実現するに至る手段も
持ち合わせていなかった。

　今は違う。

　彼女には自信がある。
　己が邪悪を滅ぼし得るという確信がある。

　力に驕り、法にも囚われぬ巨悪を、
　我が刃で断罪するという自負がある。

　彼女は遊佐童心を討伐した。
　その行為、殺人への恐れも、今や<RUBY text="ちから">意思力</RUBY>ずくで踏み
越えた。

　そして少女は生まれ変わった。
　<RUBY text="・・・・・・・">正義の執行者へ</RUBY>。

　綾弥一条が望んでいたものへ。
　遂に、彼女は届いたのだ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110790a00">
「……一条――」


{	NwC("cg/fw/nwその他.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110800b28">
「流石は正宗様。
　そのお言葉を聞き、わたくしも迷いが無く
なりました」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se人体_動作_一歩",500);

	Wait(1000);
//◆桜子
	StL(1000, @-30, @0,"cg/st/st桜子_通常_私服a.png");
	FadeStL(500,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110810a00">
「なっ……
　貴方は!?」


{	FwC("cg/fw/fw一条_驚くb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0110820a02">
「姫さま!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……岡部の遺児、桜子姫！
　普陀楽城に囚われている筈の――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110830a10">
「あ、桜子さん。
　そうそう、この人のこと話すの忘れとった」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110840a10">
「景明くん達とは普陀楽で付き合いがあった
そうやね？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110850a00">
「は……いささか」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110860a10">
「桜子さんはな、あの晩のどさくさに紛れて
うまく脱出してきはったんや。
　そのあと、この建朝寺にわしを頼って来て
くれたんでな。匿ったげてる」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110870a11">
「この寺も幕府の動揺を受けて風向きが変わ
りつつある部分があるのでな。
　これくらいの事は見逃してもらえる」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0110880a00">
「何と……。
　しかし、よくもあの城から抜け出せたもの
です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　荒事の嗜みは無かろう姫御前の身で。
　俺達の起こした騒ぎに乗じたと云うが、それにして
も。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110890b28">
「そのことにつきましては……
　まだ、宮殿下にもお話ししておりませんで
したけど」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110900a10">
「うん？」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110910b28">
「童子。おいでなさい」


{	#voice_on_黒瀬童子=true;
	NwC("cg/fw/nwその他.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0110920b26">
「はっ、義姉上」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒瀬童子
//◆全身黒ずくめ。和風ダースベイダー
	StCL(900, @30, @0,"cg/st/st黒瀬_通常_私服.png");
	Move("@StML*", 0, @60, @0, null, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw親王_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110930a10">
「……こ、このお人は？」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0110940b26">
「御尊顔を拝し奉り恐悦の極み。
　某は岡部弾正が一子にて、<RUBY text="くろのせどうじ">黒瀬童子</RUBY>の名を
称する者にございます」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110950b28">
「わたくしの、腹違いの弟です」


{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0110960a10">
「何やて!?
　け、けど、頼綱さんの息子はみんな殺され
はったはずじゃあ……？」


{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0110970b26">
「我が母は身分卑しく、加えて<RUBY text="とがにん">科人</RUBY>の係累で
もありました。
　そのため父は、某の存在を公には秘し――」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0110980b28">
「一族の者と限られた重臣達にのみ、この者
が岡部の血に連なる男子であることを伝えて
いたのです」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0110990a11">
「それで六波羅の誅戮を免れたと……！」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111000b26">
「左様にござる」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111010b28">
「猪苗代で父が大鳥獅子吼に滅ぼされた後は、
この<RUBY text="おとうと">義弟</RUBY>が各地に散った残党を取りまとめて
おりました。
　その一部が、普陀楽にも潜入していて……」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111020b26">
「遊佐童心めが果てたあの夜に行動を起こし、
義姉の身柄を奪回したという次第にござる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……それでか！
　あの夜、天守閣からの脱出に少なからぬ時間を費や
したにも拘わらず、空域が封鎖されていることもなく
一条を抱えて逃げ出せたのは――

　こちらと同時に事を起こした彼らに撹乱され、軍の
管制が失われていたからだと考えれば納得もゆく。
　……知らず知らず、助け合っていたわけだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111030b28">
「わたくしどもが首尾よく逃がれられたのは、
あの狡猾な公方が足止めされていたからこそ
のこと……。
　正宗様、心より御礼申し上げます」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111040b26">
「まことに。
　我らは最後まで見届けること叶いませなん
だが、彼奴めを遂には討ち果たされたことも
伺っており申す」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111050b26">
「義姉に恥辱を与えたあの破戒僧めを……
　よくぞ討ち取って下された。某からも御礼
申し上げる」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111060a02">
「あ、ああ……うん」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111070a00">
「……宮殿下？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111080a10">
「うん。教えたの、わしや。
　これこれこういう姿形の武者が遊佐童心と
一騎打ちしてたけど心当たりはないか、って
訊かれたもんで」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111090a10">
「そら一条くんの正宗やないかって答えたら、
桜子さん、それは一媛って名前で普陀楽城に
いる人じゃないかって言うて」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111100b28">
「ええ。
　何となく、偽名っぽいとは思っていました
から」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111110a10">
「何や知ってるやないか、てな感じで……
　結局、全部話してもうたわ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111120a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　まぁ、この相手に明かされて困るような話でもない
のは確かだが。

　岡部の遺児二人を改めて見直す。
　桜子姫は以前と変わりない――いや、そんなことは
ないか。逆境を味わったことによる陰と、それを踏み
越えたことによる強さとが今は垣間見える。

　黒瀬童子なる人物の方は、全身を覆い尽くす漆黒の
軍装のため容貌が判然としない。
　が、桜子姫の弟であるならまだ若年だろう。身体の
育ち具合からして二十歳前後か。

　彼もこちらを観察している。
　取りあえず、陰惨な風貌の男には余り好意を抱かな
かったらしい。視線は一通り値踏みだけして、すぐに
俺から外される。

　しかしその隣、ひたむきな眼差しの少女に対しては
全く違った。最初から敬意があった。
　一条のいっこう武者らしくない矮躯を見て、むしろ
それは深まったらしい。

　良くぞその小さな体で――と云うような嘆息を洩ら
して、彼は目礼した。
　双眸が一種の崇拝に近い色彩を<RUBY text="たた">湛</RUBY>えている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111130b28">
「正宗様」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　それは彼の姉も同じだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111140b28">
「お願いがございます」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111150a02">
「……何ですか？」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111160b28">
「あなた様の義挙に、どうか我々岡部の一党
をお加え下さい。
　決して足手纏いにはなりません」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111170a02">
「え？
　……でも……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　確認するように、一条がこちらを見る。
　内心の疑問はその視線だけで通じた。

　俺も同じ事を思ったからだが。
　姫は確か、敗北しながらなお抗うが如きを武門の恥
とし、自ら戒めていた筈――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111180b28">
「はい。
　悪足掻きは岡部の家名を汚すばかり………
わたくしはそう申しましたし、今もその考え
は変わっておりません」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111190b28">
「ですから、岡部の旗は掲げず……
　ただ正宗様を仰いで戦いたいのです」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111200a02">
「それは……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111210b28">
「……生きているからには、責任を投げ捨て
てはいられない。そう思い直しました。
　許すべからざるものがいるなら、戦わねば
ならないと」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111220b28">
「六波羅は滅ぼすべきです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　そう言い切った、桜子姫の瞳には――
　自身の味わわされた屈辱が映っていた。

　しかしそれは、ただ己一人の復讐心を意味していな
かった。
　もしそうであったなら、遊佐童心の死をもって消え
ていただろう。

　彼女の眼は己の恥辱を通してより広くを見ている。
　大和全土の、同じ――あるいはそれ以上の――屈辱
を味わったであろう人々を視野に捉えている。

　彼らを生んだのは六波羅幕府。
　搾取、弾圧、殺戮と、言い訳のできぬ悪政を六年に
渡って繰り広げてきた軍事政権。

　――許せない、と。
　滅びた名門の姫としてではなくただ一個人として、
岡部桜子は言った。

　つまりは、綾弥一条と同じように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111230a02">
「姫さま……」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111240b28">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111250a02">
「一緒にやりましょう。
　六波羅の犬どもを、叩き潰す」


{	FwC("cg/fw/fw桜子_怒り.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111260b28">
「はい！」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111270b26">
「では、各地の同胞に檄を飛ばしましょうぞ。
　岡部の生き残りほか大小の反幕勢力、合わ
せて千ほどはすぐに集まります」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111280b26">
「武者もいくらかは」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111290a11">
「――いや。お待ちを。
　闇雲に事を起こしたところで、成算は」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111300a10">
「……古河公方は、もうおらん。
　それで小弓公方もいなくなりよったら……」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111310a10">
「房総の幕軍には<RUBY text="・">頭</RUBY>が無うなる」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111320a11">
「宮殿下？」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111330a10">
「六波羅は、公方の権力がえろう強い……。
　逆に言うと、公方がおらんかったら動かん
組織や」


//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111340a10">
「古河と小弓が潰れた隙を狙えば、千からの
兵で房総半島を席巻できるかもしれんな……」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111350b26">
「……千というのはあくまで当座のこと。
　房総を奪い、宮殿下を戴いて全国に号令を
発すれば」


//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111360b26">
「忽ちのうちに、万余の軍勢が集いましょう」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111370a11">
「…………」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111380b28">
「では、こういう手順に……
　わたくしと童子は同志を結集、鎌倉へ引き
込み」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111390b26">
「宮殿下を房総へ御動座申し上げます。
　香取が宜しゅうございましょう。あそこの
宮司は父が懇意にしておりましたゆえ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111400a02">
「その間に――
　あたしと湊斗さんは、小弓公方今川雷蝶を
討つ」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111410a10">
「で、軍事的に孤立した房総半島を分捕る。
　……どや？　署長」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111420a11">
「…………。
　随分と荒っぽい話になったものです」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111430a10">
「そやなぁ。
　わしらの最初のプランとはえらい違いやね」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111440a11">
「……しかし、もはや仕方ありますまい。
　状況は既に<RUBY text="デッド・オア・アライブ">生きるか死ぬか</RUBY>」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111450a11">
「すべて投げ捨てて死ぬのが嫌なら、生きて
戦うのみです」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111460a10">
「そういうことやね」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111470a11">
「懸念すべきは進駐軍の動きですが……
　こちらが親王殿下を奉戴していると知れば、
国民感情に留意するＧＨＱは直接攻撃をため
らうでしょう」


//【署長】
<voice name="署長" class="署長" src="voice/mb03/0111480a11">
「そこに交渉の余地はあります」


{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111490a10">
「よしよし。
　何とかいけそうやないか？」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111500b26">
「はッ！
　必ずや、大義は成就致しまする」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆世界の隔たり演出。明度落とすとか
//◆景明から周囲が遠ざかる、という感じを

	CreateSE("SE01","se日常_建物_照明点灯");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 4000);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

	Wait(200);
	SetTone("絵板写", KitanoBlue);
	SetShade("絵板写", SEMIHEAVY);

	SetVolume("@mbgm*", 2000, 1, null);
	Fade("絵板写", 600, 1000, null, true);
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　――おかしい。
　何かが、変だ。

　いや……俺がおかしいのか。
　どうしてか、<RUBY text="・・">彼ら</RUBY>が遠い。

　一つの意思のもとに<RUBY text="まと">纏</RUBY>まりつつあるこの空間で、俺
だけが醒めている。

　……遣り場のない視線が、ふと、それを捉えた。
　とうに息を止め、硬直し始めている刺客の骸。

　まさに一刀両断。
　迷いの片鱗もない太刀筋だ。

　一条はもう迷わないのだろう。
　迷わずに戦い続ける。

　桜子姫、黒瀬童子、署長、親王……彼らも同じだ。
　迷わず戦う意思がある。

　俺だけが、
　
　迷うのか？

　いや――迷う必要などない。
　一条の助けがあれば、俺は呪いに縛られずに済むの
だし。

　現に、遊佐童心を死に至らしめたが、俺はその代償
としての死を誰にも求めていない。
　善なる人は誰も殺していない。

　その事に、俺の精神は深く安堵している。
　
　
　なら――良いのではないか。

　今川雷蝶とて罪悪に満ちた者だ。
　例えば六波羅の悪行の筆頭に挙げられる大阪虐殺に
際して彼は梅田市街を担当、地域一帯を住民ごと焼き
払って数千もの生命を奪ったという。

　死すべき者だと一条が云うなら、そうだと頷くより
無いだろう。
　弁護の言葉も意思も湧かない。

　何の問題がある？
　このまま一条と、親王らと、共に戦う事に何の懸念
があるのか？

　戦いの果て、別に理想郷が出来上がるとは思わない。
　だが六波羅に支配され続けるよりは、ＧＨＱに占領
されるよりは、人々にとって暮らしやすい大和を親王
なら創ってくれるだろう。

　それがいけない事なのか。
　
　真逆。

　正義はここにある。
　信じるに足る正義がここに存在している。

　ならばその為に戦おう。
　それで――良いではないか。

　いくら戦い、いくら悪を殺しても、
　<RUBY text="・・・・・・・・・・・・・・・・・">俺はもう善を殺さなくて良いのだから</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111510a00">
「――――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　おかしい。
　おかしい。
　おかしい。
　おかしい。

　よりにもよって――
　<RUBY text="・・・・・・・・・">それが納得いかない</RUBY>とはどういうわけなのだ？

　無辜の命を奪いたいとでもいうのか。俺は。馬鹿な。
　歓迎こそすれ、厭う理由が何処にある。

　わからない。

　何が引っ掛かっているのか。
　何に心が迷うのか。
　
　何を――――忘れているのか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　
　　　　　　　　　……景明……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	Fade("絵色黒", 600, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　何か……あったのではなかったか。
　戦いを……戒める言葉が……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色黒", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　
　　　　敵を殺せば、戦いは終わると思う？
　　　　それは違うよ。逆だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードイン
	FadeDelete("絵色黒", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　…………考えがまとまらない。
　雑念と雑念がぶつかり合って、頭痛すら感じる。

　それを治めようと思う時。
　強い、引力を感じるのだ。

　心を一方向へ引き付けるもの。
　迷いを捨てさせ、強固な意志をつくらせるもの。

　……それを感じているのはきっと、俺だけではない。
　<RUBY text="・・">彼女</RUBY>以外の全員が――彼女に対して感じているのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 1000, null);
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111520b26">
「名前は如何致しましょう」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111530a10">
「名前？」


{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111540b26">
「はっ。
　倒幕の<RUBY text="きし">旗幟</RUBY>を鮮明にする以上、やはり軍に
は相応しき名を冠するべきかと……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb03/0111550b28">
「そうですね。
　人集めにも都合が良いですし」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mb03/0111560a10">
「そやなぁ……」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111570a02">
「いや。
　名前なんて、いらない」


{	FwC("cg/fw/fw黒瀬_驚き.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111580b26">
「はっ？
　……しかし、正宗殿」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111590a02">
「名前を付ければ名前に縛られる。
　名前で中身を計られる」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111600a02">
「名前で誤解されるし名前で侮られる。
　だからそんなのはいらない。ただ戦うだけ
でいい」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111610a02">
「あたし達は名乗らず戦う。
　六波羅。進駐軍。悪なる奴ら全てと戦う」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111620a02">
「その正義だけが、みんなに伝わればいい。
　その正義を知って、戦う勇気を起こした人
たちが来てくれればいい」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111630a02">
「名前は必要ない。
　あたしたちは無名の、戦う集団だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　一条には別段、気負いもない。

　しかし、誰もが息を呑んだ。
　誰もが彼女に魅入られていた。

　その少女は<RUBY text="カリスマ">預言者</RUBY>だった。
　人を導く言葉の持ち主だった。

　黒瀬童子が平伏する。
　完全に、<RUBY text="あるじ">主将</RUBY>に対する姿勢を見せて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/mb03/0111640b26">
「――ならば！
　我らはただ、〝正宗の軍〟と人に呼ばれる
ことでありましょう……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　感極まった声で、彼は少女の決定を賞揚した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111650a02">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0111660b40">
《そうだ。それでいい、御堂。
　その輝ける正義の志に人は集う》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0111670b40">
《悪<RUBY text="・">党</RUBY>などと云うが……
　群れ集まるのは何も邪悪どもだけの特権で
はない》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0111680b40">
《正義も集い、より強き正義となるのだ！
　吾らが光となる限り！》


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0111690a02">
「ああ……！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0111700a00">
「…………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0111710a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_012.nss"