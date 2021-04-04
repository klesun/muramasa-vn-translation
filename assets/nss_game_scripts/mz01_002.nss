//<continuation number="10">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_002.nss_MAIN
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

	$香奈枝死亡 = true;

	judgment_of_count();

	$Kanae_Dead = true;
	$Kanae_Flag = 0;
	$完全香奈枝死亡 = true;

	$GameName = $Next_deadGame;
//	$GameName = "mz00_001.nss";

}

scene mz01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　""

//●香奈枝を殺す

//◆剣撃。ずばしゅ
//◆銃撃。ばきゅーん。
//◆血煙。ぶしゃー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se人体_血_たれる01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureEX("絵演背景", 1000, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Zoom("絵演背景", 0, 1250, 1250, null, true);
	SetBlur("絵演背景", true, 3, 500, 200, false);
	FadeFR2("絵演背景",0,750,200,0,0,50,AxlDxl, false);

	CreateSE("SE01c","se戦闘_銃器_拳銃発砲01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 2000, "#FFFFFF");
	Fade("絵色白", 100, 1000, null, true);

	FadeDelete("絵演背景", 300, false);
	FadeDelete("絵色白", 300, true);

	CreateSE("SE01d","se戦闘_攻撃_刀刺さる03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	CreateColorEX("絵色血", 2000, "#CC0000");
	Fade("絵色血", 100, 1000, null, true);
	FadeDelete("絵色血", 300, true);

	WaitKey(300);

	CreateSE("SE01e","se特殊_ヒロイン_惨殺03");
	MusicStart("SE01e",0,1000,0,1000,null,false);
	SL_leftdam(@0, @0,1000);
	SL_leftdamfade2(10);

	WaitPlay("SE*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鳥香奈枝を殺す。
　……殺した。

　動悸が激しい。
　殺した事によるものとは違う――殺害感触は心臓に
活力など与えない。むしろ氷結させ、俺はその冷たさ
に<RUBY text="ふる">慄</RUBY>えるだけだ。

　鼓動が早められているのは殺意に接したためだった。
　己の命を脅かす意思。そしてその実象化。

　上空、後背からの襲撃の瞬間。
　彼女は単身、誰にも頼らず凶気を察し、抜き撃ちに
一弾を放ってみせたのだ。

　まるで、事ある時を予知していたかのように。
　長銃には<RUBY text="あらかじ">予</RUBY>め弾丸を装填して。
　襲撃者の、覚えがあろう姿を見ても動じることなく。

　今は斃され。
　命を喪失している彼女の相貌に、やはり疑念を示す
ものはない。

　あるのは諦念。
　戦い、敗北したことを知った表情。
　
　兵士の顔だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0020010a00">
（ああ――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
　悟った。

　――彼女は俺を信じていなかった。

　俺の欺瞞を見破り、
　真実を見てくれていた。

　なのに、なぜ……
　殺されてしまったのだろう。

　なぜ、<RUBY text="・・・・・・・・">殺すことを許した</RUBY>のだろう。

　彼女は俺を殺し得た筈。
　できた筈だ。俺を信じていなかったのなら！

　なぜ――
　
　――まさか、

　<RUBY text="・・・・・・">信じたかった</RUBY>とでもいうのだろうか。

　……わからない。
　もはや大鳥香奈枝は俺の疑問に答えない。

　俺はただ彼女の骸を見下ろし、
　失ってはならぬ<RUBY text="ひと">女</RUBY>を失った事実に恐怖するばかりだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 2000);


//◆ヒロイン画面：香奈枝欄にキルマーク

}

..//ジャンプ指定
//次ファイル　""