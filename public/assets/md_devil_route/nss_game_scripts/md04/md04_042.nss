//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_042.nss_MAIN
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
	#bg027_普陀楽評議の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_043.nss";

}

scene md04_042.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_041.nss"


//◆評議の間？
//◆どたどた。

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg027_普陀楽評議の間_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm37", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	CreateSE("走る", "se人体_足音_走る02");
	MusicStart("走る", 0, 1000, 0, 1000, null,false);

	WaitKey(1500);
	SetVolume("走る", 1000, 0, null);

	StR(1000, @0, @0, "cg/st/st雷蝶_通常_制服.png");
	FadeStR(300, false);


	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420010a08">
「童心様！」

{	StL(1000, @0, @0, "cg/st/st童心_通常_私服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420020a09">
「雷蝶殿……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420030a08">
「何が起きたのです!?
　この混乱は――いったい……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420040a09">
「城内にかの銀星号が現れたのでござる。
　殺戮を繰り広げるのみならず、如何なる力
でか兵どもを狂乱させておる様子……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420050a08">
「そ、そんな――どこから!?」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420060a09">
「武者衆が立ち向かっておるものの……歯が
立たぬようでござるな。
　城内の指揮系統は崩壊し、既に軍の体裁を
失っていると申さねばなりますまい」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0420070a09">
「また上空では銀星号出現に呼応したごとく、
零零式が暴走状態に陥ったとのこと。
　航空戦力も壊滅を目前としており申す」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420080a08">
「……し、獅子吼はどうしたのですか!?」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420090a09">
「…………」

//【童心】
<voice name="童心" class="童心" src="voice/md04/0420100a09">
「既に、音信は絶えてござる」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420110a08">
「――――――――」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420120a08">
「なんてこと……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420130a09">
「雷蝶殿」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420140a08">
「は、はい」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420150a09">
「邦氏殿下を、お頼みいたしますぞ」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420160a08">
「……え？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420170a08">
「ど、どういうことでしょう？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420180a09">
「なぁに。
　それがし、これからちと<RUBY text="うえ">空</RUBY>へ出向いて」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420190a09">
「希代の怪物、銀星号に、一槍馳走して参る
ゆえ……」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420200a08">
「――――」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420210a08">
「そ、それはいけません！
　あまりに危のうございます！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420220a09">
「といって、好きにさせておくわけにも参り
ますまい」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420230a09">
「ここは普陀楽城……我ら六波羅の首城。
　捨てて逃げる選択はござらぬ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雷蝶_焦り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420240a08">
「――なら、麿が参ります！
　失礼ながら、銀星号などという化物に挑む
のであれば、童心様より麿の方が適任かと」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420250a09">
「雷蝶殿の武勇は、この老いぼれた坊主風情
の及ぶところではござらぬな。
　それは承知してござる……が」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420260a09">
「ゆえにこそ、雷蝶殿には邦氏殿下のお側に
残って頂かなくてはならぬ」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420270a08">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420280a09">
「何より、それがしが戦いたいのでござる」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420290a08">
「え？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420300a09">
「天上天下にただ独りで立ち。
　暴勇暴乱、我ら六波羅さえ羽虫同然に打ち
払う――銀星号！」

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420310a09">
「口惜しゅうござる。口惜しゅうござるわ。
　さような者をのさばらせておいて、さぁて、
何が天下の覇者であろう」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420320a09">
「ふっ。ふっ、ふぅっふっふぅ……！
　これを恐れて逃げ隠れするばかりなら――
我が婆娑羅ぶりもせせこましいものよ!!」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420330a08">
「童心様……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420340a09">
「しからば御免。
　なに、一汗流してすぐに戻って参るゆえ」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420350a09">
「雷蝶殿、宜しければ酒の用意をしておいて
くださりませい。
　白銀の魔王とやらの<RUBY text="しるし">首級</RUBY>を肴に、一献酌み
交わしましょうぞ！」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/md04/0420360a09">
「はぁっはっはっはっはっはっはっはッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆出ていく

	OnSE("se人体_足音_歩く09", 1000);

//	Move("@StL*", 300, @-50, @0, DxlAuto, false);
	DeleteStL(500,true);

	Wait(1000);

	SetFwC("cg/fw/fw雷蝶_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/md04/0420370a08">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1500, true);
	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"md04_043.nss"