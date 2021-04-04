//<continuation number="130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_003.nss_MAIN
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
	#bg087_大鳥邸玄関前a_01=true;
	#ev183_香奈枝に唇を奪われる=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_004vs.nss";

}

scene mc04_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_002vs.nss"

//◆屋敷前
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg087_大鳥邸玄関前a_01.jpg");
	Fade("黒幕１", 0, 1000, null, true);
	Delete("上背景");
	WaitKey(500);
	SoundPlay("@mbgm36",0,1000,true);

	CreateSE("SEL01","se背景_ガヤ_戦場の風景01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,false);

	FadeDelete("黒幕１", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　正門を突き抜けて以来幾つとなくやり過ごしてきた
建物と比べても、一際広壮な屋敷の前で老侍従の操る
車は急停止した。
　タイヤが悲鳴を上げ、焦げ臭い匂いが鼻腔をつく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030010a00">
「では――」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0030020a03">
「また後ほど」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc04/0030030a04">
「どうかご無事で」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　交わす言葉は、ごく短く。
　ここからの手筈だけはあらかじめ定めてあった。

　俺は銀星号ないしその関係物を探す。
　香奈枝嬢は大鳥獅子吼を狙う。さよ侍従は玄関前に
踏み留まり、屋敷内外の敵戦力を分断する。

　中途での合流、相互支援は考えない。
　次に会うのは各々が目的を遂げ、この屋敷から脱出
する時。

　つまり、為すべき事はごく<RUBY text="シンプル">単純</RUBY>だ。
　確認をとる必要もない。

　俺は荷台にいた村正と共に、車上から躍り出た。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0030040a03">
「景明さま」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030050a00">
「はっ――？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　無い筈の制止に振り返り。
　その刹那、時間が停止した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：キスシーン。
//◆キャラを小さめにとった方が美しいか。バックに噴煙とか。

//inc久保田 EVCGのダミーがありません。
	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 1, null);

	OnSE("se人体_動作_口付け", 1000);

	CreateColorSP("絵色白", 19900, "#FFFFFF");
//おがみ：使われていないようなので入れておきました。
	CreateTextureSP("絵背景追加", 1000, Center, Middle, "cg/ev/ev183_香奈枝に唇を奪われる.jpg");
	Fade("絵色白", 1000, 0, null, true);
	Wait(1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　――――――――。

　体温が近い。
　彼女の、肌の匂い、髪の香りが近い。

　触れている。
　ただ一点で。柔らかく。そっと――淡雪めく感触の
それ。

　唇を、合わされている。
　愚鈍な頭脳がそう気付くのに、数秒を要した。

　何の技巧もない。
　皮膚と皮膚を接触させているだけ。

　子供がするような接吻だった。

　ひどく不器用で。
　けれど無心に。

　ひた真っ直ぐな求めの行為を、受け入れる。
　どうしてか、抵抗力というものが俺の<RUBY text="うち">裡</RUBY>から失われ
ていた。

　……意味もわからないまま。
　俺は大尉と、愛情の行為を模倣する。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0030060a03">
「――確かめてきますから」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　唇を触れさせた、その距離で。
　彼女はそんな言葉を囁いたようだった。

　確かめる。
　
　――――何を？

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆離れ
	Fade("絵色白", 200, 1000, null, true);

	Delete("絵背景追加");
	SetVolume("@OnSE*", 200, 0, null);
	OnSE("se人体_足音_走る05", 1000);
	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　問う間は与えられなかった。
　接してきた時と同じ、飛鳥の素早さで大尉は身体を
翻すと、手にライフルとバスケースを携えて屋敷の中
へ躍り込んでゆく。

　……それを呆然と見送ったのは一瞬。
　既に戦闘状況は開始されている。こんな所で佇んで
いても貴重な時間を下水に流すばかりだった。

　猶予はならない。
　俺は劒冑を呼んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030070a00">
「村正！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。村正展開

//◆装甲アクション
	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStL(0,true);

	OnBG(100,"bg087_大鳥邸玄関前a_01.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Delete("上背景");
	FadeDelete("フラ*", 1600, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030080a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 2000);
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030090a00">
「ツルギの理ここに在り」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆装甲。ガキーン。いつもより音がやたらでかい。
	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

//二重再生で大きく？
	CreateSE("SE011","se特殊_鎧_装着02");
	CreateSE("SE022","se特殊_鎧_装着03");
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	MusicStart("SE011",0,1000,0,700,null,false);
	MusicStart("SE022",0,1000,0,1250,null,false);


	Fade("フラ", 300, 1000, null, true);

	DeleteStA(0,true);
	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	FadeDelete("フラ", 2000, true);
	WaitKey(1000);

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030100a00">
「…………」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0030110a01">
《…………》


{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0030120a00">
「……村正。
　なんか、今、すごく痛かったのだが」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0030130a01">
《気のせいでしょ》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc04_004vs.nss"