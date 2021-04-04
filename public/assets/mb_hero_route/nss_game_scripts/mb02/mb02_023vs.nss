//<continuation number="240">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_023vs.nss_MAIN
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
	#bg069_普陀楽城内広間_01b=true;
	#bg063_普陀楽城内廊下_03=true;
	#bg070_普陀楽城内階段ホール_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_024vs.nss";

}

scene mb02_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_022.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg069_普陀楽城内広間_01b.jpg");

/*
//あきゅん「演出：前ファイルの鎧ラッシュ再現用」
	CreateTextureSP("絵演鎧１", 900, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀b.png");
	CreateTextureSP("絵演鎧２", 700, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_抜刀.png");
	CreateTextureSP("絵演鎧３", 600, Center, InBottom, "cg/st/3d九四式竜騎兵_立ち_通常b.png");
	CreateTextureSP("絵演鎧４", 800, Center, InBottom, "cg/st/3d九〇式指揮官_立ち_抜刀.png");
	CreateTextureSP("絵演鎧５", 600, Center, InBottom, "cg/st/3d八八式竜騎兵_立ち_通常.png");
	CreateTextureSP("絵演鎧６", 700, Center, InBottom, "cg/st/3d九〇式竜騎兵_立ち_抜刀.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	Move("絵演鎧１", 0, @-420, @0, null, true);
	Move("絵演鎧２", 0, @-180, @0, null, true);
	Move("絵演鎧３", 0, @-10, @0, null, true);
	Move("絵演鎧４", 0, @120, @0, null, true);
	Move("絵演鎧５", 0, @360, @0, null, true);
	Move("絵演鎧６", 0, @520, @0, null, true);

	Request("絵絵鎧*", Smoothing);
*/

	FadeBG(0,true);
	Delete("上背景");
	CreateMovie("煙動画", 6000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 3000, null, true);


	CreateSE("SE01","se日常_機械_電気ショート帯電01");
	MusicStart("SE01",2000,300,0,1000,null,true);


	Fade("煙動画", 0, 1000, null, true);



	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0010a01">
《え？　何？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0020a00">
「<RUBY text="・・・">発電機</RUBY>を暴走させたのだ。
　お前が」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0030a01">
《はつでんき？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　中世の人間にその単語の意味を説明している余裕は
無かった。
　おそらくこの<RUBY text="ムラマサ">電磁操手</RUBY>は科学知識として知らぬだけ
で、その実質は<RUBY text="ちしつ">知悉</RUBY>しているだろうけれども。

　本丸がたった一基の発電施設に頼っている筈はない。
すぐ別電源に切り替わる。
　思いのほか爆発は大きく、どこかで崩落の音も聞こ
えるが、まさかそれで城が倒壊するとも思えない。

　奇策で稼ぎ出した時間は決して多くなかった。
　それを、有効に使う。

{	CreateSE("SE01","se人体_衝撃_肩にぶつかる01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　足踏みと呼吸の音で包囲陣の乱れた方角を察知。
　そちらへ、一条を押し飛ばす。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/023vs0040a02">
「――湊斗さん!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　先の指示に従ってくれるよう祈るばかりだった。
　実際は、祈る間も惜しんだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0050a01">
《御堂！》


{	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @60, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,false);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0060a00">
「行く」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲アクション
	CreatePlainSP("絵板写", 5000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a1.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0070a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 5000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b1.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0080a00">
「ツルギの理ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆変身。村正
//◆ＢＧＭ
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);
	Delete("煙動画");
//◆突進
	CreateSE("SE05","se戦闘_動作_空突進01");
	MusicStart("SE05",0,1000,0,1000,null,false);
	SoundPlay("@mbgm08",0,1000,true);

	Move("@StR*", 150, @-256, @0, Axl2, false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵演", 4000, -250, -110, "cg/ev/resize/ev504_村正突進l.jpg");
	SetBlur("絵演", true, 3, 500, 50, false);
	Move("絵演", 200, @-370, @-70, Dxl2, false);

	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　床を蹴り放って走り出す。
　向かう先は正面――中央突破。

　寡兵を以て衆を討つなら大将のみ狙う、その定法に
従ったのではない。
　敵将、かの僧形公方は既に姿が見えなかった。この
混乱のなか誰よりも早く平静を取り戻して動いたのか。

　その目的と行方は知れない。推量する時間もない。
　だが俺は合当理に火を入れた。騎航に足るほどでは
なく――柱にぶつかるだけだ――背中を押し出し足を
速める程度の出力で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆合当理の爆音
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainEXadd("絵板写", 5000);
	Fade("絵板写", 100, 1000, Dxl2, false);
	Zoom("絵板写", 100, 1250, 1250, null, true);
	FadeDelete("絵板写", 400, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　それでも、夜の城郭内にその排気音はとてつもない
騒音として響き渡った。
　混乱から回復しつつある兵らの注意が、いま一斉に
集中するのを皮膚感覚で知る。

　これで良い。
　後は一条に迅速な行動力と正確な判断力さえあれば
逃走の成功が望める筈だった。

　前者は充分に期待できる。
　後者はともかくとしても。

　ここから先は、自分自身の世話を焼かなくてはなら
ない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆進突
	CreateSE("SE01b","se戦闘_動作_空突進01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Move("絵演", 150, @-200, @0, Axl2, false);

	CreateColorSP("絵黒幕１", 10000, "BLACK");
	DrawTransition("絵黒幕１", 150, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	Delete("絵演");

//◆厩衆二騎
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg069_普陀楽城内広間_01b.jpg");
	FadeBG(0,true);
	Delete("上背景");

	StL(1000, @0, @30,"cg/st/3d厩衆_立ち_戦闘.png");
	StR(1000, @0, @30,"cg/st/3d厩衆_立ち_抜刀b.png");
	FadeStA(0,true);

	CreateSE("SE02a","se人体_足音_鎧歩く03");
	CreateSE("SE02b","se人体_足音_鎧歩く03");
	MusicStart("SE02a",0,1000,0,800,null,false);
	Move("@StL*", 300, @80, @-30, Dxl2, false);
	Wait(50);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-80, @-30, Dxl2, false);

	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//◆跳ね飛ばす
	CreateSE("SE03","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE03b","se戦闘_衝撃_鎧転倒02");

	CreateColorEX("絵色白", 15000, "#FFFFFF");
	Fade("絵色白", 0, 800, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorEX("絵黒幕", 16000, "BLACK");
	Fade("絵黒幕", 0, 500, null, true);
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	SetVertex("@OnBG*", center, bottom);
	Shake("@OnBG*", 300, 10, 0, 0, 0, 1000, Dxl2, false);
	Zoom("@OnBG*", 300, 1500, 1500, null, false);

	MusicStart("SE03b",0,1000,0,1000,null,false);
	DeleteStA(300,false);
	Shake("@St*", 300, 0, 6, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 150, @-100, @30, Dxl2, false);
	Move("@StR*", 150, @100, @30, Dxl2, false);

	Wait(150);

	FadeDelete("絵色白", 100, false);
	DrawDelete("絵黒幕", 300, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　太刀は抜かず、重量級の劒冑に物を言わせて真正面
の敵騎を弾き飛ばす。
　大した損傷も与えていないだろう。だが道が開けば
充分だ。

　陣を破ればそこは広間の端。目前には回廊。
　一息に飛び出る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆廊下
	CreateSE("SE04","se戦闘_動作_空突進03");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", false);
	Move("@OnBG*", 200, @-100, @0, null, true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
//あきゅん「演出：外が見える廊下は少々やっかいだな、逃げ出せてしまう」
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 1000, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　道順など知る由もない。知っていた味方は既に亡い。
　だが進む。一方角を決定して。そちらのみ目指す。

　外へ出るだけが目的なら、それだけで良い筈だった。
　この期に及んで尚も初期の目的に固執する愚はどう
考えても生命一個を最低限度の代価としよう。その上、
邦氏が今夜本当にここにいるのかも不明とくる。

　いや……どこか別所に移されているとみるのがまず
妥当だろう。古河公方がそうしておかぬ理由は皆無だ。
　この場ではもはや、いかに奮闘しようと自己の安全
以外に勝ち取れるものはない――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆厩衆
	SetVolume("SE*", 1000, 0, null);
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Move("絵演鎧３", 300, @-10, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se人体_足音_鎧歩く03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se人体_足音_鎧歩く03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @-180, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se人体_足音_鎧歩く03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧５", 300, @360, @0, AxlDxl, false);
	Move("絵演鎧５", 0, @200, @0, AxlDxl, false);
	Move("絵演鎧５", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se人体_足音_鎧歩く03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧１", 300, @-420, @0, AxlDxl, false);
	Move("絵演鎧１", 0, @-200, @0, AxlDxl, false);
	Move("絵演鎧１", 300, @-220, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se人体_足音_鎧歩く03");
	MusicStart("SE01f",0,1000,0,700,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧６", 300, @520, @0, AxlDxl, true);
	Move("絵演鎧６", 0, @200, @0, AxlDxl, true);
	Move("絵演鎧６", 300, @320, @0, AxlDxl, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0090a00">
「――ッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　そしてそれも、並みの奮闘では勝ち取れそうにない！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬り結ぶ。ジャキーン。
//◆厩衆が離れ、別方向からもう一騎
	CreateSE("SE02","se戦闘_攻撃_野太刀振る01");
	CreateColorSP("絵色黒", 5000, "#000000");
	MusicStart("SE02",0,1000,0,900,null,false);
	SL_down2(5100,@0, @-256,2000);
	SL_downfade2(10);

	CreateSE("SE02a","se戦闘_攻撃_剣戟弾く01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	Delete("絵演鎧*");
	Delete("絵色黒");
	FadeDelete("絵色白", 600, false);

	Wait(200);

	CreateSE("SE02b","se人体_動作_跳躍03");
	MusicStart("SE02b",0,1000,0,1250,null,false);
	StL(1000, @180, @20,"cg/st/3d厩衆_立ち_戦闘.png");
	Shake("@StL*", 300, 0, 4, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 150, @-30, @-20, null, false);
	FadeStL(150,true);
	CreateSE("SE02c","se戦闘_動作_刀構え01");
	MusicStart("SE02c",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　頭上から襲い来る一刀を抜き打ちに撃ち上げ、斬手
の騎体ごと押し戻す。
　そこに生じた間隙へ、もう一騎。先手を打つ機は無
かった。すぐさま来るであろう攻勢に備える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆テキストボックス消して、すぐ戻す
	WaitKey(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　備えて――――
　<RUBY text="・・・・・・・">そのまま動かぬ</RUBY>敵に呼吸を外される。

　半瞬の間。
　それは先の一合で押し退けられた敵騎が戻るに充分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0100a00">
「うぬ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両側から一撃
	CreateSE("SE01a","se人体_動作_跳躍01");
	CreateSE("SE01b","se人体_動作_跳躍02");
	StCL(1200, @-60, @0,"cg/st/3d厩衆_立ち_戦闘.png");
	StR(1200, @0, @0,"cg/st/3d厩衆_立ち_抜刀b.png");
	Zoom("@StML*", 0, 1200, 1200, null, true);
	Zoom("@StR*", 0, 1400, 1400, null, true);

	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StML*", 150, @60, @0, Dxl1, false);
	Request("@St*", Smoothing);
	FadeStCL(150,false);
	Wait(50);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 150, @-60, @0, Dxl1, false);
	FadeStR(150,true);

	Move("@StML*", 10000, @30, @0, Dxl1, false);
	Move("@StR*", 10000, @-30, @0, Dxl1, false);

//◆一撃弾いて
//◆一撃食らう
	CreateColorSP("絵色上黒", 5000, "#000000");
	CreateColorSP("絵色下黒", 100, "#000000");
	Delete("@St*");

	Wait(1);

	Delete("絵色上黒");

	CreateSE("SE02a","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02a",0,1000,0,900,null,false);

	SL_rightdown(@-150, @-256,2000);
	SL_rightdownfade2(0);

	CreateSE("SE02b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02b",0,1000,0,1100,null,false);
	SL_leftdown(@150, @0,3000);
	SL_leftdownfade2(0);

	CreateSE("SE03a","se戦闘_攻撃_鎧かする01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	CreatePlainSPadd("絵板写", 111);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Delete("上背景");
	CreateSE("SE03b","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 200, false);
	FadeDelete("絵暗転", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　危うく一方は受け弾いたが、もう一手は仕様もない。
　覚悟を決め、せめて装甲の厚い肩で食らう。

　勢力の乗った殺刃をそれでも村正の誇る甲鉄は防ぎ
切ったが、そこまでが限度。
　衝撃が突き抜け、刹那視界が眩んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0110a00">
（出来る）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);
	StL(1000, @60, @0,"cg/st/3d厩衆_立ち_戦闘.png");
	StR(1100, @0, @0,"cg/st/3d厩衆_立ち_抜刀b.png");
	Move("@StR*", 0, @-60, @0, null, true);
	Zoom("@StR*", 0, 1200, 1200, null, true);
	Request("@St*", Smoothing);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　口の中に有難くない事実を噛み締める。

{	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @-60, @0, Dxl2, false);
	Move("@StR*", 150, @60, @0, Dxl2, false);
	FadeStL(300,false);
	FadeStR(150,false);}
　両者はいずれも練達の使い手。おそらく柳生新陰流
六波羅派の。
　二年前に出会い、太刀を交えもしたその流儀の剣客
に、彼らの剣は酷似し匹敵する。

　加えて<RUBY text="コンビネーション">連携行動</RUBY>にも巧み。
　そこまで事実が揃えば、思うところはあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0120a00">
（そうか。これが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　思考は置いて、肉体は動く。
　今はその機だった。

　こちらに斬り付けた敵騎が追撃の絶好の機を逃し、
無意味に動きを止めている。
　村正の余りの硬さが彼をして動揺させたのは間違い
なかった。

　その隙を狙う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆敵騎へ向かう
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演", 5100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreatePlainSP("絵板写", 5000);
	Request("絵板写", Smoothing);
	SetVertex("絵板写", 768, 0);
	SetBlur("絵板写", true, 3, 500, 50, false);
	Fade("絵演", 150, 0, null, false);
	DrawDelete("絵演", 300, 100, "zoom_01_00_1", false);
	Zoom("絵板写", 150, 2000, 2000, Dxl2, true);

//◆横からもう一騎が
//◆そちらへ方向転換
	CreateSE("SE01b","se人体_動作_跳躍02");
	MusicStart("SE01b",0,1000,0,800,null,false);
	Move("絵板写", 200, @580, @-90, AxlDxl, true);
	Shake("絵板写", 300, 6, 0, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw厩衆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//◆ボイスなし
//【ｅｔｃ／厩衆】
<voice name="ｅｔｃ／厩衆" class="その他男声" src="voice/mb02/023vs0130e022">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がきーん。
//◆一騎吹っ飛び
	CreateSE("SE02b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 6000, "#FFFFFF");
	CreatePlainSPadd("絵板写上", 5100);
	SetVertex("絵板写上", 256, 144);
	Shake("絵板写上", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写上", 150, 1250, 1250, null, false);
	Wait(50);
	Fade("絵色白", 100, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateSE("SE02","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	CreatePlainSPadd("絵板写", 110);
	Shake("絵板写", 900, 0, 20, 0, 0, 1000, Dxl2, false);
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("絵暗転", 600, true);

	CreateSE("SE03","se人体_動作_跳躍03");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -550, -370, "cg/ev/resize/ev503_村正抜刀剣光l.jpg");
	CreateTextureSP("絵演", 3000, -550, -370, "cg/ev/resize/ev503_村正抜刀剣光l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　――今度はこちらが呼吸を外した。
　動きを止めた騎を狙うと見せ、脇から躍り出たもう
一騎を打ち飛ばす。

　更に跳ね戻って一歩踏み込む。
　連携を破られわずかに動揺したか。残る一騎の反応
が砂一粒分だけ遅れた。

　貰う。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一撃
//◆がーん。
	CreateColorSP("絵色100", 4500, "BLACK");

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);

	SL_left2(20000,@0, @0,1500);
	SL_leftfade2(10);

	PrintGO("上背景", 5000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");
	CreateSE("SE01b","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　峰打ちで兜を横殴りに叩く。
　手応えは充分――頭蓋骨の中に存在すると思われる
精神とやらを弾き出したと確信する。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE02","se人体_動作_跳躍03");
	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	MusicStart("SE02",0,1000,0,1200,null,false);
	Zoom("@OnBG*", 150, 1500, 1500, null, false);

	Fade("絵演", 0, 1000, null, true);
	DrawTransition("絵演", 150, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0231]
　膝を屈し、板床へ沈む敵手の姿を最後まで観察する
必要はなかった。
　先に飛ばした一騎もすぐに回復する様子のないこと
だけ確かめ、再び駆け出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0140a00">
（彼らは――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　<RUBY text="・・">彼ら</RUBY>。
　その認識にふと、疑問が生じる。

　性別など不明だ。彼らは一声も発しなかったから。
　そう、無声だった――現れた時も、打ち掛かる時も、
打ち込んだ時も、打ち倒された時も。

　その発見は俺の推理を補強した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0150a00">
（六波羅厩衆！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　幕府というより足利一族に服従し、その身辺を守り、
また表にできぬ様々な職務に従事する。
　そんな特異な集団があることは知られていた。実態
まで知る者は、誰もいなかったが。

　推測でしかない。だが否定する材料もない。
　無音にして迅速、群れにして一個、闇に沈んで剣を
顕す――彼らがそうでないなら、一体何者がその厩衆
を務められるというのか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateSE("SE01","se戦闘_動作_空突進01");
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);
	DrawDelete("絵暗転", 150, 100, "circle_01_00_1", true);

//◆新たに敵出現
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧３", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");
	CreateTextureEX("絵演鎧５", 600, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧３", 0, 840, 840, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧５", 0, 840, 840, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	CreateSE("SE01a","se人体_足音_鎧歩く03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵演鎧３", 300, 1000, null, false);
	Move("絵演鎧３", 300, @-10, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se人体_足音_鎧歩く03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se人体_足音_鎧歩く03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @-180, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se人体_足音_鎧歩く03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("絵演鎧５", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧５", 300, @360, @0, AxlDxl, false);
	Move("絵演鎧５", 0, @200, @0, AxlDxl, false);
	Move("絵演鎧５", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se人体_足音_鎧歩く03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧１", 300, @-420, @0, AxlDxl, false);
	Move("絵演鎧１", 0, @-200, @0, AxlDxl, false);
	Move("絵演鎧１", 300, @-220, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se人体_足音_鎧歩く03");
	MusicStart("SE01f",0,1000,0,700,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
//あきゅん「演出：移動距離がありすぎなので調整」
	//Move("絵演鎧６", 300, @520, @0, AxlDxl, true);
	Move("絵演鎧６", 0, @200, @0, AxlDxl, true);
	Move("絵演鎧６", 300, @320, @0, AxlDxl, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　それは願望に近い想いだった。
　こんな集団を幕府は他に幾つも抱えている――など
と思えば、心の重さで足が進まなくなる。

　せめてこれで打ち止めにして欲しいものだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃ひゅんひゅん
//◆避ける避ける
	CreateSE("SEL01","se戦闘_攻撃_刀連撃02");
	MusicStart("SEL01",0,800,0,1000,null,true);
	CreateMovie("絵動画", 4000, Center, Middle, true, false, "dx/mv剣戟_チャキーンチャキキーン.ngs");
	SetAlias("絵動画","絵動画");
	Request("絵動画", Play);
	Delete("絵演鎧*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　数が多い――だが緊密な連携を取れる距離にない。
　そう見切って、俺は選択した。突破。

　剣を交えず、間隙を縫って突き進む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆避け進み
	CreateSE("SE03","se人体_動作_跳躍03");
	MusicStart("SE03",0,1000,0,1300,null,false);
	CreateTextureSPadd("絵演上", 5100, -180, -160, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 5000, -180, -160, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Delete("絵動画");
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 10, 0, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　太刀筋はどれも鋭く、<RUBY text="つよ">剛</RUBY>い。
　一刀躱す毎に肌が冷える。

　だが切り抜けてしまえばこちらの物。
　斬りつけるため一度足を止めた彼らは、走り続けて
いる俺に容易くは追いつけない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆別の廊下
	CreateSE("SE04","se戦闘_動作_空突進01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵演", 300, @-600, @0, Axl2, false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
//あきゅん「演出：別の廊下などない！」
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");//ダミー注意
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 150, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0160a00">
「よし――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　前方から敵影が絶えた。
　一気に駆け抜けて、引き離す好機だ。

　ここで距離を稼げば――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateTextureEX("絵演窓上/絵演背景", 5100, 0, 0, "cg/bg/bg063_普陀楽城内廊下_03.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 6200, -35, -1250, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	CreateTextureEX("絵演窓上/絵立絵2", 6000, -35, -1150, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	CreateTextureEX("絵演窓上/絵立絵3", 5800, -35, -1160, "cg/st/resize/3d厩衆_立ち_抜刀l.png");
	Rotate("絵演窓上/絵立絵*", 0, @0, @0, @60, null,true);

	Move("絵演窓上", 0, @0, @-288, null, true);
	Move("絵演窓上/絵立絵*", 0, @-1000, @0, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Zoom("絵演窓上/絵演背景", 0, 1500, 1500, null, true);
	Zoom("絵演窓上/絵立絵", 0, 500, 500, null, true);
	Zoom("絵演窓上/絵立絵2", 0, 400, 400, null, true);
	Zoom("絵演窓上/絵立絵3", 0, 300, 300, null, true);
	SetBlur("絵演窓上/絵立絵", true, 3, 300, 100, false);


	CreateSE("SE010","se戦闘_動作_空突進01");
	CreateSE("SE020","se戦闘_動作_空突進02");

	OnSE("se戦闘_動作_空突進03",1000);

	Move("絵演窓上", 200, @0, @432, Dxl2, false);
	Fade("絵演窓上/絵演背景", 200, 1000, null, true);
	Move("絵演窓上/絵立絵", 300, @1000, @0, Dxl2, false);
	Fade("絵演窓上/絵立絵", 300, 1000, null, true);
	MusicStart("SE020",0,1000,0,1000,null,false);
	WaitKey(150);
	MusicStart("SE010",0,1000,0,1000,null,false);
	Fade("絵演窓上/絵立絵2", 0, 1000, null, false);
	Fade("絵演窓上/絵立絵3", 0, 1000, null, false);

	Move("絵演窓上/絵立絵3", 450, @2600, @0, Axl1, false);
	Move("絵演窓上/絵立絵2", 450, @2500, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 450, @1000, @0, Axl2, true);

	FadeDelete("絵演窓上*", 200, false);


//◆ひゅいーん。
//◆厩衆、飛ぶ
//◆前方へ着地
	CreateSE("SE01","se戦闘_動作_空落下02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演鎧１", 900, Center, InBottom, "cg/st/3d厩衆_立ち_戦闘.png");
	CreateTextureEX("絵演鎧２", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀.png");
	CreateTextureEX("絵演鎧４", 800, Center, InBottom, "cg/st/3d厩衆_立ち_通常b.png");
	CreateTextureEX("絵演鎧６", 700, Center, InBottom, "cg/st/3d厩衆_立ち_抜刀b.png");

	SetVertex("絵演鎧*", Center, bottom);
	Zoom("絵演鎧２", 0, 900, 900, null, true);
	Zoom("絵演鎧４", 0, 970, 970, null, true);
	Zoom("絵演鎧６", 0, 900, 900, null, true);

	Move("絵演鎧１", 0, @-420, @0, AxlDxl, false);
	Move("絵演鎧２", 0, @-150, @0, AxlDxl, false);
	Move("絵演鎧４", 0, @180, @0, AxlDxl, false);
	Move("絵演鎧６", 0, @490, @0, AxlDxl, true);

	CreateSE("SE01b","se戦闘_動作_鎧_着地01");
	MusicStart("SE01b",0,800,0,1100,null,false);

	Wait(300);
	Fade("絵演鎧４", 300, 1000, null, false);
	Move("絵演鎧４", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧４", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	CreateSE("SE01c","se戦闘_動作_鎧_着地01");
	MusicStart("SE01c",0,800,0,900,null,false);
	Fade("絵演鎧２", 300, 1000, null, false);
	Move("絵演鎧２", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧２", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	CreateSE("SE01e","se戦闘_動作_鎧_着地01");
	MusicStart("SE01e",0,800,0,1200,null,false);
	Fade("絵演鎧１", 300, 1000, null, false);
	Move("絵演鎧１", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧１", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	SetVolume("SE01", 1000, 0, null);
	CreateSE("SE01f","se戦闘_動作_鎧_着地01");
	MusicStart("SE01f",0,800,0,700,null,false);
	Fade("絵演鎧６", 300, 1000, null, false);
	Move("絵演鎧６", 300, @0, @20, AxlDxl, false);

	Wait(60);
	Shake("絵演鎧６", 200, 0, 4, 0, 0, 1000, Dxl2, false);

	Wait(300);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0170a00">
「な、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　<RUBY text="ジャンプ">跳躍</RUBY>してきた……違う。
　それで追い越されるとも思えない。

　今のは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0180a00">
（こ――この者ら）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　一瞬にして乾き切った上顎を舐める。
　音と、匂いと、煙とで知れた。合当理を使ったのだ
と――<k>つまりは、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0190a00">
（こんな狭い場所で<RUBY text="つばさ">母衣</RUBY>を扱えるのか!?）

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆突き
//◆避けて一撃
//◆どかーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_centerin2(5100,@0, @0,2000);
	SL_centerinfade2(10);

	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE01b","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg063_普陀楽城内廊下_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreateSE("SE01c","se戦闘_攻撃_鎧_吹っ飛ぶ02");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　紫電めく刺突剣を危うくも掻い潜り、太刀をすくい
上げて一撃を見舞う。
　甲鉄を斬り破る威力は欠いた。だが突進を利用され
た格好で、その敵騎は派手に廊下を転がっていく。

　幸い、彼に続いて次々と敵が現れる事はなかった。
　鈍った速度を回復させ、滑り易い通路を駆ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0200a00">
（何という奴らだ）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/023vs0210a01">
《……器用な連中ではあるわね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　唾が苦い。
　どうも、何もかも甘く見過ぎていたのではないかと
いう気がしてきていた。

　こんな者どもを向こうに回して、足利邦氏襲撃（形
だけではあるが）を行い、まんまと逃げおおせるなど
という真似が……果たして、可能であったのか？
　今となっては馬鹿の妄想としか思えない。

　身の丈に合わぬ事をした。
　そうも考える。

　国家の政治に――歴史に介入するなど。
　そんな一大事は偉人か英雄に任せておくべきだった。
何故、湊斗景明などがしゃしゃり出たのやら。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆階段
	PrintGO("上背景", 25000);
	CreateSE("SE01","se人体_動作_跳躍03");
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1200,null,false);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0220a00">
「――奮！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆一閃
//◆どどーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE02a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	SL_left2(5100,@0, @0,2000);
	SL_leftfade2(10);

	CreateSE("SE02b","se戦闘_破壊_建物02");
	MusicStart("SE02b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 6000, "#FFFFFF");
	Wait(10);
	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　出くわした階段を前に、即時の判断。
　太刀を薙ぎ払い、倒壊させた。

　そして――――下の階へ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 1000, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　あくまで邦氏を狙い上へ向かった――と、敵が誤解
してくれればここで大いに時間を稼げる。
　慎重に熱源探査を巡らせている者がいたなら、全て
無駄だが。やるだけやって損はなかった。

　少なくとも追っ手にこの場面を目撃されてはいない。
　俺は一つ息を吸い、脱出に向けてまた駆け出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//◆一人称は「わたくし」
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/023vs0230b37">
「なかなか、抜け目のない……。
　この状況でそれだけ機知が働くとは。私の
配下に欲しいほどです」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/023vs0240a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣閃。しゅいーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	CreateSE("SE02","se戦闘_攻撃_刀振る01");
	CreateSE("SE03","se戦闘_攻撃_刀振る01");
	CreateSE("SE04","se戦闘_攻撃_刀振る01");

	SL_right2(5100,@-300, @0,2000);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightfade2(10);

	MusicStart("SE02",0,800,0,1500,null,false);
	Wait(500);
	MusicStart("SE03",0,500,0,1500,null,false);
	Wait(500);
	MusicStart("SE04",0,300,0,1500,null,false);
	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"mb02_024vs.nss"