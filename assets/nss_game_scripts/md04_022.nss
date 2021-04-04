//<continuation number="170">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_022.nss_MAIN
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
	#bg009_鎌倉住宅街a_02=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_023vs.nss";

}

scene md04_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_021.nss"


//◆鎌倉・夕

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	WaitKey(1500);
	
//◆司令部
//◆横書き

	CreateColorSP("黒幕１", 5000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(0, true);


	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	StR(1000, @0, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStL(300, false);
	FadeStR(300, true);



	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220010b00">
「ばっ、馬鹿な！
　篠川の援軍が来ただとぉ!?」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220020b00">
「どうやってだ！
　古河は我々が既に押さえた……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220030b00">
「いや、そもそも早過ぎる！
　開戦からまだ一日半しか経っていないでは
ないかっ!!」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220040b03">
「ウィロー少将、落ち着いて下さい。
　篠川の全軍が押し寄せてきたわけではあり
ません」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220050b00">
「何だと？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220060b03">
「来たのは飛行艦が一隻だけです。
　我が軍のガレーキープ級にも匹敵する大型
ですが……一隻は一隻」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220070b03">
「搭載兵力も高は知れています」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220080b00">
「ふむ……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220090b03">
「大鳥獅子吼は古河の陥落を見越して、少数
精鋭による来援を選んだのでしょう。
　占領直後なら古河の防空も甘い……突破は
困難であっても不可能ではありません」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220100b03">
「敵ながら果断な将軍ですね」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220110b00">
「……だが。
　所詮は一隻、だな？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220120b03">
「そうです。
　大勢は覆りませんよ」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220130b03">
「普陀楽上空の航空戦力を一部動かし、迎撃
させましょう。
　六波羅の心臓を止めるのが少し遅れますが、
それだけのことです」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220140b00">
「それだけのことでも、忌々しいがな。
　あと一歩で終わるというところに邪魔とは
……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220150b03">
「閣下」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0220160b00">
「わかっているよ、クライブ。
　任せる。あの援軍を叩き潰し、普陀楽城の
士気を完全に砕いてやってくれ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0220170b03">
「了解」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 25000, "BLACK");
	Fade("絵色100", 1500, 1000, null, true);


//	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_023vs.nss"