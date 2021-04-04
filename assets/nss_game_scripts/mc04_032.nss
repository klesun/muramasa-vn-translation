//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_032.nss_MAIN
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

	$GameName = "mc04_033vs.nss";

}

scene mc04_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_031.nss"


//◆景明とバロウズ


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg092_森の道a_01.jpg");
	Delete("上背景");
	SoundPlay("@mbgm09",0,1000,true);
	FadeDelete("黒幕１",1500,true);

	StC(1000, @0,@0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(500,true);



	Wait(500);
	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320010a00">
「……貴様……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　猛禽の風情で<RUBY text="こずえ">樹末</RUBY>に降り立ち、昏く輝く騎体は俺を
見下ろしている。
　見下ろしている――見<RUBY text="くだ">下</RUBY>している。

　ただ一方的に生命を略奪すべく来たのだと。
　言わば狩猟を楽しみに来たのだと。
　
　傲岸なる意思を隠しもせず、俺を眺めやっている。

　無意識に手が動き、胸元を鷲掴みにする。
　……忘れようとて忘れられぬ。

　<RUBY text="ちち">養父</RUBY>を殺した<RUBY text="クルセイダー">騎士</RUBY>!!

　報仇の念が胸に猛った。
　血の脈動と共に衝動が全身を駆け、目的を唯一事に
定めて走り出そうとする。

　そうしてならぬ理由が、何処にあろう。
　そんなものは何処にも――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック：ガッタイダー

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想01", 5000, Center, -50, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");

	EfRecoIn2(300);

	WaitKey(1500);

	EfRecoOut1(300);
	Delete("絵回想*");

	EfRecoOut2(600,true);


	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320020a00">
（……！）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　煮える脳漿の一部が、一瞬で冷めた。
　まさか……この騎士も、<RUBY text="・・">あれ</RUBY>の仲間という事はない
か？

　湊斗景明に対する正当な憎悪を持つのでは……
　
　だとすれば、俺にこの騎士を憎む資格はない。

　しかし、俺の感性の部分はその推測に必ずしも同意
しなかった。
　……あの怪物騎と目前の騎士とは、どうも異なる。

　悪意と殺意に取り巻かれているのは同じだ、が。
　あの怪物のそれが復讐に狂った末の、本来は善意で
あり愛情であったものの裏返しだったのに比べ、

　この騎士のそれは、悪しき意味で<RUBY text="・・">純粋</RUBY>であった。
　歪みも狂いもない。強いて云うなら根幹から歪んで
狂っている。間違いの結果ではなく正しい在様として、
悪意と殺意に満たされている……。

　そう思えてならないのだった。
　だが、根拠は何もない。

　養父を殺された恨みで俺の眼が曇っているだけとも
考えられる。
　
　……確認の必要があった。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320030a00">
「……<RUBY text="クルセイダー">騎士</RUBY>。
　どうやら問答無用の様子だが、そこを曲げて
一件問わせて頂きたい」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320040a03">
「……」


{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320050a00">
「貴方は湊斗景明に復讐を誓う者か。
　俺に近親を殺され、その怨恨に懸けて俺の
命を狙う者か？」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320060a03">
「…………」


{	FwL("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320070a00">
「ならばこちらには、刃を受ける用意がある。
　同様の所以により俺を処断せんとする方が
既に一名控えておられるため、そちらと相談
して頂く事にはなるが……」


{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320080a00">
「如何に？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//	DeleteStC(500, false);

	WaitKey(1500);
//◆小ウェイト

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　返答は、<k>
　
　声も惜しんでの嘲笑だった。

　言葉なく、口の歪みも甲鉄の下に封じ、
　騎士は視線と空気のみで嘲り、笑ってみせた。

　――何を、下らぬ……。
　
　そう告げていた。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320090a00">
「貴様……
　やはり」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320100a03">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);
	StC(1000, @0,@0,"cg/st/3dバロウズ_立ち_戦闘.png");
	FadeStC(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　そして騎士は、<RUBY text="クロスボウ">石弓</RUBY>を向ける。
　俺ではなく――

　東。
　山荘のある方角へ。

　無言の意思表示は、今度も明快だった。
　
　――お前が<RUBY text="・・・">ぐずる</RUBY>なら、先にあちらから済ませる。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320110a00">
「やはり、大鳥大尉を狙って来た追手か！」


{	FwL("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0320120a03">
「……」


{	FwL("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320130a00">
「させん!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　瞬時、死を静かに待つ心境は跡形なく消えて失せた。
　代わって、<RUBY text="たぎ">滾</RUBY>る激情が渦を巻く。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320140a00">
「村正。
　あと一度だけ……付き合ってくれ」


{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320150a00">
「あと一つだけ、やらねばならぬ事が出来た」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0320160a01">
《御堂》


{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320170a00">
「頼む」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　大鳥大尉を殺させはしない。

　彼女以外の人間に、<RUBY text="・・">俺を</RUBY>殺させもしない。

　この騎士と戦う。

　この――
　養父を殺した騎士と！

　戦う!!

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆装甲開始
	SetVolume("@mbgm*", 500, 0, null);
	SoundPlay("@mbgm10",0,1000,true);


	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	CreateSE("SE01","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);

	Fade("フラ", 300, 1000, null, true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("フラ", 10000, "#FFFFFF");

	DeleteStL(0,true);

	OnBG(100,"bg092_森の道a_01.jpg");
	FadeBG(0,true);

	StC(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(0,true);
	Delete("上背景");
	FadeDelete("フラ*", 1600, true);


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -100, -344, "cg/bg/bg022_山林a_01.jpg");
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);
	Request("絵演窓上/絵演背景", Smoothing);

//	DrawEffect("絵演窓上/絵演背景", 50, "LowWave ", 0, 100, null);


	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -220, "cg/st/resize/st景明_装甲_私服aex.png");
	SetBlur("絵演窓上/絵立絵", true, 3, 500, 70, false);

	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	FadeDelete("絵暗転", 500, true);

	Wait(300);

	Move("絵演窓上/絵演背景", 600, @-100, @0, Dxl2, false);
	Move("絵演窓上/絵立絵", 600, @-200, @0, Dxl2, false);
	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwL("cg/fw/fw景明_戦闘.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320180a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演窓上/絵立絵2", 16200, -140, -220, "cg/st/resize/st景明_装甲_私服bex.png");
	SetBlur("絵演窓上/絵立絵2", true, 3, 500, 70, false);

	OnSE("se戦闘_攻撃_鎧_剣戟02",1000);
	EffectZoomadd(17000, 600, 100, "cg/ef/ef003_汎用移動.jpg", false);
	Fade("絵演窓上/絵立絵", 200, 0, null, false);
	FadeF4("絵演窓上/絵立絵2", 200, 1000, 400, 0, 0, Dxl2, true);

//	Wait(300);

	CreatePlainSP("絵板写", 20000);
	Delete("絵演窓*");
	Delete("絵色*");
	StC(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);
	Zoom("絵板写", 300, 2000, 2000, Axl3, false);
	FadeDelete("絵板写", 300, true);

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0320190a00">
「ツルギの理ここに在り！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


//◆装甲。ガキーン


//	CreateColorEXadd("フラ", 10000, "#FFFFFF");

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

/*
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");

	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	Fade("フラ", 300, 1000, null, true);


	DeleteStA(0,true);

	StR(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	StL(1000, @0,@0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStL(0,true);
	FadeStR(0,true);

*/

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 25000, "#FFFFFF");

	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常l.png");
	Move("絵背景100", 0, -563, -569, null, true);

	Move("絵背景100", 2000, -563, -539, null, false);
	Fade("絵フラ", 500, 0, null, true);

	WaitKey(1000);

	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵背景100");
	Delete("絵背景100");

	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/絵演右", 4100, -235, -152, "cg/bg/bg092_森の道a_01.jpg");
	Zoom("絵演窓右/絵演右", 0, 2000, 2000, null, true);
	SetShade("絵演窓右/絵演右", HEAVY);
	CreateTextureSP("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/resize/3d村正標準_立ち_通常m.png");
	Move("絵演窓右/絵背景100", 0, -35, -354, null, true);

	CreateTextureSP("絵背景200", 3100, Center, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Move("絵背景200", 0, -1069, -917, null, true);
	CreateTextureSP("絵演左", 3000, -385, -300, "cg/bg/bg092_森の道a_01.jpg");
	Zoom("絵演左", 0, 2000, 2000, null, true);
	SetShade("絵演左", HEAVY);


	Move("絵背景200", 3000, -1069, -867, Dxl2, false);
	Move("絵演窓右/絵背景100", 3000, -35, -404, Dxl2, false);
	Move("絵演窓右/絵演右", 3000, @0, @60, Dxl2, false);
	Move("絵演左", 3000, @0, @-60, Dxl2, false);


//	StR(1000, @50, @0,"cg/st/3d村正標準_立ち_通常.png");
//	FadeStR(0,true);

	OnSE("se戦闘_動作_刀構え02",1000);
	OnSE("se戦闘_動作_刀構え03",1000);

	FadeDelete("絵フラ", 1000, true);

	Wait(300);

//	FadeDelete("フラ", 2000, true);
	WaitKey(500);

//◆村正上昇
//◆バロウズ上昇

	CreateSE("SE03","se戦闘_動作_空上昇01");
	OnSE("se戦闘_動作_空突進02", 1000);
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorSP("白幕１", 30000, "WHITE");
	DrawTransition("白幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	SetVolume("SE*", 2000, 0, null);
	Wait(2000);

/*

	DrawDelete("@StR*", 150, 100, "slide_02_01_0", false);
	DrawDelete("@StL*", 150, 100, "slide_02_01_0", false);

	CreateColorSP("絵黒", 1, "#CC0000");
	DrawTransition("絵黒", 200, 0, 1000, 500, null, "cg/data/beam_04_00_1.png", true);
	CreateTextureSP("tobu", 1000, 0, -500, "cg/ef/resize/ef020_村正突貫02tl.jpg");
	Request("tobu", Smoothing);
	SetBlur("tobu", true, 3, 500, 50, false);
	Zoom("tobu", 0, 2000, 2000, null, true);
	DrawDelete("絵黒", 200, 500, "slide_01_03_1", false);
	Wait(100);
	CreateSE("SE03","se戦闘_動作_空上昇01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("tobu", 600, @0, -1200, DxlAuto, false);
	Zoom("tobu", 600, 1000, 1000, null, false);
	Wait(600);
	CreateSE("SE04","se戦闘_動作_空上昇01");
	MusicStart("SE04",0,1000,0,750,null,false);
	Move("tobu", 4000, @0, -580, DxlAuto, true);



*/

//	ClearWaitAll(1000, 500);



}

..//ジャンプ指定
//次ファイル　"mc04_033vs.nss"