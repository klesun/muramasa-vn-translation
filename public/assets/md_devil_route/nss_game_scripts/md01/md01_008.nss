//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_008.nss_MAIN
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
	#bg023_弥源太の家_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_009.nss";

}

scene md01_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_007.nss"

//◆裏里、家内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080010b30">
「聞けい。
　我が娘よ。我が孫よ」

{	SoundPlay("@mbgm04",0,1000,true);}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080020b30">
「これより村正鍛冶の<RUBY text="みち">法</RUBY>を告げる」

{	FadeStL(300,false);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080030a15">
「うむ」

{	FadeStR(300,false);
	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080040a01">
「はい」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080050b30">
「劒冑とは武の器。
　戦のためのもの」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080060b30">
「ゆえにまず、戦を<RUBY text="み">鑑</RUBY>る。
　戦とは如何なるものなのか――」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080070a15">
「……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080080b30">
「善の働きに非ず！
　正義の顕れに非ず！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080090b30">
「戦とは<RUBY text="ワレ">我</RUBY>の<RUBY text="のぞみ">愛</RUBY>を求めて<RUBY text="カレ">彼</RUBY>の愛を壊す<RUBY text="おこない">行為</RUBY>。
　武とはその暴力」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080100b30">
「独善なり！
　これこそが悪!!」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080110a01">
「――――」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080120a15">
「……では？」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080130b30">
「我ら村正は戦を滅ぼす。
　戦の悪を人々に知らしめ、戦を人の世から
去らしめる！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080140b30">
「武にただ加担するのではなく、
　武を制するための劒冑を打つ!!」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080150a15">
「それが御父の行き着いた答なのだな」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080160b30">
「そうだ」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080170a15">
「ならば、信ずる！
　<RUBY text="あれ">吾</RUBY>は御父の定めた道に従い、後を継ごうぞ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080180a15">
「吾の後は、こやつが継ぐ！」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080190a01">
「は……はい！」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080200a15">
「御父は心置きなく、鍛造に掛かるが良い」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080210b30">
「うむ。
　だが、うてだけではない。なれも鍛えよ」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080220a15">
「む、それは？
　劒冑を二領、献上するということか？」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080230b30">
「そうだ。但し一方にではない。
　南朝と北朝に、一領ずつ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080240b30">
「両陣の武を共に抑えねば、乱は治められぬ」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080250a15">
「道理だ」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080260b30">
「否やはあるまいな？」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080270a15">
「無論！
　御父の理想を体現する劒冑と成ることこそ、
吾が宿望であった」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080280a15">
「後顧の憂いもない。
　こやつには既に、全ての技を伝えてある」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0080290a01">
「……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080300a15">
「明日より早速、鍛造に掛かろうぞ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0080310a15">
「御父の望みが、劒冑をもって人の心中の刃
を砕くにあると知ったからには……
　その望み、必ずや吾が果たす！」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0080320b30">
「うむ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_009.nss"