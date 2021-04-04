//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_005c.nss_MAIN
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
//嶋：フラグ挿入
	$Sayo_Flag++;

	$PreGameName = $GameName;

	$GameName = "ma04_005z.nss";

}

scene ma04_005c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_005.nss"


//●ばあや
	SoundPlay("@mbgm29",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵ＥＶ200", 5100, Center, middle, "cg/ev/resize/ev119_一条と香奈枝海水浴_a_l.jpg");

	Zoom("絵ＥＶ200", 0, 500, 500, null, true);

	Wait(16);

	FadeDelete("上背景", 500, false);
	Zoom("絵ＥＶ200", 1000, 1000, 1000, Dxl1, false);
	Move("絵ＥＶ200", 1000, -200, 0, Dxl1, true);


	SetFwR("cg/fw/fw香奈枝_ショック.png");
	SetComic(@+250,@0,8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0010a03">
「ってそっち見るのかよ!?」

{	DeleteComic();
	FwR("cg/fw/fwさよ_照れ.png");
	SetComic(@+250,@0,13);}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0020a04">
「殿方の視線を釘付けにするこの快感……
　女としての<RUBY text="よろこ">悦</RUBY>びは<RUBY text="いくつ">幾歳</RUBY>になっても変わらぬ
ものでございます」

{	DeleteComic();
	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0030a02">
「待て婆さんいま変な字使わなかったか？
　変なっつーか分不相応っつーか立場わきま
えてねーっつーか！」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0040a00">
「それは……アロハシャツですね。
　明るい柄が良くお似合いです」

{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0050a04">
「ほほほ、お上手ですね。湊斗さまは」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0060a00">
「本心から言ったまでの事……」

{	FwR("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0070a04">
「……信じてしまいますよ？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0080a00">
「ご随意に」

{	FwR("cg/fw/fwさよ_照れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0090a04">
「やんちゃをなさってはいけません。
　お若い方……」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0100a00">
「やんちゃなどと……」

{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0110a03">
「おぉーい！
　ちょっと待ってよそこの二人ー！」

{	FwR("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0120a02">
「湊斗さん、正気に戻ってください！
　熱射病ですかっ!?　頭沸いたんですかっ!?
脳が煮え立ってシチュー状になってたりしま
せん!?」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0130a00">
「していないと思うが」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　していたらどうしてくれるというのだろうか。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5100, Center, -576, "cg/ev/ev119_一条と香奈枝海水浴_a.jpg");
	Move("絵ＥＶ100", 0, @0, -110, Dxl1, true);
	Fade("絵ＥＶ100", 500, 1000, null, true);
	Delete("絵ＥＶ200");

	SetFwR("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0140a00">
「俺はただ、侍従殿の服装を賞賛しただけだ」

{	FwR("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0150a03">
「とてもそうは聞こえません……」

{	FwR("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0160a02">
「記号的に解釈すればそうなんでしょうけど
……行間を読むと意味が深すぎます……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0170a00">
「難しい事を云う」

{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/005c0180a04">
「湊斗さま……この話の続きはまた後程。
　ふたりだけの折に」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/005c0190a00">
「は」

{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/005c0200a02">
「いや、だからそこ！　そこです湊斗さん！
　その行間っ!!」

{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/005c0210a03">
「これで何か妙な伏線が成立して、後で妙な
<RUBY text="シーン">場面</RUBY>が挿入されたりしたら、一体どう責任を
取られますの!?
　景明さまは軽率ですっ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　そんなことを言われても。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆ばあやフラグＯＮ
//$Sayo_Flag = $Sayo_Flag++;

..//ジャンプ指定
//次ファイル　"ma04_005z.nss"

}


