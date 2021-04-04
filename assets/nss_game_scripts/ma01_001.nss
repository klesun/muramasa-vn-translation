//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_001.nss_MAIN
{

	$TITLE_NOW = "　";

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
	#bg001_空a_01=true;
	#bg017_竹林_01=true;
	#bg019_廃校教室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_002.nss";

}

scene ma01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



	PrintBG("上背景", 30000);

	CreateColorSP("絵色100", 1500, "Black");

	FadeDelete("上背景",300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　彼は破壊を求めたわけではない。
　そこまで幼稚ではなかった。

　あくまでもそれは消極的選択だった。
　彼が本当に欲したのは永遠だ。
　
　しかし与えられなかった。

　愛したすべては失われ滅びる。
　ならばせめてと、彼はその喪失を自らの手で行った
に過ぎない。

　……結局は、幼稚であったということか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆青春ソングっぽいＢＧＭ
//◆青空

	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	SoundPlay("@mbgm29",0,1000,true);
	Fade("絵背景100", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
〝抜けるような青い空　見上げたあの日の公園〟

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：グシャ
	OnSE("se擬音_粘着質_ゲル潰れる02",1000);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
〝すずやかな風が吹き抜ける　こころをのせて〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山林
	CreateTextureEX("絵背景200", 10000, Center, Middle, "cg/bg/bg017_竹林_01.jpg");
	Fade("絵背景200", 1000, 1000, null, true);

//◆ＳＥ：ドス
	OnSE("se戦闘_攻撃_刀刺さる02",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
〝ぼくは走る　風を追って　君に向かって〟

{	OnSE("se擬音_粘着質_ゲル潰れる02",1000);}
//◆ＳＥ：ズシャッ
〝君は笑う　噴水のそばで　両手を広げて〟

{	OnSE("se戦闘_攻撃_刀刺さる03",1000);}
//◆ＳＥ：ゾブッ。なんか斬る音
〝手をつなぐ　抱き締め合う　芝生の上で踊りながら〟

{	OnSE("se戦闘_攻撃_刀刺さる02",1000);}
//◆ＳＥ：ブスリ。なんか刺す音
〝永遠だと　信じていた　あの日あの刻あの空〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆廃校の教室
	CreateTextureEX("絵背景300", 10000, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	Fade("絵背景300", 1000, 1000, null, true);

	CreateSE("SE01","se擬音_粘着質_ゲル潰れる01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//◆ＳＥ：グシャドスズシャブス。妙なリズムで。
〝あの空の色　ずっと忘れない　僕と君の時間〟

〝あの風の音　ずっと忘れない　僕と君の夢〟

//◆ＳＥ：グシャドスズシャブス。妙なリズムで。
〝あの空の色　ずっと忘れない　僕と君の時間〟

〝あの風の音　ずっと忘れない　僕と君の夢〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm31",2000,1000,true);
	SetVolume("@mbgm29",4000, 0, null);

//◆ＳＥ：グシャドスズシャブス。妙なリズムで。
//◆フェードアウト

	ClearWaitAll(2000,2000);
	Wait(2000);


..//ジャンプ指定
//次ファイル　"ma01_002.nss"

}


