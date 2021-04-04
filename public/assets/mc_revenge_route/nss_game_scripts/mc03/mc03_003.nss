//<continuation number="1270">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_003.nss_MAIN
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
	#bg068_普陀楽城内部屋_01=true;
	#ev176_十銭銅貨_a=true;
	#ev176_十銭銅貨_b=true;
	#ev176_十銭銅貨_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_004.nss";

}

scene mc03_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_002.nss"


//◆廊下
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	OnBG(100, "bg063_永倉邸廊下_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030010a04">
「どなたでございましょう？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030020a00">
「失礼。湊斗です。
　大尉殿をお見舞い致したく参上しました」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030030a04">
「おお……これは！
　良いところへ！」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030040a04">
「どうぞお入りくださいまし。
　お嬢さま、湊斗さまが参られましたよ！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030050a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝の部屋。庭に面した和室。bg068流用か？
//◆ＢＧＭ：悲痛っぽいの

	OnSE("se日常_建物_スライド開く04", 1000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0,true);

	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	SoundPlay("@mbgm31", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　部屋の中では、大鳥大尉が臥せっていた。
　その頬は青白く、およそ生気を示す色彩がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030060a00">
「大尉殿」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030070a03">
「ああ……景明さま……。
　来てくださったのね……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030080a04">
「ようございましたなお嬢さま……。
　きっと一途な想いが天に通じたのでござい
ましょう」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030090a03">
「ええ……良かった……。
　最期に……こうして、お会いできて」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030100a00">
「何をそのように、お気の弱いことを」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030110a00">
「こちらに座っても構いませんか」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030120a04">
「どうぞ、どうぞ。
　座布団をお出ししましょう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030130a00">
「お気遣いなく」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030140a03">
「ふふ……自分の体のことですもの、自分が
一番わかってましてよ……。
　景明さまだって、本当はおわかりでしょう
……？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030150a00">
「は……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030160a04">
「おいたわしや、お嬢さま……」


//◆前の台詞と同じ調子で
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030170a04">
「茶請けはテンプラ饅頭でよろしいですか、
湊斗さま……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030180a00">
「……天麩羅？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030190a03">
「わたくしの命が尽きるまで……
　もう、幾許もありません…………」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030200a00">
「お戯れを」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030210a04">
「伝統ある会津名物でございます」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030220a00">
「……冒険心旺盛な菓子屋のチャレンジング
新商品ではなく？」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030230a04">
「会津松平家の初代、正之公まで遡る歴史が
ございます」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030240a03">
「冗談でこんなこと、言えるとお思い……？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030250a00">
「冗談では……ないのですか？」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030260a04">
「冗談のような真実でございまして……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030270a03">
「あの庭木をご覧になって、景明さま」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030280a00">
「木？
　……あの落葉樹が、何か？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030290a03">
「葉が一枚、残っていますでしょう……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030300a00">
「はい」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030310a04">
「三百年以上も昔に信州で考案され、高遠の
領主であった正之公の会津移封と共にこの地
へ伝えられたとか――」


//◆ガーン
{	OnSE("se擬音_コミカル_ガーン01", 1000);
	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030320a03">
「……あの最後の葉が落ちた時……
　きっと、わたくしも死ぬのです……」


//◆ガガーン！
{	OnSE("se擬音_コミカル_ガーン02", 1000);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030330a04">
「――なので、信州にも全く同じ菓子が伝統
料理として伝わっているのです！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030340a00">
「まさか――そのようなことが」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030350a04">
「世の中はまこと、油断ならぬものでござい
ます」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030360a03">
「信じて頂けないのは当然ですけれど……
　でも……わたくしにはわかる……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030370a03">
「あの弱々しい一枚の葉は……
　わたくしの……命そのもの…………」


//◆風ぴゅー。

{	OnSE("se擬音_コミカル_風ぴゅー", 1000);
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030380a00">
「……あっ」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030390a03">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆だっ。なんかがシュバーと駆け抜けてシュバーと帰還

//瞬間的に音量下げる inc櫻井
	SetVolume("@mbgm*", 0, 1, null);

	StL(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStL(0, true);
	DrawDelete("@StL*", 300, @1000, "slide_01_01_1", true);


	CreateSE("シュバッ", "se戦闘_動作_空突進02");
	MusicStart("シュバッ", 0, 1000, 0, 1500, null,false);
	Wait(230);
	CreateSE("シュバッ", "se戦闘_動作_空突進02");
	MusicStart("シュバッ", 0, 1000, 0, 1500, null,false);
	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStR(0, true);

	DrawDelete("@StR*", 300, @1000, "slide_01_01_0", true);

//徐々に戻す inc櫻井
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw景明_通常a.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030400a00">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030410a03">
「ああ……今にも落ちてしまいそう……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030420a00">
「しまいそうというか今」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030430a04">
「さ、湊斗さま。お召し上がりくださいませ」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030440a00">
「では頂きます」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030450a00">
「……うぅむ。
　何とも、独特な風味」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030460a04">
「ほっほっほ。
　ご無理をなさらず、お茶を使って下さって
結構でございますよ。濃いめに淹れておきま
したから」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030470a00">
「……いえ……
　慎重に味わってみると、案外」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030480a03">
「ああ、景明さま……！
　お別れの時が来てしまったのですね……」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030490a03">
「最後のお願いを……聞いてください……」

//おがみ：音声合わせ修正
//「今、電光の如き速さで庭に飛び出して葉を
//元通りにしてまた駆け戻って来られませんで
//したか？　大尉殿」
{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030500a00">
「今、電光の如き速さで庭を飛び出して葉を
元通りにしてまた駆け戻って来られませんで
したか？　大尉殿」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030510a03">
「ふふ……夢のようなことを仰らないで……」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030520a04">
「湊斗さま、最早今のお嬢さまはそのような
励ましの言葉さえ辛いのでございます、饅頭
のお代わりはこちらでございます、ああ神は
何ゆえお嬢さまにこのような仕打ちを……！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030530a00">
「頂きます。
　舌が慣れてくると、なかなか旨い……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030540a03">
「どうか――景明さま……！
　あの饅頭……いえあの葉が落ちてしまう前
に、わたくしの願いを……！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆風びゅおーん。

	OnSE("se擬音_コミカル_風ぴゅおーん", 1000);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030550a00">
「…………」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030560a03">
「あぁっ――もう今にも！
　わたくしの命がっ……！」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030570a03">
「命がっ！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030580a00">
「全然、落ちそうにないのですが」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030590a04">
「戻す時、カゼイン接着剤で貼っつけておら
れましたからな。
　台風でも来ない限りはあのままでございま
しょう」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030600a03">
「景明さま……どうかこんなわたくしを憐れ
んでくださいまし……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030610a00">
「憐れむなどと」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030620a03">
「愛してくださらなくてもいいの……
　ほんのわずかな……お情けだけで……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030630a03">
「……それとも……景明さまのお胸の裡には。
　愛情が……おありですの？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030640a00">
「愛情」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030650a03">
「わたくしを……愛してくださるお気持ちが
……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030660a00">
「有りません」


{	OnSE("se人体_血_吐血01", 1000);
	FwC("cg/fw/fw香奈枝_ショック.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030670a03">
「げばふッッ!!」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030680a04">
「あ。
　落ちましたな、葉っぱ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030690a00">
「お茶をもう一杯頂いても宜しいでしょうか」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030700a04">
「どうぞ」


//◆とぽとぽ

{	OnSE("se日常_水_注ぐ01",1000);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030710a04">
「……む、少し濃過ぎましたか」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030720a00">
「いえ、構いません」


//◆ショック死中
{	FwC("cg/fw/fw香奈枝_ショック.png","Monoc");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030730a03">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_驚き.png","normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030740a03">
「はっ!?」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030750a03">
「ああ……景明さま！
　この憐れな女の、最後の願いを……どうか
……！」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030760a04">
「そこまで巻き戻るのですな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030770a00">
「自分に何か、大尉殿の為にして差し上げら
れる事があるのでしょうか」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030780a03">
「あります……
　景明さまにしか……できないこと……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030790a00">
「それは、どのような」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030800a03">
「……どうか、聞いてもお笑いにならないで
ね……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030810a00">
「決して」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030820a03">
「今際の際とはいえ、女の身で……
　こんなことを殿方にお頼みするはしたなさ
は……ああっ、身が縮みます」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030830a04">
「お嬢さま――勇気を！」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030840a03">
「ええ！
　……景明さま！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030850a00">
「はい」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030860a04">
「む、テンプラ饅頭があと二個だけあまって
おりますな。
　湊斗さま、よろしかったら食べてしまって
くださいませ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030870a00">
「有難うございます」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030880a03">
「わたくしの命があるうちに……！
　あの饅頭が落ちる前に……！」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030890a04">
「もう落ちてますよお嬢さま」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030900a00">
「いえ、落ちていません」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetVolume("＠OnSE*", 1000, 0, null);
	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030910a03">
「お願いです……！」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030920a04">
「おや？　先ほど確かに」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030930a00">
「落ちたのは」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030940a03">
「どうか、最後に、景明さまの手で――」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0030950a04">
「饅頭が――」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030960a00">
「葉です」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030970a03">
「この十銭玉三枚、縦に積み重ねて下さい」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0030980a00">
「畏まりました」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆がんがんがーん。十銭硬貨を縦積み三枚。一枚ずつ。

//音楽瞬間的に1に　inc櫻井
	SetVolume("@mbgm*", 0, 1, null);


	OnSE("se擬音_コミカル_硬貨積み", 1000);

	CreateTextureSP("1枚", 12000, @0, @0, "cg/ev/ev176_十銭銅貨_a.jpg");
	Wait(70);
	CreateTextureSP("2枚", 13000, @0, @0, "cg/ev/ev176_十銭銅貨_b.jpg");
	Wait(80);
	CreateTextureSP("3枚", 14000, @0, @0, "cg/ev/ev176_十銭銅貨_c.jpg");


	CreatePlainEX("絵板写", 15000);
	Fade("絵板写", 0, 1000, null, true);
	
	SetBlur("絵板写", 8, true, 400, 200);

	Fade("絵板写", 0, 500, Dxl1, true);
	Zoom("絵板写", 100, 1000, 1000, Dxl1, false);
	Fade("絵板写", 100, 1000, null, true);

	Zoom("絵板写", 500, 1500, 1500, Dxl1, false);
	Fade("絵板写", 500, 0, null, true);
	Zoom("絵板写", 1500, 1500, 1500, Dxl1, false);

//戻す inc櫻井
	SetVolume("@mbgm*", 1000, 1000, null);



	SetFwR("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0030990a03">
「出来たーーーーーーーーーーーーー!?」


{	FwR("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031000a04">
「すげェーーーーーーーーーーーーッ!!」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031010a00">
「この技は修行しましたから」


{	FwR("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031020a03">
「なんでっ!?」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031030a00">
「妹が得意だったので、つい張り合ってしま
いました」


{	FwR("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031040a04">
「おかしいですよご兄妹!?」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031050a00">
「ちなみに妹は十枚いけます」


{	FwR("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031060a03">
「超人だ!!　勝てる気がしない!!」


{	FwR("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031070a04">
「とりあえず、落ち着きましょうお嬢さま。
　お茶をどうぞ」


{	FwR("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc03/0031080a04">
「葉っぱも一個あまっております」


{	FwR("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031090a03">
「ええ……頂こうかしら……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("1枚");
	Delete("2枚");
	Delete("3枚");
	Delete("絵板写");
	DrawTransition("黒幕１", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

//◆かこーん。

	OnSE("se擬音_コミカル_シシオドシ", 1000);

	Wait(500);

	SoundPlay("@mbgm18", 0, 1000, true);


	StL(1000, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300, false);

	SetFwC("cg/fw/fw景明_笑顔a.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031100a00">
「お元気そうで安心しました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　タオルで顔を拭いている香奈枝嬢を眺めつつ、率直
な感想を口にする。
　<RUBY text="メイク">化粧</RUBY>を落とせば、その下の肌は健全な血の通う色を
示していた。

　布団に寝ている必要も、既にない様子だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031110a00">
「……少々、お元気に過ぎる気もしますが」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031120a03">
「ですかしら？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031130a00">
「銃弾を受けて、幾日も経たぬお体とは思え
ません」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031140a03">
「当たり所が良かったのでしょうねえ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　さよ侍従は席を外している。

　二人になると漠たる感を否めない室内は丸きり客間
の様相であり、病室らしさは片鱗も見て取れなかった。
　薬臭すら嗅げない。

　それはつまり、遅くとも昨日の晩頃には香奈枝嬢に
対する治療行為の必要が消失していた事を意味しよう
か。
　……まず、驚くべき回復力だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031150a00">
「元々急所を外していたのは存じていました
が、それにしても」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031160a03">
「生まれ故郷に戻ったから、かもしれません。
　べつにそれほど郷愁を覚えていたわけでは
ないのですけれど。戻ってみると、やっぱり
水や空気が体に合うのは感じます」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031170a03">
「ごはんもおいしいですし」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031180a00">
「成程。
　確かに、そういった事は大きいでしょう」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031190a03">
「明日にはもう元通り動けると思います」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031200a00">
「何よりですが、ご無理はなさらぬよう。
　……ともあれ安堵しました」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031210a00">
「面会謝絶と伺った折は肝を冷やしましたが」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031220a03">
「あれは病み姿をお見せして無用のお気遣い
をさせてはと、わたくしの方からお願いして
そう計らってもらったのですけど……。
　うまく伝わらなかったみたいで」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031230a03">
「いたずらに心配をお掛けしてしまいました。
　申し訳もありません、景明さま」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031240a00">
「……いえ。大尉。
　謝罪など、全く無用の事です」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031250a00">
「そもそも大尉殿の御怪我は自分の不覚から。
こちらこそ幾重にもお詫びせねばなるまいと
思っておりました。
　しかし」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0031260a03">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0031270a00">
「しかし――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"mc03_004.nss"