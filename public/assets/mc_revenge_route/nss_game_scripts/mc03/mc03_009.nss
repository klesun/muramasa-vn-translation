//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_009.nss_MAIN
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
	#bg053_永倉家の庭_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_010.nss";

}

scene mc03_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_008.nss"


//◆夜
//◆庭？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(100, "bg053_永倉家の庭_03.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090010a04">
「復讐は虚しい、なんて物の本に云うけれど。
　あなたはどう思う……と」

{	StR(1000, @0, @0, "cg/st/st永倉翁_通常_私服.png");
	FadeStR(300, false);
	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090020b17">
「ほぅ」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090030a04">
「ぽろりと、そんなことを申されましてねぇ」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090040b17">
「どう答えた？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090050a04">
「茶を噴き出して、顔面にぶっ掛けてしまい
ました」


{	FwC("cg/fw/fw永倉翁_苦味.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090060b17">
「……酷いなお前……」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090070a04">
「いやいや。
　まさか、あのお嬢さまの口からそんな言葉
を聞こうとは」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090080b17">
「夢にも思わなんだか。
　……そうよなァ」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090090b17">
「香奈枝様は、少しお変わりになられたか」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090100a04">
「と、見えますか」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090110b17">
「十年経つ。何も変わっていなければその方
がおかしいのだろう、が……
　あのお人は、<RUBY text="・・・・・・">変わらぬ人間</RUBY>だと思っておっ
たからな」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090120a04">
「えぇ」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090130b17">
「変わらぬものを、変えてしまうものが、何
かあったか」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090140a04">
「さて。
　あったのやもしれません」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090150b17">
「あの、若いのか？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090160a04">
「屈折した御仁ですよ」


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw永倉翁_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090170b17">
「そうよな。
　……およそ人を幸福にできるような男では
なさそうだが」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090180b17">
「香奈枝様と、何か噛み合うものがあったか。
　それとも、逆か」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090190a04">
「さぁて」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090200b17">
「男で変わるなら、香奈枝様も凡百の<RUBY text="にょしょう">女性</RUBY>で
あられたということかな。
　何より、結構なことだが……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090210a04">
「変わりませぬよ」


{	FwC("cg/fw/fw永倉翁_通常a.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090220b17">
「ふむ」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090230a04">
「<RUBY text="・">根</RUBY>は……
　三つ子の魂百まで」


//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090240a04">
「変わるのは上辺だけ。
　大本はそのまま……発端から結尾まで。誰
も彼もが」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090250b17">
「香奈枝様も始めから、根はなにも変わって
おらぬ……か。
　ならば、いずれが？」


{	FwC("cg/fw/fw永倉翁_通常b.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090260b17">
「香奈枝様の根は、<RUBY text="・・・">どちら</RUBY>だな？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090270a04">
「さぁて」


{	FwC("cg/fw/fw永倉翁_沈思.png");}
//【永倉翁】
<voice name="永倉翁" class="永倉翁" src="voice/mc03/0090280b17">
「…………」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0090290a04">
「どちらでございましょう……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_010.nss"