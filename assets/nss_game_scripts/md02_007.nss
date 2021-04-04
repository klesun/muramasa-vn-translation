//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_007.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_008.nss";

}

scene md02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_006.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(0,false);
	FadeStL(0,false);
	SoundPlay("@mbgm16", 0, 1000, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",0,true);


//◆ぱんぱん。
	OnSE("se人体_動作_手を叩く01", 1000);
	WaitKey(1500);
//◆襖が開く

	OnSE("se日常_建物_スライド開く01", 1000);

	SetNwC("cg/fw/nw女中.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070010e259">
「はッ。
　お呼びでございましょうか」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070020a07">
「そこの姉ちゃん、物置に連れてってやって」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070030e259">
「はッ」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070040a01">
「ちょっと」

{	SoundPlay("@mbgm25",0,1000,true);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070050a07">
「ほら、行けよ。
　その人がいい部屋に案内してくれるから」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070060a01">
「今はっきり、物置って言ったでしょうが！」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070070a07">
「ち……いらねーこと聞いてやがる」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070080a01">
「とことん決着つけないとだめなのかしら」

{	SetComic(@0,@0,15);
	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0070090a07">
「上等だオラ。
　おとなしく物置に片付いてりゃいいもんを、
スクラップ工場の方が趣味だってんならそう
してやる」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070100a01">
「やってみなさいよ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteComic();


//◆がっし。
	OnSE("se擬音_コミカル_殴り02", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	OnSE("se擬音_コミカル_殴り02", 1000);
	OnSE("se人体_動作_腕を掴む01", 1000);
	DeleteStA(200,false);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg097_堀越御所内景明の部屋_01.jpg");
	Shake("絵背景100", 500, 10, 0, 0, 0, 1000, Dxl2, false);

	Wait(300);

	SoundPlay("@mbgm08", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　消えた筈の炎が再燃する。

　それは魂の激突であった。
　熱く燃える力と力のぶつかり合いであった。
　
　どう考えても近所迷惑であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0070110a00">
「…………」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070120e259">
「お客様。
　お茶など、ご用意致しましょうか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0070130a00">
「……夜も遅いので。
　お気持ちだけ頂きます」

{	NwC("cg/fw/nw女中.png");}
//【ｅｔｃ／堀越女中】
<voice name="ｅｔｃ／堀越女中" class="その他女声" src="voice/md02/0070140e259">
「畏まりました。
　では、ごゆるりとお過ごし下さいませ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆しゃー、ぴしゃん。
	OnSE("se日常_建物_スライド閉める02", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　無茶を言うなと返したかったがやめておいた。
　養父母の教育の賜物である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw村正_驚きa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0070150a01">
「……あら？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//すぐ続くのでClear使わない inc櫻井

}

..//ジャンプ指定
//次ファイル　"md02_008.nss"