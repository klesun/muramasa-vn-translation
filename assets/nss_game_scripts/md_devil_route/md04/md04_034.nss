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

scene md04_034.nss_MAIN
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
	#bg009_鎌倉住宅街a_01=true;
	#bg104_普陀楽城外郭大船方面_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_035.nss";

}

scene md04_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_033.nss"


//◆鎌倉


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0340010a01">
（……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　朝からどこかおかしかった空気は、昼に差し掛かる
と決定的だった。
　昨日までとは明らかに異なる。

　肌を刺す剣呑な戦気が、薄い。
　街で見かける兵士達の表情は興奮と緊張から、困惑
と安堵のそれに移り変わりつつある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大船方面


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg104_普陀楽城外郭大船方面_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そして前線。
　攻勢がこれまでと比較して小規模かつ散発的だった。

　城側への牽制としては充分だろう。
　しかし、それ以上のものではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0340020a01">
（……退却するの……？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そのための用意をしているとしか思えなかった。

　何があったのだろう。
　情況が互角に近くなっていたとはいえ、まだ攻城側
の優勢だったはずなのだが。

　後方で補給を断たれでもしたのだろうか。
　……それにしては焦っている様子があまりない。

　どうも不可解だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0340030a01">
（けれど）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　好機だ。

　今なら――戦闘が沈静化しつつある今なら。
　
　あの城の中に入れる。

　景明のもとへ行ける！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動

	OnSE("se人体_足音_走る01_L", 1000);


	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	SetVolume("@OnSE*", 1000, 0, null);



	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_035.nss"