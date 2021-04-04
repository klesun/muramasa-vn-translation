//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_002a.nss_MAIN
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
	#bg031_八幡宮境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$銀星号香奈枝殺害 = true;
	$香奈枝死亡 = true;
	$Kanae_Dead = true;
	$Kanae_Flag = 0;
	SetHex();

	$PreGameName = $GameName;

	$GameName = "mb01_003_1.nss";

}

scene mb01_002a.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_002.nss"

//◆香奈枝生存の場合のみ、このシーン

//◆八幡宮
//◆レッドマスク
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	CreateSE("SE01","se特殊_ヒロイン_惨殺03");//音源確認必須
	CreateSE("SE01a","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵血", 1000, "#CC0000");
	CreateTextureEXmul("絵演", 200, Center, Middle, "cg/anime/Center/bloodA_6.png");
	Fade("絵演", 0, 750, null, true);
	SetShade("@OnBG*", HEAVY);
	Wait(100);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("絵血", 600, false);

	Wait(2000);
	SoundPlay("@mbgm15",2000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　死に化粧までは望まぬものの。
　せめて、唇を拭っておこう――
　
　そう思ったのにどうしてか、うまくいかなかった。

　見れば何のことはない。
　右腕は既に、消失していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mb01/002a0010a03">
「……まったく、もう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　口元の血を拭えぬまま、更に一筋を加えて。
　進駐軍大尉は呟いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mb01/002a0020a03">
「これは……ないのではなくて？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　自嘲にもならない愚痴。
　怨嗟にもならない苦笑。

　<RUBY text="・・">目的</RUBY>は達した。
　しかし、何の意味もなかった――こんな運命が待ち
受けていたのでは。

　悲劇に徒労というスパイスを効かせれば喜劇になる。
　……笑うしかない。力なく。

　何者かが、それに応えたようだった。

　
　――なに。
　そろそろ本腰を入れて<RUBY text="・・・">始める</RUBY>のでな。一つ景気良く
やってみようと思ったのだ。

　
　とはいえ、どうも<RUBY text="・・">これ</RUBY>は雅趣に欠ける。
　これは、ひとまず封じておくか――

　それが幻聴でなかったなら、さまでに人を玩弄した
物言いもなかったろう。
　何故ならそこには、玩弄するという意思さえ<RUBY text="・・">無い</RUBY>のだ。

　春の嵐が桜を吹き散らすように。
　ただ、事もなげな振舞いで人間を踏み砕く。

　悪神であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空間歪曲→闇。飢餓虚空魔王星。
//◆闇の中、ちらりと銀星号が
	PrintGO("絵板写", 1000);
	CreateTextureSP("絵板写２", 100, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	CreateSE("SE01","se戦闘_銀星号_飢餓虚空魔王星_発動");//音源確認必須
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵白", 5000, "#FFFFFF");
//	SetTone("絵板写２", Monochrome);
	DrawEffect("絵板写２", 200, "Ripple", 0, 500, null);
	FadeDelete("絵白", 600, true);

	FadeDelete("絵板写", 1000, true);

	CreateColorSP("絵暗転", 5000, "#000000");
	DrawTransition("絵暗転", 2000, 0, 1000, 300, Axl1, "cg/data/circle_02_00_1.png", false);

	CreateTextureEX("絵立絵", 150, Center, Middle, "cg/st/3d銀星号_立ち_通常.png");
	Fade("絵立絵", 1500, 300, null, true);

	WaitAction("絵暗転", null);
	Delete("絵板写２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　最後に……ありったけの憎悪を微笑して。
　大鳥香奈枝は、絶命した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ここまで
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_003.nss"