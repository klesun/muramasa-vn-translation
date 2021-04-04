//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_061.nss_MAIN
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
	#bg063_普陀楽城内廊下_02=true;
	#bg084_飛行船艦橋_01=true;
	#bg026_普陀楽山塞b_02=true;
	#bg025_坑道山脈と森c_02=true;
	#bg013_鎌倉俯瞰c_02=true;
	#ev236_ウォルフの勝利_a=true;
	#ev236_ウォルフの勝利_b=true;
	#ev236_ウォルフの勝利_c=true;
	#ev236_ウォルフの勝利_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_062.nss";

}

scene md04_061.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_060.nss"


//◆城内、村正
	PrintBG("上背景", 30000);

	OnBG(100, "bg063_普陀楽城内廊下_02.jpg");
	FadeBG(1000, true);

	FadeDelete("上背景",2000,true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0610010a00">
「……………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md04/0610020a01">
《……消え――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛行艦内

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);


	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 200, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	SetFwH("cg/fw/fwＧＨＱ中尉_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610030e008">
「消えた？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610040a13">
「…………………………」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//嶋：シナリオ退避【090511】
//「きょ、教授？
//　消えてしましたが。鍛造雷弾も、銀星号も」
//おがみ：テキストオーバーのため改行位置調整
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610050e008">
「きょ、教授？　消えてしまいましたが。
　鍛造雷弾も、銀星号も」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610060a13">
「違うよ」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610070e008">
「えっ？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610080a13">
「消えていない。
　<RUBY text="・・・・・">極小の黒点</RUBY>になった」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610090a13">
「限界以上に高められた重力によって、自ら
崩壊したのだ……」

{	FwH("cg/fw/fwＧＨＱ中尉_通常.png");}
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610100e008">
「…………」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610110e008">
「し、失敗したということ……ですか？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610120a13">
「いいや」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610130a13">
「成功だ」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610140a13">
「重力の渦である黒点は、
　<RUBY text="・・・・・・・・・・・・・・・">地球中心方向へ向かって落下する</RUBY>!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆普陀楽遠景
//◆城の向こう？に光の柱が吹き上がる
	SoundPlay("@mbgm01", 0, 1000, true);


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("光吹き上げ前", 15000, 0, 0, "cg/bg/bg026_普陀楽山塞a_02.jpg");
	CreateTextureEX("光吹き上げ前揺れ", 15000, 0, 0, "cg/bg/bg026_普陀楽山塞a_02.jpg");

	CreateTextureEX("光吹き上げ後", 15000, 0, 0, "cg/bg/bg026_普陀楽山塞b_02.jpg");
	CreateTextureEX("光吹き上げ後揺れ", 15000, 0, 0, "cg/bg/bg026_普陀楽山塞b_02.jpg");
	SetBlur("光吹き上げ後揺れ", true, 2, 300, 100, false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	WaitKey(500);

	Fade("光吹き上げ前揺れ", 1500, 1000, null, false);
	Shake("光吹き上げ前揺れ", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("光吹き上げ後*", 0, 1000, null, true);

	OnSE("se特殊_その他_噴き上がる光の柱", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg026_普陀楽山塞b_02.jpg", false);
	Delete("光吹き上げ前");
	Delete("光吹き上げ前揺れ");
	FadeF4("光吹き上げ後揺れ", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("光吹き上げ02b", 600, false);

	WaitKey(2000);


//◆第二話の山
//◆山頂から光の柱

/*
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg025_坑道山脈と森c_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
*/


	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("光吹き上げ前", 15000, 0, 0, "cg/bg/bg025_坑道山脈と森b_02.jpg");
	CreateTextureEX("光吹き上げ前揺れ", 15000, 0, 0, "cg/bg/bg025_坑道山脈と森b_02.jpg");
	Request("光吹き上げ前*", Smoothing);
	Zoom("光吹き上げ前*", 0, 1500, 1500, null, true);
	Move("光吹き上げ前*", 0, @0, @-120, null, true);

	CreateTextureEX("光吹き上げ後", 15000, 0, 0, "cg/bg/bg025_坑道山脈と森c_02.jpg");
	CreateTextureEX("光吹き上げ後揺れ", 15000, 0, 0, "cg/bg/bg025_坑道山脈と森c_02.jpg");
	SetBlur("光吹き上げ後揺れ", true, 2, 300, 100, false);

	Move("光吹き上げ前*", 2000, @200, @0, null, false);
	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	WaitKey(500);

	Fade("光吹き上げ前揺れ", 1500, 1000, null, false);
	Shake("光吹き上げ前揺れ", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("光吹き上げ後*", 0, 1000, null, true);

	OnSE("se特殊_その他_噴き上がる光の柱", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg025_坑道山脈と森c_02.jpg", false);
	Delete("光吹き上げ前");
	Delete("光吹き上げ前揺れ");
	FadeF4("光吹き上げ後揺れ", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("光吹き上げ02b", 600, false);

	WaitKey(2000);

//◆鎌倉遠景？
//◆あちこちから光の柱が

/*
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	OnBG(100, "bg013_鎌倉俯瞰c_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");
*/

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSP("光吹き上げ前", 15000, 0, 0, "cg/bg/bg013_鎌倉俯瞰a_02.jpg");
	CreateTextureEX("光吹き上げ前揺れ", 15000, 0, 0, "cg/bg/bg013_鎌倉俯瞰a_02.jpg");

	CreateTextureEX("光吹き上げ後", 15000, 0, 0, "cg/bg/bg013_鎌倉俯瞰c_02.jpg");
	CreateTextureEX("光吹き上げ後揺れ", 15000, 0, 0, "cg/bg/bg013_鎌倉俯瞰c_02.jpg");
	SetBlur("光吹き上げ後揺れ", true, 2, 300, 100, false);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	WaitKey(500);

	Fade("光吹き上げ前揺れ", 1500, 1000, null, false);
	Shake("光吹き上げ前揺れ", 1500, 0, 10, 0, 0, 1000, Axl3, false);

	Wait(1000);
	Fade("光吹き上げ後*", 0, 1000, null, true);

	OnSE("se特殊_その他_噴き上がる光の柱", 1000);
	EffectZoomadd(17000, 1000, 100, "cg/bg/bg013_鎌倉俯瞰c_02.jpg", false);
	Delete("光吹き上げ前");
	Delete("光吹き上げ前揺れ");
	FadeF4("光吹き上げ後揺れ", 200, 500, 600, 0, 0, Dxl2, true);
	FadeDelete("光吹き上げ02b", 600, false);

	WaitKey(2000);

//◆飛行艦内

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("光吹き上げ*");
	OnBG(100, "bg084_飛行船艦橋_02.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("黒幕１");

	Wait(500);

	SetFwH("cg/fw/fwＧＨＱ中尉_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610150e008">
「……地上から光が……」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610160e008">
「……？　これ……水……？」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610170a13">
「……おお……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト


	CreateColorEXadd("白", 25000, "WHITE");

	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);

	Fade("白", 1000, 1000, null, true);

//◆ホワイトイン

	Fade("白", 500, 0, null, true);

	SetNwH("cg/fw/nyＧＨＱ中尉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610180e008">
「……ひっ!?」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610190e008">
「きょっ、教授ぅ！
　腕が――腕が腕が腕が」

//【ｅｔｃ／Ｇ中尉】
<voice name="ｅｔｃ／Ｇ中尉" class="その他男声" src="voice/md04/0610200e008">
「がっ、ガラスみたいに……
　あぁぁ、足も!?」

{	FwH("cg/fw/fwウォルフ_歓喜.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610210a13">
「……素晴らしい……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：ウォルフの勝利
//◆両腕を広げて天を見上げるウォルフ。上から見た図？


	CreateColorEXadd("白", 25000, "WHITE");
	Fade("白", 500, 1000, null, true);

	CreateTextureSP("絵背景100", 15000, @0, @0, "cg/ev/ev236_ウォルフの勝利_a.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetBlur("絵背景100", true, 3, 500, 200, false);

	Wait(500);

	Zoom("絵背景100", 1800, 1000, 1000, Dxl2, false);
	Fade("白", 1500, 0, null, true);

	Wait(500);

	SetFwH("cg/fw/fwウォルフ_歓喜.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610220a13">
「この光……
　神の命を宿した水……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610230a13">
「劒冑の元素だ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610240a13">
「……おお……
　何もかもが水晶のように……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610250a13">
「……<RUBY text="・・・・・">金属の水晶</RUBY>！」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610260a13">
「劒冑鍛造という過程を経ずに……
　濃密な<RUBY text="みず">光水</RUBY>を浴びれば……このように……
純粋に<RUBY text="・・・・">神の一部</RUBY>となるのだ」

{	FwH("cg/fw/fwウォルフ_歓喜.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610270a13">
「万物を結びつける<RUBY text="アガペ">神の愛</RUBY>！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610280a13">
「やはり、そうか……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610290a13">
「これが<RUBY text="クリスタルナハト">水晶の夜</RUBY>の真実だったのだ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610300a13">
「英邁なる<RUBY text="アドルフ">大法首</RUBY>……
　あれを神の啓示とみたあなたは正しかった」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610310a13">
「あなたを信じた僕は正しかった」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610320a13">
「僕の夢想、
　神の推定は正しかった」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆差分：手足から水晶化

	OnSE("se特殊_鎧_ひび割れ01",1000);
	Fade("白", 1000, 1000, null, true);

	CreateTextureSP("絵背景200", 16000, @0, @0, "cg/ev/ev236_ウォルフの勝利_b.jpg");
	Wait(500);

	Fade("白", 600, 0, null, true);


	SetFwH("cg/fw/fwウォルフ_歓喜.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610330a13">
「見える」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610340a13">
「僕には見えるぞ、神！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610350a13">
「宇宙の果てから訪れた金属の生命」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610360a13">
「あなたを理解したのはこの僕だ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610370a13">
「あなたを導いたのはこの僕だ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610380a13">
「あなたを冒したのはこの僕だ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610390a13">
「このウォルフラム・フォン・ジーバスが、
　地球に革世をもたらした!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆差分：水晶化進行

	OnSE("se特殊_鎧_ひび割れ02",1000);
	Fade("白", 1000, 1000, null, true);

	CreateTextureSP("絵背景300", 17000, @0, @0, "cg/ev/ev236_ウォルフの勝利_c.jpg");
	SetBlur("絵背景300", true, 2, 500, 50, false);

	Wait(500);


	Fade("白", 600, 0, null, true);


	SetFwH("cg/fw/fwウォルフ_歓喜.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610400a13">
「おお――――」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610410a13">
「新たなる世界よ！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610420a13">
「新たなる時代よ！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610430a13">
「黄金の夜明けよ！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0610440a13">
「ズィィィィク・ハァァァィィィイイイル!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――


//◆差分：完全水晶化

	OnSE("se特殊_鎧_装着04",1000);
	Zoom("絵背景300", 220, 2000, 2000, Axl2, false);
	Fade("白", 200, 1000, null, true);


	CreateTextureSP("絵背景400", 18000, @0, @0, "cg/ev/ev236_ウォルフの勝利_d.jpg");

	Wait(1000);

	Fade("白", 1000, 0, null, true);

	Wait(2000);

//◆ホワイトアウト

	OnSE("se特殊_エネルギー放棄",1000);

	CreateColorEXadd("白", 25000, "WHITE");
	Fade("白", 3000, 1000, null, true);

	SetVolume("SE*", 2000, 0, null);
	SetVolume("OnSE*", 2000, 0, null);
	Wait(2000);

}

..//ジャンプ指定
//次ファイル　"md04_062.nss"