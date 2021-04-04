
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011bb.nss_MAIN
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
	#bg036_競技場通路_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_011bb_routeFlag==true){$ma03_011bb_routeFlag=false;}
	else{$Ichizyou_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011bb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_011b.nss"

//●間違ってはいない

	SoundPlay("@mbgm17",0,1000,true);

	PrintBG("背景０", 30000);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0390a00">
「間違ってはいない」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0400a02">
「……えっ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0410a00">
「事情は大体飲み込んでいると思う。
　ガレージに忍び込んできたファンの少年を、
あの整備員が手荒に扱った。違うか」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0420a02">
「えと、はい。そうです。
　だから、あたし……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0430a00">
「お前が怒るのは何も不思議な事ではない。
　弱者への暴力は最も卑劣な行為だ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0440a00">
「お前の怒りは正しいと、俺は思う」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0450a02">
「……はいっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　溌剌とした声。
　曲がりかけていた背筋がぴんと伸びたな――と、俺
は気配だけで理解した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0460a02">
「あの、それじゃあ……
　湊斗さんは、どうして」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0470a00">
「理由一。俺達の目的を考えるなら、騒ぎを
起こすのは得策と言えない。
　実際、あの辺りでの調査はできなくなった」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0480a02">
「……はい。
　ごめんなさい……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0490a00">
「謝る必要はない。
　理由二。あのまま論争を続けた場合、暴力
沙汰になるのは避けられそうになかった。
　だから頭を下げて、打ち切った」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0500a02">
「そんなっ。
　湊斗さんならあんなの、簡単に――」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0510a00">
「殴り倒して頭を踏みつけて御免なさいもう
しませんと謝らせるべきだった、か？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0520a02">
「……え、えーと……」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0530a02">
「はい……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0540a00">
「そうかもしれない。
　あるいはそれが正しいのかもしれない」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0550a00">
「だが、俺は嫌だ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0560a02">
「……どうしてですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0570a00">
「いま言った筈だ。
　弱者への暴力は卑劣だと」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0580a02">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0590a00">
「あの男性は民間人にしか見えなかった。
　戦闘技術を心得た人間と争って勝つ方法を
おそらく、何も持たないと推測される」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0600a00">
「そんな相手に、理由はどうあれ、一方的な
暴力を加えるなら……
　俺は俺を嫌悪する」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――<RUBY text="・・・">だから</RUBY>。
　俺は俺を嫌悪している。

　吐き気を覚える程に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0610a02">
「…………。
　でっ、でも、向こうが殴ってきたら、仕方
がないんじゃ……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0620a00">
「殴られるのは別にどうということもない。
　痛いとも思わない」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0630a00">
「<RUBY text="・・・">害する</RUBY>ことに比べれば、害されることなど
何も痛くはない」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0640a02">
「…………」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0650a00">
「一条」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0660a02">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/011b0670a00">
「調査を再開する。
　この先は俺に同行しろ」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0680a02">
「？　――は、」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/011b0690a02">
「はいっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一条好感度＋２？
//$Ichizyou_Flag = $Ichizyou_Flag+2;
	$ma03_011bb_routeFlag = true;
	$Ichizyou_Flag++;

	judgment_of_count();


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_012.nss"