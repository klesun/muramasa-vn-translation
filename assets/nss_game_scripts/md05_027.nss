//<continuation number="360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_027.nss_MAIN
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
	#ev253_飢餓虚空の内側=true;
	#bg047_景明故郷町a_01=true;
	#ev128_病床の光_a03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;
}

scene md05_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_026vs.nss"


//◆闇
//◆通常ボックスに戻り

	PrintBG("上背景", 30000);
	CreateColorSP("下敷き黒", 10, "BLACK");
	SoundPlay("@mbgm15", 0, 1000, true);

	FadeDelete("上背景",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………

　……俺は……

　どうなった……？

　ここは……何処だ？

　…………。

　……何か……

　……足りない。

　何か、俺から引き剥がされたものがある。

　何かが欠けている……。

　何が……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/0270010a14">
《何も》

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270020a14">
《何も欠けてなどおらぬ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/md05/0270030a14">
《景明……おまえの求めるものは、全てここ
にあるはずだ。
　違うか……？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆巨大な光。景明は胎内から見上げているような感じ。
//◆微妙にエロスで。
//◆参考になりそうなカット有り。ブラスレのコミックに

//光resize版を超拡大？ エロスは胸のあたり？　inc櫻井

	CreateTextureEX("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");
	Request("絵巨大光", Smoothing);
	Zoom("絵巨大光", 0, 1200, 1200, null, true);

	Zoom("絵巨大光", 3000, 1000, 1000, null, false);
	Fade("絵巨大光", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　…………。

　……光……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md05/0270040a14">
《もう戦いは終わった。
　ゆるりと、安らげ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　終わった……？

　しかし、俺は……

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/0270050a14">
《景明、何を不満に思う？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……足りない。

　何か……大切なものが、俺から奪われている……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【光】
<voice name="光" class="光" src="voice/md05/0270060a14">
《それは逆だぞ。
　おまえは奪われて<RUBY text="・・">いた</RUBY>のだ》

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270070a14">
《だが、光が取り戻した。
　もう何も欠けていないはずだ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【光】
<voice name="光" class="光" src="voice/md05/0270080a14">
《なぜ、足りないなどと思う？》

{	FwR("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270090a14">
《寒いのか？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……いや。

　……暖かい……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md05/0270100a14">
《そうだろう。
　おまえは光の<RUBY text="なか">胎内</RUBY>にいる》

//【光】
<voice name="光" class="光" src="voice/md05/0270110a14">
《光に守られている》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md05/0270120a14">
《安らぐだろう？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……ああ……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md05/0270130a14">
《なら、そのまま眠ってしまえ。
　光は構わぬ》

//【光】
<voice name="光" class="光" src="voice/md05/0270140a14">
《他ならぬおまえだ。
　<RUBY text="はら">胎</RUBY>に入れても痛くはない》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　…………。

　俺は……

　……お前を……
　倒さなくてはならない……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不思議.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【光】
<voice name="光" class="光" src="voice/md05/0270150a14">
《どうしてだ？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　お前は……多くの人間を殺した……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【光】
<voice name="光" class="光" src="voice/md05/0270160a14">
《そうだな》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270170a14">
《だからおまえは、おれを拒むのか？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　…………。

　……………………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【光】
<voice name="光" class="光" src="voice/md05/0270180a14">
《とは、云うまい。
　そうとも。おまえは既に知っている……》

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270190a14">
《武の本質を学んでいる。
　それはただ命を殺めるものであり、そこに
正道邪道の別もない》

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270200a14">
《あまねく武は善悪相殺の呪いを負う。
　ならば武人が同じ武人を正義と見做し邪悪
と見做し、己を認めて他を拒むは、至極おか
しな仕儀と云わねばなるまい》

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270210a14">
《武人はいずれも同じ、その刃先に善と悪を
分け隔てなく散らす者なのだから》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md05/0270220a14">
《武を非難できるのは、身に寸鉄帯びず道を
説く聖人か、単に恥を知らぬ偽善者のみだ。
　おまえはどちらでもなかろう？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/md05/0270230a14">
《おまえに、おれを拒む理由は無いのだ》

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270240a14">
《安心していい。
　憂いなく、光を求めよ》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……求める……

　俺が……求めるのは……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("絵巨大光", 1000, 0, null, true);


//◆蜘蛛シルエット？

	CreateColorSP("絵色黒", 2000, "#000000");
	CreateStencil("絵マスク１",1200,center,InBottom,128,"cg/st/3d村正蜘蛛_俯瞰.png",false);
	SetAlias("絵マスク１","絵マスク１");
	CreateColor("絵マスク１/色１", 1200, 0, 0, 1024, 576, "White");
	Fade("絵マスク１/色１", 0, 500, null, false);
	SetShade("絵マスク１", HEAVY);
	Fade("絵色黒", 100, 0, null, true);

	WaitKey(1500);

//◆消す
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……塵が漂っている。
　粉々に砕かれた、何かの残滓……。

　指を伸ばす。
　一つ一つ拾い……繋いでゆく……。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆蜘蛛シルエット？

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateStencil("絵マスク１",1200,center,InBottom,128,"cg/st/3d村正蜘蛛_俯瞰.png",false);
	SetAlias("絵マスク１","絵マスク１");
	CreateColor("絵マスク１/色１", 4200, 0, 0, 1024, 576, "White");
	SetShade("絵マスク１", HEAVY);
	Fade("絵マスク１/色１", 1, 500, null, false);
	Fade("絵色黒", 100, 0, null, true);

	SetFwR("cg/fw/fw光_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/md05/0270250a14">
《…………》

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270260a14">
《なぜ、そんなものを欲しがる？》

{	FwR("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270270a14">
《そんな冷たい鉄の塊を》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　……冷たい……。

　確かに、これは酷く冷たい。
　触れるだけで、凍てつくような……。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カシャーン。蜘蛛の影、散る
	OnSE("se日常_建物_窓ガラス破壊01", 1000);

	DrawEffect("絵マスク１/色１", 1800, "HardSplit", 30, 30, null);
	FadeDelete("絵マスク１/色１", 1000, true);

	Fade("絵巨大光", 1000, 1000, null, true);


	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/md05/0270280a14">
《そんなものはおまえに相応しくない》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270290a14">
《それがおまえにとって何だというのだ？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/md05/0270300a14">
《おまえが選ぶのは光だ》

{	FwR("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270310a14">
《おまえを守り、安息を与える……この光を
求めればいい》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md05/0270320a14">
《…………》

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270330a14">
《良い。
　景明、おまえの迷いを払ってやろう》

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0270340a14">
《光が問う》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……問う……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【光】
<voice name="光" class="光" src="voice/md05/0270350a14">
《正直に答えることだ。偽りはおまえの立つ
礎を崩し、弱めてしまうからな。
　もっとも――偽らず答えても、おれの中に
収まる結末は変わらんが……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_慈愛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/md05/0270360a14">
《まず一つ。
　統亡き今、おまえの安息は光のもとにしか
ない――そうだろう？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　――――。

　俺の……安息……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆回想フラッシュ：過去の光、病床の光

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg047_景明故郷町a_01.jpg");
	CreateTextureSP("絵回想300", 2101, 300, InBottom, "cg/st/st光三年前_通常_制服.png");


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoIn1(18000,600);

	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev128_病床の光_a03.jpg");


	EfRecoIn2(300);

	WaitKey(1000);

	EfRecoOut1(300);
	Delete("絵回想*");

	EfRecoOut2(600,true);


//◆選択：肯定／否定

}

..//ジャンプ指定
//◆肯定　"md05_027a.nss"
//◆否定　"md05_027b.nss"



//★選択肢シーン
scene md05_027.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm15", 0, 1000, true);

	CreateColorSP("絵下敷き黒", 10, "BLACK");

	CreateTextureSP("絵巨大光", 1000, Center, Middle, "cg/ev/ev253_飢餓虚空の内側.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("肯定","否定");
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
//◆肯定　"md05_027a.nss"
				$GameName = "md05_027a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆否定　"md05_027b.nss"
				$GameName = "md05_027b.nss";
		}
	}
}