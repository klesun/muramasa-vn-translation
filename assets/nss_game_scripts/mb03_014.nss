//<continuation number="70">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_014.nss_MAIN
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
	#bg041_片瀬海岸_01=true;
	#bg049_景明故郷住宅地a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_015.nss";

}

scene mb03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_013.nss"

//◆海岸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　平穏な航海の末、浦安へ到着した。
　予定通りバスに乗って船橋へ。そこから海岸沿いを
歩く。

　習志野から美浜へ……
　丁度房総半島の付け根にある小弓はその先だ。

　潮風は冷えるが、日差しのお陰で耐えかねる程でも
ない。まずまず平穏な道行だった。
　しばしば幕軍の車両と行き違うが、特にトラブルと
いう程のことはなくやり過ごせている。

　どうやら何事もなく目的地へ着けそうだ。
　
　
　……と見込むのは、まだ早計であろうが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 2000);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色100", 1500, "BLACK");


//◆ＳＥ：無線オン
	CreateSE("SE01","se日常_機械_無線通信03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	CreateSE("SE01","se日常_機械_無線通信02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("上背景");
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140010e112">
「習志野分隊、<RUBY text="オニヤンマ">鬼蜻</RUBY>より報告。
　目標を捕捉した」


//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140020e112">
「……〝曽我兄弟〟二名を確認。
　他に随行者は無し」


//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140030e112">
「以降の指示を乞う。{Wait(2500);}<BR>　……諒解した。プランＤにて迎撃」


//【ｅｔｃ／十傑Ｂ】
<voice name="ｅｔｃ／十傑Ｂ" class="その他男声" src="voice/mb03/0140040e112">
「直ちに作戦を開始する」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆無線オフ
	CreateSE("SE01","se日常_機械_無線通信05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	Wait(2000);

//◆沿岸道。適当に使い回し。bg049とか
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg049_景明故郷住宅地a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　やはり小弓まで真っ直ぐ、というのは虫が良過ぎた。
　ここまで侵入を許してくれた沿岸の道路は美浜の中
ほどで小弓軍の一分隊に封鎖され、その先への通行は
もはや叶わない。

　小弓公方府まではあと十数キロ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0140050a00">
「……どうしたものかな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　封鎖を見るなり踵を返しては怪しまれかねない。俺
と一条はそのまま単なる通行人を装って近付き、当然
のように追い払われて、今は進路を逆にしている。
　このまま歩き続ければ浦安まで戻ってしまうが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0140060a02">
「少し戻った辺りに喫茶店があったじゃない
ですか。とりあえずそこ入りません？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0140070a00">
「そうするか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　海水浴客を睨んだ立地で、季節柄閑古鳥が鳴いては
いたが、それでも一応営業している様子だった。
　ひとまず腰を落ち着けて対策を練るには格好の場所
だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 1000);

}

..//ジャンプ指定
//次ファイル　"mb03_015.nss"