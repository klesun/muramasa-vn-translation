//<continuation number="880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_003.nss_MAIN
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
	#bg051_湊斗家居間_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_004.nss";

}

scene ma05_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_002.nss"

//◆食卓風景・回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_湊斗家居間_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	FadeDelete("絵暗転", 2000, true);

	FadeDelete("エフェクト１", 500, true);

	SetFwC("cg/fw/fw光三年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【光】
<voice name="光" class="光" src="voice/ma05/0030010a14">
「…………」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030020a00">
「…………」

{	SoundPlay("@mbgm22",0,1000,true);
	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030030b46">
「……あー、我が子たちよ。
　キミらなんで、箸を持ったままぴくりとも
せず見つめ合っとんのかね？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030040a00">
「いえ……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030050a14">
「別に何でもありません。母上。
　どうかお気になさらず」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030060b46">
「すいません。すっごく気になります。
　気になって、わたしまでごはん食べられま
せん」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030070a00">
「御迷惑を」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030080b46">
「おまえはどしたの、景明」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030090a00">
「は……
　その、光の視線が……先程から」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030100a14">
「…………」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030110b46">
「……一挙手一投足を逃さねぇーって目だな。
　血を分けた娘ながら野獣にしか見えん」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030120b46">
「おーい。そこの花も恥らうお年頃な少女ー。
　その暗黒闘気は一体なんなんだよ」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030130a14">
「何でもないと言っているでしょう。
　構わず、さっさと豚のように食らって牛の
ように寝て下さい」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030140b46">
「……ますます食えないだろ。
{	FwC("cg/fw/fw統_通常a.png");}
　ん？　あー……もしかして、そういうこと
か？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030150a00">
「統様？」

{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030160b46">
「いやね。
　今日、久しぶりにこの子が料理を手伝って、
その――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("絵白", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("絵白", 100, false);

	SetFwC("cg/fw/fw光三年前_冷たい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/ma05/0030170a14">
「……母上。
　食卓での口はお喋りではなく、食事のため
にあるものです」

//【光】
<voice name="光" class="光" src="voice/ma05/0030180a14">
「無駄口は慎まれたが宜しい」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030190b46">
「ひっ、ひぃ……！
　かっ、かっ、景明っ、わた、わたしの首っ、
ちゃっ、ちゃんと……つ……ついてるっ？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030200a00">
「はい。無事です。
　流石は統様……今の一撃をよくぞ躱されま
した。往年の<RUBY text="はがねみこ">鋼鉄巫女</RUBY>は未だ健在のご様子」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030210b46">
「そんな感心してなくていいから息子よ！
　もう少しこっちへ寄りなさい。そんでまた
あの芝刈機みたいな手刀が飛んできたら母を
守るように。何度も避けられるかあんなの！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030220a00">
「……申し訳ありません。無理です。
　自分にはそもそも指先が見えませんでした」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030230b46">
「ひぃぃぃぃ……
　なんでこんな恐ろしいナマモノになっちゃ
ったんだこの娘はぁ……」

//【統】
<voice name="統" class="統" src="voice/ma05/0030240b46">
「母さん、家庭内暴力の恐怖に屈しそうです。
　ＤＶってこーいうのか？」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030250a14">
「景明。
　二人きりの食卓だからといって、変に気を
遣う必要はない。早く食べるといい」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030260a00">
「二人？」

{	FwC("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030270b46">
「あれ……わたしハブられてる……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030280a14">
「二人だ。
　もし、<RUBY text="・・・・・">いもしない</RUBY>三人目がどうしても気に
なるのなら言え。質量保存の法則を無視して
でも、この宇宙から完全に抹消してやろう」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030290b46">
「すみません。もう黙って食べます。
　わたしいませんから……母さんここにいま
せんから……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030300a00">
「……」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030310a14">
「さあ、景明」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030320a00">
「うむ……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030330a14">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030340a00">
「…………」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030350a14">
「景明。迷い箸は行儀が悪いぞ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030360a00">
「俺もやりたくてやっているわけではないの
だが」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030370b46">
「何か取ろうとするたびに視線の十文字槍が
突き刺さるからああなってんだろ……」

{	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030380a14">
「何やら煩い虫ケラがいるな？　潰すか」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030390b46">
「母親に対する言葉じゃない……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030400a00">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030410b46">
「あー、景明。
　このままだと飯が冷めていく一方だからな。
とりあえず、その煮魚から食え」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030420a00">
「煮魚？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030430b46">
「それ」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030440a00">
「……あ。煮魚でしたか。
　形崩れして、原形を留めていないので何か
全くわかりませんでした」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆閃光
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("絵白", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("絵白", 100, false);

	SetFwC("cg/fw/fw統_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/ma05/0030450b46">
「どあー！
　今のは矛先違うんじゃないか娘よ！」

{	FwC("cg/fw/fw光三年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030460a14">
「黙れ、母上」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030470b46">
「うわーん！　こんな殺伐とした親子関係は
いやだー！　もう実家に帰るぅー！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030480a00">
「ここです」

{	FwC("cg/fw/fw統_怯え.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030490b46">
「逃げ場ねぇー！」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030500a14">
「景明」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030510a00">
「う、うむ。
　では頂きます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//あきゅん「SE：要望：食器カチカチとか、食事用の音」
	CreateSE("SE01","se日常_食器_お茶準備_L");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);
	SetVolume("SE01", 200, 0, null);
	OnSE("se日常_食器_カップ置く",1000);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　もぐもぐ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030520a00">
「……ん？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030530a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030540a00">
「おや……うむ。
　見てくれは良くないが……この煮魚」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030550a14">
「……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030560a00">
「旨い。
　いつもの味付けとは少し違うが……これは
これで、なかなか」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030570a14">
「そうか！」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030580b46">
「え？　ほんとか景明？
　無理するなよ。駄目そうだったら戻しても
いいぞ。こんなこともあろうかと思ってほら、
母さんちゃんと桶をここに」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵震",110);

//◆閃光
//◆ずがーん。ヒット。
//◆ＳＥ：ひゅー……。どっか飛んでく音。終了待ちしない
	CreateSE("SE01","se戦闘_攻撃_刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白", 5500, "#FFFFFF");
	Wait(10);
	DrawTransition("絵白", 100, 1000, 0, 1000, null, "cg/data/slide_05_00_1.png", false);
	FadeDelete("絵白", 100, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030590a00">
「……？
　統様は何処へ行かれた？」

//◆ＳＥ：どぼーん。終了待ちしない
{	SetVolume("SE*", 100, 0, null);
	Shake("絵震", 600, 0, 6, 0, 0, 1000, Dxl2, false);
	CreateSE("SE01","se人体_動作_水中飛び込み02");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030600a14">
「手洗いではないか。
　気にしてやるな」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030610a00">
「今の、どぼーんという音は……
　あたかも豪快に吹っ飛ばされた人間が裏の
沢へ落ちたかのような……」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030620a14">
「蛙か何かだろう。
　さ、気にせず食え」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030630a00">
「うむ……」

{//あきゅん「SE：要望：食器カチカチとか、食事用の音」
	CreateSE("SE01","se日常_食器_お茶準備_L");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030640a00">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030650a00">
「うん。やはり良い味だ。
　少し変わっているが、そこがまた面白い」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030660a14">
「そうかそうか……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030670a00">
「有難う、光」

{	FwC("cg/fw/fw光三年前_唖然.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030680a14">
「……」

//【光】
<voice name="光" class="光" src="voice/ma05/0030690a14">
「な、なんだ？
　唐突に」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030700a00">
「お前が作ったのだろう？」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030710a14">
「……わかるのか？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030720a00">
「ああ。
　統様の<RUBY text="・・">気配</RUBY>が無かったからな。この皿だけ
は」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030730a14">
「…………」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030740a00">
「味をみて、違うと確信した」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030750a14">
「だが……食べもせぬうちにそれがわかった
のか」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030760a00">
「ああ。
　統様の気配の有無は、何となくだがわかる」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030770a14">
「……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030780a00">
「さて。早いところ食べ終えてしまおう。
　このままだと本当に冷める」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030790a00">
「光、お前も」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030800a14">
「ああ……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030810a00">
「どうした」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030820a14">
「いや、何でもない！
　食う！」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030830a14">
「む……うむ。この味か。
　この味が景明の好みなのだな？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030840a00">
「そうだな……五月蝿いことを言えば、もう
少し締まった味付けの方が好みだが」

{	FwC("cg/fw/fw光三年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030850a14">
「締まった味付け……難しいことを云う。
　詳しく教えてくれ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0030860a00">
「うむ。つまり――」

{	FwC("cg/fw/fw光三年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0030870a14">
「ふむふむ――」

{	FwC("cg/fw/fw統_泣き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0030880b46">
「……子供たちよー。
　その和やかで幸福な団欒は、母の尊い犠牲
の上に成り立ってることを忘れるんじゃない
ぞー……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"ma05_004.nss"