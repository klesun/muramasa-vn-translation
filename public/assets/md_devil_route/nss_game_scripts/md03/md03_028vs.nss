//<continuation number="120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_028vs.nss_MAIN
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
	#bg056_建長寺三門前_03=true;
	#bg011_拘置所内_01a=true;
	#bg094_宮中庭_01=true;
	#ev226_景明ＶＳ黒瀬_a=true;
	#ev005_斬り割られた兜=true;
	#bg031_八幡宮境内_01=true;
	#bg052_湊斗家道場_01=true;
	#ev226_景明ＶＳ黒瀬_b=true;
	#bg058_曇空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_029vs.nss";

}

scene md03_028vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();




..//ジャンプ指定
//前ファイル　"md03_027vs.nss"

//◆景明

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm09", 0, 1000, true);
	CreateColorSP("黒幕１", 20000, "BLACK");
	OnBG(100, "bg056_建長寺三門前_03.jpg");
	FadeBG(0, true);
	Delete("上背景");

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　向こうで、茶々丸が何やら泡を食っていた。
　忽然と現れた武者に俺が制圧され、そしてその隙に
村正の力で精神状態を以前のそれへ戻される――あれ
の目には現状況がそんな窮地に見えているらしい。

　無用の懸念であった。
　そも、村正に俺の心を操る事はできない。

　銀星号の汚染波による心理的影響は、村正が同等の
精神干渉能力を揮えば取り除ける――理屈上はそうだ。
　だが実際のところ、村正の力で銀星号の力を上回る
のは不可能であろう。仕手もいない今は尚更。

　それに、銀星号の精神汚染は露骨に破壊的である。
　何かを粉々に破壊する事と、破壊された後の断片を
繋ぎ合わせて元に戻す事とは全く違う――明らかに、
後者の方が難度は高い。

　<RUBY text="かつ">嘗</RUBY>て一度も、村正は銀星号に精神汚染された人間を
救い得なかった。
　無理なのだ。できない事なのだ。

　尤も、如何なる理由でか俺の汚染深度は浅いようで
あるから、村正の干渉力でもあるいは元に戻し得るの
かもしれない。
　しかし――<k>それでもやはり、無理だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。拘置所内で

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg011_拘置所内_01a.jpg");

	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　あの時も、村正はできなかった。
　拘置所で、俺が村正に融和を求めたあの時。村正は
拒絶し、精神干渉の能力を以て俺を道具にすると宣告
した――<k>しかし実行できなかった。

　禁じられているからだ。
　何より重い<RUBY text="ことば">勅</RUBY>で。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想。村正過去、帝との対面


	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg094_宮中庭_01.jpg");

	EfRecoIn2(300);

	SetNwC("cg/fw/nw帝.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md03/028vs0010b47">
「村正よ。命じておく。
〝波〟の使用は、朕の名をもって禁ずる」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md03/028vs0020b47">
「如何なる理由があろうとも、この禁を破り
し時は、そなたはもはや朕の臣ではない。
　朝敵、逆賊である」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("絵回想100");
	EfRecoOut2(600,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　中世的価値観を有する人間にとって、やはり君主の
命令は絶対のものなのだろう。
　勅令禁戒下に置かれている精神干渉能力を、村正は
決して使用できない――結局のところ。

　だから俺の心が元に戻される危険など案ずる必要は
なかった。
　村正にできるのは戻そうと試みるところまで。その
先には進めない。

　いや――――
　
　試みるのも、無理か。

　それにはまず、俺が彼に倒されなくてはならないの
だから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆武者黒瀬

	StC(1000, @0, @0,"cg/st/3d黒瀬_立ち_抜刀.png");
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――黒瀬。
　風格ある、良き劒冑を装甲している。<RUBY text="うで">技量</RUBY>も一流と
呼んで差し支えない。

　屈強、精強、至強なる武者。戦場の王……
　生身の兵では決して勝てぬ相手。

　つまり、俺は必ず負ける。
　この世の道理がそう言っている。

　なのに。<k>
　
　
　俺はどうして、負けるわけがないと、嗤うのだろう。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明ＶＳ黒瀬

//	Move("@StC*", 100, @-50, @0, Axl1, false);
	Fade("@StC*", 300, 0, null, true);

	CreateTextureSP("上敷き", 10000, Center, Middle, "cg/bg/bg056_建長寺三門前_03.jpg");
	CreateTextureSP("絵演大背景", 100, -300, -100, "cg/bg/bg056_建長寺三門前_03.jpg");
	CreateTextureSP("絵演大景明", 400, 300, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a2.png");
	CreateTextureSP("絵演大黒瀬", 600, 100, -300, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a1.png");
	CreateTextureSP("絵演大黒瀬ぼかし", 600, 100, -300, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a1.png");

	Request("絵演大背景", Smoothing);
	Request("絵演大景明", Smoothing);
	Request("絵演大黒瀬*", Smoothing);

//	Rotate("絵演大黒瀬*", 0, @0, @10, @0, null,true);
	Zoom("絵演大背景", 0, 1600, 1600, null, true);
	Zoom("絵演大景明", 0, 400, 400, null, true);
	Zoom("絵演大黒瀬*", 0, 1300, 1300, null, true);

	SetShade("絵演大背景", HEAVY);
	SetShade("絵演大黒瀬ぼかし", HEAVY);

	CreateMovie("煙動画", 6000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("煙動画","煙動画");
	Zoom("煙動画", 0, 3000, 3000, null, true);

//	Fade("絵演大景明", 1000, 1000, null, false);
//	Fade("絵演大黒瀬", 1000, 1000, null, false);
//	Fade("絵演大背景", 1000, 1000, null, false);

//	Rotate("絵演大黒瀬*", 7000, @0, @-10, @0, Axl2,false);
	Fade("絵演大黒瀬ぼかし", 7000, 0, Axl3, false);
	Zoom("絵演大景明", 7000, 450, 450, AxlDxl, false);
	Zoom("絵演大黒瀬*", 7000, 1100, 1100, AxlDxl, false);
	Move("絵演大景明", 7000, @450, @0, AxlDxl, false);
	Move("絵演大黒瀬*", 7000, @-500, @0, AxlDxl, false);
	Move("絵演大背景", 7000, @600, @0, AxlDxl, false);
	FadeDelete("上敷き", 2000, true);

	WaitKey(3000);
	SetFwC("cg/fw/fw景明汚染_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0030a00">
（ク……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵演", 1500, Center, Middle, "cg/ev/ev226_景明ＶＳ黒瀬_a.jpg");

	OnSE("se特殊_鎧_駆動音01", 1000);
	Zoom("絵演", 0, 1500, 1500, null, true);
	Fade("絵演", 400, 1000, null, false);
	Zoom("絵演", 1000, 1000, 1000, Dxl2, true);

	Wait(500);
	Delete("絵演大*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　太刀を上段に構える――武者式の肩に担ぐ上段では
ない。天頂を貫くような大上段。
　<RUBY text="ただただ">唯々</RUBY>威力だけを欲す、単純なる太刀取り。

　武者を相手に、何の意味があろう。

　どれほど速く剣を繰り出そうが、神速で駆ける武者
を捉える事など叶わない。
　どれほど強く剣を繰り出そうが、戦車の正面装甲に
も勝る武者の甲鉄を打ち破る事など叶わない。

　一笑に付すべき夢物語だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明汚染_愉悦.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0040a00">
（ククク）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　例えば兜割。
　一刀一撃を以てして、鋼の兜を<RUBY text="・・">両断</RUBY>する――

　無理。
　無理。
　無理。

　そんな事はできない。
　絶対にできはしない。
　人間の成し得る技ではない。

　無理だ!!
　不可能だ!!
　言語道断だ!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明汚染_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0050a00">
（ハッ――ハハハハハハハハハ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想フラッシュ
//◆割れた兜、明堯、光
//◆ＥＶ差分：黒瀬、突進
//◆唐竹割り一閃。しゅぱーん。

	SetVolume("@mbgm*", 300, 0, null);

	EfRecoIn1(18000,100);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/ev/ev005_斬り割られた兜.jpg");
	Delete("煙動画");
	EfRecoIn2(300);
	Wait(500);

	EfRecoIn1(18000,100);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("回想立ち絵", 1501, Center, InBottom, "cg/st/st署長_通常_制服.png");
	EfRecoIn2(300);
	Wait(500);

	EfRecoIn1(18000,100);
	CreateTextureSP("絵回想100", 1500, @0, @0, "cg/bg/bg052_湊斗家道場_01.jpg");
	CreateTextureSP("回想立ち絵", 1501, Center, InBottom, "cg/st/st光二年前_通常_私服.png");
	EfRecoIn2(300);
	Wait(500);

	EfRecoOut1(100);
	Delete("回想立ち絵");
	Delete("絵回想100");



//おがみ：カメラコマンド
	CreateCamera("カメラ１", Center, Middle, 500);
	SetAlias("カメラ１","カメラ１");

	CreateTextureEX("カメラ１/絵演大背景", 100, 100, -100, "cg/bg/bg056_建長寺三門前_03.jpg");
	CreateTextureEX("カメラ１/絵演大景明", 400, 1100, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a2.png");
	CreateTextureEX("カメラ１/絵演大黒瀬", 600, -800, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_b1.png");
	CreateTextureEX("カメラ１/絵演大黒瀬２", 600, -400, -500, "cg/ev/resize/ev226_景明ＶＳ黒瀬ex_a1.png");
	CreateTextureEX("絵演", 1500, Center, Middle, "cg/ev/ev226_景明ＶＳ黒瀬_b.jpg");

	Request("カメラ１/絵演大背景", Smoothing);
	Request("カメラ１/絵演大景明", Smoothing);
	Request("カメラ１/絵演大黒瀬", Smoothing);

	Zoom("カメラ１/絵演大背景", 0, 2700, 2700, null, true);
	Zoom("カメラ１/絵演大景明", 0, 500, 500, null, true);

	SetShade("カメラ１/絵演大背景", HEAVY);
	SetBlur("カメラ１/絵演大黒瀬", true, 2, 500, 50, false);


	Zoom("絵演", 0, 2000, 2000, null, true);
	SetBlur("絵演", true, 2, 500, 100, false);

	CreateColorSPadd("絵色100", 1500, "WHITE");

	Fade("カメラ１/絵演大景明", 0, 1000, null, true);
	Fade("カメラ１/絵演大黒瀬２", 0, 1000, null, true);
	Fade("カメラ１/絵演大背景", 0, 1000, null, true);
	MoveCamera("@カメラ１", 0, 0, -200, @-150, null, true);


//おがみ：カメラ動き

	EfRecoOut2(100,true);

	Fade("絵色100", 100, 0, null, false);
	Wait(1000);

	OnSE("se戦闘_動作_空突進01",1000);

	Zoom("絵演", 800, 1000, 1000, Dxl2, false);
	Fade("絵演", 500, 1000, Axl2, false);

	Fade("カメラ１/絵演大黒瀬２", 200, 0., null, false);
	Fade("カメラ１/絵演大黒瀬", 150, 1000, null, false);
	Move("カメラ１/絵演大黒瀬", 500, @650, @150, Dxl1, false);
	Zoom("カメラ１/絵演大黒瀬", 500, 650, 650, Dxl1, false);
	MoveCamera("@カメラ１", 500, 500, -50, @100, Axl2, true);


	Delete("カメラ*");

//おがみ：カメラ動き終了

	CreateSE("SE01a","se擬音_回想_フラッシュバック01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureEX("絵演覆", 20010, Center, Middle, "cg/ev/ev006_景明の狂相.jpg");
	CreateTextureSP("絵演", 20000, Center, Middle, "cg/ev/ev006_景明の狂相.jpg");

	CreateColorSP("絵色黒", 150, "#000000");

	Zoom("絵演*", 0, 1100, 1100, null, true);
	Zoom("絵演覆", 2000, 2000, 2000, null, false);
	FadeFR3("絵演覆",0,500,200,@0,@0,30,null, false);
	Wait(50);
	FadeDelete("絵演覆", 150, false);
	FadeDelete("絵演", 300, true);

	Wait(1000);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵色100", 0, 1000, null, true);
	DrawTransition("絵色100", 150, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Delete("絵色黒");

	Delete("絵演");
	Wait(500);

//	SL_down(@0, @0,1000);
//	SL_downfade2(10);

	SetFwC("cg/fw/fw黒瀬武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0060b26">
「――――」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0070b26">
「……あ……？」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0080b26">
「な――馬鹿な!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血。ぶしゃー。

	SL_centerdam(@0,@0,1600);
	OnSE("se人体_血_血しぶき01",1000);
	CreateColorEX("赤幕１", 15000, "RED");
	Fade("赤幕１", 1500, 1000, null, false);
	SL_centerdamfade2(100);

	SetFwC("cg/fw/fw黒瀬武者_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0090b26">
「あ――あ、」

//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/028vs0100b26">
「有り得ぬ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばた。
//◆bg056
	OnSE("se戦闘_衝撃_鎧転倒02",1000);

	WaitKey(1500);
	OnBG(100, "bg058_曇空a_01.jpg");
	FadeBG(0, true);
	FadeDelete("絵演",0,false);
	FadeDelete("赤幕１", 1000, true);

	SetFwC("cg/fw/fw景明汚染_愉悦.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0110a00">
「クッ……
　クク、クハハハハハハハハハ!!」

{	FwC("cg/fw/fw景明汚染_哄笑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md03/028vs0120a00">
「ハァーハハハハハハハハッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　肘の上で切り断たれた右腕……
　俺から奪うと宣言したものを自らが失い、黒瀬なる
武者は血と共に沈んだ。

　可笑しい。
　黒瀬が、ではない。己が可笑しい。

　無想だ無我だと思い悩んでいた過去の<RUBY text="おれ">景明</RUBY>が滑稽で
ならない。
　
　ああ――こんなにも簡単な事だった。

　雑念を消し去り、一剣に身魂すべてを投ずるなど、
かくも容易い！
　かくも容易い工程によって、<RUBY text="・・">魔剣</RUBY>は実現する！

　これだけで良かった。
　ああそうだ、<RUBY text="・・">これ</RUBY>だけで良かったのだ。

　光への愛情一つを残し、他の全てを忘れるだけで!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"md03_029vs.nss"