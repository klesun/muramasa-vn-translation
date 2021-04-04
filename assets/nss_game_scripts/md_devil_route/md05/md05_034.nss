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

scene md05_034.nss_MAIN
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
	#ev254_虚空に佇む銀星号_a=true;
	#ev254_虚空に佇む銀星号_b=true;
	#bg073_海a_02=true;
	#ev128_病床の光_b01=true;
	#ev128_病床の光_g02=true;
	#bg051_皆斗家居間_01=true;
	#bg052_湊斗家道場_01=true;
	#ev254_虚空に佇む銀星号_c=true;
	#ev133_兜割に挑む光_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_035.nss";

}

scene md05_034.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_033.nss"


//◆宇宙
//◆銀星号。両腕無し


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	CreateTextureSP("gin01", 4000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_a.jpg");
	CreateTextureSP("gin01大", 4000, -470, -573, "cg/ev/resize/ev254_虚空に佇む銀星号_al.jpg");

	//徒歩：前のファイルからの繋ぎの関係でBGM変更
	SoundPlay("@mbgm14", 0, 1000, true);

	Move("gin01大", 10000, -989, -33, null, false);

	Delete("上背景");
	DrawDelete("黒", 500, 500, "slide_02_01_1", true);

	Wait(5000);

	FadeDelete("gin01大", 2000, true);

	Wait(1000);

	SetFwC("cg/fw/fw光_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/md05/0340010a14">
《……景明……》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340020a14">
《どうして、村正を望んだ……？》

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340030a14">
《どうして、おれではない……？》

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340040a14">
《どうして、
　光はいつも奪われる!!》

//【光】
<voice name="光" class="光" src="voice/md05/0340050a14">
《なぜ光の求めるものは、光の手に残らない
のだ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("gin02", 6000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_b.jpg");

	OnSE("se特殊_鎧_装着04",1000);

	EffectZoomadd(10000, 1000, 100, "cg/ev/ev254_虚空に佇む銀星号_b.jpg", false);
	Fade("gin02", 100, 1000, null, true);

	Wait(1000);

	SetFwC("cg/fw/fw光_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【光】
<voice name="光" class="光" src="voice/md05/0340060a14">
《なぜだ？
　なぜだ！
　なぜだ!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆海上

	CreateColorSP("黒幕１", 10000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 500, null, "cg/data/slide_02_01_1.png", true);

	Delete("gin*");

	OnBG(100, "bg073_海a_02.jpg");
	FadeBG(0, true);


	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景50", 0, 1200, 1200, null, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景100", 0, 1400, 1200, null, true);
	Fade("絵背景100", 0, 600, null, true);
	CreateTextureSP("絵背景200", 100, Center, Middle, "cg/bg/bg073_海a_02.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	DrawTransition("絵背景200", 0, 500, 500, 200, null, "cg/data/slide_02_00_0.png", true);
//	DrawEffect("絵背景100", 50, "LowWave ", 0, 100, null);
	DrawEffect("絵背景100", 500, "SuperWave", 40, 40, null);


	DrawTransition("黒幕１", 500, 1000, 0, 500, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　朝焼けの空の果てで、叫ぶものがいる。

　痛ましかった。

　ただ、哀れだった。

　あれは世界を破壊せんとするもの。

　それでも思う。

　救いたい。

　守りたい。

　世界ではなく。
　あの空で孤独に震えている、一人の少女を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：病床の光

	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev128_病床の光_b01.jpg");


	EfRecoIn2(300);

	Wait(500);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　俺は守りたい。

　例え世界を敵に回そうと。

　どんな犠牲を払う事になろうと。

　守りたい。

　殺せない。

　俺は決して光を殺せない。

　湊斗光を守る事が、湊斗景明の命。

　――であり。

　湊斗光を殺す事が、湊斗景明の<RUBY text="つとめ">責</RUBY>。

　――である。

　この矛盾。

　この矛盾を超えて、俺は光を殺さなくてはならない。

　……従って。
　
　矛盾を覆す唯一つの<RUBY text="システムオブアート">魔剣論理</RUBY>が導かれる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想
//◆明堯

	EfRecoIn1(18000,100);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");


	EfRecoIn2(600);



	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340070a11">
『この怪我は――』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340080a11">
『従軍していた看護婦を、砲撃から守ろうと
して仕損じたのだ。
　いや、看護婦は助けられたが……自分の身
にまで気が回らなかった』

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340090a11">
『御本家の怒りも当然……』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340100a11">
『これで私は、役目を果たせなくなった』

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340110a11">
『こんなことを年端もいかぬお前に頼むのは
心苦しい』

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md05/0340120a11">
『…………だが――――』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆本家

	CreateTextureEX("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");
	Fade("絵回想300", 500, 1000, null, true);

	Wait(300);

	SetFwC("cg/fw/fw本家_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340130b52">
『逆らうことは許さん』

{	FwC("cg/fw/fw本家_怒り.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340140b52">
『取り押さえろ！
　そのまま連れてゆけ』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340150b52">
『……ふん。
　ああ、これでは役に立つまい』

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340160b52">
『薬を打ち込んでやるしかなかろうな』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md05/0340170b52">
『……その方が、こやつも救われよう』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆道場
//◆一閃
//◆兜割
	EfRecoIn1(18000,100);

	CreateTextureEX("絵回想EX01", 2400, Center, InBottom, "cg/bg/bg052_湊斗家道場_01.jpg");
	Fade("絵回想EX01", 0, 1000, null, true);

	EfRecoIn2(600);

	Wait(1000);
	OnSE("se戦闘_攻撃_刀振る02", 1000);

	CreateTextureEX("絵回想EX02", 2450, Center, InBottom, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵回想EX02", 300, 1000, null, true);

	Wait(300);

	OnSE("se戦闘_攻撃_鉄切断", 1000);

	CreateTextureEX("絵回想EX03", 2400, Center, InBottom, "cg/ev/ev005_斬り割られた兜.jpg");
	Fade("絵回想EX03", 0, 1000, null, true);
	CreateTextureEX("絵回想EX04", 2500, Center, InBottom, "cg/ev/ev133_兜割に挑む光_c.jpg");

	Wait(200);

	OnSE("se戦闘_動作_鎧_踏み込み02", 1000);
	FadeDelete("絵回想EX02",1000,true);

	Wait(500);

	Fade("絵回想EX04", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　
　　『ゲッ、ゲヘ……カハッ』

　
　　『カ――カカカカ』
　

　　『カァァァカカカカカカカカカカカカカカカ
　　　カカカカカカカカカカカカカカカカカカカカ
　　　カカカカカカカカカカカカカカカカカカカカ
　　　カカカカカカカカカカカカカカカカカカカ!!』
　

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆宇宙

	EfRecoOut1(100);

	Delete("絵回想*");

//	OnBG(100, "bg109_宇宙空間.jpg");
//	FadeBG(0, true);

	CreateTextureSP("gin01", 2000, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_a.jpg");


	EfRecoOut2(600);

	Wait(500);

	SetFwC("cg/fw/fw光_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md05/0340180a14">
《おまえはおれのものにはならないのか》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340190a14">
《おれを望んではくれないのか！》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340200a14">
《どうしても――手に入らないのか！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(800);

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/0340210a14">
《なら》

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340220a14">
《なら、せめて》

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340230a14">
《おまえは誰にも渡すまい……》

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/0340240a14">
《辰気――――収斂!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆辰気収斂。ズゴゴ。
	OnSE("se特殊_その他_空間歪曲", 1000);

	CreateTextureEX("gin03", 2100, @0, @0, "cg/ev/ev254_虚空に佇む銀星号_c.jpg");
	CreateTextureEX("gin03大", 2100, -512, -288, "cg/ev/resize/ev254_虚空に佇む銀星号_cl.jpg");

$ループムーブナット名 = "@gin03大";
$ループムーブタイム = 5000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	SetAlias("プロセス１","プロセス１");

	Request("プロセス１", Start);

	Fade("gin03大", 1000, 1000, null, true);
	Fade("gin03", 0, 1000, null, true);
	Wait(1000);

	Zoom("gin03大", 1000, 500, 500, Axl2, false);
	Fade("gin03大", 1000, 0, Axl3, false);

//ここで再生すると鳴らないので、次ファイルでSE再生 inc櫻井
	Wait(1000);

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);


}

..//ジャンプ指定
//次ファイル　"md05_035.nss"