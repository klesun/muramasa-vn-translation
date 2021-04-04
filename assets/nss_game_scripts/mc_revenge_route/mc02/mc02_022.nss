//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_022.nss_MAIN
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

	$GameName = "mc02_023.nss";

}

scene mc02_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_021.nss"


//◆景明の部屋
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 11, Center, Middle, "cg/bg/bg030_ＧＨＱ監禁部屋_01.jpg");
	SoundPlay("@mbgm34", 0, 1000, true);

	Delete("上背景");
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　朝食。
　規定時刻きっかりに守衛の兵士から差し入れられた
それには、あらかじめ聞いていた通りの方法で通信が
仕込まれていた。

　大和ではまだ流通していない紙製の牛乳容器を食用
ナイフで切開すると、内側に貼られた耐水紙がすぐに
見つかる。
　水分を払ってから広げ、文章に目を通した。

『ああ、景明さま！　愛を誓ったわたくしたち二人は
もう、一人だけでは生きていられない。
　二億年前のように静かな世界で一緒に暮らせるなら、
もう言葉なんて何もいらないのに』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0220010a00">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0220020a00">
（……〝全て、予定通り〟……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　――敵の作戦も、敵に応ずる我々も。
　
　暗号を脳内で正しい内容に変換、そして紙を裏返し、
〝万事諒解〟を意味する暗号を書き記す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0220030a00">
（『あの話は無かったことにしよう』……と）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　紙を元に戻す。
　後は数分待って、トレイごと外に出せばいい。

　……さて。
　予定通りなら、あと四五分。


　
　　　　　　　　　午前七時三〇分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	ClearFadeAll(0, true);
}

..//ジャンプ指定
//次ファイル　"mc02_023.nss"