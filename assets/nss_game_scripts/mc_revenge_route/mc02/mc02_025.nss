//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_025.nss_MAIN
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

	$GameName = "mc02_026.nss";

}

scene mc02_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_024.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 100, "BLACK");
	Delete("上背景");
	SoundPlay("@mbgm34", 0, 1000, true);

//◆飛行船離陸開始っぽいＳＥ
//ループは鬱陶しいかもしれない inc櫻井
	CreateSEEX("飛行船", "se乗物_飛行船_離陸開始_L");
	MusicStart("飛行船", 0, 500, 0, 600, null,true);

//◆黒画面
//◆このシーン、ボイス無し

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆ボイス無し
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250010a04">
『……船が離陸するようでございます』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250020a03">
『ええ。
　ここからが勝負……』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250030a03">
『おそらく、全ては二十分間の内。
　八時前後にはもう幕が閉じている計算』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250040a04">
『は。
　勝つにせよ、敗れるにせよ……ですな』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250050a03">
『勝つにせよ、敗れるにせよ。
　……どちらでも結果に大した差はなさそう
だけど』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250060a03">
『せっかくですもの。
　やるなら勝たないとね』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250070a04">
『こだわり、と仰せでしたか。
　あの御方は』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250080a03">
『そう。こだわり。
　些細で、つまらなくて、実質的でないこと』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250090a03">
『けど……
　そのこだわりを捨てて、国家なんてものに
どんな意義が残るのかしら？』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250100a04">
『ま……絶無でしょうなァ』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250110a03">
『そういうことよねー』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250120a04">
『しかしお嬢さま』


//◆ボイス無し
{	SetFrequency("飛行船", 10000, 1000, null);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250130a03">
『なぁに？』


//◆ボイス無し
{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc02/0250140a04">
『酸素ボンベ抱えてヘリウムいっぱいの気嚢
に潜む以外に手立ては無かったのですかな。
　互いの背中に字を書くしか意思疎通の方法
が無いってめちゃくちゃ不便ですぞ』


//◆ボイス無し
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc02/0250150a03">
『外壁にへばりつく方が良かった？』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("飛行船*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　
　　　　　　　　　午前七時四五分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	WaitPlay("飛行船*", null);

	ClearFadeAll(0, true);
}

..//ジャンプ指定
//次ファイル　"mc02_026.nss"