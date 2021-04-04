//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_022vs.nss_MAIN
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
	#bg087_大鳥邸玄関前a_02=true;
	#bg204_横旋回背景c_02=true;
	#bg204_横旋回背景b_02=true;
	#bg204_横旋回背景_02=true;
	#bg066_普陀楽城内のどか_01=true;

//あきゅん「演出：ここではまだ登録したくないので退避」
	//#ev004_香奈枝の凶眼_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	//◆フラグ分岐：デバッグのため選択肢にしてあります
	//◆さよフラグが成立している場合　"mc04_023.nss"
	//◆それ以外　"mc04_026.nss"
	//$GameName = "mc00_001.nss";

//$Sayo_Flag = 2;

	if($Sayo_Flag == 2){$GameName = "mc04_023.nss";}
	else{$GameName = "mc04_026.nss";}

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene mc04_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_021vs.nss"

	//$Sayo_Flag = 2;

//◆視点チェンジ
//◆香奈枝サイド
	PrintBG("上背景", 30000);

	SoundPlay("@mbgm10", 0, 1000, true);

	CreateColorSP("絵色黒", 20000, "#000000");

	OnBG(100, "bg064_普陀楽城内道_02.jpg");
	FadeBG(0, true);

	StR(1200, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(0,true);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

	CreateMask("絵覆", 6000, 0, 0, "cg/data/slide_08_00_0.png", false);
	SetAlias("絵覆","絵覆");

	CreateTextureEX("絵覆/絵演", 4100, -587, -400, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	Fade("絵覆/絵演", 1000, 1000, null, false);
	Move("絵覆/絵演", 2000, @0, -120, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鳥香奈枝は男を見下ろす。
　憤怒に猛るその男を。

　香奈枝にはわかる。
　彼は疑っていない――

　自分の正しさを、真実、疑っていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Move("絵覆/絵演", 2000, @0, @100, DxlAuto, false);
	FadeDelete("絵覆/絵演", 400, false);

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0010a06">
「貴様は同じだ！
　あの逆徒！　何処ぞの牝猫と交わって貴様
を生ませた、あの恥知らずと何も変わらん！」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0020a06">
「あやつもそうだった……
　目先の小事ばかりに心を囚われ、遂に大局
というものを見なかった」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0030a06">
「民を死なせぬためと言って戦を避けた。
　だが、その決断が国家の将来を闇に閉ざし、
いずれ戦に十倍する苦しみを人々に与えると
いう事が、どうしてわからんのだ!?」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0040a06">
「一介の市民であれば優しさと称される特質
が、王者の心に備わる時、それは惰弱と謗ら
れる悪徳に他ならない……
　貴様の父はそんな道理さえ知らなかった！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0050a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕", 5000, "BLACK");
	Fade("黒幕", 1000, 1000, null, true);
	Delete("ウィンドウ*/絵ev*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　それは――違う。

　<RUBY text="ちち">大鳥時継</RUBY>は知っていた。
　常に悩んでいた。

　自分の決断は、誤りではないのかと。
　最終的にはなお一層の<RUBY text="かんなん">艱難</RUBY>を臣民に強いる事になり
はすまいかと。

　己が信じ、選んだ道を、必死で駆け抜けながら――
　父はいつも、自分の正しさを疑い、悩んでいた。

　……それをこの男は知らない。
　己の正しさを疑わぬこの男は、父の悩みを何も知ら
ない。

　なぜ！

　香奈枝は知っている。
　遠く海外にいたけれども、父の苦衷はいつも、手に
取るように理解できていた。

　なのに彼は知らない。
　父の身近にいながら！

　この男が父の悩みを察し、胸襟を開いて意見してい
たなら、大鳥家は立て直されただろう。
　彼にはそれだけの才があり、父にはそれだけの度量
があった。

　しかし彼はそうしなかった。
　彼が父に与えたのは、決別の刃だけだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("黒幕", 1000, 0,null,true);


	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0060a06">
「救いようのない愚物！
　嗤うほかにない無能！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0070a06">
「挙句に貴様のような狂犬を世に放った！
　貴様の父こそ俺の人生を呪った張本人――」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0080a06">
「否、貴様の父は大和の命運を呪った！
　あの男は生まれてくるべきではなかった」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0090a06">
「生まれ落ちるならせめて、一匹の虫ケラで
あれば良かったものを!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("黒幕", 1000, 1000,null,true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そうして今、彼は否定する――
　父の存在の全てを。

　自己の正しさを確信する彼が。
　その正しさに懸けて、父を屑と断定する。

　父は――どう思うか。
　あんなにも深く悩み苦しんでいた父が、この男の、
全くの無理解からくる罵倒を聞いたなら。

　どう思うか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0100a03">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓鼓動。レッドアウトレッドイン付き
	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorEX("レッドアウト", 15000, "#990000");
	Fade("レッドアウト", 300, 1000, null, true);
	Fade("レッドアウト", 1000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　
　　　　　　　　　　許さない

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0110a03">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　
　　　　　　大鳥時継は
　　　　　　大鳥獅子吼を　許しはしない

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。心臓鼓動。レッドアウトレッドイン付き

	OnSE("se人体_体_心臓の音02", 1000);

	CreateColorEX("レッドアウト", 15000, "#990000");
	Fade("レッドアウト", 300, 1000, null, true);
	Delete("黒幕");
	Fade("レッドアウト", 1000, 0, null, true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0120a03">
「……獅子吼……」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0130a06">
「ああ、仕方もなかろうよ。
　<RUBY text="かみ">天</RUBY>の不手際に文句をつけても始まらん」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0140a06">
「俺の手で始末をつければ良い事だ……。
　親子二代、俺が面倒をみてくれよう」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0150a06">
「貴様の父親は寝床を襲って殺してやった。
　何も知らず、何も気付かず――あの阿呆は
芋虫同然の、相応しい惨めな死に方をした！」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0160a03">
「――――――」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0170a06">
「貴様もそこで、羽虫のように死ぬがいい！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銘伏出現。獅子吼装甲
	OnSE("se特殊_鎧_銘伏出現01", 1000);

	CreateStencil("絵演型",1000,center,middle,128,"cg/st/3d銘伏七節_正面.png",false);
	SetAlias("絵演型","絵演型");
	Move("絵演型", 0, -710, -555, null, true);

	CreatePlainEX("絵演型/絵板写", 990);
	SetShade("絵演型/絵板写", HEAVY);
	Fade("絵演型/絵板写", 800, 1000, null, true);

	Wait(300);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演型");
	CreateTextureSP("絵七節", 1000, Center, Middle, "cg/st/3d銘伏七節_正面.png");
	Move("絵七節", 0, -710, -555, null, true);

	FadeDelete("絵板写", 500, true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵七節");
	DeleteStA(0,true);

	CreateTextureSP("絵演獅子吼装甲", 4100, Center, Middle, "cg/ev/ev954_獅子吼装甲_b.jpg");

	FadeDelete("絵フラ", 1000,true);

	Wait(1000);

//◆抜刀
	CreateSE("SE02","se擬音_雰囲気_抜刀01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	StC(1000, @0,@0,"cg/st/3d銘伏_立ち_抜刀.png");
	FadeStC(0,true);

	FadeDelete("絵演獅子吼装甲", 1000, true);

	Wait(500);

	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateTextureSP("絵窓/絵演香奈枝装甲", 19100, -465, -180, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	SetBlur("絵窓/絵演香奈枝装甲", true, 3, 500, 60, false);

	CreateSE("SE03","se戦闘_バロウズ_ボーガン構え01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("絵窓/絵演香奈枝装甲", 400, @0, -97, Dxl2, false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, false);

	SetFwL("cg/fw/fw香奈枝_獰猛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0180a03">
「獅子吼ッッ!!」

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//―――――――――――――――――――――――――――――

//◆バロウズボルト
	WaitAction("@絵窓/絵演香奈枝装甲", null);

	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateColorEXadd("絵色白全", 19990, "#FFFFFF");
	CreateColorEXadd("絵窓/絵色白", 19900, "#FFFFFF");

	DrawTransition("絵窓/絵色白", 400, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", false);
	Fade("絵窓/絵色白", 200, 1000, null, true);

	Fade("絵色白全", 200, 1000, null, true);

	Delete("絵窓");
	DeleteStA(0,true);

	CreateTextureSP("絵演効果", 100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演効果", 0, @0, @180, @0, null,true);

	SetBlur("絵演効果", true, 3, 500, 200, false);
	Request("絵演効果", Smoothing);

	Zoom("絵演効果", 0, 10000, 10000, null, true);

	CreateSE("SE01a","se戦闘_バロウズ_ボーガン射撃01");

	MusicStart("SE01a",0,1000,0,800,null,false);
	Zoom("絵演効果", 300, 1100, 1100, Dxl2, false);
	FadeDelete("絵色白全", 200, true);

	WaitAction("絵演効果", null);

	Wait(10);

	CreatePlainSP("絵板写", 20000);

	CreateWindow("絵窓", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	CreateTextureSP("絵窓/絵演背景", 5000, 310, Middle, "cg/ef/ef003_汎用移動.jpg");
	Zoom("絵窓/絵演背景", 0, 1100, 1100, null, true);
	CreateTextureSP("絵窓/絵演立絵装甲", 5100, -412, -730, "cg/st/resize/3d銘伏_立ち_抜刀l.png");
	SetBlur("絵窓/絵演立絵装甲", true, 3, 500, 80, false);

	Move("絵窓/絵演立絵装甲", 450, -180, @0, Dxl2, false);
	DrawDelete("絵板写", 300, 100, "slide_01_03_1", true);

	WaitAction("絵窓/絵演立絵装甲", null);

	SetFwC("cg/fw/fw獅子吼_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0190a06">
「戯け――
　射線は見切った！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆跳躍
	PrintGO("上背景", 20000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");

	CreateTextureSP("絵背景100", 100, InRight, Middle, "cg/bg/bg204_横旋回背景c_02.jpg");
	Move("絵背景100", 20000, -100, @0, null, false);

	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE01a","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("上背景", 300, true);

	Wait(300);

	CreateSE("SE01b","se戦闘_動作_空急降下01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureEX("絵演合当理", 990, -1450, -222, "cg/st/resize/3d村正標準_騎航_通常3_ex2.png");
	Zoom("絵演合当理", 0, 100, 100, null, true);

	CloudZoomSet(5000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@1500,@0,null,false);

	CreateTextureSP("絵演銘伏", 1000, Center, Middle, "cg/st/resize/3d銘伏_騎航_抜刀lmex.png");
	Shake("絵演銘伏", 21600, 0, 1, 0, 0, 1000, null, false);
	Request("絵演銘伏", Smoothing);
	SetVertex("絵演銘伏", 1800, 1940);
	Rotate("絵演銘伏", 0, @0, @0, @15, null,true);
	Move("絵演銘伏", 0, @730, @500, null, true);
	Zoom("絵演銘伏", 0, 1500, 1500, null, true);

	CreateTextureEX("絵高速移動背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景b_02.jpg");
	SetBlur("絵高速移動背景", true, 2, 500, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,2500,"@絵高速移動背景");

	Zoom("絵演銘伏", 20000, 1000, 1000, null, false);

	SetVolume("SE01b", 2000, 0, null);

	Move("絵演銘伏", 2000, @-30, @-100, Dxl2, false);
	DrawTransition("絵色白", 3000, 1000, 0, 100, Axl2, "cg/data/slide_01_01_1.png", false);
	FadeDelete("絵色白", 2000, true);

	Wait(1000);

	CreateSE("SE02","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE02a","se戦闘_動作_空突進02");
	CreateSE("SE04","se戦闘_動作_空突進01");
	CreateColorEXadd("絵色矢", 2000, "#FFFFFF");
	DrawTransition("絵色矢", 0, 0, 100, 200, null, "cg/data/slide_07_00_1.png", true);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("絵演銘伏", 300, @0, @0, 0, Axl2,false);
	Move("絵演銘伏", 300, -1138, -1662, null, false);
	Zoom("絵演銘伏", 300, 40, 40, Axl1, false);
	CloudZoomFade(1000,false);

	Wait(160);

	MusicStart("SE02",0,1000,0,1500,null,false);
	Fade("絵色矢", 0, 1000, null, true);

	Wait(80);

	DrawTransition("絵色矢", 1000, 100, 0, 400, null, "cg/data/slide_07_00_1.png", false);
	FadeDelete("絵色矢", 100, false);

	Wait(240);

	Move("絵演銘伏", 1500, @50, @0, Dxl2, false);
	Wait(200);
	Move("絵演銘伏", 3000, @50, @0, null, false);

	Wait(1000);

	Fade("絵演合当理", 0, 1000, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("絵演合当理", 300, 0, null, false);

	Move("絵演銘伏", 800, @-1500, @-200, Dxl3, false);
	Move("絵演合当理", 800, @-1500, @-200, Dxl3, false);
	Zoom("絵演合当理", 300, 3000, 0, null, false);

	Wait(800);

	Delete("絵演銘伏");

	CreateSE("SE05b","se戦闘_動作_空急降下01");
	MusicStart("SE05b",0,1000,0,1000,null,false);

	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-1500,@1000,null,false);

	Move("絵高速移動背景", 5000, -300, @0, DxlAuto, false);
	Fade("絵高速移動背景", 0, 1000, null, true);

	Rotate("絵効果サフ", 3000, @0, @0, @90, null,false);
	Fade("絵効果サフ", 3000, 1000, null, true);

	WaitAction("絵高速移動背景", null);

	Wait(1000);

	CreatePlainSP("絵板写", 20000);

	Delete("絵効果サフ*");
	Delete("絵高速移動背景*");
	Delete("絵演合当理*");
	CloudZoomDelete(0,false);

	CreateTextureSP("絵高速移動背景", 100, Center, -100, "cg/bg/resize/bg204_横旋回背景b_02rex.jpg");
	SetBlur("絵高速移動背景", true, 2, 500, 100, false);
	CreateSurfaceEX("絵効果サフ", 10000,2500,"@絵高速移動背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	CreateTextureEX("絵背景１", 5100, 0, Middle, "cg/bg/bg204_横旋回背景_02.jpg");
	CreateTextureEX("絵背景２", 5100, 0, Middle, "cg/bg/bg204_横旋回背景_02.jpg");

	CloudZoomSet(10000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@0,@-1000,null,false);

	CreateSE("SE06b","se戦闘_動作_空急降下01");
	CreateSE("SE06c","se戦闘_動作_空急降下01");

	CloudZoomVertex(2000,@-1000,@1000,null,false);
	Rotate("絵効果サフ", 2000, @0, @0, @-90, null,false);
	Move("絵高速移動背景", 2000, @0, -4000, null, false);

	MusicStart("SE06b",0,1000,0,500,null,false);
	MusicStart("SE06c",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 1000, true);

	Wait(500);

	$横幅基礎=ImageHorizon("絵背景１")-1024;
	$横幅組込=$横幅基礎*(-1);

	CreateSCR1("@絵背景１","@絵背景２",400,$横幅組込,@-100);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果線", 10010, Center, Middle, 288, 512, "Rain");
	SetAlias("絵効果線","絵効果線");
	Rotate("絵効果線", 0, @0, @0, @-90, null,true);
	Zoom("絵効果線", 0, 2000, 4000, null, true);
	Move("絵効果線", 0, @512, @0, null, true);
	DrawTransition("絵効果線", 0, 0, 300, 100, null, "cg/data/slide_01_03_0.png", true);

	MoveFFP1("@絵効果線",5000);

	Fade("絵高速移動背景", 500, 0, null, false);
	Fade("絵効果サフ", 500, 0, null, true);

	Wait(1000);

	CreateSE("SE07a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE07a",0,1000,0,1250,null,false);
	CreateTextureSP("絵演装甲銘伏", 6100, OutLeft, Middle, "cg/st/3d銘伏_騎航_抜刀.png");
	Shake("絵演装甲銘伏", 2160000, 0, 2, 0, 0, 1000, null, false);
	Move("絵演装甲銘伏", 300, -609, -403, Dxl2, false);

	Wait(260);
	Move("絵演装甲銘伏", 10000, -509, @0, null, false);
	Wait(40);

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0200a06">
「悪しき血脈をここで断つ！
　父のもとへ行け、香奈枝――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ＢＧＭストップ？
//◆凶眼発動
	CreateWindow("絵窓", 19000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);

	CreateTextureEX("絵窓/絵演凶眼", 11100, Center, Middle, "cg/ev/ev004_香奈枝の凶眼_a.jpg");
	Request("絵窓/絵演凶眼", Smoothing);
	Zoom("絵窓/絵演凶眼", 0, 5000, 5000, null, true);
	MoveFFP1("@絵窓/絵演凶眼",1000);

	CreateTextureSP("絵窓/絵演", 11000, -404, InBottom, "cg/ev/resize/ev190_弓を向けるバロウズl.jpg");
	SetBlur("絵窓/絵演", true, 2, 500, 80, false);

	CreateSE("SE01","se戦闘_バロウズ_ボーガン構え02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵窓/絵演", 500, @0, -65, Dxl2, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	WaitAction("絵窓/絵演", null);

	CreateSE("SE01a","se特殊_陰義_発動04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("絵窓/絵演凶眼", 200, 750, null, false);
	Zoom("絵窓/絵演凶眼", 400, 1100, 1100, Dxl2, false);

	Wait(700);

	Zoom("絵窓/絵演凶眼", 3000, 1050, 1050, null, false);


	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1800, 1000, null, true);

	Move("絵演装甲銘伏", 0, -509, -403, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆テキスト横書き表示
　
　　　　<RUBY text="弓聖の一矢　リンゴに届かず">The paradox of "Tell and apple"</RUBY><PRE>.</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//◆中点屈折。矢が軌道を変えて
	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 19920, "#FFFFFF");

	CreateTextureSPmul("絵演凶眼", 12000, Center, Middle, "cg/ev/resize/ev004_香奈枝の凶眼_bm.jpg");
	Fade("絵演凶眼", 1, 750, null, true);
	Zoom("絵演凶眼", 0, 1100, 1100, null, true);
	Zoom("絵演凶眼", 10000, 1000, 1000, null, false);
	MoveFFP1("@絵演凶眼",1000);

	Delete("絵色黒");
	Delete("絵窓");
	FadeDelete("絵色白", 1000, true);

	Wait(1000);

	CreateSE("SE02","se人体_体_心臓の音02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEX("絵色血", 12100, "#990000");
	Fade("絵色血", 100, 1000, null, true);

	FadeDelete("絵色血", 600, true);
	WaitPlay("SE02", null);

	CreateTextureSPadd("絵演弓聖壱覆", 20010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureSP("絵演弓聖壱", 20000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演弓聖壱*", 0, @0, @0, @180, null,true);
	Request("絵演弓聖*", Smoothing);

	Zoom("絵演弓聖壱*", 0, 1300, 1300, null, true);

	CreateSE("SE030","se戦闘_バロウズ_ボーガン射撃01");
	CreateSE("SE030a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE030",0,1000,0,1000,null,false);
	MusicStart("SE030a",0,1000,0,1000,null,false);

	Fade("絵演弓聖壱覆", 200, 0, null, false);
	Zoom("絵演弓聖壱*", 200, 1100, 1100, Dxl2, true);

	Wait(1200);

	CreateTextureSPadd("絵演弓聖弐覆", 20110, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖弐", 20100, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Rotate("絵演弓聖弐*", 0, @0, @180, @0, null,true);
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖壱*");
	Zoom("絵演弓聖弐*", 0, 1300, 1300, null, true);

	CreateSE("SE03","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE03a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	Fade("絵演弓聖弐覆", 200, 0, null, false);
	Zoom("絵演弓聖弐*", 200, 1100, 1100, Dxl2, true);

	Wait(1000);

	CreateTextureSPadd("絵演弓聖参覆", 20210, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	CreateTextureSP("絵演弓聖参", 20200, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖弐*");
	Zoom("絵演弓聖参*", 0, 1300, 1300, null, true);

	CreateSE("SE04","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE04a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	Fade("絵演弓聖参覆", 200, 0, null, false);
	Zoom("絵演弓聖参*", 200, 1100, 1100, Dxl2, true);

	Wait(800);

	CreateTextureSPadd("絵演弓聖四覆", 20310, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖四", 20300, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖参*");
	Zoom("絵演弓聖四*", 0, 1300, 1300, null, true);

	CreateSE("SE05","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE05a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	MusicStart("SE05a",0,1000,0,1000,null,false);

	Fade("絵演弓聖四覆", 200, 0, null, false);
	Zoom("絵演弓聖四*", 200, 1100, 1100, Dxl2, true);

	Wait(600);

	CreateTextureSPadd("絵演弓聖五覆", 20410, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	CreateTextureSP("絵演弓聖五", 20400, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖五*", 0, @0, @180, @0, null,true);

	Delete("絵演弓聖四*");
	Zoom("絵演弓聖五*", 0, 1300, 1300, null, true);

	CreateSE("SE06","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE06a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MusicStart("SE06a",0,1000,0,1000,null,false);

	Fade("絵演弓聖五覆", 200, 0, null, false);
	Zoom("絵演弓聖五*", 200, 1100, 1100, Dxl2, true);

	Wait(300);

	CreateTextureSPadd("絵演弓聖六覆", 20510, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	CreateTextureSP("絵演弓聖六", 20500, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖六*", 0, @0, @180, @180, null,true);

	Delete("絵演弓聖五*");
	Zoom("絵演弓聖六*", 0, 1300, 1300, null, true);

	CreateSE("SE07","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE07a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE07",0,1000,0,1000,null,false);
	MusicStart("SE07a",0,1000,0,1000,null,false);

	Fade("絵演弓聖六覆", 200, 0, null, false);
	Zoom("絵演弓聖六*", 200, 1100, 1100, Dxl2, true);

	Wait(150);

	CreateTextureSPadd("絵演弓聖七覆", 20610, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖七", 20600, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖七*", 0, @0, @0, @180, null,true);

	Delete("絵演弓聖六*");
	Zoom("絵演弓聖七*", 0, 1300, 1300, null, true);

	CreateSE("SE08","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE08a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE08",0,1000,0,1000,null,false);
	MusicStart("SE08a",0,1000,0,1000,null,false);

	Fade("絵演弓聖七覆", 200, 0, null, false);
	Zoom("絵演弓聖七*", 200, 1100, 1100, Dxl2, true);

	Wait(75);

	CreateTextureSPadd("絵演弓聖八覆", 20710, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖八", 20700, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖七*");
	Zoom("絵演弓聖八*", 0, 1300, 1300, null, true);

	CreateSE("SE090","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE090a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE090",0,1000,0,1000,null,false);
	MusicStart("SE090a",0,1000,0,1000,null,false);

	Fade("絵演弓聖八覆", 200, 0, null, false);
	Zoom("絵演弓聖八*", 200, 1100, 1100, Dxl2, true);

	Wait(30);

	CreateTextureSPadd("絵演弓聖九覆", 20910, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	CreateTextureSP("絵演弓聖九", 20900, Center, Middle, "cg/ef/ef025_パラドックスシューティングc.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖九*", 0, @0, @180, @0, null,true);

	Delete("絵演弓聖八*");
	Zoom("絵演弓聖九*", 0, 1300, 1300, null, true);

	CreateSE("SE09","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE09a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE09",0,1000,0,1000,null,false);
	MusicStart("SE09a",0,1000,0,1000,null,false);

	Fade("絵演弓聖九覆", 200, 0, null, false);
	Zoom("絵演弓聖九*", 200, 1100, 1100, Dxl2, true);

	Wait(15);

	CreateTextureSPadd("絵演弓聖十覆", 21010, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖十", 21000, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);
	Rotate("絵演弓聖十*", 0, @0, @0, @180, null,true);

	Wait(10);
	Delete("絵演弓聖九*");
	Zoom("絵演弓聖十*", 0, 1300, 1300, null, true);

	CreateSE("SE10","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE10a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE10",0,1000,0,1000,null,false);
	MusicStart("SE10a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十覆", 200, 0, null, false);
	Zoom("絵演弓聖十*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖十一覆", 21110, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	CreateTextureSP("絵演弓聖十一", 21100, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十");
	Delete("絵演弓聖十覆");
	Zoom("絵演弓聖十一*", 0, 1300, 1300, null, true);

	CreateSE("SE11","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE11a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE11",0,1000,0,1000,null,false);
	MusicStart("SE11a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十一覆", 200, 0, null, false);
	Zoom("絵演弓聖十一*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖十二覆", 21210, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	CreateTextureSP("絵演弓聖十二", 21200, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十一");
	Delete("絵演弓聖十一覆");
	Zoom("絵演弓聖十二*", 0, 1300, 1300, null, true);

	CreateSE("SE12","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE12a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE12",0,1000,0,1000,null,false);
	MusicStart("SE12a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十二覆", 200, 0, null, false);
	Zoom("絵演弓聖十二*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖十三覆", 21310, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	CreateTextureSP("絵演弓聖十三", 21300, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十二");
	Delete("絵演弓聖十二覆");
	Zoom("絵演弓聖十三*", 0, 1300, 1300, null, true);

	CreateSE("SE13","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE13a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE13",0,1000,0,1000,null,false);
	MusicStart("SE13a",0,1000,0,1000,null,false);

	Fade("絵演弓聖十三覆", 200, 0, null, false);
	Zoom("絵演弓聖十三*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("絵演弓聖終覆", 29010, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	CreateTextureSP("絵演弓聖終", 29000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵演弓聖終*", 0, @0, @180, @0, null,true);
	Request("絵演弓聖*", Smoothing);

	Delete("絵演弓聖十四");
	Delete("絵演弓聖十四覆");
	Zoom("絵演弓聖終*", 0, 1300, 1300, null, true);

	CreateSE("SE99","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE99a","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE99",0,1000,0,1000,null,false);
	MusicStart("SE99a",0,1000,0,1000,null,false);

	Fade("絵演弓聖終覆", 200, 0, null, false);
	Zoom("絵演弓聖終*", 200, 1100, 1100, Dxl2, true);

//◆ぐっさし。血。
	CreateTextureSPover("絵演血効果", 11100, Center, Middle, "cg/anime/center/bloodA_3.png");
	CreateColorSPadd("絵色白", 11000, "#FFFFFF");
	DrawTransition("絵色白", 1, 0, 30, 100, null, "cg/data/slide_08_00_1.png", true);

	Wait(10);
	Delete("絵演凶眼");

	Move("絵演装甲銘伏", 1, -250, -403, Dxl2, true);

	CreatePlainSP("絵板写", 12000);
	CreatePlainSPadd("絵板写覆", 12100);
	Request("絵板写*", Smoothing);
	Zoom("絵板写*", 0, 1300, 1300, null, true);

	SetTone("絵板写", Monochrome);

	CreateSE("SE100","se特殊_陰義_バロウズ_パラドックス01");
	CreateSE("SE100a","se戦闘_バロウズ_ボーガン射撃02");

	Delete("絵演血効果");
	Delete("絵色白");
	Delete("絵演弓聖*");
	MusicStart("SE100",0,1000,0,1000,null,false);
	MusicStart("SE100a",0,1000,0,1000,null,false);

	Fade("絵板写覆", 200, 0, null, false);
	Zoom("絵板写*", 200, 1100, 1100, Dxl2, true);

	SetFwC("cg/fw/fw獅子吼_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/022vs0210a06">
「――――――――」


{	FwC("cg/fw/fw香奈枝_獰猛.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0220a03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 19000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　そして<k>
　男は<k>
　虫のように<k>
　死んだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずしゃ。死体落下
	PrintGO("上背景", 30000);
	CreateColorSP("絵色黒", 19000, "#000000");

	OnBG(100,"bg064_普陀楽城内道_02.jpg");
	FadeBG(0,true);

	CloudZoomDelete(0,false);
	Delete("@ProSCR*");
	MoveFFP1stop();

	CreateSE("SE01","se戦闘_動作_空落下01");
	MusicStart("SE01",0,1000,0,750,null,false);
	WaitPlay("SE01", null);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, true);

//◆バロウズ
	StL(1000, @-60, @0,"cg/st/3dバロウズ_立ち_通常.png");
	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 600, @60, @0, Dxl2, false);
	FadeStL(600,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0230a03">
「……………………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0240a03">
「……あ……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0250a03">
「……しし、く……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//◆少年獅子吼と少女香奈枝。花束を手渡している

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想背景", 15000, Center, Middle, "cg/bg/bg066_普陀楽城内のどか_01.jpg");
	SetTone("絵回想背景", Monochrome);

	SoundPlay("@mbgm15", 0, 1000, true);

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
〝香奈枝様は花がお好きとか〟

〝宜しければ、これを……〟

〝お好みに合えば良いのですが。
　僕――自分には、花の良し悪しなどとんと
わかりませず〟

〝……はい。
　昨夕、承りました〟

〝白河の分家を継ぐ一件が正式に決まった事
……併せて大鳥<RUBY text="あらた">新</RUBY>の名を獅子吼と改める事。
　そして……婚約の事も……〟

〝気持ち……ですか？
　自分の……〟

〝今回の件が我が主たる時治様と、香奈枝様
の御父上であられる時継様――とかく諍いの
多いこのお二人の仲を取り持つため、永倉老
に仕組まれたものである事は存じております〟

〝香奈枝様について、口さがない使用人達が
良からぬ噂を囁いている事も知っております〟

〝しかし……関係ありません〟

〝自分は、ずっと以前から……
　香奈枝様のことを〟

〝お美しい御方とのみ、想ってまいりました〟

〝……香奈枝様……〟

〝もし――
　自分ごとき、素性あやしき他所者の伴侶に
なっても良いと、あなたが思し召すのなら〟

〝この新、いえ獅子吼は――必ずや大鳥の姓
を冠するに相応しき<RUBY text="もののふ">武人</RUBY>となり……
　決して香奈枝様に、自分との婚約を、誤り
であったと嘆かせは致しませぬ！〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("絵回想背景");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0260a03">
「あ…………」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0270a03">
「あ、あぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆炎上する館
//◆→bg002a_夜
//◆それに合わせて↓。テキスト無し、ボイスのみ

	CreatePlainSP("絵板写", 20000);
	CreateTextureEXadd("絵背景21", 15010, Center, Middle, "cg/bg/bg087_大鳥邸玄関前b_02.jpg");
	Zoom("絵背景21", 0, 1030, 1030, null, true);
	Fade("絵背景21", 0, 1000, null, true);
	DrawTransition("絵背景21", 0, 0, 100, 1000, null, "cg/data/circle_13_00_1.png", true);
	DrawEffect("絵背景21", 0, "HighWave", 20, 20, null);

	CreateTextureSP("絵背景", 15000, @0, @0, "cg/bg/bg087_大鳥邸玄関前b_02.jpg");
	DeleteStA(0,true);
	CreateSE("SEメラメラ", "se人体_動作_放火");
	MusicStart("SEメラメラ", 1000, 1000, 0, 1000, null,true);
	FadeDelete("絵板写", 1000, true);

//演出上Keyなし inc櫻井
	Wait(1000);

	OnBG(100, "bg002_空b_03.jpg");
	FadeBG(0, true);
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	FadeDelete("絵背景*",1500,true);

	SetVolume("メラメラ*", 2000, 300, null);

	CreateVOICE("香奈枝","mc04/022vs0280a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);


	CreateVOICE("香奈枝","mc04/022vs0290a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);


	CreateVOICE("香奈枝","mc04/022vs0300a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);

	CreateVOICE("香奈枝","mc04/022vs0310a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);
	$残時間=RemainTime("香奈枝");
	WaitKey($残時間);
	SetVolume("香奈枝", 100, 0, null);

	CreateVOICE("香奈枝","mc04/022vs0320a03");
	MusicStart("香奈枝",0,1000,0,1000,null,false);

	Wait(3000);
	SetVolume("香奈枝*", 3000, 0, null);
	WaitPlay("香奈枝*", null);

/*
//	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0200]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0280a03">
//「ぁぁ……ぁぁぁ……ぁぅぅ……」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0290a03">
//「くっ……うぅ……っぐ……ぁあああああ！」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0300a03">
//「あああ！　あハハハ！　アァァハハハハハ
//ハハハハハハハハハハハハハハハハハハハ!!」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0310a03">
//「ヒャァーーハハハハハハハハハハハハハハ
//ハハハハハハハハハハハハハハハハハハッ!!」


//{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/022vs0320a03">
//「ハァーハハハハハハハハハハハハハハハ!!」

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆↑声優さんには笑うだけ笑っておいてもらって、
//◆後でスクリプトでフェードアウト掛ければ良いか。

//◆フェードアウト
//◆長ウェイト
	ClearWaitAll(3000, 3000);


}

..//ジャンプ指定
//◆フラグ分岐
//◆さよフラグが成立している場合　"mc04_023.nss"
//◆それ以外　"mc04_026.nss"

//★選択肢シーン
scene mc04_022vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg006_雄飛の部屋_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("さよフラグあり","さよフラグなし");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆さよフラグが成立している場合　"mc04_023.nss"
				$GameName = "mc04_023.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆それ以外　"mc04_026.nss"
				$GameName = "mc04_026.nss";
		}
	}
}

