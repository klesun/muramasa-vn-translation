
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsb.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_010vsb.nss","TimeAction",true);
	Conquest("nss/md05_010vsb.nss","TimeSet1",true);
	

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
	#bg201_旋回演出背景市街地_02=true;
	#bg204_横旋回背景_02=true;
	#bg202_旋回演出背景山_02=true;
	#ev104_鈴川と真改_d=true;
	#ev112_一条をお姫様だっこする村正=true;
	#ev123_大剣を持つガーゲット少佐=true;
	#ev165_最終正宗_c=true;
	#ev207_最後の術技を放つ村正_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_011.nss";

}

scene md05_010vsb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_010vs.nss"

//●離脱
	SoundPlay("@mbgm08",0,1000,true);
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景", 100, Center, -700, "cg/bg/bg201_旋回演出背景市街地_02.jpg");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　あの〝神〟の力が強大を極めていても、空間歪曲の
効果範囲には自ずと限度が存在する筈だ。
　もし違うのなら、先の一撃も避け切れなかったろう。

　従って、やはり最も確実な対処は離脱。
　少しでも速く――少しでも遠くへ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆逃げ
//◆神を見下ろす。かなり離れた。
	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 1000);
	Zoom("絵板写", 300, 2000, 2000, Dxl2, false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, Axl2, "cg/data/zoom_01_00_0.png", true);

	Delete("絵背景");
	Delete("絵板写");

	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,500,0,500,null,false);

	CreateTextureSP("絵演", 4000, Center, -260, "cg/ev/resize/ev242_金神激しく発光_al.jpg");
	SetVertex("絵演", center, 440);
	Zoom("絵演", 0, 500, 500, null, true);
	Request("絵演", Smoothing);

	DrawDelete("絵色黒", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1010a00">
「来ない……な？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1020a01">
《……うん……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1030a01">
《距離が遠いと使えないのかしら》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1040a00">
「かもしれん。
　しかし……あれは手強いな」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1050a00">
「迂闊に近寄れんぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1060a01">
《効果範囲が見えないってのは厄介ね。
　<RUBY text="みみ">探査機能</RUBY>を働かせれば把握できる可能性も
あるけど、そんなことやってる暇なんてない
でしょうし》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1070a01">
《あと……もう一つ》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1080a00">
「何だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1090a01">
《もしかするとあれ、防御にも使えるんじゃ
ないの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1100a00">
「…………。
　攻撃を曲げる――あるいは自分自身を空間
歪曲で瞬間的に移動させてか？」

//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1110a00">
「……有り得ないと言い切るのは無理だな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そんな天地法外な防御措置を取られては、電磁抜刀
といえど必勝を期し難い。
　そして、<RUBY text="・・・・">試し撃ち</RUBY>をやれるような熱量はない。

　野太刀の電磁抜刀を使えるのはおそらく一度きり。
　二度目の機会を得るのは難しいだろう。そして他に、
あの〝神〟に致命傷を与える攻撃方法というのも考え
つかない。

　つまり……
　空間歪曲による防御を想定し、その無効化の算段を
つけた上で、決戦力の行使に臨むべし。

　結論としてはそうなる。

　そうなるが……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆画面ズームイン
//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 525, null);
	Zoom("絵演", 0, 525, 525, null, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1120a00">
「……ん？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1130a01">
《なに？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1140a00">
「…………？
　いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　今……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 650, null);
	Zoom("絵演", 0, 650, 650, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1150a01">
《え？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1160a00">
「あ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ノーワイプで拡大
//◆ノーワイプで拡大
//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 750, null);
	Zoom("絵演", 0, 750, 750, null, true);
	Wait(200);
	SetVolume("SEL*", 0, 850, null);
	Zoom("絵演", 0, 850, 850, null, true);
	Wait(200);
	SetVolume("SEL*", 0, 950, null);
	Zoom("絵演", 0, 950, 950, null, true);
	Wait(200);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1170a00">
「……何だ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　距離を大きく取っていたのに――
　何故、<RUBY text="・・・">勝手に</RUBY>近付いている!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1180a01">
《空間歪曲よ！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1190a01">
《あっちとこっちの間にある空間を、端から
<RUBY text="・・・">潰して</RUBY>いってるのっ！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1200a00">
「……不条理にも程があるぞ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　神に言っても仕方のない事を、俺は思わず叫んだ。

　とにかく、離脱し――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ノーワイプで拡大
	SetVolume("SEL*", 0, 1000, null);
	Zoom("絵演", 0, 1200, 1200, null, true);

	Wait(32);

//◆神、重力波準備
	CreateSE("SEL01","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureSPadd("絵演上", 4110, Center, -260, "cg/ev/resize/ev242_金神激しく発光_bl.jpg");
	CreateTextureSP("絵演", 4100, Center, -260, "cg/ev/resize/ev242_金神激しく発光_bl.jpg");
	SetVertex("絵演", center, 440);
	Request("絵演", Smoothing);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 2000, false);
	Wait(200);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1210a01">
《御堂!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1220a00">
「見ればわかる!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　退避、退避退避退避――――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 100, 0, null);

//◆避け
//◆かなりギリギリな感じでズバーっと。
	CreateSE("SE01","se戦闘_神_グラビティブラスト_発射");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 4110, Center, Middle, "cg/ev/resize/ev243_回避機動をとる村正_bm.jpg");
	CreateTextureSP("絵演", 4100, Center, Middle, "cg/ev/resize/ev243_回避機動をとる村正_bm.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1230a01">
《か、紙一重ね……！》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1240a00">
「……く。
　あの金神、さっぱり知的ではないが芸達者
だな！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　今のも標的を近くに寄せたいという、本能的な欲求
からしたに過ぎない事なのだろう。おそらくは。
　だが欲求を満たす手段が全くもって非常識だ。

　あれに手足でも付いていれば、まずそれを使ったの
かもしれないが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1250a01">
《とにかくもう、動き回るしかない。
　重力波も空間歪曲もこちらに目標を定めて
使っているのは確かなんだから、まず位置を
掴まれなければ未然に防げる理屈よ》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1260a00">
「同意だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　問題は、それが延命策であって打開策では全くない
という事だが。
　今はどうにも仕方ない。

　攻略法を練る時間が要る。
　まずそれを稼ぎ出そう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正最終_騎航_通常b.png");
	Move("絵演立絵", 0, @316, @0, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	CreatePlainEX("絵板写", 999);

	Move("絵演立絵", 6000, @-60, @0, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//◆空間のぶれ
	CreateSE("SE02","se特殊_雰囲気_発光04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	DrawEffect("絵板写", 200, "LowWave", 0, 200, Axl2);
	Fade("絵板写", 200, 500, Axl2, false);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵板写", 3000, false);
	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1270a01">
《ああもう、また！》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1280a00">
「向こうの力は無尽蔵のようだからな……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　逃げの一手！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	CreateSE("SE01","se特殊_鎧_駆動音02");
	CreateSE("SE01b","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演立絵", 2000, @-60, @0, null, false);

	Wait(1000);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(10);

	Fade("絵色白", 150, 0, Axl1, false);
	DrawTransition("絵色白", 150, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", false);
	Move("絵演立絵", 150, @-2000, @0, Axl2, true);

//◆騎航
//◆ぶれ、変わらず
	CreateSE("SE02","se特殊_雰囲気_発光04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 19000, "#FFFFFF");

	Delete("絵演立絵*");
	Delete("絵演背景*");
	Delete("絵板写*");

	CreateTextureEX("絵震用背景", 110, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	Fade("絵震用背景", 200, 500, null, false);
	DrawEffect("絵震用背景", 200, "LowWave", 0, 200, Axl2);
	Fade("絵震用背景", 200, 500, null, false);
	Fade("絵色白", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("絵色白", 300, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1290a00">
「……うむ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　逃げられない!?

　真逆、広範囲への空間歪曲か？
　そんな事も可能なのか。

　ならば、打つ手は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1300a01">
《これ……違う！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1310a00">
「何？
　なら、今度は何だ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1320a01">
《これは……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1330a01">
《きっと――時間がっ！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1340a00">
「じ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　時間ッッ!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆多重空間
	CreateSE("SE02","se特殊_雰囲気_発光04");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 19000, "#FFFFFF");

	Delete("絵演立絵*");
	Delete("絵演背景*");
	Delete("絵板写*");
	Delete("絵震用背景");

	CreateMask("面一", 3000, Center, Middle, "cg/data/zoom_01_00_0.png", false);
	SetAlias("面一","面一");
	CreateTextureEXadd("面一/絵演一", 3010, Center, Middle, "cg/ev/ev104_鈴川と真改_d.jpg");

	CreateMask("面二", 3000, Center, Middle, "cg/data/zoom_01_00_1.png", false);
	SetAlias("面二","面二");
	CreateTextureEXadd("面二/絵演二", 3010, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");

	CreateMask("面三", 3000, Center, Middle, "cg/data/effect_01_00_0.png", false);
	SetAlias("面三","面三");
	CreateTextureEXadd("面三/絵演三", 3010, Center, Middle, "cg/ev/ev123_大剣を持つガーゲット少佐.jpg");

	CreateMask("面四", 3000, Center, Middle, "cg/data/circle_06_00_0.png", false);
	SetAlias("面四","面四");
	CreateTextureEXadd("面四/絵演四", 3010, Center, Middle, "cg/ev/ev133_兜割に挑む光_c.jpg");

	CreateMask("面五", 3000, Center, Middle, "cg/data/circle_07_00_0.png", false);
	SetAlias("面五","面五");
	CreateTextureEXadd("面五/絵演五", 3010, Center, Middle, "cg/ev/ev165_最終正宗_c.jpg");

	CreateMask("面六", 3000, Center, Middle, "cg/data/circle_12_00_0.png", false);
	SetAlias("面六","面六");
	CreateTextureEXadd("面六/絵演六", 3010, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_a.jpg");

	TimeAction();

	Wait(300);

	FadeDelete("絵色白", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　空間が重複する。

　己の視界の中に己の姿を見る。
　過去か――未来か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1350a01">
《時間歪曲……》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/010vs1360a00">
「どうなる!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1370a01">
《ごめんなさいわからない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/010vs1380a01">
《わからないけどっ、多分――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆時間歪曲
//◆なんかすっ飛ばされる。ばひゅーん。
	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,500,null,false);

	CreateColorEX("絵色白", 20000, "#FFFFFF");

	SetFrequency("SE01", 2000, 2000, AxlAuto);
	Fade("絵色白", 2000, 850, null, true);

	Wait(2000);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md05_011.nss"

.//プロセス用======================================================

..//多重空間
function TimeAction()
{
	CreateProcess("プロセス多重空間一", 5000, 0, 0, "TimeSet1");
	Request("プロセス多重空間一", Start);
	Request("プロセス多重空間*", Disused);
}

function TimeSet1()
{
	begin:
	while(1)
	{
	Zoom("@面一/絵演一", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面一/絵演一", 3000, 1100, 1100, null, false);
	DrawTransition("@面一/絵演一", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面一/絵演一", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面一/絵演一", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面一/絵演一", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面一/絵演一", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面二/絵演二", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面二/絵演二", 3000, 1100, 1100, null, false);
	DrawTransition("@面二/絵演二", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面二/絵演二", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面二/絵演二", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面二/絵演二", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面二/絵演二", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面三/絵演三", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面三/絵演三", 3000, 1100, 1100, null, false);
	DrawTransition("@面三/絵演三", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面三/絵演三", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面三/絵演三", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面三/絵演三", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面三/絵演三", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面四/絵演四", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面四/絵演四", 3000, 1100, 1100, null, false);
	DrawTransition("@面四/絵演四", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面四/絵演四", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面四/絵演四", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面四/絵演四", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面四/絵演四", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面五/絵演五", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面五/絵演五", 3000, 1100, 1100, null, false);
	DrawTransition("@面五/絵演五", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面五/絵演五", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面五/絵演五", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面五/絵演五", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面五/絵演五", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@面六/絵演六", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@面六/絵演六", 3000, 1100, 1100, null, false);
	DrawTransition("@面六/絵演六", 2000, 0, 1000, 100, null, "cg/ef/ef022_汎用武者散華.jpg", false);
	Fade("@面六/絵演六", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@面六/絵演六", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@面六/絵演六", 2000, 1000, 0, 100, null, "cg/ef/ef039_時間移動.jpg", false);
	Fade("@面六/絵演六", 3000, 10, Axl1, false);

	Wait(1400);

	}
}