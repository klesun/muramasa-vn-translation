//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_003.nss_MAIN
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
	#bg066_普陀楽城内のどか_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//	#光探索終了 = true;

	if(#光探索終了){
			$SelectGameName="@->"+$GameName+"_SELECT";
			call_scene $SelectGameName;
	}else{
		$GameName = "md05_004start01.nss";
	}


}

scene md05_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_002.nss"


//◆ＢＧＭ
//◆村正
//◆銀色発光
//◆→蜘蛛村正


	PrintBG("上背景", 30000);

	OnBG(100, "bg066_普陀楽城内のどか_02.jpg");
	FadeBG(0, true);

	Delete("上背景");


	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);


	OnSE("se特殊_鎧_駆動音02", 1000);

	Move("@StR*", 600, @0, @30, Dxl1, true);
	WaitKey(200);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	OnSE("se特殊_鎧_装着03",1000);

	StR(1000, @0, @250, "cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0, true);


	Fade("フラッシュ白",1000,0,null,true);


	SoundPlay("@mbgm04", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　異常の発生は明らかだった。
　苦悶の声を聞き咎めて振り返った途端、村正が体を
折り、蜘蛛の形に戻る――

　切羽詰まった、あたかも<RUBY text="・・・・">緊急回避</RUBY>の様相で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030010a00">
「何があった！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030020a01">
《こ――この……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030030a01">
《……ッ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_発光03", 1000);

	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureEXadd("絵背景100", 100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Rotate("絵背景100", 0, @0, @180, @180, null,true);
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	Fade("絵背景100", 0, 1000, null, true);

	Move("絵背景100", 1000, @150, @0, Dxl1, false);
	Rotate("絵背景100", 1000, @0, @0, @30, Dxl1,false);
	Zoom("絵背景100", 1000, 2000, 2000, Dxl2, false);

	FadeDelete("絵背景100", 1000, false);
	Fade("フラッシュ白",1000,0,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　内側から噴き出すような光を、村正は放射した。
　どう見ても本人の意図したものではない、この――
白銀色の光輝。

　白銀色の……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030040a01">
《こ、これ……
　<RUBY text="かかさま">銀星号</RUBY>の力が》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030050a01">
《……強過ぎる……！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030060a00">
「!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　寄生体を倒して野太刀の断片を取り戻す都度、村正
は断片に付随していた銀星号の能力をも僅かずつ獲得
した。
　それが全て揃った事で――何かの異変を？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030070a01">
《っ……こんな、こと……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_卵発光01", 1000);

	Fade("フラッシュ白",0,1000,null,true);
	DeleteStR(0,true);

	Fade("フラッシュ白",1000,0,null,true);

	CreateProcess("プロセス１", 12000, 0, 0, "Lastfire");
	SetAlias("プロセス１","プロセス１");
	Request("プロセス１",Start);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村正の赤い甲鉄が……
　変色する。

　少しずつ、白銀に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030080a00">
「まさか――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]〝卵〟を植えられたのと同じ状態になっているのか!?

　村正が……銀星号の複製に……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030090a01">
《甘かったっ……！
　こんな罠があるなんて……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030100a01">
《私は〝卵〟には侵されない、けど……
　<RUBY text="・・・・・">内側で完成</RUBY>したものは……どうしようも、
ない……！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030110a00">
「村正……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　そうか――村正が取り込んだ銀星号の力は、〝卵〟
の断片でもあったのだ！
　それがいま完成し、孵化しようとしている……。

　意図的に仕掛けられた罠なのか偶然の所為なのかは
わからないが。
　……虫の良い話は無いと、警戒しておくべきだった！

　村正一人の不注意ではない。
　俺もこんな可能性はまるで考えもしなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030120a00">
「排除できないのか!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030130a01">
《く……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_卵発光01", 1000);

	Fade("フラッシュ白",0,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030140a01">
《やってる……けど……っ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　思うように運ばないのだろう。
　内臓疾患の病巣を<RUBY text="・・・">自力で</RUBY>切除するのが至難である事
と同じだ。

　他人の手を借りねばどうにもなるまい。
　しかし、ここにいる唯一の他者である俺はどうにか
できるような専門技術を持ち合わせていなかった。

　それでも――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030150a01">
《だめっ！
　近付かないで、御堂！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030160a01">
《貴方まで汚染される！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030170a00">
「……ぬぅ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　邪魔になるだけか！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀色発光
	OnSE("se特殊_雰囲気_卵発光01", 1000);

	Fade("フラッシュ白",0,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　村正は力という力を振り絞って、自らを侵食しよう
とするものに抗っている。
　傍目にも、その勝負は分が悪い。

　しかし、俺は何もできない。
　劒冑の苦闘を、手を<RUBY text="こまね">拱</RUBY>いて眺めているだけだ。

　今の俺なら<RUBY text="かかし">案山子</RUBY>でも代役が務まる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030180a01">
《……く、ぁあ……！》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030190a00">
「村正！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030200a01">
《ぅ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　言葉を返す余裕も失いつつあるのか。
　村正は心配するなと言う様子で手を振るものの、喉
からは苦しげな呻きしか洩れてこない。

　このままでは――不味い。
　何か、俺にできる事をしなくてはならない！

　だが、何が？
　何ができる？
　
　何をして、村正を助けられる？

　俺は仕手で、村正は劒冑だ。
　仕手が傷付いた時は劒冑の能力で癒せるが、劒冑の
損傷を仕手の技能で治す事はできない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030210a00">
（理不尽な）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　これまで思いもしなかった事を、俺は胸中に叫んだ。
　この無能は許せない。劒冑を纏って武者にならねば
何もできない、仕手のこの無能は……！

　――――――――――――いや。
　
　
　そうだ。できる事はある。

　仕手ならば。
　仕手として。

　できる事は今、確かにあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030220a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030230a01">
《っっ……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030240a00">
「装甲する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030250a01">
《……!?
　だ、だめ！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030260a01">
《今、そんなことしたら――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　俺も汚染の危険に晒される。
　そんな事は、わかっている。

　だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030270a00">
「俺が精神汚染された時、お前はどうした。
　劒冑として、俺を助けに来ただろうが」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030280a00">
「それと同じ事をするだけだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030290a01">
《で――でも……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030300a00">
「今度は俺がお前に力を貸す！
　村正……忘れるな」

//【景明】
<voice name="景明" class="景明" src="voice/md05/0030310a00">
「俺とお前は武者だ。
　二人で一騎の！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030320a01">
《……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　戦いは常に、二人揃って臨むもの。
　別々である限り仕手も劒冑も不完全で弱い――二者
が合一してようやく、強力な敵とも戦える武者になる
のだから。

　汚染の〝卵〟が相手の戦いでも意味はある。
　活力源たる熱量を俺から供給できるし、何より〝卵〟
の侵食に一人ではなく二人分の意志力で立ち向かえる
ようになる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030330a01">
《ばかなこと考えて……！》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030340a00">
「言えた義理か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030350a01">
《どうなっても知らないからね！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030360a00">
「承知！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガリーン。パーツ分離
//◆装甲。村正
//◆銀色発光
//◆画面真っ白。ＳＥ：暴風

	OnSE("se特殊_鎧_装着03",1000);
	Fade("フラッシュ白",0,1000,null,true);

	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	DeleteStA(0,true);
	StC(1000, @0, @0,"cg/st/3d村正脇差_立ち_通常.png");
	FadeStC(0,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	WaitKey(1500);

	OnSE("se特殊_雰囲気_発光04", 1000);


	CreateColorSP("フラッシュ白", 3000, "WHITE");
	DrawTransition("フラッシュ白", 300, 0, 1000, 100, AxlAuto, "cg/data/circle_03_00_0.png", true);

	CreateSE("SE03","se自然_風_暴風");
	MusicStart("SE03",0,800,0,1000,null,true);



	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030370a00">
「――ぐっ――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　強い。

　この力は、強い。

　こんなものに、村正は今まで一人で耐えたのか。
　こんなものに、俺一人の増援が加わっただけで打ち
勝てるのか……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030380a00">
（いや）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　弱気は無用。
　勝たねばならぬのだから、勝つまでの事。

　村正を――無論この俺自身も、銀星号の複製になど
してはならない。
　この精神の戦場は断じて退けぬ。負けられぬ。

　しかし……
　
　押し流される。

　意思という意思が吹き飛ばされる。

　嵐の中に立つ蝋燭の心地。

　消える。

　消される。

　…………だが。

　確かに――感じる。

　この暴風、強大な威圧には、発生源が存在する。

　それが〝卵〟か。

　排除すれば、俺と村正の精神は守られる。

　そちらへ、手を伸ばして――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆強まる風

	SetVolume("SE03", 1000, 1000, null);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0030390a01">
《……っぁ……!!》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0030400a00">
「づぐっ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　ちっぽけな二つの意思を押し潰さんと、重圧が襲う。

　負けられぬ。
　だが、強い。

　強い。
　しかし、負けられぬ！

　手を伸ばす。

　……どこだ。

　発生源を掴み、砕いてしまえば、終わる。

　発生源！
　この暴威の核！

　俺が砕かれる前に、
　それを探し出して、壊せ、ば――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	OnSE("se特殊_雰囲気_発光01",1000);

	Wait(2000);

//◆フェードアウト

	SetVolume("SE*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);

	ClearWaitAll(4000, 3000);

}

..//ジャンプ指定
//次ファイル　"md05_004start01.nss"

//スキップ用
scene md05_003.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	CreateColorSP("黒", 100, "BLACK");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("故郷探索をスキップする","故郷探索をスキップしない");
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
//五階層方陣をスキップする
			$GameName = "md05_004end.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//五階層方陣をスキップしない
			$GameName = "md05_004start01.nss";
		}
	}
}

