//<continuation number="1080">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_026.nss_MAIN
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
	#ev261_村正メイドさんバージョン=true;
	#ev262_村正メイドさんご奉仕_a=true;
	#ev262_村正メイドさんご奉仕_b=true;
	#ev262_村正メイドさんご奉仕_c=true;
	#ev262_村正メイドさんご奉仕_d=true;
	#ev262_村正メイドさんご奉仕_e=true;
	#bg089_大鳥邸貴人の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_027.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#md06_026=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene md06_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"md06_025.nss"

//◆黒
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100,"bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0,true);

	CreatePlainEX("絵板写", 990);
	SetShade("絵板写", HEAVY);

	Delete("上背景");

	Wait(1000);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{

	//状態定義
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100,"bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0,true);

	CreatePlainEX("絵板写", 990);
	SetShade("絵板写", HEAVY);

	//リコ背景抹消
	RecoIn();
}
//========================================================

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260010a01">
「…………で」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260020a01">
「これが、『近い事』？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260030a00">
「解釈次第では」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260040a01">
「誤解とか曲解とかいうのよね……それって
きっと……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：メイド村正
//◆あるいは流用背景＋立ち絵
	FadeDelete("黒", 1000, true);
	SoundPlay("@mbgm22", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　駅前地区にあるホテルの一室。
　衣装提供は一階の貸衣装屋――パーティ等で需要が
見込まれるため、ホテル内にその種の店舗があるのは
珍しい事でもない。

　豊富な品揃えのうち、仮装パーティ用に分類される
一着が俺の要望を満たした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵イベ２", 1010, Center, InBottom, "cg/ev/resize/ev261_村正メイドさんバージョンl.jpg");
	Fade("絵イベ２", 1000, 1000, null, true);

	Move("絵イベ２", 9000, @0, 0, DxlAuto, false);
	Wait(5600);
	FadeDelete("絵イベ２", 1000, true);

	WaitKey(1000);

	CreateWindow("絵窓", 5000, 192, 0, 400, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);

	CreateTextureSP("絵窓/絵イベ", 1000, 30, -230, "cg/ev/resize/ev261_村正メイドさんバージョンsex.jpg");

	Move("絵窓/絵イベ", 3000, -110, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);
	Fade("絵板写", 3000, 1000, null, false);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260050a00">
「完璧だ」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260060a01">
「これ、何なのか訊いていいかしら？
　……どっちかっていうと私の方であんまり
訊きたくないんだけど……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260070a00">
「貴人に仕える女性が着る服には違いないぞ。
　西洋の、だが」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260080a01">
「本当かな……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260090a00">
「いや、良い。
　いや、素晴らしい」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260100a01">
「褒めてくれるのは嬉しいんだけどね。
　……なんか今の貴方、駄目な病気っぽい」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260110a00">
「病気は病気だが、おそらく地球上の男性の
過半数が患っている病気だから、気にしない
でくれ」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260120a01">
「何なんだか。
　で、私はこの格好でどうしたらいいわけ？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260130a00">
「そうだな……。
　お茶を貰おうか」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260140a01">
「道具は？」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260150a00">
「テーブルの上の、それだ」

{	FwR("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260160a01">
「これ……？
　ふぅん。海を越えるとお茶の道具もこんな
風になるのね」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260170a00">
「所変われば、だからな」

{	FwR("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260180a01">
「ちょっと待ってて」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//背景あったらここでイベント一旦フェードアウト inc櫻井
	Zoom("絵窓", 1000, 0, 2000, null, false);
	Fade("絵板写*", 1000, 0, null, true);
	Delete("絵窓");

//◆かちゃかちゃ。
//◆がっちゃん。
	OnSE("se日常_食器_お茶準備_L", 1000);

	WaitKey(3000);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_金属落ちる", 1000);

	WaitKey(500);

	SetFwR("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260190a01">
「わっ、わっ……
　ごめん、こういうの使ったことないから！」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260200a01">
「こぼしちゃった、拭かないとっ」

{	OnSE("se擬音_コミカル_ガーン01", 1000);
	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260210a00">
「……ッ……」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆ガーン
	OnSE("se擬音_コミカル_ガーン02", 1000);

	SetFwR("cg/fw/fw村正_驚きb.png");
	SetComic(@280, @0, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260220a01">
「なんで感動してるの!?」

</PRE>
	SetTextEXR();
	TypeBeginTimeRI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwR("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260230a00">
「いや。いやいや。
　俺としたことが……些か取り乱した」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260240a00">
「危うく魂を根こそぎ持っていかれるところ
だった」

{	FwR("cg/fw/fw村正_凹むb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260250a01">
「どこへよ……」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260260a00">
「構わずに続けてくれ。
　何度失敗してもいい」

{	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260270a01">
「しませんっ。
　すぐ淹れ直すから、待ってて」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

//◆かちゃかちゃ。
	CreateSE("SEL01","se日常_食器_お茶準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureEX("絵イベ", 1000, -430, -570, "cg/ev/resize/ev261_村正メイドさんバージョンm.jpg");
	Fade("絵イベ", 1000, 1000, null, true);

	WaitKey(1000);

	SetVolume("SEL*", 1000, 0, null);
	Fade("絵イベ", 1000, 0, null, true);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260280a00">
「…………」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260290a01">
「……？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆かちゃかちゃ。
	CreateSE("SEL01","se日常_食器_お茶準備_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	Move("絵イベ", 0, -283, -1060, null, true);
	Fade("絵イベ", 1000, 1000, null, true);

	WaitKey(1000);

	SetVolume("SEL*", 1000, 0, null);
	Fade("絵イベ", 1000, 0, null, true);

	SetFwR("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260300a00">
「…………」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260310a01">
「……ねえ」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260320a00">
「何だ」

{	Fade("絵イベ", 1000, 1000, null, false);
	FwR("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260330a01">
「視線が気になる」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260340a00">
「何故だろう」

{	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260350a01">
「ほのかに邪念を感じるっていうか」

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260360a00">
「はて」

{	FwR("cg/fw/fw村正_照れ.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260370a01">
「……いやらしいこと、考えてない？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260380a00">
「うむ。考えている」

{	FwR("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260390a01">
「否定してよっ！
　逃げ場が無くなるじゃないの！」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260400a00">
「だから肯定した」

{	FwR("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260410a01">
「だ、だめだからね。
　こんな所で」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260420a00">
「しかしその服を持ち出すわけにはいかない
のでな」

{	Move("絵イベ", 10000, @0, -260, DxlAuto, false);
	FwR("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260430a01">
「…………」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260440a00">
「…………」

{	FwR("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260450a01">
「……………………」

{	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260460a00">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵イベ*", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　はぁぁぁぁ。
　
　村正が深々と嘆息した。
　仕方なさそうに、こちらを見やってくる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260470a01">
「……もぅ。
　どうして欲しいの？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260480a00">
「説明しよう。
　何、簡単な事だ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 1000, 1000, null, true);

//◆ＥＶ：メイドさんご奉仕。

	SetVolume("@mbgm*", 1000, 0, null);

	CreateTextureSP("メイド01EX", 4210, -250, -30, "cg/ev/resize/ev262_村正メイドさんご奉仕_al.jpg");
	Delete("絵イベ");

	WaitKey(1000);

	FadeDelete("黒",1000,true);

	SoundPlay("@mbgm28", 0, 1000, true);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260490a01">
「……へんたい。ふらちもの」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260500a00">
「失敬な」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	Move("メイド01EX", 3000, @0, -200, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　敬えというのが無理な構図ではあるが。
　村正を<RUBY text="ひざまず">跪</RUBY>かせ、膝の間に入れている。

　既に隆起したものと直面する格好だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	CreateTextureSP("メイド01", 4200, Center, Middle, "cg/ev/ev262_村正メイドさんご奉仕_a.jpg");

	Move("メイド01EX", 3000, @0, @-200, null, false);
	FadeDelete("メイド01EX", 1000, false);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260510a01">
「こんなもの突きつけて……もー」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260520a00">
「恨むなら己の服装を恨んでくれ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260530a01">
「着せたの、貴方でしょ！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260540a00">
「俺も惑わされている犠牲者に過ぎん」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260550a01">
「わけわからないし……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260560a00">
「村正。手を貸せ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260570a01">
「手？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260580a00">
「利き手」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260590a01">
「はい」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分

	CreateTextureEX("メイド02", 4400, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_b.jpg");
	Fade("メイド02", 1000, 1000, null, true);
	Delete("メイド01");


	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260600a01">
「……握らされた……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260610a00">
「落ち込まないように」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260620a01">
「これ……<RUBY text="こす">擦</RUBY>るの？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260630a00">
「うむ。軽くでいい」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260640a01">
「こう……？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　細い指が、言葉通りの動作をする。

　愛戯と云うにはたどたどしい。
　快感と呼べるほど明確な形を成さないむず痒いもの
が、神経を這い上がってきた。

　焦らされているような感覚。
　だが不快感とは遠い。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260650a01">
「こんなことさせて楽しむなんて」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260660a00">
「昨晩、似たような事をお前の方からされた
気もするが……」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260670a01">
「あ、あれはあれ！
　これはこれよっ！」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260680a00">
「あれほど大胆かつ強引な真似ができたお前
なら、この程度は大丈夫だ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260690a01">
「……うぅー……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260700a00">
「もう少し強くしてくれてもいい」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260710a01">
「……こう？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260720a00">
「ああ……」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260730a01">
「…………。
　だんだん恐い感じになってきた」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260740a00">
「生理現象だ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260750a01">
「これじゃなくて。
　貴方が。目付きとか」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260760a00">
「……すまん。
　<RUBY text="・・">それ</RUBY>は本当に病気だ」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0260770a00">
「正気な内に謝っておく」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260780a01">
「でもやめないのね……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260790a00">
「次は口を使ってくれ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260800a01">
「あまつさえ要求が進んでる……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260810a00">
「村正」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260820a01">
「はい。……わがまま」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆差分

	CreateTextureEX("メイド03", 4600, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_c.jpg");
	Fade("メイド03", 1000, 1000, null, true);
	Delete("メイド02");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　<RUBY text="ためら">躊躇</RUBY>いがちに、村正が粘膜へ舌をつける。
　ほんの少し、触れる程度。

　指とは違うぬめった感触。
　今度の刺激は性感そのものだった。

　舌が接触の面積を広げる。
　感覚が増長する。

　悦びを訴えて、醜悪な肉の塊が脈打った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260830a01">
「……いいの？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260840a00">
「とても」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260850a01">
「私はすごく恥ずかしいんだけど」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260860a00">
「だからこそ。だからこそだ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260870a01">
「……男って生き物は……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　そう言いながらも、村正は続けてくれる。
　先端へ舌を這わせ、口の部分をつつくようにする。

　それが良いと知っての行為ではなかったのだろうが、
効果は著しかった。
　疼きを覚え、我知らず下唇を舐める。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260880a00">
「良し。そのまま……」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260890a01">
「……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260900a00">
「口の中に入れてくれ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260910a01">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("メイド04", 4800, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_d.jpg");
	Fade("メイド04", 1000, 1000, null, true);
	Delete("メイド03");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　目で責めてくる村正に、気付かぬふりを装う。
　首根を押さえて軽く促した。

　人でなし、と言いたげな瞳のまま、村正は許容する。

　肉筒が口唇の狭間へ割って入った。
　醜いものと綺麗なものとが交わるその様は、見るに
つけ蠱惑的。

　<RUBY text="やま">疚</RUBY>しさを伴った嬉しさが込み上げる。

　これはまずい。
　これは――いい。

　抑えが利かなくなってくる。

　村正にこんな事をさせていると思うと、暗色の喜悦
はいや増す。

　困惑しながらも、村正は奉仕を続けていた。
　口の中のものを持て余しつつ、不器用に舌を蠢かせ、
触れ合わせる。

　快感が募る。
　徐々に、徐々に高まる。

　だがもどかしい。

　抑えが利かない。

　俺は自ら動いた。
　女の頬に手を添えて、出し入れする。

　苦しかったのか、村正が眉をしかめた。
　それでも吐き出そうとはしない。

　その我慢に付け入って、享楽を貪る。
　頬の内側に擦りつけ、更には喉まで犯した。

　<RUBY text="たま">堪</RUBY>らなくなる。

　こんな下劣な行為は、
　――――余りにも良い。

　限界だ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260920a00">
「村正」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260930a01">
「……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260940a00">
「こっちを向いていろ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　肉根を引き出す。
　鼻先へ据える。

　そうして、村正が理解するよりも先に、欲望を迸ら
せた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆差分：顔射

	CreateColorEX("白フラ", 15000, "WHITE");
	Fade("白フラ", 100, 1000, null, true);
	CreateTextureSP("メイド05", 5000, @0, @0, "cg/ev/ev262_村正メイドさんご奉仕_e.jpg");
	Delete("メイド04");
	Fade("白フラ", 300, 0, null, true);

	Fade("白フラ", 100, 1000, null, true);
	FadeDelete("白フラ", 1500, true);

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260950a01">
「きゃ……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　反射的に逃げようとするのを押さえつけ。
　横を向く事さえ許さず、正面から浴びせる。

　鼻梁から目元、額。
　前髪も。

　よくもこれ程、と自分で思う量。
　小さな顔の上に白濁の液を撒く。

　動けなくされた村正は、暴行を甘んじて受けている。
　<RUBY text="まぶた">目蓋</RUBY>を震わせる事しかできない。

　最後の一滴まで、俺は出し切った。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260960a01">
「んっ……くぅ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260970a00">
「いい姿だ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0260980a01">
「…………。
　終わった……？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0260990a00">
「いや」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261000a01">
「え？」

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261010a01">
「だって……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　だっても何もない。
　俺の欲求はまだ尽きていなかった。

　男根は固さを保っている。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261020a00">
「これからだ」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261030a01">
「な、何が？」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261040a00">
「すぐにわかる」

{	NwR("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261050a01">
「あの、御堂……。
　もう目付きが恐いのを通り越して赤裸々に
危険なんだけど」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261060a00">
「病気だと言ったろう」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//背景あったらここでCG切り替え inc櫻井
	FadeDelete("メイド*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　体内に在る、愉楽を追求する何かが俺を動かす。

　村正の体を転がし、腰を抱え上げた。
　尻を差し出す卑猥な格好が出来上がる。

　後は裾を<RUBY text="まく">捲</RUBY>って下着をずらせばいい。
　だが性急さは無用だ……時間はある。

　まずは<RUBY text="み">視</RUBY>て味わおう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0261070a01">
「……あぅ……」

{	NwR("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0261080a00">
「さぁて」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　楽しむか。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
	//◆フェードアウト
		ClearWaitAll(1500,1500);
	}
//============================================



}

..//ジャンプ指定
//次ファイル　"md06_027.nss"