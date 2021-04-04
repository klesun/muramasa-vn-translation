//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_036.nss_MAIN
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
	#bg001_空b_01=true;
	#bg039_競技場客席a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_037.nss";

}

scene md02_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_035.nss"

//◆翌朝
//◆食卓

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　鶴の一声であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @30, @0,"cg/st/st茶々丸_通常_変装_b.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360010a07">
「今日は遊びに行くから支度してね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360020a00">
「……は」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360030a01">
「遊び？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 2000, 1000, null, true);

	Delete("@OnBG*");
	DeleteStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　それから数時間後。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空。ガーッと車の走行音
//◆田村サーキット
//◆※鎌倉サーキットの流用or微細アレンジで。他も。

	CreateSE("車", "se乗物_車_発車01");
	MusicStart("車", 0, 1000, 0, 1000, null, true);
	OnBG(100, "bg001_空b_01.jpg");
	FadeBG(0, true);
	FadeDelete("黒幕１",1500,true);
	WaitKey(1500);
	SetVolume("車", 1000, 0, null);

	OnBG(101, "bg039_競技場客席a_01.jpg");
	FadeBG(1500, true);
	Delete("@OnBG100");

	SoundPlay("@mbgm25", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　俺達は、駿河國<RUBY text="おしか">小鹿</RUBY>の<RUBY text="タムラ">田村甲業</RUBY>直営サーキット場に
いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360040a01">
「御堂、平気？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360050a00">
「……ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　乗り慣れていない自動車での旅に、少々酔った。
　便所に駆け込みたくなる程ではないが、視界はやや
安定感を欠いている。

　<RUBY text="・・">揺れ</RUBY>が治まるまでしばらく掛かりそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360060a00">
「寝不足が響いているな」

{	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360070a07">
「ありゃ……お兄さんもか」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360080a01">
「も？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360090a07">
「御姫も。
　昨日、夜更かししてたせいじゃないかなー。
今朝は引っ込んだまんまで、出てくる様子が
なかったから、置いてきちゃった」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360100a00">
「……そうですか」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　部屋に閉じ篭もって朝寝を貪っているという事か？
　あれは規則正しい生活リズムを持っていたはずだが
……今は違うのかもしれない。

　ともあれそういう事なら、俺のいない間に銀星号と
なって暴れ出す恐れは無さそうだ。
　引っ張られるまま勢いでここまで来たものの、すぐ
に戻るべきではないのかと考えていたのだが。

　<RUBY text="・・">遊び</RUBY>というのもどこまで本気かわからない――これ
は堀越公方の全てについて言えるが。
　ひとまず、彼女の意向に沿った方が良いだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");

	SetFwC("cg/fw/fw茶々丸変装_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360110a07">
「場所借りて、少し休む？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360120a00">
「大丈夫です。
　それより閣下……どうしてここへ？」

{	FadeStR(300, false);
	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0360130a01">
「そうよ。
　なんで車の屋根に張り付いて、沿道の人に
今日一日の話題を提供しながらこんな所まで
来なくちゃいけなかったのよ？」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360140a07">
「そりゃ呼んでねえのに無理矢理くっついて
きたおめーさまだけですが。
{	Wait(500);
	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
　……お兄さん、今日が何日だか忘れた？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360150a00">
「今日……？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360160a07">
「今年最後のイベント。
　タムラチャレンジカップの日だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　そういえば。
　多事多端の渦中、すっかり忘れ去っていたが、成程
今日はその当日だ。

　タムラチャレンジカップとは、田村甲業ほか数社が
主催する毎年恒例の――と言っても数年の歴史に過ぎ
ないが――<RUBY text="アーマーレース">装甲競技</RUBY>大会である。
　規模としてはそう大きくもない。

　が、参加する各社のワークスチームは来年の勝負を
見据えた騎体を送り込んでくるため、<RUBY text="ファン">愛好家</RUBY>の注目度
は非常に高かった。
　座席を取るため四苦八苦した経験が俺にもある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360170a07">
「装甲競技の好きなお兄さんにとっては外せ
ないイベントかなって思ったんだけど」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0360180a00">
「まぁ、確かに。
　……よく自分の趣味をご存知ですね」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0360190a07">
「なぜかなー。
　不思議不思議」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_1.png", true);
	SetVolume("@mbgm*", 1000, 0, null);
}

..//ジャンプ指定
//次ファイル　"md02_037.nss"