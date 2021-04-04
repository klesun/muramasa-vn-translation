//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_006.nss_MAIN
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
	#bg090_大鳥邸通路a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_007vs.nss";

}

scene mc04_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_005vs.nss"


//◆村正サイド
//◆騒々しい屋敷内。ＳＥ
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 100, "BLACK");
	CreateTextureSP("絵背景11", 12, Center, Middle, "cg/bg/bg088_大鳥邸ホール_01a.jpg");
	CreateSE("SE01","se背景_ガヤ_室内ざわめき_短");
	MusicStart("SE01",0,1000,0,700,null,false);

	Wait(1000);

	Delete("上背景");
	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm36",0,1000,true);

	StR(1000, @60, @0,"cg/st/3d村正標準_立ち_通常.png");
	CreateSE("SE02","se人体_足音_鎧歩く04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, Dxl2, false);
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　屋敷の内部では急激に混乱が広がっている。
　香奈枝嬢は随分と派手にやっているようだ。

　隠れもない深紅の甲鉄の<RUBY text="おれ">村正</RUBY>に対して、大鳥家の兵
は組織的な迎撃をする様子がない。
　情報がまともに伝わっていないのだろう。

　遭遇するのは数人以下の兵、それも大概は向こうが
驚いている間に太刀も合わせず突破できた。
　中にはこちらを家中の武者と思ったのか、一瞥だけ
して慌しく走り去ってしまった者すらいる。

　高度な訓練を受けた親衛兵なら、まず犯さないよう
な大失態だ。
　つまりはそれ程に、弑逆された前当主の娘の来寇と
いう事態が深い衝撃を及ぼしているのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060010a01">
《それにしてもって思うけれどね。
　<RUBY text="なみ">音波</RUBY>を拾ってみれば、誰も彼もが其処彼処
で香奈枝香奈枝香奈枝香奈枝――》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060020a01">
《ここまで動揺しなくてもいいんじゃない？
　それとも、この家の士卒はよっぽど主筋へ
の忠誠心が厚いのかしら》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060030a00">
「違う。
　そういう事ではない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺は断言した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060040a00">
「彼らは単に恐ろしいのだ。
　大鳥香奈枝が恐ろしくて堪らないのだ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060050a01">
《……まるであの連中の心が読めるみたいな
言い草ね？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060060a00">
「読める」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　造作もない。
　自分自身の心を覗いてみれば済む話だ。

　論理を超えた畏怖。

　俺と彼らは彼女にとって同じ立場にある。
　俺があの日、<RUBY text="ヨコハマ">ＧＨＱ</RUBY>の一室で、大鳥香奈枝の殺意を
理解したように。彼らも――何らかの体験で――同じ
ものを知るのなら、抱く想念とて等しくなろう道理だ。

　<RUBY text="・・・・・・・・・・・">大鳥香奈枝に復讐される</RUBY>。
　あの殺意に狙われるという、この――――心地。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("絵背景11");
	DeleteStA(0,true);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060070a00">
「それより、方角は」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060080a01">
《こっちで間違いない。
　……本当に良くわかる》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060090a01">
《これほど濃密な<RUBY text="けはい">香気</RUBY>は初めて。
　一体、何があったわけ……？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060100a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正は、篠川に入った時点で断定していた。
　<RUBY text="・・・">あそこ</RUBY>に銀星号がいる、と。

　正確に、大鳥家本邸の方角そして距離を示した。
　
　このような事はかつて無い。

　銀星号の香気は漠然としたものだと、村正は常々、
俺に告げていた。
　目視すれば特定できるが、それまでは大まかな方向
程度、それも少し距離が開けばわからなくなる――と。

　だがその香気が、今回は異常らしい。
　村正は極めて明確に所在を掴んでいる様子だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060110a01">
《……どうも、下のようね》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060120a00">
「下？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060130a01">
《地下よ。
　そう深くはない……多分、このすぐ下の階》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060140a01">
《……どうする？
　方角はこちらで間違ってないけれど、階段
が無かったら困るでしょうね》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0060150a01">
《床を斬り破る？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0060160a00">
「銀星号が如何なる状態にあるのかわからん。
　危険を誘発するような真似は避けたい所だ
が……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾駆
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -630, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -630, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_007vs.nss"