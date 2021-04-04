//<continuation number="860">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_029vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md01_029vs.nss","VernierAction",true);
	Conquest("nss/md01_029vs.nss","VernierSet",true);
	Conquest("nss/md01_029vs.nss","VernierAction2",true);
	Conquest("nss/md01_029vs.nss","VernierSet2",true);
	

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
	#bg096_八幡宮地下岩窟_01a=true;
	#ev215_髭切に翻弄される村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_030.nss";

}

scene md01_029vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_028.nss"

//◆村正ＶＳ鬚切
//◆互いに一太刀。がきーん。
//◆飛び離れる
	PrintBG("上背景", 30000);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE01b","se戦闘_衝撃_衝突01");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("絵色黒下", 10, "#000000");
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");

	CreateTextureSP("絵演剣壱", 1000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵演剣弐", 1010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Fade("絵演剣弐", 0, 500, null, true);

	CreateTextureSPover("絵効果波動", 4000, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSPadd("絵効果", 4000, Center, Middle, "cg/ef/ef044_火花c.png");

	Delete("上背景");

	Fade("絵色白", 300, 1000, Axl2, false);
	Zoom("絵効果波動", 200, 3000, 3000, null, false);
	Zoom("絵効果", 200, 1500, 1500, Dxl3, false);
	Rotate("絵効果", 200, @0, @0, @3600, null,false);

	Wait(170);

	Fade("絵効果", 300, 0, null, false);
	Fade("絵効果波動", 300, 0, null, false);

	WaitAction("絵色白", null);

	Delete("絵効果*");
	Delete("絵演剣*");

	CreateCamera("Ｃ", 0, 0, 750);
	SetAlias("Ｃ","Ｃ");

	MoveCamera("Ｃ", 0, @500, @0, @0, AxlDxl, false);

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	SetShade("Ｃ/絵演背景", MEDIUM);
	Zoom("Ｃ/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, InBottom, "cg/st/3d髭切_立ち_抜刀.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	CreateSE("SE02","se人体_動作_跳躍02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MoveCamera("Ｃ", 600, @-750, @0, @150, AxlDxl, false);

	FadeDelete("絵色白", 400, true);
	WaitAction("Ｃ", null);

	SetFwC("cg/fw/fw髭切_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0010a05">
「むっ――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	MoveCamera("Ｃ", 0, @-500, @0, @0, AxlDxl, false);

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	SetShade("Ｃ/絵演背景", MEDIUM);
	Zoom("Ｃ/絵演背景", 0, 2000, 2000, null, true);

	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	CreateSE("SE03","se人体_動作_跳躍01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MoveCamera("Ｃ", 600, @750, @0, @-250, AxlDxl, false);

	FadeDelete("絵板写", 400, true);
	WaitAction("Ｃ", null);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0020a00">
「……ぬぅ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　噛み合った初太刀と初太刀。
　それは宙空に火花を散らし、互いの腕に撃衝を走ら
せた。

　重い。
　……だが、ほぼ互角か。

　こちらが喉奥で唸るのと同時、大将領も忌々しげな
鼻息を洩らしていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateMask("Ｍ", 6000, 1024, 0, "cg/mask/ciスラッシュ_05_01.png", false);
	SetAlias("Ｍ","Ｍ");

	CreateTextureSP("Ｍ/絵演背景", 6100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	Zoom("Ｍ/絵演背景", 0, 2000, 2000, null, true);
	SetShade("Ｍ/絵演背景", MEDIUM);

	CreateTextureSP("Ｍ/絵演立絵髭", 6100, -695, -923, "cg/st/resize/3d髭切_立ち_抜刀_ll.png");
	Request("Ｍ/絵演立絵髭", Smoothing);
	Rotate("Ｍ/絵演立絵髭", 0, @0, @180, @0, null,true);

	Move("Ｍ", 300, 0, @0, Dxl2, false);

	SetFwC("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0030a05">
「見掛け倒しではないようだな……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0040a00">
「殿下にお褒め頂けるとは光栄の極み」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0050a05">
「若造が。
　何処の産か知らんが、腕相応に眼も養って
おけというのだ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0060a05">
「さすれば舞殿宮如きの飼い犬で一生を棒に
振ることもなかったろうよ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0070a00">
「生憎、眼力を養っていれば尚のこと、貴方
のもとで禄を食む道は選べなかったであろう
と存ずる」

{	FwC("cg/fw/fw護氏_大笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0080a05">
「抜かすわ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);

	Delete("Ｃ*");
	Delete("Ｍ*");

	CreateCamera("Ｃ", 0, 200, 2000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵効果背景", 0, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Rotate("Ｃ/絵効果背景", 0, @0, @0, @-25, null,true);
	Zoom("Ｃ/絵効果背景", 0, 3000, 3000, null, true);
	SetBlur("Ｃ/絵効果背景", true, 3, 500, 60, false);

	CreateTextureSP("Ｃ/絵演立絵髭", 500, Center, InBottom, "cg/st/3d髭切_立ち_戦闘2.png");
	Request("Ｃ/絵演立絵髭", Smoothing);
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 500, 500, null, true);
	Move("Ｃ/絵演立絵髭", 0, @200, @0, null, true);

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("Ｃ/絵演立絵髭", 600, @-200, @0, Axl2, false);
	MoveCamera("Ｃ", 600, @-130, @-100, @-1000, AxlDxl, false);

	DrawDelete("上背景", 150, 1000, "slide_08_00_0", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　怒声を発し、踏み込んでくる敵騎。
　その挙措、太刀取りは六波羅新陰流のそれ――但し
自己流の<RUBY text="・・">崩れ</RUBY>が随所に見られる。

　この将帥が戦に<RUBY text="ふ">古</RUBY>りている証であろう。
　<RUBY text="よわい">齢</RUBY>六十に迫る筈だが、鈍さはまるで窺えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 7000, Center, InBottom, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	Move("絵背景", 2000, @0, 0, DxlAuto, false);
	Fade("絵背景", 2000, 900, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　敵騎の鋭鋒を迎えるに、頼れるのは<RUBY text="たちわざ">刀法</RUBY>のみだった。
　半球に近い形状の地下空間は、学校がひとつ収まる
ほどの広さと高さを備えるが、それでも武者が<RUBY text="はやがけ">騎航術</RUBY>
の粋を競う場としては全く足りない。

　壁面に激突する醜態を望まないなら、地面に足裏を
つけて戦う一択である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景", 600, false);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0090a05">
「ふッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鬚切上段
//◆変化
	CreateSE("SE01a","se人体_動作_跳躍02");
	CreateSE("SE01b","se戦闘_動作_刀構え02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("Ｃ/絵演立絵髭", 300, 0, null, false);
	Move("Ｃ/絵演立絵髭", 300, @60, @0, Axl2, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0100a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆刺突
//◆村正、避け
	SL_centerin2(19010,@0, @0,1500);
	CreateColorSP("絵色黒", 19000, "#000000");
	CreateSE("SE02","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE02",0,1000,0,1500,null,false);
	SL_centerinfade2(10);

	Delete("Ｃ/");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	CreateTextureSP("絵演立絵村正", 1100, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Request("絵演立絵村正", Smoothing);
	SetVertex("絵演立絵村正", center, bottom);
	Zoom("絵演立絵村正", 0, 900, 900, null, true);

	CreateSE("SE02a","se人体_動作_跳躍01");
	MusicStart("SE02a",0,1000,0,1500,null,false);
	Zoom("絵演立絵村正", 300, 1000, 1000, Dxl3, false);
	Move("絵演立絵村正", 300, @250, @0, Dxl3, false);
	Delete("絵色黒");

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0110a05">
「チ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　<RUBY text="くせわざ">曲技</RUBY>を！
　上段から斬り下ろすと見せかけて変化、手元へ引き
込んだ太刀を一直線に突き出してきた。

　俺の反応が後僅かにでも遅れていたら、喉仏を貫か
れていただろう。
　対手はやはり、相当に場慣れしている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0120a00">
（……しかし）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「演出：なんか前のスクリプトから回想っぽく挟む」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　良く<RUBY text="たいさば">体捌</RUBY>きが間に合ったものだと、俺は刹那、他人
事のように感心した。
　従来の己であれば避けられなかったろうと思う。

　今日は動きが軽い。

　甲鉄が<RUBY text="・・・・">肌に合う</RUBY>。
　微妙な違和感さえも今はなく、本当に肉体と同一化
してしまったように感じている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateMask("Ｍ", 200, 0, 0, "cg/data/slide_07_00_0.png", false);
	CreateTextureEX("Ｍ/絵演", 4000, Center, Middle, "cg/ev/ev213_景明と村正の結縁_b.jpg");
	Zoom("Ｍ/絵演", 0, 1200, 1200, null, true);
	Request("Ｍ/絵演", Smoothing);

	Move("Ｍ/絵演", 0, @0, @-40, null, false);
	Move("Ｍ/絵演", 3000, @0, @80, DxlAuto, false);
	Fade("Ｍ/絵演", 1000, 850, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
　正当の<RUBY text="たてわき">帯刀</RUBY>を行った成果か。

　これが真の意味で武者になるという事か！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("Ｍ/絵演", 1000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0130a01">
《想像通り、敵の劒冑は大した物よ。
　けれど、想像以上ってことはない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0140a01">
《<RUBY text="わたしたち">村正</RUBY>なら勝てる！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0150a00">
「<RUBY text="うむ">肯</RUBY>！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("Ｍ");

//◆ざっ。
//◆村正と鬚切
//◆互いに一閃
	CreatePlainSP("絵板写", 10000);
	CreateColorSP("絵色黒", 5000, "#000000");

	Delete("絵演立絵*");
	Delete("Ｃ");

	CreateTextureSP("絵背景", 100, InLeft, -480, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	CreateTextureEX("絵演立絵", 1010, Center, InBottom, "cg/st/3d髭切_立ち_戦闘.png");
	Move("絵演立絵", 0, @-310, @0, null, true);

	CreateSE("SE01","se人体_動作_後ずさり01");

	DrawDelete("絵板写", 150, 100, "slide_01_03_1", true);
	MusicStart("SE01",0,1000,0,750,null,false);
	Fade("絵演立絵", 200, 1000, null, false);
	Move("絵演立絵", 250, @60, @0, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	WaitAction("@絵演立絵", null);

	SetFwC("cg/fw/fw護氏_大笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120a]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0160a05">
「端武者がッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	CreateMask("絵覆", 6000, 0, 0, "cg/mask/ciスラッシュ_02_00.png", false);
	SetAlias("絵覆","絵覆");
	CreateTextureSP("絵覆/絵演背景", 6000, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	CreateTextureSP("絵覆/絵演立絵", 6100, 150, -80, "cg/st/3d村正標準_立ち_戦闘.png");
	Request("絵覆/絵演立絵", Smoothing);
	Zoom("絵覆/絵演立絵", 0, 1500, 1500, null, true);
	SetShade("絵覆/絵演背景", MEDIUM);

	DrawDelete("絵板写", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120b]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0170a00">
「推参!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆打ち合う。がきーん
	PrintGO("上背景", 30000);

	CreateSE("SE01","se戦闘_攻撃_鎧_剣戟04");
	CreateSE("SE01b","se戦闘_衝撃_衝突01");

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Wait(400);
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒下", 10, "#000000");
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");

	CreateTextureSP("絵演剣壱", 1000, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	CreateTextureEX("絵演剣弐", 1010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Fade("絵演剣弐", 0, 500, null, true);

	CreateTextureSPover("絵効果波動", 4000, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureSPadd("絵効果", 4000, Center, Middle, "cg/ef/ef044_火花c.png");

	Delete("上背景");

	Fade("絵色白", 300, 1000, Axl2, false);
	Zoom("絵効果波動", 200, 3000, 3000, null, false);
	Zoom("絵効果", 200, 1500, 1500, Dxl3, false);
	Rotate("絵効果", 200, @0, @0, @3600, null,false);

	Wait(170);

	Fade("絵効果", 300, 0, null, false);
	Fade("絵効果波動", 300, 0, null, false);

	WaitAction("絵色白", null);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	FadeDelete("絵色白", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　剣の軌道が交差し、刃金と刃金は弾き合う。
　
　が――これは俺の想定の内！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	Delete("絵効果*");
	Delete("絵演剣*");
	FadeDelete("絵板写", 600, false);

	SetFwC("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0180a05">
「む!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateTextureSP("絵演", 4000, 0, InBottom, "cg/ev/resize/ev905_村正電磁撃刀_al.jpg");
	Move("絵演", 300, @0, -100, null, false);
	Fade("絵演", 300, 1000, null, false);

	Wait(100);

	Move("絵演", 10000, @0, -100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　弾かれた太刀をそのまま、頭上でぐるりと取り回し。
　……対称の形で再び襲う！

　吉野御流合戦礼法、<RUBY text="こだま">木霊</RUBY>打ち。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆で一閃
//◆がちーん
//◆食らった鬚切
	CreateSE("SE05a","se戦闘_攻撃_鎧_剣戟01");
	MusicStart("SE05a",0,1000,0,700,null,false);
	CreateTextureSPadd("絵演上", 13100, -130, -170, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	CreateTextureSP("絵演", 13000, -130, -170, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	Wait(200);

	CreateSE("SE05b","se戦闘_破壊_爆発04");
	CreateSE("SE05c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE05b",0,1000,0,1000,null,false);
	MusicStart("SE05c",0,1000,0,800,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");

	Delete("絵演*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

//あきゅん「要望：3d髭切_立ち_陰義b：ポーズ同じで陰義闘気なし」
	CreateTextureSP("絵演立絵髭", 1010, Center, InBottom, "cg/st/3d髭切_立ち_陰義.png");
	Request("絵演立絵髭", Smoothing);
	SetVertex("絵演立絵髭", center, bottom);
	Zoom("絵演立絵髭", 0, 1000, 1000, null, true);

	Move("絵演立絵髭", 0, @-100, @0, null, true);

	Zoom("絵演立絵髭", 700, 900, 900, Dxl3, false);
	Shake("絵演立絵髭", 1000, 4, 0, 0, 0, 1000, Dxl3, false);
	Move("絵演立絵髭", 700, @-150, @0, Dxl3, false);


	FadeDelete("絵色白", 400, true);

	SetFwC("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0190a05">
「きッ……貴様ァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　肩口に刀痕を深々と刻まれ、六波羅元帥が短く憤怒
を叫ぶ。

　首筋を狙って打ち込んだのだが……
　咄嗟に身を捻って最も甲鉄が厚い箇所で受けるとは、
流石。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0200a01">
《でもあの肩、もう一太刀加えれば破れる》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0210a00">
「……させてはくれまいがな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演立絵村正", 750, Center, InBottom, "cg/st/3d村正標準_立ち_戦闘.png");
	SetVertex("Ｃ/絵演立絵村正", center, bottom);
	Zoom("Ｃ/絵演立絵村正", 0, 500, 500, null, true);
	Move("Ｃ/絵演立絵村正", 0, @300, @0, null, true);

	CreateTextureSP("Ｃ/絵背景", 500, Center, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 2000, @200, @100, 650, AxlDxl, false);

	FadeDelete("絵板写", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　太刀を取り直して呟く。
　自分自身の油断を戒めるためでもあった。

　敵騎は怒りに双眸を<RUBY text="たぎ">滾</RUBY>らせながら、しかしやや遠間
になった距離を保っている。
　戦闘方針を猛進から慎重へと大きく切り替えた様子
だ。

　勢い任せの<RUBY text="チャージ">猪突</RUBY>は最早するまい。
　こちらも対応して意識を改めておかないと、思わぬ
不覚を取る羽目になりそうである。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆対峙
	CreatePlainSP("絵板写", 5000);

	CreateCamera("Ｃ", 0, 0, 850);
	SetAlias("Ｃ","Ｃ");

	//MoveCamera("Ｃ", 4000, @-50, @10, @300, AxlDxl, false);

	CreateTextureSP("Ｃ/絵演背景", 150, Center, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	Move("Ｃ/絵演背景", 0, @200, @-100, null, true);


	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, InBottom, "cg/st/3d髭切_立ち_戦闘3.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 750, 750, null, true);

	Request("Ｃ/*", Smoothing);

	Delete("絵演*");
	FadeDelete("絵板写", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　どう出るか。

　見るに、対手は俺の出方を待つ構えだ――が、気質
を思えばただ待ち続けということはなかろう。
　待つ一方で、攻め手を探っているに違いない。

　そして俺は俺で、手堅く地道な戦術に徹してばかり
はいられない事情があった。
　戦闘の長期化は危険なのだ。

　いつまでも大将領が戻らなければ、地上で待機する
幕府の士卒は異常事態の発生を悟る。
　武者を一隊、送り込んでくるだろう。

　そうなっては俺の命運も窮まる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0220a00">
「……っ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　胸の震えを、呼気にして押し出した。
　焦ってはならない……。

　相手は練達の武者だ。
　一度の不覚が文字通り命取りになる。

　まずは、誘いの術を掛けてみるか。
　それで釣れれば良し、釣れなくとも――

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆合当理がおーん。
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorEXadd("Ｃ/絵色合", 249, "#FFFFFF");

	Fade("Ｃ/絵色合", 0, 400, null, true);
	DrawTransition("Ｃ/絵色合", 100, 0, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	VernierAction();
	Shake("Ｃ/絵演立絵髭", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1500,null,true);
	MusicStart("SEL01b",2000,750,0,1800,null,true);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0230a01">
《え!?》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　心臓が一回、鼓動を飛ばした。
　前触れもなしの轟音。

　合当理だ。
　敵騎が――合当理に火を入れている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0240a00">
（真逆）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……<RUBY text="とぶ">騎航する</RUBY>つもりか!?
　この限られた空間で！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw護氏_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0250a05">
「思い出してきたわ……」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0260a00">
「……？」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0270a05">
「<RUBY text="いくさば">戦場</RUBY>の風。
　噎せ返るような屍臭」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0280a05">
「反吐を催す――――あの匂い」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆飛翔
	SetVolume("SE*", 150, 0, null);
	CreateSE("SE00","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	MusicStart("SE01",0,1000,0,500,null,false);
	SetFrequency("SE01", 3000, 1500, Axl2);

	CreateColorSPadd("絵色白", 10000, "#FFFFFF");
	Wait(12);

	Delete("Ｃ/絵演立絵髭*");
	Delete("Ｃ/絵色*");
	Delete("プロセス*");

	MoveCamera("Ｃ", 400, @0, @-200, 600, AxlDxl, false);

	Fade("絵色白", 400, 0, null, false);
	DrawTransition("絵色白", 200, 1000, 0, 100, null, "cg/data/slide_06_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　――――飛び立った、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0290a00">
（無茶を）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　焦りに負けたのか。
　これは、どう計っても自殺行為……

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆一閃
//◆がきーん
	CreateColorSP("絵色黒", 19000, "#000000");

	Wait(10);

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_rightdown2(19000,@30, @0,1500);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateSE("SE02a","se戦闘_衝撃_衝突01");
	CreateSE("SE02b","se戦闘_攻撃_剣戟弾く02");

	CreateColorSP("絵色白", 19100, "#FFFFFF");

	Delete("絵色黒");
	Delete("Ｃ");

	CreateCamera("Ｃ", -700, 0, 1150);
	SetAlias("Ｃ","Ｃ");

	MoveCamera("Ｃ", 300, @0, @0, 1200, AxlDxl, false);

	CreateTextureSP("Ｃ/絵背景", 0, Center, -450, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");
	Move("Ｃ/絵背景", 0, @-200, @0, null, true);

	CreateSE("SE03","se戦闘_動作_空突進02");
	CreateTextureSP("Ｃ/絵演立絵髭", 510, Center, InBottom, "cg/st/3d髭切_騎航_戦闘.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 500, 500, null, true);
	SetBlur("Ｃ/絵演立絵髭", true, 2, 500, 60, true);
	Move("Ｃ/絵演立絵髭", 0, @-450, @60, null, false);

	CreateTextureSP("Ｃ/絵演立絵", 500, Center, InBottom, "cg/st/3d村正標準_立ち_抜刀.png");
	Move("Ｃ/絵演立絵", 0, @-650, @-130, null, true);
	SetVertex("Ｃ/絵演立絵", center, bottom);
	Zoom("Ｃ/絵演立絵", 0, 500, 500, null, true);

	Request("Ｃ/*", Smoothing);

	CreateTextureSPadd("Ｃ/絵効果", 505, Center, Middle, "cg/ef/ef044_火花c.png");
	Move("Ｃ/絵効果", 0, @-660, @0, null, true);
	Zoom("Ｃ/絵効果", 0, 300, 300, null, true);

	Shake("Ｃ/絵演立絵", 1000, 2, 0, 0, 0, 1000, null, false);

	$髭切移動距離=ImageHorizon("Ｃ/絵演立絵髭")+512;
	Move("Ｃ/絵演立絵髭", 80000, @$髭切移動距離, @0, null, false);
	MoveCamera("Ｃ", 160000, 150, -120, 550, Dxl2, false);
	Move("Ｃ/絵背景", 160000, -100, @0, null, false);

	Rotate("Ｃ/絵効果", 300, @0, @0, @3600, Dxl3,false);
	Zoom("Ｃ/絵効果", 300, 600, 600, Dxl3, false);
	Fade("Ｃ/絵効果", 300, 0, null, false);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);

	FadeDelete("絵色白", 150, true);

	Wait(1000);

	MusicStart("SE03",0,1000,0,1300,null,false);
	Move("Ｃ/絵背景", 200, -340, @0, Dxl2, false);
	Move("Ｃ/絵演立絵髭", 200, @$髭切移動距離, @20, null, false);
	Move("Ｃ/絵効果", 200, @460, @0, Dxl2, false);
	Move("Ｃ/絵演立絵", 200, @460, @0, Dxl2, false);
	MoveCamera("Ｃ", 200, 100, -120, 550, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
　敵騎の姿が消えるのと、ほとんど同瞬に襲ってきた
一刀を危うく打ち返す。
　正確に首根を狙っていたその太刀筋に、皮膚が総毛
立った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("板写", 10000);

	Delete("絵*");
	Delete("Ｃ");
	Delete("Ｃ*");

	CreateColorSPadd("絵色バーニア１", 2010, "#FFFFFF");
	CreateColorSPadd("絵色バーニア２", 2000, "#3366CC");

	CreateColorSP("絵色黒", 100, "#000000");

	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘2.png");
	Zoom("絵演立絵髭", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	SetBlur("絵演背景", true, 3, 500, 60, false);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線上", 2010, Center, InTop, 512, 288, "Rain");
	SetAlias("絵効果線上","絵効果線上");
	SetVertex("絵効果線上", center, top);
	Rotate("絵効果線上", 0, @80, @0, @0, null,true);
	Zoom("絵効果線上", 0, 4000, 4000, null, true);
	DrawTransition("絵効果線上", 0, 0, 400, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateEffect("絵効果線下", 2000, Center, InBottom, 512, 288, "Rain");
	SetAlias("絵効果線下","絵効果線下");
	SetVertex("絵効果線下", center, bottom);
	Rotate("絵効果線下", 0, @-80, @0, @0, null,true);
	Zoom("絵効果線下", 0, 4000, 4000, null, true);
	DrawTransition("絵効果線下", 0, 0, 400, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("絵演立絵髭", 2160000, 1, 2, 0, 0, 1000, null, false);

	SetVolume("@mbgm*", 2000, 0, null);

	CreateSE("SE04","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵演背景", 400, @0, 576, AxlDxl, false);
	Zoom("絵演立絵髭", 400, 0, 0, Dxl1, false);
	DrawDelete("絵色バーニア１", 200, 1000, "circle_01_00_0", false);
	DrawDelete("絵色バーニア２", 250, 1000, "circle_03_00_0", false);

	Fade("絵効果線*", 1600, 0, null, false);

	FadeDelete("板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310b]
　しかし、この先は――
　敵騎は壁に突入して、己の墓穴を掘るしかない筈、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitFade("絵効果線*", null);

//◆ＢＧＭ
//◆鬚切、体転
//◆壁を蹴って再び襲来
//◆※騎航（側面図）を半回転スクロールし、騎突（正
//◆面図）へ繋ぐ？　他に良案あればそちらで。
	CreateWindow("絵窓", 19000, 0, 72, 1024, 432, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#993300");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef001_汎用移動.jpg");

	CreateSE("SE06","se戦闘_動作_空突進02");

	CreateTextureSP("絵窓/絵演立絵髭", 19100, OutLeft, Middle, "cg/st/3d髭切_騎航_戦闘.png");
	Request("絵窓/絵演立絵髭", Smoothing);
	Zoom("絵窓/絵演立絵髭", 0, 750, 750, null, true);
	SetBlur("絵窓/絵演立絵髭", true, 3, 500, 50, true);
	Move("絵窓/絵演立絵髭", 0, @0, @100, null, true);

//あきゅん「演出：髭切本番素材来たら胸で回転させるために中心をずらす」
	SetVertex("絵窓/絵演立絵髭", 600, 650);

	Move("絵窓/絵演立絵髭", 400, 2000, -400, null, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, false);

	MusicStart("SE06",0,1000,0,1500,null,false);
	Rotate("絵窓/絵演立絵髭", 300, @0, @0, @120, Dxl2,false);

	WaitZoom("絵窓", null);

	Wait(500);

	CreateSE("SE06a","se戦闘_破壊_建物02");
	MusicStart("SE06a",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 10000);
	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘.png");
	Request("絵演立絵髭", Smoothing);
	Rotate("絵演立絵髭", 0, @0, @0, @180, null,true);
	Zoom("絵演立絵髭", 0, 0, 0, null, true);

	Delete("絵窓");

	Fade("絵効果線*", 0, 1000, null, false);
	Zoom("絵演立絵髭", 6000, 100, 100, DxlAuto, false);

	CreateSE("SE07","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE07",0,500,0,1000,null,false);

	FadeDelete("絵板写", 2000, false);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0300a00">
「何だとォ!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	Zoom("絵演立絵髭", 30000, 150, 150, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　有り得ぬ光景が顕現した。

　猛スピードで壁に突き進んだ敵騎が、刹那、騎体を
反転させ。
　<RUBY text="グランド・エフェクト">対面効果</RUBY>も利用し、勢力を絶妙に殺す……

　そして両脚で壁を蹴り。
　再び、俺目掛けて襲い来る!!

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0310a01">
《冗談でしょぉっ!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_leftup2(10010,@0, @0,1500);

	CreateColorEXadd("絵色バーニア１", 910, "#FFFFFF");
	CreateColorEXadd("絵色バーニア２", 900, "#3366CC");

//◆一閃
	CreateSE("SE01a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Fade("絵色バーニア*", 0, 1000, null, false);
	DrawTransition("絵色バーニア１", 0, 0, 30, 200, null, "cg/data/circle_01_00_0.png", true);
	DrawTransition("絵色バーニア２", 0, 0, 60, 100, null, "cg/data/circle_03_00_0.png", true);

	Wait(16);

	Fade("絵色バーニア*", 300, 0, null, false);
	DrawTransition("絵色バーニア１", 300, 30, 0, 400, null, "cg/data/circle_01_00_0.png", false);
	DrawTransition("絵色バーニア２", 300, 60, 0, 400, null, "cg/data/circle_03_00_0.png", false);

	Zoom("絵演立絵髭", 300, 2000, 2000, Axl2, false);

	Wait(270);

	Fade("絵色黒", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftupfade2(10);

	Wait(12);

//◆軽く食らった
	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　完全に意表を突かれては、躱しきるのも無理だった。
　胸甲に刃先を浴びる。

　寸前で上体を反らし、<RUBY text="あさで">浅傷</RUBY>に留めるのが精々の限度。
　反撃などしている暇はなかった。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆敵騎また
//◆軽くずがーん
	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　……夢だと思いたいところだが、夢ではない。
　異常も異常、無道法外の騎体運動を、敵は実現して
いる！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：髭切サーカス
	CreateTextureEX("絵演ＥＶ", 5100, -545, -524, "cg/ev/resize/ev215_髭切に翻弄される村正l3.jpg");
	Zoom("絵演ＥＶ", 0, 1300, 1300, null, true);
	CreateSE("SE01","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ２", 5200, Center, -832, "cg/ev/resize/ev215_髭切に翻弄される村正l2.jpg");
	Zoom("絵演ＥＶ２", 0, 1300, 1300, null, true);
	CreateSE("SE01a","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ３", 5300, -678, -202, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	Zoom("絵演ＥＶ３", 0, 1300, 1300, null, true);
	CreateSE("SE01b","se戦闘_動作_鎧_合当理吹かし01");

	SetBlur("絵演ＥＶ*", true, 4, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演ＥＶ", 300, -1022, @0, null, false);
	Zoom("絵演ＥＶ", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("絵演ＥＶ２", 300, @0, -450, null, false);
	Zoom("絵演ＥＶ２", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ２", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Zoom("絵演ＥＶ３", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ３", 300, 1000, null, true);

	Delete("絵演ＥＶ１");
	Delete("絵演ＥＶ２");

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0320a00">
「<RUBY text="クルビット">縦回転</RUBY>ができるような騎体かっ!?」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0330a05">
「貴様が<RUBY text="はな">洟</RUBY>を垂らしていた頃の、大陸の戦で
……石窟寺院に立て篭もって敵の軍勢を迎え
撃ったことがあった」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0340a05">
「これはその折に編み出した<RUBY text="わざ">技術</RUBY>よ。
　若造がッ、どう背伸びしても届くまい！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆突進。一閃
//◆防ぐ
	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSPadd("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中02");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	CreateSE("SE03c","se戦闘_動作_空突進01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	MusicStart("SE03c",0,1000,0,1000,null,false);
	FadeDelete("絵白転", 150, false);
	DrawTransition("絵白転", 150, 1000, 0, 100, Dxl2, "cg/data/slide_07_00_1.png", true);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0350a00">
「あ、あの大将軍……
　実は<RUBY text="リヒトホーフェン・サーカス">〝赤い悪魔〟戦団</RUBY>の出身ではなかろう
な」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0360a01">
《余裕っぽいこと言ってる場合かな》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	CreateTextureEX("絵演ＥＶ", 5100, -545, -524, "cg/ev/resize/ev215_髭切に翻弄される村正l3.jpg");
	Zoom("絵演ＥＶ", 0, 1300, 1300, null, true);
	CreateSE("SE01","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ２", 5200, Center, -832, "cg/ev/resize/ev215_髭切に翻弄される村正l2.jpg");
	Zoom("絵演ＥＶ２", 0, 1300, 1300, null, true);
	CreateSE("SE01a","se戦闘_動作_空突進02");

	CreateTextureEX("絵演ＥＶ３", 5300, -678, -202, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	Zoom("絵演ＥＶ３", 0, 1300, 1300, null, true);
	CreateSE("SE01b","se戦闘_動作_鎧_合当理吹かし01");

	SetBlur("絵演ＥＶ*", true, 4, 500, 30, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵演ＥＶ", 300, -1022, @0, null, false);
	Zoom("絵演ＥＶ", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01a",0,1000,0,1200,null,false);
	Move("絵演ＥＶ２", 300, @0, -450, null, false);
	Zoom("絵演ＥＶ２", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ２", 300, 1000, null, false);

	Wait(270);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Zoom("絵演ＥＶ３", 300, 1000, 1000, Dxl1, false);
	Fade("絵演ＥＶ３", 300, 1000, null, true);

	Delete("絵演ＥＶ１");
	Delete("絵演ＥＶ２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　全く違う。

　片や騎航、片や徒行では、速力に差がつき過ぎる。
　後者唯一の利点であり、本来ならこの空間において
大きく意味をなす筈の<RUBY text="アジリティ">小回り</RUBY>は、敵手の常軌を逸した
曲芸技でほぼ無効化されてしまった。

　このままでは何もできずに斬り刻まれる。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆曲芸技
//◆反転襲来。防ぐ
	CreatePlainSP("絵板写", 10000);

	Delete("絵演*");
	Delete("絵ＥＶ*");

	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘.png");
	Request("絵演立絵髭", Smoothing);
	Rotate("絵演立絵髭", 0, @0, @0, @180, null,true);
	Zoom("絵演立絵髭", 0, 200, 200, null, true);

	Fade("絵効果線*", 0, 1000, null, false);
	Zoom("絵演立絵髭", 10000, 800, 800, DxlAuto, false);

	CreateSE("SE07","se戦闘_動作_空上昇01");
	MusicStart("SE07",0,500,0,1000,null,false);

	FadeDelete("絵板写", 200, false);

	CreateColorEX("絵色黒二", 10000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_leftup2(10010,@0, @0,1500);

	CreateColorEXadd("絵色バーニア１", 910, "#FFFFFF");
	CreateColorEXadd("絵色バーニア２", 900, "#3366CC");

	Wait(300);

//◆一閃
	CreateSE("SE01a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Fade("絵色バーニア*", 0, 1000, null, false);
	DrawTransition("絵色バーニア１", 0, 0, 30, 200, null, "cg/data/circle_01_00_0.png", true);
	DrawTransition("絵色バーニア２", 0, 0, 60, 100, null, "cg/data/circle_03_00_0.png", true);

	Wait(16);

	Fade("絵色バーニア*", 300, 0, null, false);
	DrawTransition("絵色バーニア１", 300, 30, 0, 400, null, "cg/data/circle_01_00_0.png", false);
	DrawTransition("絵色バーニア２", 300, 60, 0, 400, null, "cg/data/circle_03_00_0.png", false);

	Zoom("絵演立絵髭", 300, 2000, 2000, Axl2, false);

	Wait(270);

	Fade("絵色黒二", 100, 1000, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_leftupfade2(10);

	Wait(12);

	PrintGO("上背景", 10000);

	Wait(12);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateSE("SE03","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE03b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg096_八幡宮地下岩窟_01a.jpg");
	FadeBG(0,true);
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　これで三度。
　……どうにか決定打は避けているが、運にせよ技量
にせよいつまでも続くまい。

　敵騎の運動が速過ぎ、奇想天外過ぎて、対応の手が
完全に遅れてしまう。
　反撃、迎撃が実行できないのだ。

　一方的に攻め立てられるばかりでは、つまり敗北が
時間の問題である。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0370a00">
（どう……する？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　無理矢理にでも手を出すか？
　しかし、それが致命的な隙を生めばそこまでとなる
勝負。

　ならこちらも騎航して――それこそ最悪の下策だ。
　俺にあんな芸当はできない。今日が初騎航の騎士の
ように<RUBY text="バタフライ・ネイル">蝶々泳ぎ</RUBY>をするのが関の山。

　宙に浮く分、今より状況が悪化する。
　敵騎は墜落を避けるため、攻撃の際は必ず水平騎航
で来るが、俺が地面から離れればその制約も必要なく
なるからだ。

　どちらの選択も分が悪過ぎる。
　だが――しかし……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0380a01">
《……御堂！》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0390a00">
「村正？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
//あきゅん「演出：意図がわからんので退避」
//◆フェードアウト
//◆フェードイン
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 600, 1000, null, true);

	WaitKey(1000);

*/

//◆鬚切強襲
//◆村正、軽く食らう
	CreateColorSP("絵白転", 11000, "#FFFFFF");
	CreateSE("SE04","se戦闘_攻撃_鎧攻撃命中");
	CreateSE("SE04b","se戦闘_攻撃_鎧_吹っ飛ぶ01");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04b",0,1000,0,1000,null,false);

	Delete("絵色黒");

	WaitKey(10);

	CreatePlainSP("絵板写", 4999);

	FadeDelete("絵白転", 300, false);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);

	Delete("絵板写");

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0400a05">
「往生際の良からぬ奴。
　潔く首を差し出せば、綺麗に刎ねてやろう
ものを！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0410a00">
「……」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0420a05">
「寸刻みの方が好みなら、そうしてくれるわ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆曲芸
//あきゅん「要望：3d髭切_騎航2_戦闘：背面飛びアングルとか、村正したから見ている風※ファイル名は適当」
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureSPadd("絵演上", 3100, -600, -300, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	CreateTextureSP("絵演", 3000, -600, -300, "cg/ev/resize/ev215_髭切に翻弄される村正l.jpg");
	Zoom("絵演上", 0, 1000, 1000, null, false);
	Zoom("絵演", 0, 750, 750, Dxl2, true);

	Zoom("絵演上", 200, 750, 750, Dxl2, false);
	Request("絵演*", Smoothing);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, false);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0430a05">
「――――」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0440a05">
（何？）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆景明
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 15000, "#000000");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	StC(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStC(0,true);

	CreateSE("SE010","se人体_動作_跳躍03");
	MusicStart("SE010",0,1000,0,1200,null,false);

	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	Wait(500);

	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");

	StC(1000, @0, @0,"cg/st/st景明_戦闘_私服.png");
	FadeStC(0,true);

	Wait(200);

	FadeDelete("絵色白", 1000, true);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0450a05">
（生身――
　劒冑を捨てた？）

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0460a05">
（馬鹿な。
　何を企む）

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0470a05">
（どうする）

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0480a05">
（一度<RUBY text="あし">騎航</RUBY>を止めるか）

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0490a05">
（――いや）

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0500a05">
（それが狙いか！）

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0510a05">
（奇策でこちらを地上に戻し、勝負を仕切り
直そうと）

{	FwR("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0520a05">
（乗るかッ!!）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆鬚切突進
	PrintGO("上背景", 25000);

	CreateTextureSP("絵演背景", 100, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreateColorSP("絵色土偽装", 90, "#660000");

	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘.png");
	Zoom("絵演立絵髭", 0, 600, 600, null, true);

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演立絵髭", 350, 1000, 1000, Dxl2, false);
	DrawDelete("上背景", 150, 100, "circle_01_00_1", true);

	SetFwR("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470a]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0530a05">
「そんな浅知恵に――」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 19000, 0, 168, 1024, 240, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 19010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 19020, Center, Middle, "cg/ef/ef034_精神汚染.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 19100, -382, -300, "cg/st/resize/st景明_戦闘_私服l.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 1500, 1500, null, true);
	Move("絵窓/絵演立絵装甲", 0, @120, @0, null, true);
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 60, true);

	Move("絵窓/絵演立絵装甲", 300, @-120, @0, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470b]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0540a00">
「乗ったな。大将領」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0550a05">
「!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//―――――――――――――――――――――――――――――

//◆蜘蛛の網
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 10000, "#FFFFFF");
	CreateTextureSPadd("絵演糸上", 6020, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	CreateTextureSP("絵演糸", 6010, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");
	CreateTextureSPadd("絵演糸下", 6000, Center, Middle, "cg/ef/ef035_蜘蛛網捕獲.jpg");

	SetVertex("絵演糸*", 800, 175);
	Request("絵演糸*", Smoothing);

	Delete("絵窓");
	Wait(12);
	Delete("絵色白");

	Zoom("絵演糸*", 200, 1500, 1500, Dxl2, false);
	Shake("絵演糸上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演糸上", 200, true);
	FadeDelete("絵演糸", 1000, false);

	SetFwR("cg/fw/fw護氏_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0560a05">
「な――――ッ」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0570a01">
《<RUBY text="・・・・">蜘蛛の巣</RUBY>へようこそ。
　……一瞬の躊躇さえ無ければ、貴方の勝ち
だったのにね！》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

//◆鬚切、網に引っ掛かって座礁
	CreatePlainEX("絵板写", 5000);
	SetBlur("絵板写", true, 3, 500, 200, false);

	CreateSE("SE02","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵板写", 200, 1250, 1250, null, false);
	FadeFR2("絵板写",0,1000,400,0,0,60,Dxl2, true);

	CreatePlainSP("絵板写弐", 10000);
	Delete("絵板写");
	Delete("絵色*");
	Delete("絵演*");

	CreateTextureEX("絵演震用", 110, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	Fade("絵演震用", 0, 500, null, true);
	Shake("絵演震用", 400, 0, 40, 0, 0, 1000, null, false);
	Delete("絵板写弐");

	CreateSE("SE03a","se戦闘_衝撃_鎧転倒02");
	CreateSE("SE03b","se戦闘_破壊_建物01");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	MusicStart("SE03b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　<RUBY text="くも">村正</RUBY>の糸に、甲鉄を切り裂くまでの強度はない。
　しかし絡め取った敵騎の母衣に損傷を与え、地表へ
引き<RUBY text="ず">摺</RUBY>り落とすには充分であった。

　最高速力で疾駆していたわけではない。被害程度も
再起不能には遠いだろうが、性能を大きく失った状態
にあることは確実。
　村正発案の一策は成功した。

　この機を捉える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演震用");

	CreateSE("SE01","se人体_動作_後ずさり01");
	StR(1000, @120, @0,"cg/st/st景明_戦闘_私服.png");

	MusicStart("SE01",0,1000,0,1250,null,false);
	Move("@StR*", 300, @-120, @0, Dxl1, false);
	FadeStR(300,true);

	Wait(200);

//◆装甲・村正
	CreateSE("SE01","se特殊_鎧_装着06");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("絵色白", 10000, "#FFFFFF");

	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);

	Wait(200);

	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　再び装甲。
　驚くべき<RUBY text="タフネス">強靭さ</RUBY>で早くも立ち上がろうとしている敵
に向かい、跳躍する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("@StR*", 200, @-200, @0, Axl2, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,850,null,false);

	CreateColorSP("絵黒幕", 19000, "#000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 40, 0, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 250, -615, @0, Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0580a00">
「御免！」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0590a05">
「ぬぅ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――

//◆斬り下ろし
//◆ざく。地面に
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	FadeStA(0,true);
	Delete("絵演*");

	CreateSE("SE01","se戦闘_攻撃_刀刺さる01");
	MusicStart("SE01",0,1000,0,700,null,false);

	CreatePlainEX("絵板写", 2000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　手応え――は、土！
　地面に身を投げ出して、対手は太刀先を躱していた。

　百万軍の大将にあるまじき姿と嗤うより、ただただ
その執念に戦慄する。
　一撃は必殺だった――しかし足利護氏の生存と勝利
への渇望が殺意を上回った。そうとしか思われない。

　何たる男か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆追撃
	CreateSE("SE01","se戦闘_動作_鎧_踏み込み01");
	StR(1000, @180, @0,"cg/st/3d村正標準_立ち_戦闘.png");

	MusicStart("SE01",0,1000,0,1200,null,false);
	Move("@StR*", 300, @-120, @0, Dxl2, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　怯えに近いものさえ感じつつ、足は止めない。
　転がって逃げる敵騎を追い、その立ち上がる出端に
一刀を加える。

　再び、縦――<k>と見せて横へ<RUBY text="な">薙</RUBY>ぐ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0600a05">
「くッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆横薙ぎ
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef014_汎用横軌道.jpg");
	Zoom("絵演上", 0, 10000, 10000, null, false);
	Fade("絵演上", 0, 450, null, true);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 30, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	FadeStA(0,true);

//◆ずがーん
	CreateSE("SE05b","se戦闘_破壊_爆発04");
	CreateSE("SE05c","se戦闘_攻撃_鎧攻撃命中03");
	MusicStart("SE05b",0,1000,0,1000,null,false);
	MusicStart("SE05c",0,1000,0,800,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");

	Delete("絵演*");

//あきゅん「要望：3d髭切_立ち_陰義b：ポーズ同じで陰義闘気なし」
	CreateTextureSP("絵演立絵髭", 1010, Center, InBottom, "cg/st/3d髭切_立ち_陰義.png");
	Request("絵演立絵髭", Smoothing);
	SetVertex("絵演立絵髭", center, bottom);
	Zoom("絵演立絵髭", 0, 1100, 1100, null, true);

	Move("絵演立絵髭", 0, @-100, @0, null, true);

	Zoom("絵演立絵髭", 700, 1000, 1000, Dxl3, false);
	Shake("絵演立絵髭", 1000, 4, 0, 0, 0, 1000, Dxl3, false);
	Move("絵演立絵髭", 700, @-150, @0, Dxl3, false);

	FadeDelete("絵色白", 400, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　胸甲を割り裂く刃先。
　細かい金属粒が無数、<RUBY text="ほの">仄</RUBY>かに<RUBY text="きらめ">煌</RUBY>いて虚空を彩る。

　だが……浅い！

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ざー。飛びすさった鬚切
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 10010, "#FFFFFF");
	CreateColorEXadd("絵色青", 10010, "#3333FF");
	Fade("絵色青", 0, 800, null, true);

	Wait(200);
	Delete("絵演立絵髭*");

	FadeDelete("絵色*", 400, false);
	DrawTransition("絵色青", 200, 1000, 0, 100, Dxl1, "cg/data/slide_08_00_1.png", false);
	DrawTransition("絵色白", 200, 1000, 0, 100, Dxl2, "cg/data/slide_08_00_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　敵騎は咄嗟に飛び下がっていた。
　避け切れぬと悟った瞬間、利き足で地面を蹴って。

　……どこまでも！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆対峙
	CreatePlainSP("絵板写", 10000);

	Delete("絵背景*");

	CreateCamera("Ｃ", 512, 144, 1000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景", 0, Center, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	CreateTextureSP("Ｃ/絵演立絵髭", 250, Center, Middle, "cg/st/3d髭切_立ち_戦闘.png");
	SetVertex("Ｃ/絵演立絵髭", center, bottom);
	Zoom("Ｃ/絵演立絵髭", 0, 600, 600, null, true);
	Move("Ｃ/絵演立絵髭", 0, @-700, @20, null, true);

	Request("Ｃ/*", Smoothing);

	MoveCamera("Ｃ", 4000, -512, @0, @0, Dxl1, false);

	FadeDelete("絵板写", 500, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　距離が空く。
{	CreateSE("SE01","se戦闘_動作_刀構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　敵騎が太刀を構え直す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0610a00">
（取り逃がしたか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　仕留めの機は失われた。
　深入りは既に危険――<RUBY text="カウンター">逆撃</RUBY>で報いられる。

　決着をつけてしまいたかったが、仕方ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("Ｃ", null);

	CreateTextureSP("Ｃ/絵演立絵村正", 250, Center, Middle, "cg/st/3d村正標準_立ち_戦闘.png");
	SetVertex("Ｃ/絵演立絵村正", center, bottom);
	Zoom("Ｃ/絵演立絵村正", 0, 700, 700, null, true);
	Move("Ｃ/絵演立絵村正", 0, @760, @-30, null, true);

	MoveCamera("Ｃ", 4000, 512, @0, @0, Dxl1, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0620a01">
《大丈夫。風向きは変わってる。
　こっちの追い風よ》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0630a00">
「つんのめって転ぶのだけ気をつけておけと
いうことだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　こちらとて手傷は負っているが、今は敵騎の損害の
方が激しい。
　油断さえしなければ、力で押し込んでいける。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("Ｃ", null);

//◆じりじり。鬩ぎ合い
//◆押す村正と引く鬚切
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("Ｃ/絵演立絵村正", 600, @-60, @0, DxlAuto, true);

	Wait(400);

	MoveCamera("Ｃ", 4000, -512, @0, @0, Dxl1, true);

	Wait(400);

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("Ｃ/絵演立絵髭", 600, @-60, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　前方、左右に足を進め、打ち込む間合を計る。
　しかし敵も<RUBY text="さ">然</RUBY>る者、いちいち巧妙に間を外す。

　戦闘経験では先方に分が有るせいか、埒が明かない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0640a05">
「…………」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0650a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　ここまで来て、<RUBY text="タイムアウト">時間切れ</RUBY>――敵側の来援という結末
は願い下げだった。
　一撃受けるのを覚悟して、一気に攻め出るべきか。
数秒、脳裏で考えを弄ぶ。

　……計算上、俺にとって悪い勝負とは言えない。
　が、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0660a00">
（村正。
　あの劒冑の<RUBY text="・">底</RUBY>をどの程度と見積もる？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0670a01">
《私とほぼ互角の甲鉄。反則物の<RUBY text="あしまわり">機動性</RUBY>。
　……これでおしまい、って考えるのは虫が
良過ぎるんじゃないかしら》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0680a00">
（まだ、有るか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0690a01">
《鬚切といえば、神代とまでは言わないにし
ても上古の作……誰がどんな技術で鍛えたの
かも知られていない古代遺産よ。
　何が飛び出してくるやら》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0700a01">
《最低限、陰義のことは考えておくべきね。
　知りたかったのはそこでしょう？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0710a00">
（ああ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　<RUBY text="アウトロウ">陰義</RUBY>。
　武者戦の計算外要素……計算を根底から覆し得る力。

　追い込まれた敵騎が<RUBY text="たの">恃</RUBY>むとすれば、まずこれだろう。
　おそらく今は、実行の機を窺っているのだ。

　勝負を決めようと踏み込んだ途端、待ち構えていた
それに迎え撃たれる可能性もある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0720a01">
《いっそこちらから仕掛ける？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　村正が言うのは、同様の手段で先手を打て、という
ことだ。
　――こちらが先に、陰義で仕掛ける。

　しかし相手の手の内によっては、それこそが悪手と
なる恐れもある。
　水と火ではないが、陰義によって陰義を封ずるなど
という形にはまってしまえば最期だ。

　敵の手を読めれば良いのだが……
　
　鬚切か。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鬚切・馬
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	CreateColorSP("絵色黒下", 15000, "#000000");
	CreateTextureSP("絵演立絵馬", 15100, Center, InTop, "cg/ev/resize/ev214_足利護氏の行列l.jpg");
	SetTone("絵演立絵馬", Monochrome);

	Move("絵演立絵馬", 6000, @0, -576, DxlAuto, false);
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　いつからか、源氏の長たるを証す宝として重んじら
れてきた名劒冑。
　盗賊退治に鬼退治、あるいは獣のように吠えたなど、
様々な逸話を持つ。

　それらを慎重に考察すれば、陰義の正体に当たりを
つけることも不可能ではないのだろう。
　が、俺の脳内の限られた知識を今の限られた時間で
検討してみても、思い当たる何かは無かった。

　刃味の鋭さが特筆されているのは確かなのだが……
　どの劒冑の伝説も同じだと言ってしまえばそれまで
である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("絵演立絵馬*");
	Delete("絵色黒下");
	Delete("Ｃ");

//◆じりじり。鬩ぎ合い
	PrintGO("上背景", 19000);
	CreateColorSP("絵色黒", 10000, "#000000");

	CreateTextureSP("絵下背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

	CreateWindow("絵窓左", 5000, 48, 0, 340, 576, false);
	SetAlias("絵窓左","絵窓左");
	Zoom("絵窓左", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓左/絵背景効果", 5010, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	CreateTextureSPmul("絵窓左/絵演背景", 5020, InLeft, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	CreateTextureSP("絵窓左/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d髭切_立ち_戦闘.png");
	Move("絵窓左/絵演立絵装甲", 0, @-280, @4, null, true);//ダミー注意：仮位置
	Zoom("絵窓左", 0, 1000, 1000, Dxl2, true);


	CreateWindow("絵窓右", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓右","絵窓右");
	Zoom("絵窓右", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓右/絵背景効果", 5010, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	CreateTextureSPmul("絵窓右/絵演背景", 5020, InRight, Middle, "cg/bg/resize/bg096_八幡宮地下岩窟_01al.jpg");

	CreateTextureSP("絵窓右/絵演立絵装甲", 5100, Center, InBottom, "cg/st/3d村正標準_立ち_戦闘.png");
	Move("絵窓右/絵演立絵装甲", 0, @340, @0, null, true);//ダミー注意：仮位置
	Zoom("絵窓右", 0, 1000, 1000, Dxl2, true);

	Delete("上背景*");
	FadeDelete("絵色黒", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　互いに摺り足で位置を移す。
　しかし、距離は全く<RUBY text="せば">狭</RUBY>まらない。

　焦りは禁物だが……
　いつまでも猶予を置くべきではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0730a00">
（良し）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　決意する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正納刀。レールガン前
	CreateTextureEX("絵窓右/絵演", 6100, -690, -360, "cg/ev/resize/ev902_村正電磁抜刀レールガン_al.jpg");
	Zoom("絵窓右/絵演", 0, 750, 750, null, true);
	Request("絵窓右/絵演", Smoothing);

	Move("絵窓右/絵演", 0, @0, @150, null, true);

	CreateSE("SE01","se戦闘_動作_刀構え03");
	CreateSE("SE01a","se擬音_雰囲気_抜刀01");
	MusicStart("SE01",0,1000,0,800,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("絵窓右/絵演", 6000, -20, -220, DxlAuto, false);
	Fade("絵窓右/絵演", 1000, 1000, null, true);

	SoundPlay("@mbgm12",0,1000,true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0740a05">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　こちらが抜刀の構に移行したのを見て、敵の注意が
鋭さを増す。
　剣呑なものを感じ取ったに違いない。

　――仕掛ける。
　但し、半端は抜きで。

　対手の掌中が読めないなら、様子見の一手とゆくの
が常道だろうが……むしろ今、それは危険と判断した。
　全力死力の一刀で臨む。

　村正、<RUBY text="おわり">蒐窮</RUBY>の太刀――<RUBY text="レールガン">電磁抜刀</RUBY>。

　生半可な術策など打ち砕ける。
　この一刀ならば勝負を託せる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0750a00">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0760a05">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　調息し、時を計る。
　闇雲な進出は応じ技の餌食。仕掛けるならば相手の
出端か、逆に居付いて死に体となった瞬間か。

　必ずどちらかの<RUBY text="チャンス">機会</RUBY>は来る。

　どちらだ――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆合当理ぶおーん
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");

	CreateColorEXadd("絵窓左/絵色合当理白", 5090, "#FFFFFF");
	CreateColorEXadd("絵窓左/絵色合当理青", 5080, "#0033FF");

	DrawTransition("絵窓左/絵色合当理白", 0, 0, 120, 300, null, "cg/data/circle_11_01_0.png", true);
	DrawTransition("絵窓左/絵色合当理青", 0, 0, 140, 300, null, "cg/data/circle_11_01_0.png", true);

	MusicStart("SE01",0,1000,0,600,null,false);
	SetFrequency("SE01", 2000, 1000, null);
	VernierAction2();
	Shake("絵窓左/絵演立絵装甲", 2160000, 0, 2, 0, 0, 1000, null, false);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0770a00">
「……ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　合当理!?
　――また、だと？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0780a01">
《あれをもう一度やる気なの!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0790a00">
（無理だ！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　敵騎の<RUBY text="つばさ">翼甲</RUBY>は傷つき、ほぼ死んでいる。
　合当理が健在でも飛べる筈がない。

　何を考えて!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw護氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0800a05">
「しゃッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆鬚切、跳躍
	CreateColorSPadd("絵窓左/絵色白", 6100, "#FFFFFF");
	CreateColorSPadd("絵窓左/絵色青", 6090, "#0033FF");

	Delete("プロセスガッタリ２");
	Delete("絵窓左/絵演立絵装甲");
	Delete("絵窓左/絵色合当理*");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(200);

	DrawTransition("絵窓左/絵色白", 200, 1000, 0, 300, Dxl2, "cg/data/slide_07_00_1.png", false);
	DrawTransition("絵窓左/絵色青", 200, 1000, 0, 300, null, "cg/data/slide_07_00_1.png", true);

//◆逃げ
	PrintGO("上背景", 10000);
	CreateColorEXadd("絵色合当理白", 9100, "#FFFFFF");
	CreateColorEXadd("絵色合当理青", 9100, "#0033FF");

	CreateColorSP("絵色黒", 100, "#000000");
	CreateSE("SE01c","se戦闘_動作_空突進02");

	CreateTextureSP("絵演立絵髭", 1000, Center, Middle, "cg/st/3d髭切_騎突_戦闘2.png");
	Zoom("絵演立絵髭", 0, 2000, 2000, null, true);

	MusicStart("SE01c",0,1000,0,1000,null,false);

	Delete("上背景");

	Zoom("絵演立絵髭", 60000, 0, 0, null, false);

	Wait(200);

	CreateSE("SE02","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE02",0,1000,0,1500,null,false);

	Fade("絵色合当理*", 0, 800, null, true);

	Wait(12);

	DrawDelete("絵色合当理白", 200, 1000, "circle_01_00_0", false);
	DrawDelete("絵色合当理青", 250, 1000, "circle_03_00_0", false);

	Zoom("絵演立絵髭", 600, 0, 0, Dxl1, false);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0810a00">
「……なっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 10000);
	Delete("絵色*");
	Delete("絵演*");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg096_八幡宮地下岩窟_01a.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　背を向け――<k>
　
{	FadeDelete("絵板写", 1000, false);}
　　　　　　　　　　逃げる？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0820a00">
「ぐ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/029vs0830a01">
《あ――――っ!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0840a00">
「愚劣!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　<RUBY text="・・・">自分に</RUBY>叫んで、俺は跳んだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正追う
	StR(1000, @120, @0,"cg/st/3d村正標準_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-120, @0, Dxl1, false);
	FadeStR(300,true);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色バーニア１", 4010, "#FFFFFF");
	CreateColorSPadd("絵色バーニア２", 4000, "#3366CC");

	Wait(12);

	DeleteStA(0,true);

	DrawTransition("絵色バーニア１", 300, 30, 0, 400, null, "cg/data/slide_08_00_1.png", false);
	DrawTransition("絵色バーニア２", 300, 60, 0, 400, null, "cg/data/slide_08_00_1.png", false);

	Wait(360);

	CreatePlainSP("絵板写", 10000);
	Delete("絵色*");

//◆鬚切逃げ
	CreateColorSP("絵色中心黒", 1100, "#000000");
	DrawTransition("絵色中心黒", 0, 0, 100, 1000, null, "cg/data/slide_05_00_1.png", true);

	CreateTextureSP("絵背景１", 1000, 0, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	CreateTextureSP("絵背景２", 1000, 0, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");

	CreateSCR1("@絵背景１","@絵背景２",600,-4000,@0);

	FadeDelete("絵板写", 400, true);

	CreateTextureSP("絵演立絵髭", 2000, OutLeft, Middle, "cg/st/3d髭切_騎航_戦闘.png");
	Move("絵演立絵髭", 0, @0, @-120, null, true);
	Request("絵演立絵髭", Smoothing);
	Zoom("絵演立絵髭", 0, 800, 800, null, true);
	Shake("絵演立絵髭", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SE02","se戦闘_動作_空突進01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵演立絵髭", 1000, @2200, @0, null, false);

	Wait(600);

	Move("絵演立絵髭", 10000, @100, @0, null, false);

	SetFwC("cg/fw/fw護氏_大笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/029vs0850a05">
「青いわ、小僧！
　戦場に囚われ、戦局を見なかったのう！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演立絵髭", 600, @2200, @0, Dxl2, true);

	Wait(1000);

	CreateTextureSP("絵演立絵村", 2000, OutLeft, Middle, "cg/st/3d村正標準_騎航_通常2.png");
	Move("絵演立絵村", 0, @0, @60, null, true);
	Request("絵演立絵村", Smoothing);
	Zoom("絵演立絵村", 0, 1100, 1100, null, true);
	Shake("絵演立絵村", 2160000, 0, 2, 0, 0, 1000, null, false);

	CreateSE("SE02","se戦闘_動作_空突進02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵演立絵村", 1000, @1200, @0, null, false);

	Wait(600);

	Move("絵演立絵村", 10000, @100, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　嘲笑が耳を打つ。
　俺は吐息一つも返せなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【景明】
<voice name="景明" class="景明" src="voice/md01/029vs0860a00">
（いつの間に――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　いつの間に。
　いつの間に。

　<RUBY text="・・・・・・・・・・・・・・">敵騎は出口を背負っていたのだ</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);



}

..//ジャンプ指定
//次ファイル　"md01_030.nss"



.//プロセス用======================================================

..//ガッタリアイドリング
function VernierAction()
{
	CreateProcess("プロセスガッタリ", 1000, 0, 0, "VernierSet");
	Request("プロセスガッタリ", Start);

}

..VernierSet
function VernierSet()
{
	begin:
	while(1)
	{
	Fade("@Ｃ/絵色合", 1, 600, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 100, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	Fade("@Ｃ/絵色合", 0, 100, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 200, 100, 100, null, "cg/data/circle_13_00_1.png", true);
	}
}


..//ガッタリアイドリング２
function VernierAction2()
{
	CreateProcess("プロセスガッタリ２", 1000, 0, 0, "VernierSet2");
	Request("プロセスガッタリ２", Start);

}

..VernierSet2
function VernierSet2()
{
	begin:
	while(1)
	{
	Fade("@絵窓左/絵色合当理白", 1, 800, null, false);
	Fade("@絵窓左/絵色合当理青", 1, 600, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 100, 200, 100, null, "cg/data/circle_13_00_0.png", true);

	Fade("@絵窓左/絵色合当理*", 0, 100, null, true);
	//DrawTransition("@Ｃ/絵色合", 20, 200, 100, 100, null, "cg/data/circle_13_00_1.png", true);
	}
}