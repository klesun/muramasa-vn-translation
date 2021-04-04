//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_043b.nss_MAIN
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
	#ev128_病床の光_h=true;
	#ev128_病床の光_i=true;
	#bg097_堀越御所内景明の部屋_01=true;
	#bg047_景明故郷町a_01=true;
	#bg047_景明故郷町a_03=true;
	#bg051_湊斗家居間_03a=true;
	#bg052_湊斗家道場_01=true;
	#bg023_弥源太の家_03b=true;
	#ev106_雄飛と見下ろす村正_a=true;
	#ev106_雄飛と見下ろす村正_d=true;
	#ev128_病床の光_g02=true;
	#bg053_堀越御所の庭_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_044.nss";

}

scene md02_043b.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_043.nss"


//●……なれない
	PrintBG("上背景", 30000);
	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　光を殺すのだ。
　殺さなくては、ならないのだ。

　湊斗景明の心が邪魔だというなら、その心を潰して
でも。

　生かしておけば、光はまた銀星号となり……
　数多の人命を奪うのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0010a00">
（殺さなくてはならない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　だが、

　何故、

　光が死ななくてはならないのだ!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ
//◆回想
	EfRecoIn1(18000,300);
	SoundPlay("@mbgm31", 0, 1000, true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg047_景明故郷町a_03.jpg");

	EfRecoIn2(800);


	SetFwC("cg/fw/fw景明_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0020a00">
「こ、こら。
　首にぶら下がるなっ！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0030a14">
「断る！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0040a00">
「歩けないだろうが！」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0050a14">
「歩いてみせろ！
　そんなことで光に勝てるか！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想

	EfRecoIn1(18000,300);

	Delete("絵回想*");


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_湊斗家居間_03a.jpg");

	EfRecoIn2(800);

	SetFwC("cg/fw/fw光三年前_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md02/043b0060a14">
「景明。
　二人きりの食卓だからといって、変に気を
遣う必要はない。早く食べるといい」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0070a00">
「二人？」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/md02/043b0080b46">
「あれ……わたしハブられてる……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0090a14">
「二人だ。
　もし、<RUBY text="・・・・・">いもしない</RUBY>三人目がどうしても気に
なるのなら言え。質量保存の法則を無視して
でも、この宇宙から完全に抹消してやろう」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/md02/043b0100b46">
「すみません。もう黙って食べます。
　わたしいませんから……母さんここにいま
せんから……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,300);

//◆回想
	Delete("絵回想*");


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");

	EfRecoIn2(600);



	SetFwC("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/md02/043b0120a14">
「……景明」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0130a00">
「うん？」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/043b0140a14">
「光は……父に会えるであろうか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0150a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵回想*");
	Delete("Memory_cover");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	EfRecoOut2(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　光が何をした？
　<RUBY text="・・・">この光</RUBY>が何をしたというのだ。

　光の時間は三年前から停止している。
　田舎町に住まう一人の少女であった頃から、一歩も
進んでいないのだ。

　その後の事象に光の意思は介在していない。

　殺戮者銀星号は、夢であった。
　現実の世界を荒らしはしても、本人にとっては何処
までも夢の中の出来事に過ぎない。

　どうして罪を問えるだろう。
　如何なる法が夢の中での行いに罪を科すだろう。

　罪は無い。

　湊斗光には一切の罪が無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0160a00">
（それでも）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　殺さねばならないのだ、と。
　俺の心ではなく、俺の過去が告げていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("黒幕１", 50, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	FadeDelete("@OnBG*",1500,true);

//◆新田雄飛
//◆ふき
//◆ふな
	CreateTextureEX("絵演01", 3100, @600, @220, "cg/st/stふき_通常_私服.png");
	Fade("絵演01", 300, 500, null, false);
	CreateTextureEX("絵演02", 3101, @800, @290, "cg/st/stふな_通常_私服.png");
	Fade("絵演02", 300, 500, null, false);
	CreateTextureEX("絵演03", 3102, @150, @190, "cg/st/st雄飛_通常_制服.png");
	Fade("絵演03", 300, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　光と同じように、何の罪も無かった人がいた。
　その人の命を、俺は奪った。

　より多くの人々の命が失われる前にと、殺したのだ。

　状況、条件は、この今も全く同等。
　光を殺さねば、より多くの命が失われる。

　だから、やらなくてはならない。

　新田雄飛に恥じぬために。
　ふきとふなの姉妹に恥じぬために。

　殺そう。

　湊斗光の生命をこの手で絶とう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",200,1000,null,true);

//■消してからフラッシュのほうが良いかしら inc櫻井
	Delete("絵演*");

//◆ＣＧ差分：光の首に両手

	CreateTextureEX("病床2", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_動作_締める01");

	Fade("病床2", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);
	Fade("フラッシュ白",1000,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　無我。

　湊斗景明を放棄する。

　英雄に徹する。

　殺す。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_動作_締める02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　殺す。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　殺す。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_h.jpg");
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeF4("病床3", 0, 600, 2000, 0, 0, Dxl3, false);

	Fade("フラッシュ白",300,0,null,true);

	SetFwR("cg/fw/fw景明_狂怒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0170a00">
「アアアアアアアアアアアアアアアアアアア
アアアアアアアアアアアアアアアアアアアア
アアアアアアアアアアアアアアアアアアアア
アアアアアアアアアアアアアアアアアアア!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


//◆ホワイトアウト
	Fade("フラッシュ白",0,1000,null,true);

//◆べき、ぼき。骨が幾本も砕ける音

	OnSE("se人体_体_骨複数砕ける01", 1000);

	Wait(2000);

//◆ＣＧ差分：両手、光の首から離れて布団に押し付け
//◆られている。折れて変な方向に
//◆ホワイトイン

	CreateTextureEX("病床3", 1000, @0, @0, "cg/ev/ev128_病床の光_i.jpg");
	Fade("病床3", 0, 1000, null, true);
	Delete("病床2");
	Fade("フラッシュ白",2000,0,null,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　できない。

　できない!!

　できるわけがない!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	OnBG(100, "bg097_堀越御所内光の部屋_03a.jpg");
	FadeBG(0, true);
	FadeDelete("病床*",1000,true); 

//	StR(1001, @0, @0, "cg/st/st村正_通常_私服.png");
//	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
//	FadeStL(300, false);
//	FadeStR(300, false);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/043b0180a01">
「……御堂」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/043b0190a07">
「お兄さん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　断罪の声が響いている。

　俺の矛盾を、<RUBY text="エゴイズム">利己心</RUBY>を、暴き立てる声が。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正→ふき、ふな
//◆幻覚っぽく

	SoundPlay("@mbgm04", 0, 1000, true);

//■ここ以降の回想演出はEfRecoIn系のコマンドを使用すると鳴る音が微妙に雰囲気と合っていないので使用していません。 inc櫻井


	FadeDelete(@StR*,1000,false);
	CreateTextureEX("絵演01", 1100, @600, @220, "cg/st/stふき_通常_私服.png");
	Fade("絵演01", 2000, 800, null, false);
	CreateTextureEX("絵演02", 1101, @800, @290, "cg/st/stふな_通常_私服.png");
	Fade("絵演02", 1000, 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　　　　　　〝卑怯者〟

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　許してくれ。

　
　　　　　　　〝他人なら殺せるのに〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg023_弥源太の家_03b.jpg");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

//◆戻り



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　許して下さい。

　
　　　　　〝自分の家族は殺せないなんて〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("フラッシュ白",0,1000,null,true);
	Delete("Memory_cover");
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");

	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　無理なのです。
　どうしても、無理なのです。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	Fade("フラッシュ白",0,1000,null,true);

	Delete("Memory_cover");
	Delete("絵回想*");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

//◆茶々丸→雄飛

	FadeDelete(@StL*,1000,false);
	CreateTextureEX("絵演03", 1102, @150, @190, "cg/st/st雄飛_通常_制服.png");
	Fade("絵演03", 1000, 800, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　　〝無理……？〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_a.jpg");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　無理です。

　
　　　　〝その首をへし折るだけなのに？〟

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　できません。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_攻撃_刀振る02", 1000);
//	SL_right(@0,@0,2500);
//	SL_rightfade2(10);
	CreateTextureSPadd("絵EF100", 6500, Center, 100, "cg/ef/ef014_汎用横軌道.jpg");
//	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵EF100", 0, 1000, null, true);
	DrawDelete("絵EF100", 50, 100, "slide_01_00_0", true);

	CreateTextureEX("絵回想900", 2001, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	Fade("絵回想900", 300, 1000, null, true);

	WaitKey(1000);
	OnSE("se人体_衝撃_転倒02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　
　　　　　　〝おれの首は斬ったのに？〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵演0*");

	Delete("Memory_cover");
	Delete("絵回想*");
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　あああああああああああああああああ……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 500, "BLACK");
	Fade("黒幕１", 1500, 1000, null, false);

	FadeDelete("@OnBG*",1500,true);

//◆雄飛、ふき、ふな

	CreateTextureEX("絵演飛", 1000, 85, -230, "cg/st/resize/st雄飛_通常_制服l.png");
	Move("絵演飛", 6000, 0, @0, DxlAuto, false);
	Fade("絵演飛", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270a]
　
　　　　　　　　　　〝殺せ〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ふき", 1010, 350, -260, "cg/st/resize/stふき_通常_私服lm.png");
	Move("絵演ふき", 6000, 430, @0, DxlAuto, false);
	Fade("絵演ふき", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270b]
　
　　　　　　　　　　〝殺して〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演ふな", 1020, 130, -240, "cg/st/resize/stふな_通常_私服lm.png");
	Move("絵演ふな", 6000, 50, @0, DxlAuto, false);
	Fade("絵演ふな", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270c]
　
　　　　　　　　　〝殺してよ〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	Delete("絵演飛");
	Delete("絵演ふ*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270d]
　
　　　　　　　　　〝同じように〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演型元", 1000, Center, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateStencil("絵演型",1010,center,InBottom,128,"cg/st/st雄飛_通常_制服.png",false);
	SetAlias("絵演型","絵演型");
	CreateTextureSPover("絵演型/絵演血", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演型/色", 1050, "#990000");

	Fade("絵演型/絵演血", 0, 750, null, true);
	Fade("絵演型/色", 0, 950, null, true);
	DrawTransition("絵演型/色", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演型*", 0, @-256, @0, null, true);

	CreateTextureSP("絵演鬼型元", 1000, Center, InBottom, "cg/st/stふき_通常_私服.png");
	CreateStencil("絵演鬼型",1010,center,InBottom,128,"cg/st/stふき_通常_私服.png",false);
	SetAlias("絵演鬼型","絵演鬼型");
	CreateTextureSPover("絵演鬼型/絵演鬼血", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演鬼型/色", 1050, "#990000");

	Fade("絵演鬼型/絵演鬼血", 0, 750, null, true);
	Fade("絵演鬼型/色", 0, 950, null, true);
	DrawTransition("絵演鬼型/色", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演鬼型*", 0, @186, @0, null, true);

	CreateTextureSP("絵演菜型元", 1200, Center, InBottom, "cg/st/stふな_通常_私服.png");
	CreateStencil("絵演菜型",1210,center,InBottom,128,"cg/st/stふな_通常_私服.png",false);
	SetAlias("絵演菜型","絵演菜型");
	CreateTextureSPover("絵演菜型/絵演菜血", 1300, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("絵演菜型/色", 1350, "#990000");

	Fade("絵演菜型/絵演菜血", 0, 750, null, true);
	Fade("絵演菜型/色", 0, 950, null, true);
	DrawTransition("絵演菜型/色", 0, 0, 450, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("絵演菜型*", 1, @316, @0, null, true);

	CreateSE("SE01","se特殊_ヒロイン_惨殺02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("絵色黒");

	CreatePlainEX("絵板写", 5000);
	Zoom("絵板写", 6000, 1100, 1100, null, false);

	MoveFFP1("@絵板写",10000);

	Fade("絵板写", 3000, 500, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270e]
　
　　　　〝おれたちを殺した時と同じように〟

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　許して。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　
　　　　　　　　　〝許さない〟

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　お願いだから許して下さい。

　
　　　　　　　　〝許せるもんか〟

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　許――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　
　　　　　　　　　　〝殺せ〟

　
　　　　　　　　　　〝殺して〟

　
　　　　　　　　　　〝さあ〟

　
　　　　　　　　　　〝早く!!〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//銀星号事件は使ってはいけない。

	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	Delete("絵演汚染上");

//◆ＣＧ：病床光

	CreateColorEX("フラッシュ白", 15000, "#990000");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵演*");
	Delete("絵板*");
	MoveFFP1stop();
	CreateTextureEX("病床2", 1000, @0, @0, "cg/ev/ev128_病床の光_g02.jpg");
	Fade("病床2", 0, 1000, null, true);

	Fade("フラッシュ白",300,0,null,true);

	Wait(500);

	SetFwC("cg/fw/fw景明_狂相.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0200a00">
「うく――」

{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/043b0210a00">
「くァァァァァァァァァァァ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がばっ。だっ。
//◆光を抱えて走り出した。
//◆庭

	OnSE("se人体_動作_抱きつき01", 1000);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	Wait(100);

	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateColorSP("黒幕２", 25000, "#000000");
	DrawTransition("黒幕２", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("恨み");
	Delete("病床2");
	Delete("黒幕１");
	OnBG(100, "bg053_堀越御所の庭_02.jpg");
	FadeBG(0, true);
	
	DrawTransition("黒幕２", 150, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("黒幕２");

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw村正_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/043b0220a01">
「御堂!?」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/043b0230a01">
「待って……行かないで!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//銀星号事件使いたいが、無理そうなので別の画像。
	CreateTextureEXsub("絵演１", 450, Center, Middle, "cg/ef/ef034_精神汚染.jpg");
	Zoom("絵演１", 0, 1500, 1500, null, false);

	CreateColorEX("絵色399", 399, "#CC0000");
	Fade("絵色399", 5000, 750, null, false);
	Fade("絵演１", 5000, 1000, null, false);



	CreateStencil("マスク１",100,600,220,128,"cg/st/stふき_通常_私服.png",false);
	SetAlias("マスク１","マスク１");
	CreateColorSP("マスク１/logoM001", 400, "BLACK");
	Fade("マスク１/logoM001", 400, 0, null, false);

	CreateStencil("マスク２",100,800,290,128,"cg/st/stふな_通常_私服.png",false);
	SetAlias("マスク２","マスク２");
	CreateColorSP("マスク２/logoM002", 400, "BLACK");
	Fade("マスク２/logoM002", 400, 0, null, false);

//310を0いじれば首ありに

	CreateStencil("マスク３",100,150,190,128,"cg/st/st雄飛_通常_制服.png",false);
	SetAlias("マスク３","マスク３");
	CreateColor("マスク３/logoM00", 150, 0, 310, 1024, 576, "Black");
	SetAlias("マスク３/logoM00","マスク３/logoM00");

	Fade("マスク３/logoM003", 400, 0, null, false);


	Fade("マスク１/logoM001", 0, 0, Dxl1, false);
	Fade("マスク１/logoM001", 0, 500, Dxl1, false);

	Fade("マスク２/logoM002", 0, 0, Dxl1, false);
	Fade("マスク２/logoM002", 0, 500, Dxl1, false);

	Fade("マスク３/logoM003", 0, 0, Dxl1, false);
	Fade("マスク３/logoM003", 0, 500, Dxl1, false);

	DrawEffect("絵演１", 3600000, "HighWave", 30, 30, null);

	OnSE("se人体_足音_走る07", 1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　声が追ってくる。

　逃げないと。

　捕まったら終わりだ。
　殺されてしまう。

　光が殺されてしまう。

　駄目だ駄目だ駄目だ。
　殺させるものか。

　光は俺が守る。

　こうして――
　俺の腕の中に入れておけば誰も殺せない。

　誰にも殺させない。

　光は守る。
　俺が守らねばならないのだから。

　声はいつまでも追ってくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
〝殺せ〟<k>　　　　　　　　　〝殺せ〟<k>
　　　　　　〝殺せ〟<k>
　　　　　　　　　　　〝殺せ〟<k>
　　〝殺せ〟

</PRE>
	SetTextEXCColor("#990000");
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　声はいつまでも追ってくる。
　恐ろしい怒りと呪いに満ちて、俺の背中を脅かす。

　逃げるのだ。

　あの声が追ってこない所まで。

　──そんな場所が、何処にも無いというのなら。

　未来永劫、逃げ続けるのだ……
　光を抱いて。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆はしるーはしるー。

	SetVolume("@mbgm*", 3000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md02_044.nss"