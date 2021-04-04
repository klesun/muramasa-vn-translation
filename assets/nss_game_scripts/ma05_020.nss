//<continuation number="1580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_020.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma05_020.nss","KaisouReverse",true);
	Conquest("nss/ma05_020.nss","KaisouReverseSet",true);

	CP_AllSet("村正");

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
	#bg047_景明故郷町b_01=true;
	#bg047_景明故郷町b_02=true;
	#bg047_景明故郷町a_02=true;
	#bg054_湊斗家祭殿b_02=true;
	#ev139_統を殺害_a = true;
	#ev139_統を殺害_b = true;
	#ev139_統を殺害_c = true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma05_021vs.nss";

}

scene ma05_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_019.nss"

//◆空。青空→夕空
//◆滅びの町。死屍累々。山賊含む。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(3000,true);
	WaitKey(1000);
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	OnBG(100,"bg047_景明故郷町b_02.jpg");
	FadeBG(3000,true);

	SetFwC("cg/fw/fw首領弟_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200010b32">
「あ……はははは」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200020b32">
「あはははははは……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200030b32">
「あははははははははははははは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="いちがを">一ヶ尾</RUBY><RUBY text="かずま">一磨</RUBY>は、笑いこけた。
　笑う以外に、できる事がなかった。

　ワケがわからない。
　何がなんだかもうさっぱりわからない。

　だからこれはきっと冗談だ。
　こんな馬鹿げたオカシなコトは冗談に決まっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200040b32">
「ひっ、ひひっ……！
　なんだよ！　なんだよおまえ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);
	SoundPlay("@mbgm37",5000,1000,true);
	CreatePlainSP("絵板写",3000);

//◆銀星号。部分？　シルエット？
	CreateColorSP("絵黒", 1000, "#000000");
	CreateTextureSP("絵演立", 1100, -483, -1475, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Zoom("絵演立", 0, 750, 750, null, true);
	Request("絵演立", Smoothing);

	Move("絵演立", 6000, @0, @400, DxlAuto, false);
	Fade("絵板写", 2000, 0, null, true);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200050b32">
「おまえ変だよ！　おかしいよ！
　なんだよその<RUBY text="・・">疾さ</RUBY>!!」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200060b32">
「見えないじゃないか！
　気が付いたら殴られてるじゃないか、僕！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵板写", 600, 1000, null, true);

//◆竜騎兵（首領弟）。ボロボロ。
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,750,null,false);
	StL(4000, @-30, @30,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	Move("@StL*", 300, @30, @-30, DxlAuto, false);
	FadeStL(400,true);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200070b32">
「ていうか死に掛けだよ！
　死ぬよ！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200080b32">
「なんでさ!?
　僕、武者だよ!?　竜騎兵だよ!?」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200090b32">
「強いんだよ！
　強いんだってば！」

//嶋：シナリオ退避【090511】
//「同じ武者にだってそう負けないよ！
//　なのに！　なのになのになにぃ！」
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200100b32">
「同じ武者にだってそう負けないよ！
　なのに！　なのになのになのにぃ！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200110b32">
「なんで……
　<RUBY text="・・・">一秒で</RUBY>こんなやられてるんだぁぁぁぁッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵、がく。翼がもげ落ちる？
	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	CreateSE("SE02","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 6, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-20, @10, null, true);
	CreatePlainSP("絵板写",3000);
	Fade("@StL*", 0, 0, null, true);

//◆銀星号。部分？　シルエット？
	CreateColorSP("絵黒", 1000, "#000000");
	CreateTextureSP("絵演立", 1100, -483, -1200, "cg/st/resize/3d銀星号_立ち_通常l.png");
	Zoom("絵演立", 0, 750, 750, null, true);
	Request("絵演立", Smoothing);

	Move("絵演立", 6000, @0, @400, DxlAuto, false);
	Fade("絵板写", 2000, 0, null, true);

	SetFwC("cg/fw/fw首領弟_泣き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200120b32">
「……なんなんだおまえ……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200130b32">
「大体わけわかんない。
　なんであいつら、狂うのさ」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200140b32">
「おまえが現れた途端！
　僕の部下も！
　町の連中も！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200150b32">
「いきなり滅茶苦茶に殺し合い始めた！
　敵も味方もあったもんじゃなかった！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200160b32">
「どいつもこいつも脳味噌が腐ってた！
　みんな最高にハイだったー！　楽しそうに
コロシ合ってたね！　僕だけ除け者にして！
ずるいよ、恐いじゃん置いてけぼりなんて！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200170b32">
「止めようとしても誰も返事なんてしてくれ
ないし！
　返ってくるの銃弾だけだし！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200180b32">
「そーやって好き勝手に殺して殺されて殺し
て殺されて……
　もう誰もいないよ！　みんな死んでる！」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200190b32">
「なんなのっ!?
　一体なんなのさぁっ、これ!!」

{	FwC("cg/fw/fw首領弟_恐怖.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200200b32">
「誰か教えてよぉっ！
　ねえさぁぁぁぁぁぁぁぁん!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。全身
	CreateColorEXadd("絵白", 5000, "#FFFFFF");
	Move("絵演立", 2000, @0, -641, DxlAuto, false);
	WaitKey(500);
	Fade("絵白", 300, 1000, null, true);

	Delete("絵演*");
	Delete("絵黒");
	Delete("絵演*");
	WaitKey(1000);

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStR(0,true);

	Fade("@StL*", 0, 1000, null, true);
	FadeDelete("絵白", 1000, true);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200210b32">
「こいつ――
　なんなのぉっっ!?」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200220a14">
「……ふむ。
　何なの、か」

//【光】
<voice name="光" class="光" src="voice/ma05/0200230a14">
「浅薄な問いだな。
　思わず、人間だ……などとつまらん答えを
返してしまいそうになるじゃないか」

//【光】
<voice name="光" class="光" src="voice/ma05/0200240a14">
「まぁ、いい。
　おれの意味を、存在を問われたのだと解釈
しよう」

//【光】
<voice name="光" class="光" src="voice/ma05/0200250a14">
「おれはこの世に純真の武を<RUBY text="し">布</RUBY>くもの。
　即ち」

//【光】
<voice name="光" class="光" src="voice/ma05/0200260a14">
「天下布武である」

{	FwC("cg/fw/fw首領弟_泣き.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200270b32">
「……はは。あはは。
　なにそれ」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200280b32">
「わけわかんない……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200290a14">
「む、そうか？」

{	FwC("cg/fw/fw首領弟_泣き.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200300b32">
「わかんない……
　もーなにもわかんないよぅ……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200310b32">
「姉さぁん……
　どこいっちゃったのさ……助けてよ……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200320a14">
「待て待て。
　勝手に自分の世界へ閉じ篭もるでない」

//【光】
<voice name="光" class="光" src="voice/ma05/0200330a14">
「おまえにはやって貰うことがあるのだ。
　それを果たしてからにしろ」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200340b32">
「……姉さん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ずごーん。威嚇の一撃
	CreateSE("SE01","se戦闘_破壊_建物02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵震", 300, Center, Middle, "cg/bg/bg047_景明故郷町b_02.jpg");
	Fade("絵震", 0, 750, null, true);
	Shake("絵震", 600, 0, 10, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw首領弟_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200350b32">
「……ひィィィィィィィッ!?」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0200360a14">
「とりあえず……
　今ここで死にたくないと思うなら、逃げる
必要があるぞ。山賊の親玉」

{	FwC("cg/fw/fw首領弟_恐怖.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200370b32">
「ひっ……
　ひぃぃぃ……」

{	CreateSE("SE02","se人体_動作_後ずさり01");
	MusicStart("SE02",0,1000,0,750,null,false);
	Move("@StL*", 300, @-20, @0, DxlAuto, false);}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200380b32">
「ひっ、ひやっ、ひゃひ……
　ひゃはっ、ははははははは……」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200390b32">
「あはははははは！
　あぁははははははははははははははは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵、逃走
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,650,null,false);
	Move("@StL*", 300, @-150, @0, Axl2, false);
	DeleteStL(300,false);
	WaitKey(200);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	WaitKey(100);
	Fade("絵フラ", 600, 0, null, false);
	DrawDelete("絵フラ", 300, 1000, "slide_08_00_1", true);

	WaitKey(1000);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/ma05/0200400a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆湊斗家
//◆祭殿
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(3000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　……どれほどの間、苦悶に喘いでいたのか。
　気付けば、夕闇が訪れていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200410a00">
「……こんな場合では」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　ようやく平静を取り戻し、呻く。
　貴重な時間を浪費した事は間違いなかった。

　すぐにでも動かねばならない。
　劒冑は――あの劒冑は駄目だ。

　やはりあれは、触れて良いものではなかった。
　必ずや、災いを導く。確信がある。断言できる。

　……そんな劒冑を装甲してしまった光の身が案じら
れる。
　どうして、止められなかったのか。

　不安はそこに尽きない。
　山賊との戦いはどうなったか。数は相手の方が遥か
に優勢なのだ。武者となった光にも、容易い対敵では
決してないだろう。

　考えれば考えるほど、焦燥が募る。
　……とにかく、町へ様子を見に行かねば。

　光の安否を確かめるのが急務だ。

　半壊した祭殿は、今はどうしようもない。
　養母の身柄だけ安全な所へ運んで、それから、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どーん。竜騎兵が落ちてくる
	CreateSE("SE01","se戦闘_破壊_建物02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$震時間元=RemainTime("SE01");
	$QTime=$震時間元 / 2;
	CreateTextureEX("絵震", 1100, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_02.jpg");
	Request("絵震", Disused);
	Fade("絵震", 0, 800, null, true);
	Shake("絵震", $QTime, 0, 20, 0, 0, 1000, Dxl2, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　――それは突如、降ってきた。

　九〇式竜騎兵。
　六波羅軍の主力騎。

　しかし、武者の礼法に則る華麗な着陸とは全く遠い。
　まるで……<RUBY text="サッカーボール">蹴球の球</RUBY>よろしく<RUBY text="・・・・・・">蹴り込まれた</RUBY>かのよう
な、無様な降着。

　そのせいというわけでもないようだが、武者は酷い
有様だった。
　あちらこちらの甲鉄が砕け、割られ、歪んでいる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200420a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　硬直した頭脳が、問題を一つ一つ片付けて、結論を
導き出してゆく。

　――竜騎兵。
　――光ではない。
　――つまり、山賊。町を襲った一党。

{	SoundPlay("@mbgm34",2000,1000,true);}
　――敵。
　――俺の味方ではない、武者。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200430b32">
「…………」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200440a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　失神でもしていたのか、しばらく蹲ったまま動かな
かった凄惨な武者が、ふと<RUBY text="かお">面頬</RUBY>をこちらへ向けた。
　視線が合う。

　こちらは、九〇式の兜を拝んだところで、既に理解
した以上の事は何もわからない。
　だが相手の側では、違ったようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200450b32">
「……お前だ……」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200460b32">
「そうだよ。
　お前だよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200470a00">
「……？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200480b32">
「お前が来てからオカシクなった。
　なんかヘンになったんだ」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200490b32">
「お前だよ。
　お前だよ！」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200500b32">
「お前がいなけりゃ良かったんじゃないの？
　そうじゃない？　そうだよね！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200510b32">
「……お前がいなけりゃ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,750,null,false);
	StL(4000, @-30, @30,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	Move("@StL*", 300, @30, @-30, DxlAuto, false);
	FadeStL(400,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　ゆら、と武者が起き上がる。
　手に、刃毀れした太刀を持って。

{	OnSE("se戦闘_動作_刀構え01",1000);}
　その尖端が、俺を指す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200520a00">
「待っ――」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200530b32">
「お前がいなけりゃ、良かったんだよぉ！
　あはははははははは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃
//◆ずどーん。
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	CreateSE("SE01","se人体_衝撃_瓦礫ぶつかる01");
	CreateSE("SE02","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("絵演震", 200, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_02.jpg");
	DeleteStA(0,true);
	StC(1000, @-30,@0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	Fade("絵演震", 0, 750, null, true);
	Shake("絵演震", 700, 8, 0, 0, 0, 1000, Dxl2, false);
	Request("絵演震", Disused);
	Move("@StC*", 400, @30, @0, DxlAuto, false);
	FadeStA(400,false);
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_08_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　何をする事もできなかった。
　ぽかんと間抜けに口を開けて、意味もなく制止の形
で手を突き出していただけだ。

　人能を超えた踏み込みと、同じく超人の斬撃。
　その勢威は軽く皮膚を掠めただけで、俺の体を吹き
飛ばすに足りた。

　地面に打ち倒され、砂利を舐める。
　それでも幸運だったのだろう。

　死なずに済んだのは、竜騎兵が狙いを外したおかげ
だった。
　避けようなどと、思う間すらなかった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200540b32">
「……なんだよ……
　避けるなよ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　だというのに失敗の責任を俺に押し付けて、武者が
拗ねた口調で愚痴る。
　ゆらりと、兜が揺れて……俺の姿を探し。

　見つけて。
　再び見合い――今度は一つ、俺も知る事があった。

　……この武者はもう、正気ではない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200550b32">
「お前が悪いんだよ。
　死んでよ」

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200560a00">
「……ッ……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧歩く01_L");
	MusicStart("SE01",2000,1000,0,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　からからに渇いた喉へ、唾を飲む。
　乾き過ぎていて、飲み下すのに苦労した。

　……この武者は、俺を殺そうとしている。
　……話も通じそうにない。

　殺される。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200570a00">
「ぐっ……う……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　異様な緊張が肛門から突き上げた。
　脳髄が沸騰して泡を立てる。

　死。
　死。
　命の終わり。

　どうにもできない恐怖。
　逆らいようとてない脅威。

　……逃げたい。
　……死にたくない。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw首領弟_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200580b32">
「死んでよ。
　ねえ、さっさと死んでよ！」

{	FwL("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200590a00">
「ひっ……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　意味不明、我が侭な殺意が恐ろしい。
　じりじりと下がる。逃げる――それで全く敵の姿が
遠くならないことに絶望しながら、這って退く。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
//◆かちゃ。
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1250,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　――その手が。
　ふと、冷たい何かに触れた。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正蜘蛛
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	DrawDelete("上背景", 250, 100, "slide_01_04_1", true);
	DrawDelete("絵暗転", 250, 100, "slide_01_04_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　劒冑。
　自らを村正と称した、あの劒冑だ。

　――劒冑！
　そうだ。これがあれば。

　これが、あれば……

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン
//◆村正内面世界
	CreateSE("SE01","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 1, null);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");
	CreateTextureEXsub("絵演１", 400, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateColorSP("絵色399", 399, "#CC0000");

	CreateStencil("Ｓ",1000,52, 123,128,"cg/st/3d村正蜘蛛_正面.png",false);
	SetAlias("Ｓ","Ｓ");
	CreateMask("Ｓ/Ｍ", 1000, center,InBottom, "cg/st/3d村正蜘蛛_正面.png", false);
	SetAlias("Ｓ/Ｍ","Ｓ/Ｍ");
	CreateTextureSPmul("Ｓ/Ｍ/絵演", 2100, Center, InBottom, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	Fade("絵演１", 0, 750, null, true);
	DrawEffect("Ｓ/Ｍ/絵演", 3600000, "LowWave", 30, 30, null);
	WaitKey(2000);
	FadeDelete("絵白", 1000, true);
	SoundPlay("@mbgm04",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　　　　　我が<RUBY text="な">銘</RUBY>は村正

　
　　　　　　我、鬼に逢うては鬼を斬り

　
　　　　　　仏に逢うては仏を斬るもの也

　
　　　　　　　　　我、善に非ず

　
　　　　　　　　　我、義に従わず

　
　　　　　　　　　我、正道を<RUBY text="ゆ">征</RUBY>かず

　
　　　　　　　　我、正邪を諸共に断つ

　
　　　　　　　　　我、一振の<RUBY text="ハガネ">凶刃</RUBY>也

　
　　　　　我との契りを求める者
　　　　　我と共に凶刃と<RUBY text="な">生</RUBY>る覚悟ありや

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ギーン。不協和音
	SetVolume("@mbgm04", 100, 0, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Wait(10);
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	Delete("Ｓ");
	Delete("上背景");
	FadeDelete("絵色白", 1000, true);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200600a00">
「ぐぅっ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　いや――
　いや！　これは、駄目だ！

　これは使ってはならない。
　このおぞましい世界を見れば明白だ。
　このおぞましい呪詛を聞けば明白だ。

　これは――途轍もなく不吉な何かなのだ。
　災いの運命を内包したモノなのだ。

　到底、理解はできない。だが、確信は揺らがない。
　これは妖甲と呼ばれるモノなのだ。

　そう――妖甲。
　歴史の知識を紐解けば、村正の名は常にその異称と
共にある。

　大和史上ほかに例のない程に、長く果てしなく意義
もなく続いた泥沼の大乱――南北朝争乱。
　嘘か真か、その地獄を演出したのはある鍛冶一門の
鍛え上げた劒冑だと云う。

　妖甲、勢洲右衛門尉村正。
　……この赤い蜘蛛こそが、それであるならば。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStR(0,true);
	DrawDelete("上背景", 250, 100, "slide_01_04_0", true);
	DrawDelete("絵暗転", 250, 100, "slide_01_04_0", true);

	SetFwC("cg/fw/fw首領弟_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200610b32">
「あはは……
　きっとお前を殺せば、姉さんも帰ってくる
んだよ」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200620b32">
「ねえ？
　だろ？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200630a00">
「……ッッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　たとえ――
　たとえ。

　ここで、殺されるとしても。
　この劒冑は――この劒冑だけは――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【統】
<voice name="統" class="統" src="voice/ma05/0200640b46">
「……っ……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200650b46">
「ぅ……ん」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200660a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……それは。
　よりにもよって、奴の足元の、すぐ近く。

　意識を取り戻したらしい養母が起き上がろうとして
いる。
　奴の――気の触れた竜騎兵の注意を、わざわざ引き
寄せるように！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200670b32">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200680b46">
「あー……くそ。
　なんなんだ。二日酔い？」

//【統】
<voice name="統" class="統" src="voice/ma05/0200690b46">
「おかしーな。酒なんて……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200700a00">
「統様ッ!!」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200710b46">
「ん？　……景明？」

{	FwC("cg/fw/fw景明過去_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200720a00">
「お逃げ下さい！
　早く！　その場をッ！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0200730b46">
「へ――」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200740b32">
「邪魔だよ。
　邪魔しないでよ」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200750b32">
「僕はあいつを殺さなきゃいけないんだから
……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　八つ当たり以外の何でもない怒りを向けられ、養母
が唖然とする。
　唖然と――するほかないだろう。目を覚ましてみれ
ばそこに竜騎兵がいて、太刀を振り上げていたなら。

　まずい。
　いかに養母でも……防げない。

　竜騎兵も狙いを外さない。
　養母が死ぬ。

　統様が死ぬ。
　死んでしまう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200760a00">
「……ッ……」

{	FwC("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200770a00">
「く……あぁぁッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
//◆キーン。共鳴
//◆村正内面世界
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_銃器_跳弾02");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);
	SetVolume("@mbgm*", 100, 1, null);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");
	DeleteStA(0,true);
	CreateColorSP("絵色399", 399, "#CC0000");
	CreateTextureEXsub("絵演１", 400, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	CreateStencil("Ｓ",1000,52, 123,128,"cg/st/3d村正蜘蛛_正面.png",false);
	SetAlias("Ｓ","Ｓ");
	CreateMask("Ｓ/Ｍ", 1000, center,InBottom, "cg/st/3d村正蜘蛛_正面.png", false);
	SetAlias("Ｓ/Ｍ","Ｓ/Ｍ");
	CreateTextureSPmul("Ｓ/Ｍ/絵演", 2100, Center, InBottom, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	Fade("絵演１", 0, 750, null, true);
	DrawEffect("Ｓ/Ｍ/絵演", 3600000, "LowWave", 30, 30, null);
	WaitKey(2000);
	FadeDelete("絵白", 1000, true);
	SoundPlay("@mbgm04",3000,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　
　　　　　　……我との契りを求める者

　
　　　　　我と共に凶刃と<RUBY text="な">生</RUBY>る覚悟ありや

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200780a00">
「ッ……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　覚悟などない。
　そんなわけのわからぬ覚悟はない。

　だが――
　だが、今は――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　
　　　　　　　　　無かりせば去れ

　
　　　　　　　　有りせば
　　　　　　　　己が覚悟を宣誓す<RUBY text="べ">可</RUBY>し

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　養母を救わねばならない。
　何をしてでも。何を使ってでも。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想・養母の笑顔
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 500, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
	PrintGO("上背景", 15000);
	Delete("絵回想*");
	CreateColorSPadd("絵白転", 10000, "#FFFFFF");
	CreateTextureSP("絵演中央", 500, 52, 123, "cg/st/3d村正蜘蛛_正面.png");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	Delete("Ｓ*");
	Delete("上背景");
	FadeDelete("絵白転", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　決して許せぬ事は、ただ一つきり。
　――統様が失われる事だけだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆蜘蛛村正
	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200790a00">
「鬼に逢うては……
　鬼を斬る」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　そうして、俺は口ずさんだ。
　恐ろしい<RUBY text="うた">詩</RUBY>を。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200800a00">
「仏に逢うては仏を斬る……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　意味も知らぬまま。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200810a00">
「ツルギの理……
　ここに、在り……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　――――誓約したのだ。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正爆誕。
//◆ずぎゅーんどかーん。
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d村正初期_立ち_通常.png");
	FadeStC(0,true);
	Delete("絵演*");
	WaitKey(1000);
	FadeDelete("絵フラ", 1000, true);

	SetFwL("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【統】
<voice name="統" class="統" src="voice/ma05/0200820b46">
「景明……!?」

{	FwL("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200830b32">
「え……
　あ……あぁぁっ!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　俺のすべては変貌を遂げた。

　外は甲鉄に覆い尽くされ。
　内は<RUBY text="チカラ">異力</RUBY>が駆け巡り。

　<RUBY text="ひと">人間</RUBY>にあらざるモノに成りおおせた――
　余りの超越感に意識が恍惚とする。

　それでも、すべき事は忘れなかった。
　一つきりだ――このチカラは、<RUBY text="ただひと">唯一</RUBY>つの事さえ成し
得ればいい。

　統様を救うだけでいい！

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆村正モニター展開
//◆敵騎ロックオン
	PrintGO("上背景", 5000);
	CreateColorSP("絵色黒", 1000, "#000000");
	FadeDelete("上背景", 1000, true);

	Wait(12);

	Cockpit_AllFade(300,720,0);

	CreateSE("SE01","se特殊_コックピット_起動音04");
	$残時間=RemainTime("SE01")-1000;

	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 5000, "#FFFFFF");

	MyTr_Count(300,321);
	Fade("絵色白", $残時間, 1000, Axl2, true);

	Wait(300);

	Delete("絵色黒");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStC(0,true);

	FadeDelete("絵色白", 1600, true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-100);
	CP_LockOnFade(300,"off",true);

	CreateSE("SE02a","se特殊_コックピット_起動音02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(300,true);

	WaitKey(500);

	SetFwL("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200840b32">
「お、お前……それ……
　あいつの仲間かぁっ!?」

{	FwL("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200850b32">
「あいつの！　あいつの！
　ひっ、いいいいいいいいィィィィッ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　竜騎兵が錯乱して何かを喚き散らしている。
　だが、耳には入らない。

　意味を持つ事実は一つきりだ。
　奴は統様を殺そうとしている……

　あれは敵だ！
　討つべき敵だ！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200860a00">
「うああああああああああああああ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　吼える。
　駆ける。
　太刀を抜く。

　敵を斬り殺す為の全てを行う。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【統】
<voice name="統" class="統" src="voice/ma05/0200870b46">
「駄目だッ！　景明!!
　<RUBY text="・・">それ</RUBY>は――――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CP_LockOnDelete();
	Cockpit_AllFade0();

//◆がきーん。太刀打ち一合
//◆弾け飛ぶ竜騎兵
	CreateColorSP("絵色黒", 5000, "#000000");

	Wait(12);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_left2(5100,@300, @0,2000);
	SL_leftfade2(0);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色白", 3000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01b","se戦闘_攻撃_刀衝突01");
	CreateSE("SE01c","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01b",0,1000,0,750,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	Wait(12);

	Delete("上背景");
	FadeDelete("絵色白", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　横殴りの一撃を叩き込む。
　反射的動作で敵騎は太刀を立て、それを受け止めた。

　だが――そこまで。
　返しの一打はおろか、踏み止まることさえできては
いない。

　優劣は明白だ。
　俺の方が強い。

　この村正の方が、あの竜騎兵よりも圧倒的に強い！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200880a00">
「ああああああああッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEX("絵黒幕１", 10000, "#000000");
	CreatePlainSP("絵演突",1000);
	SetBlur("絵演突", true, 3, 500, 100, false);
	Zoom("絵演突", 100, 1200, 1200, Dxl2, false);
	Fade("絵黒幕１", 200, 1000, Axl2, false);
	DrawTransition("絵黒幕１", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	Delete("絵演突");
	CreateTextureSP("絵演出", 2000, -613, -215, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureEXadd("絵演出弐", 2100, -613, -215, "cg/ev/resize/ev504_村正突進l.jpg");
	Shake("絵演出弐", 36000000, 6, 10, 0, 0, 1000, Dxl2, false);
	Fade("絵演出弐", 0, 200, null, true);

	DrawDelete("絵黒幕１", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　追う。
　体勢を崩し切っている竜騎兵に追いすがる。

　技など無かった。
　すべて忘れた。

　力任せに振り上げて、
　力任せに叩き切る。

　養母を脅かす敵を――
　両断する！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw首領弟_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0200890b32">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆不完全レールキャノン。暴走気味
//◆ずがどーん。
	CreateSE("SE01","se戦闘_陰義_磁力展開");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色黒", 5000, "#000000");
	FadeDelete("絵演出弐", 200, false);
	SetVertex("絵演出", 936, 361);
	SetBlur("絵演出", true, 3, 500, 100, false);
	Fade("絵色黒", 720, 1000, Axl3, false);
	Zoom("絵演出", 750, 8000, 8000, Axl3, true);

	WaitKey(300);

	PrintGO("上背景", 10000);
	CreateColorSP("絵色黒", 5000, "#000000");

	Wait(12);

	Delete("上背景");
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01ba","se特殊_電撃_放電01");
	CreateSE("SE01bb","se特殊_電撃_放電01");
	CreateSE("SE01bc","se特殊_電撃_放電02");
	MusicStart("SE01ba",0,1000,0,750,null,false);

	CreateTextureEXadd("絵演出弐", 1010, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀asex01.jpg");
	SetBlur("絵演出弐", true, 3, 500, 100, false);
	CreateTextureSP("絵演出", 1000, Center, Middle, "cg/ef/resize/ef030_汎用電磁抜刀asex01.jpg");
	FadeFR2("絵演出弐",0,600,800,0,0,30,Dxl2, false);

	DrawDelete("絵色黒", 100, 1000, "slide_04_01_1", false);

	MusicStart("SE01bb",0,650,0,00,null,false);
	Wait(100);
	MusicStart("SE01bc",0,650,0,1250,null,false);

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 1000, Axl2, true);

	WaitKey(500);

	PrintGO("上背景", 10000);
	Wait(12);
	CreateSE("SE01ca","se戦闘_衝撃_衝突01");
	CreateSE("SE01cb","se戦闘_破壊_鎧01");
	CreateTextureEXadd("絵演出", 1100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵演出", 0, 1250, 1250, null, true);
	CreateTextureSP("絵演", 1000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演出", true, 3, 300, 100, false);
	Delete("上背景");

	FadeFR2("絵演出",0,2300,1000,0,0,60,Dxl2, false);

	MusicStart("SE01ca",0,1000,0,1000,null,false);
	MusicStart("SE01cb",0,1000,0,1000,null,false);

	Zoom("絵演出", 300, 1200, 1200, null, true);
	Zoom("絵演出", 2000, 1400, 1400, null, false);

	FadeDelete("絵演出", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　……竜騎兵は、最期に悲鳴を上げることもなかった。
　劒冑ごと、身体を二つに散らす。

　圧倒的な力。
　凄まじいまでの暴力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「演出：ここからＣＰ演出だが、合えてロックオン以外を表示させない手法にしてみる」
	CreatePlainSP("絵板写", 19900);

	//Cockpit_AllFade2();

	//CP_AziChange(0,-70,null,false);

	CreateCamera("Ｃ", 512, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵背景", 1, Center, Middle, "cg/bg/resize/bg054_湊斗家祭殿b_02l.jpg");
	Move("Ｃ/絵背景", 0, @0, @-100, null, true);
	Request("Ｃ/絵背景", Smoothing);

	CreateTextureEX("Ｃ/絵演立絵統", 250, Center, InBottom, "cg/st/st統_通常_私服.png");
	SetVertex("Ｃ/絵演立絵統", center, bottom);
	Zoom("Ｃ/絵演立絵統", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	Delete("絵演*");
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200900a00">
「おっ……
　おおおおおおおおお!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　異様な達成感が、獣の如き咆哮を上げさせた。
　初めてこの手で、人間を殺したという悪寒――それ
さえも何処かへ忘れ去る。

　これが劒冑か。
　これが武者か。

　素晴らしい力だ。
　偉大というほかない。

　この力を正しく使えば……
　世を変えることすら、きっと不可能ではない。

　何という――――武力!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【統】
<voice name="統" class="統" src="voice/ma05/0200910b46">
「……景明……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200920a00">
「あ……
　……あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("Ｃ/絵演立絵統*", 0, @-542, @-50, DxlAuto, false);

	Move("Ｃ/絵演立絵統*", 0, @30, @0, DxlAuto, false);
	Fade("Ｃ/絵演立絵統*", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　なぜか泣くような、養母の声。
　それを聞いてようやく、意識の半分ばかりが冷静さ
を取り戻した。

{
	//CP_AziChange(10000,80,Dxl1,false);
	MoveCamera("Ｃ", 10000, -512, @0, @0, Dxl1, false);}
　そうだ。
　統様は、無事か。

　今の一合の、巻き添えを食ってなどは――
　
　そう思いつつ、養母の姿を視界に入れた、その刹那
だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正モニター
//◆統をロックオン
	WaitAction("Ｃ", null);
	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CockPit_LockSet(@0,@-100);
	CP_LockOnFade(300,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　……な。
　何？

　何を。
　俺は、何をしようとしている？

{	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,800,null,false);}
　太刀を構えて……
　<RUBY text="・・・・・">養母を見て</RUBY>。

　何をしようとしているのだ!?

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 19000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SoundPlay("@mbgm04",0,1000,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200930a01">
《……御堂。
　誓約を果たしなさい》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　耳を介さず、頭蓋の内側に涼やかな声が響く。
　これは――<RUBY text="きんちょうじょう">金打声</RUBY>、というものか!?　劒冑が通信に
用いる音波……

　つまり、村正の声!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200940a00">
「……誓約……？
　誓約とは……何のことだ」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200950a01">
《我が<RUBY text="あるじ">御堂</RUBY>。
　貴方は誓った》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200960a01">
《善も悪も分け隔てなく、
　諸共に断つ》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200970a01">
《――<RUBY text="ハガネ">凶刃</RUBY>になると誓った》

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0200980a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　それは……
　どういう意味だ。

　どういう意味なのだ……!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0200990a01">
《我ら、村正は……
　<RUBY text="・・・・・・・・・・">善と悪を共に断つもの</RUBY>》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201000a01">
《御堂。
　貴方は悪と見做して一人を斬った》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201010a01">
《だから――貴方は善と見做す一人をも斬ら
なくてはならない》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　…………!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201020a01">
《貴方は一人の敵を斬った。
　だから、一人の味方も斬らねばならない》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201030a01">
《貴方は憎んで一人を斬った。
　だから、愛する一人も斬らねばならない》

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201040a00">
「でっ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　できるかッ!!
　そんな事が!!

　馬鹿な……!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201050a01">
《……それが村正の法。
　貴方が誓った不破の約定》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201060a01">
《さあ、御堂。
　一つの善を。
　一人の味方を。
　愛する一人を》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201070a01">
《誓いにかけて。
　……殺しなさい》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆統ロックオン。
	CreateSE("SE02a","se特殊_コックピット_起動音02");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CP_LockOnChange(300,true);

	SetFwR("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201080a00">
「い……嫌だッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se人体_足音_鎧歩く01_L");
	MusicStart("SEL01",0,1000,0,600,null,true);

	//CP_SpeedChange2(2000,8,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　前に進もうとする足を留める。
　太刀を振りかぶろうとする腕を止める。

　……全ては虚しかった。
　俺を恍惚とさせたあの膨大な力が、今は俺の全身を
縛り付けている。

　俺の意思を封殺して。
　鋼鉄によろわれた俺の身体は、一歩一歩、養母へと
向かってゆく。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201090a00">
「やめろっ！
　やめてくれ……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201100a00">
「何故だ！
　何故、そんな真似をしなくてはならない!?」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201110a00">
「何故そんなことをさせる!?
　応えろ、村正!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201120a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201130a01">
《何故、も何もない。
　私は<RUBY text="・・・・・・">そういうもの</RUBY>だから》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201140a01">
《私は村正。
　その理念で打ち上げられた劒冑》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201150a01">
《鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201160a01">
《この<RUBY text="ことわり">理</RUBY>を示すために私は生まれた。
　だから、そうする》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201170a01">
《……それだけよ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//◆統に近付く
	//CP_SpeedChange2(2000,0,null,false);
	SetVolume("SE*", 100, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　そんな馬鹿な話があるか。
　そんな理不尽な話があるか。

　意味もわからず。
　養母を、この手で殺めねばならないなどと！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明過去_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201180a00">
「統様！
　離れて下さい……！」

{	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201190b46">
「……」

{	FwL("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201200a00">
「早く！
　さもないと、自分が……」

{	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201210b46">
「…………」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201220a00">
「自分が……
　この手で……貴方を!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　だから――
　だから、早く。

　早く、逃げて――――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);

	SetFwL("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【統】
<voice name="統" class="統" src="voice/ma05/0201230b46">
「……ま。
　そうもいくまいね」

{	FwL("cg/fw/fw統_優しい.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201240b46">
「こいつはわたしの請け負い分だよ、息子。
　他のやつには回せないさ……」

{	FwL("cg/fw/fw景明過去_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201250a00">
「統様……ッッ!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐさー。
//◆やっちまいました。
	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE*", 100, 0, null);
	PrintGO("上背景", 20000);
	Wait(12);
	CreateColorSP("絵色血", 1000, "#CC0000");
	CreateColorSP("絵色黒", 100, "#000000");

	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_LockOnDelete();
	CP_AllDelete();
	Delete("上背景");
	Delete("Ｃ");


	Wait(10);

	FadeDelete("絵色血", 300, true);

	WaitKey(500);

	CreateSE("SE01b","se人体_血_血しぶき01");
	SL_centerdamN(@0, @0,1500);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(0);

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm31",0,1000,true);

	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201260a00">
「あ……
　あぁッ……!?」

{	FwL("cg/fw/fw統_痛笑.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201270b46">
「……ふぃー……
　やっぱけっこー効くね……」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201280a00">
「統様……
　統様ァァッ!?」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201290a00">
「俺は……違う……！
　こんな……嘘だ。どうして……俺は!?」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201300b46">
「いいんだ、景明。
　わかってる……」

{	FwL("cg/fw/fw統_沈思.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201310b46">
「……やっぱ、言い伝え通りだったんだなぁ。
　敵を殺したら、味方も殺す……か」

{	FwL("cg/fw/fw統_悲哀.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201320b46">
「悪を殺したら善も殺す。
　憎む人間を殺したら愛する人間も殺す……」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201330b46">
「……んー？　つまり息子よ、おまえはこの
母を誰よりも愛していたのか？
　なんだ……照れるじゃないか、まったく」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 3010, Center, InBottom, "cg/ev/resize/ev139_統を殺害_al.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　場違いに笑う、養母の胸を……
{	Move("絵演", 6000, @0, -210, DxlAuto, false);
	Fade("絵演", 600, 1000, null, false);
}
　刃が貫いている。

　俺の刃だ。
　俺が――――統様を刺した!!

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1200, false);

	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201340a00">
「あ……そんな……
　いやだ……俺は……！」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201350b46">
「泣くな、景明……
　涙で送られるなんて性に合わないし」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201360a00">
「統様……！」

{	FwL("cg/fw/fw統_優しい.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201370b46">
「あぁ……もう。
　最後まで、世話の焼ける子だ……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　養母が震える指を伸ばして、俺の目元を拭う。
　その優しさに心を裂かれる。

　何故だ……？
　どうして……こんな事に――!?

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【統】
<voice name="統" class="統" src="voice/ma05/0201380b46">
「おまえが悪いんじゃない。おまえがわたし
を殺したんじゃない。
　巫姫の役目を果たせなかった……うっかり
村正の解放を許しちまった、わたしの責任」

//【統】
<voice name="統" class="統" src="voice/ma05/0201390b46">
「身から出た錆ってやつ。
　おまえが気にするこたぁない……」

//【統】
<voice name="統" class="統" src="voice/ma05/0201400b46">
「おまえはわたしを助けようとしただけ……。
　大体ね、おまえがそうしなきゃ……わたし
はさっきの<RUBY text="やつ">武者</RUBY>に殺されてたさ」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201410b46">
「だから、いいんだよ……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201420a00">
「……いやだ……
　嫌です……統様……！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201430a00">
「俺は……俺は貴方を守らなきゃ……
　助けなきゃいけない……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
　俺の生命はそのためにあった。
　そのために費やされるべきだった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201440a00">
「なのに……
　なのに!!」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201450b46">
「いっぱい助けてもらったさ……
　孝行息子」

{	FwL("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201460b46">
「だから……わたしはもういいから。
　あいつを頼むよ……」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201470a00">
「統様!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se人体_動作_抱きつき01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵ＥＶ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　養母の身体を抱える。
　去ろうとするものに、しがみつく。

　……既に、身体は自由だった。
　それは――つまり。俺の全身を支配していた呪縛が、
目的を果たしたという事、で――――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/0201480a01">
《…………》

{	FwL("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201490a00">
「い、いやだ……駄目だ。
　行かないで下さい」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201500a00">
「統様……
　俺は――俺は、貴方を」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想・養母の笑顔
//◆一瞬、ちらっと
	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	Fade("絵白転", 300, 200, null, true);

	WaitKey(250);

	Fade("絵白転", 400, 1000, null, true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwL("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201510a00">
「貴方を」

{	FwL("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0201520b46">
「……光を頼むよ、景明。
　<RUBY text="・・">約束</RUBY>……忘れないで」

{	FwL("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201530a00">
「統様!?」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆永眠。南無。
	CreateTextureEX("絵ＥＶ２", 2900, Center, -90, "cg/ev/resize/ev139_統を殺害_bl.jpg");
	Fade("絵ＥＶ２", 1000, 1000, null, true);
	Delete("絵ＥＶ");
	Delete("絵演");

	SetVolume("@mbgm*", 3000, 0, null);

	SetFwL("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201540a00">
「……統様」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　…………

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201550a00">
「……統様……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　応えは無い。
　何も、無い。

　養母は二度と応えない。
　俺が――そうした。

　俺が、この手で。
　養母を殺した。

　殺したのだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201560a00">
「あぁっ……」

{	FwL("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201570a00">
「――――――――――――」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1011]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0201580a00">
「あああああああああああああああああああああああ
あああああああアアアアアアアアアアアアアアアアア
{
//◆場面切り替え。回想脱出
//◆養母を刺す村正→青江を刺す村正
	KaisouReverse();
}
アアアアアアアアアアアアアアアアアアアアアアアア
アアアアアアアアアアアアアアアアアアアアッッッ!!」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ばきーん。青江の世界、崩壊
//◆全てが現実へ復帰。
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	WaitAction("Ｐ回想リバース", null);
	Delete("Ｐ回想リバース");
	WaitKey(200);
	WaitPlay("mbgm*", null);
	WaitPlay("SE*", null);

}

..//ジャンプ指定
//次ファイル　"ma05_021vs.nss"



.//プロセス用======================================================

..//回想リバース
function KaisouReverse()
{
	CreateProcess("Ｐ回想リバース", 5000, 0, 0, "KaisouReverseSet");
	SetAlias("Ｐ回想リバース","Ｐ回想リバース");
	Request("Ｐ回想リバース", Start);
}

..//回想リバースセット
function KaisouReverseSet()
{

//	CreateColor("絵色白", 5000, 1024, 0, 1024, 576, #FFFFFF);
//	Fade("絵色白", 0, 0, null, true);
//	Move("絵色白", 0, @-1024, @0, null, true);
//	Request("絵色白", AddRender);
//	SetAlias("絵色白", "絵色白");
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateTextureEX("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");
//	Fade("絵ＥＶ", 0, 0, null, true);
//	CreateTexture("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");

	begin:


	Fade("絵色白", 600, 1000, null, true);
	Fade("絵ＥＶ", 0, 1000, null, true);

	Wait(500);
	FadeDelete("絵色白", 800, true);
}