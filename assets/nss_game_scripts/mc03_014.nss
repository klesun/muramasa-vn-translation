//<continuation number="100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_014.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_015vs.nss";

}

scene mc03_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_013.nss"


//◆付近。林？

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg022_山林a_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm35", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１".1500.true);

//◆雪車町
	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStL(300, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140010a12">
「…………」

//◆カチッ。スイッチ入れる
//◆ザー。無線ノイズ。

{	OnSE("se日常_機械_無線通信03", 1000);
	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140020a12">
「柿沢さん？」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140030a12">
「えぇ、雪車町です……」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140040a12">
「はァい。こちらからも見えましたよ。
　見事に、どぼんっ、と落ちましたねぇ……
へ、へ。お疲れ様でございます」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140050a12">
「ま、<RUBY text="スポンサー">ＧＨＱ</RUBY>への義理はこれで果たせたって
もんでしょう……」


//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140060a12">
「……終わり？
　いえ、いえ、まさか」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140070a12">
「そいつはまだですよ……。
　ヘッ、ヘヘヘヘ」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140080a12">
「……これからが、<RUBY text="・・・・・">あたしらの</RUBY>本番です。
　お気をつけて」


{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140090a12">
「――と。言ってるそばから、か。
　けっ、けっ。けケケ。野郎ォ」


{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0140100a12">
「<RUBY text="・・・・">来ますよ</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc03_015vs.nss"