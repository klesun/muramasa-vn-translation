//<continuation number="270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_028vs.nss_MAIN
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
	#ev172_ヴィッカースメイフライMk4C型_a=true;
	#ev172_ヴィッカースメイフライMk4C型_b=true;


	//▼ルートフラグ、選択肢、次のGameName
	#av_ST09ユーウォーキー=true;

	$PreGameName = $GameName;

	$GameName = "mc02_029.nss";

}

scene mc02_028vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_029.nss"

//◆飛行艦発見
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("絵演空", 100, Center, -864, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");

	CreateTextureEXadd("絵演村正光", 1011, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	Fade("絵演村正光", 0, 600, null, true);
	DrawTransition("絵演村正光", 0, 0, 100, 1000, null, "cg/data/slide_01_00_0.png", true);
	Zoom("絵演村正光", 0, 1050, 1050, null, true);

	Move("絵演村正*", 0, @-400, @60, null, true);
	Shake("絵演村正*", 216000, 1, 2, 0, 0, 1000, null, false);

	Move("絵演空", 75000, @0, @576, null, false);
	Move("絵演村正*", 2000, @20, @-60, DxlAuto, false);

	CloudZoomSet(5000);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,@256,@0,null,false);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0010a01">
《……あれ!?》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0020a00">
「そうだ。
　見つけた……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 2000, 0, null);

	CreateSE("SEL01","se乗物_飛行船_巡航音_L");
	MusicStart("SEL01",2000,600,0,750,null,true);

	CreateTextureEX("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev172_ヴィッカースメイフライMk4C型_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	Delete("絵演村正*");
	CloudZoomDelete(0,false);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　横浜から飛び立って約三分。
　空を泳ぐ巨大なヘリウム風船を肉眼で確認する。

　この早さは飛行艦が目的地へ直進するという事前の
推測のみに起因しない。
　飛行艦は風を無視しては飛べない器械だ。風向次第
では針路を大きく逸らす事態も起こり得た。

　実際、船は予定針路をやや南へ外れている。
　さりながら捜索に時間を浪費しなかったのは、かく
あるを読んで永倉老が発信機を用意した事こそ大きい。

　船内に潜入済みの大鳥主従が発する信号を横浜出立
から間もなくして受信し、後はそれを辿って追う事が
できたのだった。
　予測と村正の<RUBY text="レーダー">探査</RUBY>のみではもっと時間を食ったろう。

　三分での捕捉は<RUBY text="ベスト">最善</RUBY>といえる。
　この折角の成果を無駄にしないため、突入も手早く
済ませてしまいたいが――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆近付く
//◆船を見下ろす感じに
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵ＥＶ");
	CreateTextureEX("絵演ＥＶ", 1000, Center, -130, "cg/ev/resize/ev172_ヴィッカースメイフライMk4C型_bm.jpg");
	CreateTextureSP("絵演", 1000, Center, -130, "cg/ev/resize/ev172_ヴィッカースメイフライMk4C型_am.jpg");
	Request("絵演*", Smoothing);
	Zoom("絵演*", 0, 700, 700, null, true);

	MusicStart("SEL01",2000,800,0,800,null,true);

	Move("絵演*", 650, @0, @-26, Dxl2, false);

	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　飛行艦の急所は<RUBY text="・">上</RUBY>である。
　膨張した気嚢のため、そちらから接近されると肉視
ができない。

　信号探査で<RUBY text="こちら">飛行体</RUBY>の存在を察知してはいるだろうが、
それが敵騎なのか、それとも大型の鳥類なのか、はた
また単なる誤認なのかは容易に判断がつかない筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0030a01">
《……でっかい》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0040a00">
「軍用飛行船としては小さなものだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　ヴィッカース四式の全長はおよそ一四〇メートル。
　世界一周で名高いグラーフ・ツェペリンなどに比べ
れば、全く大人の前の子供に過ぎない。

　それでも<RUBY text="こちら">竜騎兵</RUBY>から見ればまさに空中楼閣なのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0050a01">
《どうしてこんな城みたいなものが空に浮く
のよ……》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0060a00">
「原理は単純だ。
　空気より軽い気体があの袋に詰まっている」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0070a01">
《……はぁ。
　何なのかしら……城は飛ぶし、城を一発で
吹き飛ばす<RUBY text="かぐ">火具</RUBY>はあるっていうし》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0080a01">
《時代の差が身に沁みて、なんか切なくて嫌
なんだけど》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0090a00">
「老け込むのは後にしろ。
　上から回り込み……操縦室を直撃する」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0100a00">
「操舵手の身柄を押さえ、針路を変えさせる
事ができれば時間稼ぎになる筈だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　そうなれば爆弾も探しやすい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0110a01">
《諒解》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0120a00">
「一応確認するが、周辺に敵騎は無いな？」


{	CreateSE("SE01","se特殊_コックピット_探索01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0130a01">
《――無し。
　この空域にいるのは私達と、下の空飛ぶ船
だけよ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　瞬時に信号探査を終え、村正が言う。
　
　その舌の根が乾くどころか、まだ金打声の余韻が俺
の頭蓋の内側を揺らしている間に。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛行艦の陰から敵騎出現。二騎。
//◆ＳＴ−０９ユーウォーキー
	#av_ST09ユーウォーキー=true;

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,500,0,700,null,false);

	Fade("絵演ＥＶ", 0, 1000, null, true);
	FadeDelete("絵演", 1000, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0140a01">
《えっ……
　えぇぇぇ!?》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0150a01">
《そんなっ……ちょっと……
　ほんとに老けて、<RUBY text="ぼ">痴呆</RUBY>けたの私!?》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0160a00">
「――いや」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　戦慄の槍に貫かれながら、劒冑の自責を差し止める。
　痴呆症に冒されているとすれば、それは俺だった。

　大鳥大尉は俺に教えていたのだ――
　隠形竜騎兵の『部隊』が既に存在すると！

　この作戦に使われるのはそのうち一騎だけ、爆弾の
投下に利用されるだけで、飛行艦の<RUBY text="・・・・・・・">見えざる護衛騎</RUBY>と
して用いられることなどない――
　そんな約束をいつ、誰が、俺にしたのか!?

　間を抜かすにも程がある……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0170a00">
「あれはいつぞやの乱破の同類だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0180a01">
《乱破？
　……あの月山従三位!?》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0190a00">
「信号反射を最小限に抑える甲鉄構造を持つ。
　加えて、飛行艦の影に潜むようにして騎航
していたのだろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　そうすれば信号探査も目視確認も回避できる。
　熱源探査でなら<RUBY text="キャッチ">捕捉</RUBY>できたかもしれないが……俺が
そこまで知恵を回せなかった。

　その知恵があればここまで近付かれるまでに気付き、
突入方法を再考する選択もあったろうに。
　今となっては後の祭り。

　肝心な時にこう失態を晒すとは！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0200a01">
《どうするの!?》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0210a00">
「く――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　こちらに迫る騎影二つ。
　身ごなしを観察すれば、仕手の力量と騎体性能の程
は明らかだった。

　どちらも極めて高度。
　当然だ――前者はキャノン中佐が信任して極秘作戦
の一翼を担わせた人材、後者は国際連盟軍の最新鋭騎
ＳＴ-〇九なのだから。

　<RUBY text="ウイングドデーモン">空の悪魔</RUBY>と呼ばれるに相応しい者ども。
　とてもの事、こんな状況下で戦っていられる相手で
はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0220a00">
「……船内に突入する！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0230a01">
《ど――何処から？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0240a00">
「<RUBY text="・・・">その辺</RUBY>からだ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　操縦室を狙うゆとりなど最早ない。
　あの二騎を躱し――兎にも角にも船の内側へ入って
しまうまで。

　それが果たせれば、最低でも大鳥大尉を助ける陽動
にはなる！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0250a00">
「後は臨機応変！」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc02/028vs0260a01">
《それ、行き当たりばったりって意味!?》


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/028vs0270a00">
「肯定！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆二騎迫る
//◆どうにか回避して
	SetBlur("絵演ＥＶ", true, 3, 500, 80, false);

	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE00","se戦闘_動作_空上昇01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Zoom("絵演ＥＶ", 600, 2000, 2000, null, false);
	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演*");

	CreateTextureSP("絵演背景", 100, InLeft, Middle, "cg/bg/bg204_横旋回背景b_01.jpg");
	Move("絵演背景", 100000, -5088, @0, null, false);

	CreateTextureSP("絵演ユー騎戦", 1200, -355, 460, "cg/st/resize/3dユーウォーキー_騎航_戦闘sex.png");
	CreateTextureSP("絵演ユー騎通", 1000, -960, 80, "cg/st/resize/3dユーウォーキー_騎航_通常sex.png");
	Zoom("絵演ユー騎通", 0, 700, 700, null, false);
	Request("絵演ユー*", Smoothing);
	Shake("絵演ユー騎通", 2160000, 1, 1, 0, 0, 1000, null, false);
	Shake("絵演ユー騎戦", 2160000, 1, 1, 0, 0, 800, null, false);

	CreateSE("SE01a","se戦闘_動作_空突進02");
	CreateSE("SE01","se戦闘_動作_空突進02");

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	BezierMove("絵演ユー騎通", 600, (-960, 80){-166,-40}{-10,-115}{20,-280}(-22,-320), Dxl1, false);

	Wait(200);

	MusicStart("SE01a",0,1000,0,800,null,false);
	Zoom("絵演ユー２", 600, 800, 800, null, false);
	BezierMove("絵演ユー騎戦", 600, (-355, 460){-30,160}{120,50}{100,-130}(-341,-90), Dxl1, true);

	CreateSE("SE02","se戦闘_動作_空上昇01");
	CreateSE("SE02a","se戦闘_動作_空上昇01");


	Move("絵演ユー騎通", 3000, -110, @0, DxlAuto, false);
	Wait(240);
	Move("絵演ユー騎戦", 3000, -380, @0, DxlAuto, false);

	Wait(2760);

	MusicStart("SE02",0,1000,0,1000,null,false);
	BezierMove("絵演ユー騎通", 380, (-110, -320){70,-273}{270,-262}{380,-385}(1000,-400), Dxl1, false);

	Wait(240);

	MusicStart("SE02a",0,1000,0,1100,null,false);
	BezierMove("絵演ユー騎戦", 280, (-380, -90){40,-30}{320,0}{660,-20}(1000,-20), Dxl1, true);

	WaitKey(2000);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	Delete("絵演ユー*");

	CreateTextureSP("絵演村正", 1100, 1024, -572, "cg/st/3d村正標準_騎航_陰義b.png");
	Request("絵演村正", Smoothing);
	Zoom("絵演村正", 0, 400, 400, Dxl2, false);
	Shake("絵演村正", 2160000, 1, 0, 0, 0, 1000, null, false);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景c_01.jpg");
	Move("絵演背景", 300000, 0, @0, null, false);

	CloudZoomSet(2000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@1024,@-144,null,false);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateSE("SE03","se戦闘_動作_空急降下01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	BezierMove("絵演村正", 600, (1024,-572){-37,-405}{-37,-300}(115,-230), Dxl1, false);

	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

	Wait(750);

	Move("絵演村正", 2000, -33, @0, null, false);
	Wait(2000);

	CreateTextureSP("絵演ユー騎通", 1000, -735, -352, "cg/st/resize/3dユーウォーキー_騎航_通常sex.png");
	CreateTextureSP("絵演ユー騎戦", 1200, -877, -50, "cg/st/resize/3dユーウォーキー_騎航_戦闘sex.png");

	Request("絵演ユー騎*", Smoothing);
	Zoom("絵演ユー騎*", 0, 400, 400, Dxl2, false);
	SetBlur("絵演ユー騎*", true, 1, 500, 80, false);

	CreateSE("SE04","se戦闘_動作_空突進08");
	MusicStart("SE04",0,1000,0,1000,null,false);
	BezierMove("絵演ユー騎通", 600, (-735,-352){-37,-405}{-37,-300}(750,500), Dxl1, false);

	Wait(100);

	CreateSE("SE04a","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	SetBlur("絵演村正", true, 2, 500, 60, false);
	Rotate("絵演村正", 600, @0, @0, 30, DxlAuto,false);
	BezierMove("絵演村正", 300, (-33,-230){-50,-200}{-80,-180}(-122,-170), Dxl3, false);

	Wait(200);

	CreateSE("SE04b","se戦闘_動作_空突進08");

	MusicStart("SE04b",0,1000,0,1100,null,false);
	BezierMove("絵演ユー騎戦", 600, (-877,-50){-293,-127}{77,-140}(800,-150), Dxl1, false);

	Wait(100);

	CreateSE("SE04c","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE04c",0,1000,0,1000,null,false);
	Rotate("絵演村正", 600, @0, @0, -30, DxlAuto,false);
	BezierMove("絵演村正", 300, (-122,-170){-141,-260}{-141,-260}(-200,-275), Dxl3, false);

	Wait(100);

	CreateSE("SE04d","se戦闘_動作_空突進01");
	MusicStart("SE04d",0,1000,0,1000,null,false);
	Move("絵演村正", 600, -883, -41, Axl2, true);

//◆船の側面に回って突入。ずがーん。

	CreateSE("SE01","se戦闘_動作_鉄壁吹っ飛ばす");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

	Delete("絵演村正");
	Delete("絵演ユー*");
	CloudZoomDelete(0,false);

	Wait(1000);

	SetVolume("@m*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
　　　　　　　　　午前七時五〇分

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 0);


}

..//ジャンプ指定
//次ファイル　"mc02_029.nss"