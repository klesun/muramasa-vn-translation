//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_005.nss_MAIN
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
	#bg004_鄙びた村a_01=true;
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_006.nss";

}

scene md01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_004.nss"

//◆裏里。bg004
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);
	SoundPlay("@mbgm32",0,1000,true);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(500,true);

	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");

	SetFwC("cg/fw/fw二世村正_疑念.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050010a15">
「……生き残りはこればかりか」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050020a01">
「母様。
　……婆様が、いない」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050030a15">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050040a01">
「いないの……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050050a15">
「いないのなら、おらぬのであろうよ」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050060a01">
「……そんな」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050070a15">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050080a01">
「……っ……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050090a15">
「泣くのなら、何処かに隠れて一人で泣け。
　ここではやめよ」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050100a15">
「御父の前では」

{	FadeStR(300,false);
	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050110b30">
「……………………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050120a01">
「……爺様……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050130b30">
「…………何故だ…………」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050140b30">
「何故、あの方が……
　飽間様が……裏切りなど！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050150b30">
「間違いではないのか……？」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050160a15">
「……長島から逃れてきた者がそう言うのだ。
　事実であろうよ」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050170b30">
「…………おお」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050180b30">
「何たる……
　…………何たるっッ!!」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050190b16">
「……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050200b30">
「……浦夢殿……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050210b16">
「はい……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050220b30">
「うては見誤ったのであろうか……
　あの方を……」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050230b16">
「飽間どのは、とても良い方でした。
　吉野には私をあやしげな呪い師だといって
忌み嫌う人も多かったのですが、飽間どのは
いつも私をかばってくれました」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050240b30">
「……なら……何故……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050250b16">
「……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050260b16">
「良い人に、不義を強いる……。
　そういう時代があります」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050270b16">
「今がそうです。
　今は悪しき世なのです」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050280b30">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆家
	ClearWaitAll(2000, 1000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	CreateSE("SE01","se日常_建物_扉開閉02");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 2000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm14",0,1000,true);

	StR(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050290a15">
「御父。
　いま戻った」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050300b30">
「うむ……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050310a15">
「吉野の方々には、時間を掛けねば良い物は
出来んの一点張りで通しておいた。
　しかし皆、かなり立腹していたぞ」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050320b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050330a15">
「無理はない。
　劒冑造りの勅命を受けてより、既に十余年
が経つ……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050340a15">
「流石に我慢の限度であろう。
　村正は<RUBY text="にく">肉体</RUBY>を捨てることに臆しておるのか、
とまで言われた」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050350a15">
「身を鉄に変え劒冑と成るは蝦夷として生を
受けし者の本望、これを厭うなど有り得ぬ事
と、説き伏せてはきたが……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050360b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050370a15">
「御父。なぜ鍛造せぬ」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050380a15">
「まだ工夫がつかぬと言うのか？
　しかし、もはや浦夢殿も――」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050390b16">
「はい。
　私の知る限りの知識、村正どのにお授けし
ました」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050400a15">
「こう申されている。
　この上、何を求めようというのだ？」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050410b30">
「見えぬ」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050420a15">
「……？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050430b30">
「見えんのだ……。
　至高の劒冑の姿が、依然見えぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050440b30">
「いや。
　前よりも、わからぬようになってしもうた」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050450a15">
「なぜ」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050460b30">
「何の為の劒冑か……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050470b30">
「何を信じて打てば良いのか、わからぬ」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050480a15">
「……正しき帝のため、逆賊を討つ劒冑を、
御大将楠木様に捧げる。
　それではいかぬのか」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050490b30">
「その楠木様が寝返ったら、如何する」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050500a15">
「何を馬鹿な……。
　楠木は六代に渡って南朝へ忠義を尽くして
きた御家ではないか」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050510a15">
「天地が逆さに返ろうと、帝を裏切るなど」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050520b30">
「うてもそう思っておる」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050530a15">
「ならば」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050540b30">
「しかし同じほど信じていた飽間様が、今は
北の偽帝に<RUBY text="こうべ">頭</RUBY>を垂れておる……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050550a15">
「…………」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050560b30">
「わからぬ」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050570b30">
「うてには……もうわからぬ！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050580b16">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_006.nss"