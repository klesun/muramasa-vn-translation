//<continuation number="460">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_017.nss_MAIN
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
	#bg006_小光の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_018.nss";

}

scene md06_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_016.nss"


//◆夜
//◆小光の家

	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg006_小光の家_03a.jpg");
	FadeBG(0, true);

	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01",1000,500,0,1000,null,true);

	Delete("上背景");
	FadeDelete("黒",1500,true);


	SetVolume("SEL01", 1000, 500, null);


	SoundPlay("@mbgm27", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……少し、降り始めたようだ。
　
　壁が薄いからか、小雨の音がよく響く。

　橋の再建を始めてよりこのかた、俺は<RUBY text="ひかり">光</RUBY>の家で厄介
になっている。
　外れとはいえ鎌倉市内。署長宅から通うに不都合は
無いのだが――理由あってこうしていた。

　家主への返礼は食料ほか生活必需品である。
　今の時勢そして子供の一人暮らしという事情を思う
に、現金よりこの方が良かろうと考えたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　一度、一緒に暮らさないかと持ち掛けてみた。
　その返答は迷いなく。

　ここで母の帰りを待つからと、光は首を横に振った。
　
　以来、その話はしていない。

　前触れもなく姿を消したという母親が戻る見込みは
皆無に近い――そう思う。
　死んでいれば当然、生きていてもだ。

　しかし、そこまで口にして光を説き伏せるべきとは
思われなかった。それは全く彼女にとって良い事では
ないと思えた。
　だから俺は口を噤んだ。

　彼女は独りきりに見える。
　だが家族は<RUBY text="・・・・">まだいる</RUBY>のだ――彼女がそう信じる限り。
俺の独断でそれを取り上げて良い筈はない。

　俺にできる親切とは、他人同士の距離を踏み越える
事ではなく守る事であった。彼女の聖域を侵さぬよう。
　その距離から今、光は俺に不分明な眼差しを注いで
いる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170020a00">
「……？　何か？」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170030b34">
「かげあきは……」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170040b34">
「どうして、がんばるの？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170050a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　言葉足らずの問い掛けは、それでも意味明瞭だった。
　問われているのは、難民を語らって橋の建て直しを
試みる俺の振舞いだ。

　彼女は一部始終を見ていたのか。
　それとも見るまでもなく、大人にはない不可思議な
感性で俺が<RUBY text="・・・・・・">頑張っている</RUBY>事を悟ったのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小光_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170060b34">
「どうして？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170070a00">
「……は。それは……
　みんなに仲良くして欲しいからです」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170080b34">
「なかよく？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170090a00">
「はい」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170100b34">
「どうして？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　繰り返しの疑問。
　俺は脳裏で言葉を選んだ。

　……適切かどうかわからないが……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170110a00">
「和を以て貴しとす」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170120b34">
「わお？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170130a00">
「和を以て」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170140b34">
「わをもって」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170150a00">
「貴しとす」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170160b34">
「とぉとしとす」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170170a00">
「はい」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170180b34">
「……なぁに？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170190a00">
「昔の偉い人が言った言葉です。
　仲良くする事を大切にしなさい――」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170200a00">
「争ってばかりいては何もできない。
　争わず、助け合えば、どんな事でもできる
から……と」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170210b34">
「どんなことでも？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170220a00">
「はい。
　食べる物を育てたり、家を建てたり」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170230b34">
「どうぶつえんは？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170240a00">
「できます」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170250b34">
「えいがかんは？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170260a00">
「できます」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170270b34">
「すごい……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170280a00">
「はい。
　ですが――」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170290a00">
「仲良くせず、争っていると、そうした物は
作れないばかりか、壊してしまうこともあり
ます」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170300b34">
「だめ……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170310a00">
「はい」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170320b34">
「あらそわないで、なかよくするには、どう
したらいいの？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170330a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170340a00">
「貴方が以前、して下さったように」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170350b34">
「？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170360a00">
「貴方は自分の食べ物を人に与えました。
　自分よりも困っているから、と」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170370a00">
「……簡単なようで難しい事です。
　自分に余裕がある時、他人に優しくできる
人は多くいる――しかし自分が苦しい時にも
そうできる人は少ない」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170380a00">
「自分が苦しいと、人は自分だけを守り、時
には他人から奪って自分を救おうとさえする。
　……貴方はそうではなかった」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170390b34">
「…………」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170400a00">
「とても立派な事です」

{	FwC("cg/fw/fw小光_照れ.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170410b34">
「……そう……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　褒められる事に慣れていないのか。
　光ははにかんで、俯いた。

　頬に朱が差して、桃のようになっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170420a00">
「…………。
　誰もが自分の事より他人の事を思いやれば、
争いなど起きません」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170430a00">
「それは……とても良い事です」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170440b34">
「……うん」

//◆微笑
{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0170450b34">
「そうなると、いいね」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0170460a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆雨音
	SetVolume("SEL01", 1000, 1000, null);
	CreateColorEX("黒幕１", 25000, "#000000");
	Fade("黒幕１", 2000, 1000, null, true);

	DeleteStR(0,true);

//雨音聞かすためのウェイト

	WaitKey(2000);

	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md06_018.nss"