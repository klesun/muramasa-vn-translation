//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_013.nss_MAIN
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

	$GameName = "mc01_014vs.nss";

}

scene mc01_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_012vs"


//◆香奈枝サイド
//◆建朝寺前
	PrintBG("上背景", 30000);

	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);

//◆本文中に「そろそろ夕暮れ時でございますね」とあるので、昼の背景を使用しています。 inc櫻井

	OnBG(100, "bg056_建長寺三門前_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm06",1000,1000,true);
	Delete("上背景");

	FadeDelete("黒幕１", 1000, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130010a03">
「…………」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130020a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かちゃ。カップ置く
	OnSE("se日常_食器_カップ置く",1000);

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300, true);
	
	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130030a03">
「ごちそうさま」

{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130040a04">
「<RUBY text="ゆ">往</RUBY>かれますか？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130050a03">
「ええ。
　時間が無限にあるわけではないもの」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130060a04">
「そろそろ夕暮れ刻でございますね……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130070a03">
「……もう、なんて<RUBY text="ひと">男</RUBY>なのかしら。
　わたくしの誘いを袖にして」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130080a04">
「あちら様にはあちら様の都合がおありなの
でしょう」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130090a03">
「わたくしの都合を優先して頂戴」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130100a04">
「遺憾ながら、この世の中はお嬢さまを中心
にして回ってはおらぬようで」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130110a03">
「そうなの？　なんてこと。
　ならわたくしが真ん中に来るように世界を
造り替えておかないとね」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130120a04">
「それは次の日曜にでも」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130130a03">
「ええ。
　今は仕事を片付けましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝。私服＋コントラバス
	DeleteStR(200, true);

	OnSE("se人体_動作_起きる02", 1000);

	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服b.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130140a04">
「……<RUBY text="バロウズ">贋弓聖</RUBY>もご一緒に？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130150a03">
「せっかく許可が下りたんだもの。
　弦楽器はずっと弾かずに仕舞っておくと、
品質が損なわれてしまうのよ？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130160a04">
「では、良き音色を心待ちにしております」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0130170a03">
「ばあやも、外の<RUBY text="フォロー">始末</RUBY>はお願いね」

{	OnSE("se人体_足音_歩く03_L", 1000);
	DeleteStR(300, false);
	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0130180a04">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc01_014vs.nss"