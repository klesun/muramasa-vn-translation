//<continuation number="530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_007.nss_MAIN
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

	$GameName = "mc03_008.nss";

}

scene mc03_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc03_006.nss"

//◆夜
//◆國境。山道？
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");

	OnBG(100, "bg022_山林a_03.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

	SoundPlay("@mbgm35", 0, 1000, true);

	SetNwC("cg/fw/nw警備班長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070010e309">
「…………」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070020e310">
「…………」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070030e311">
「…………」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070040e309">
「冷えてきたな……」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070050e310">
「もう師走ですからね」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070060e311">
「巡回の奴らが羨ましいよ。
　動いていた方が、いくらか楽だ」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070070e310">
「三班と役目を代わってもらうか？
　あいつら、川沿いの道を一時間に二往復は
してるが」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070080e311">
「……そいつは勘弁」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070090e309">
「あと三十分で交代だ。我慢しろ。
　それにしても、仁藤のやつ、遅いな」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070100e310">
「用足しに行くって、あいつまさか詰所まで
戻ったんじゃあ？
　……ついでに火に当たってるとか」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070110e309">
「後で詰所の連中に聞こう。
　もしそうなら沢の常駐警備に回してやる」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070120e311">
「多分、長引いてるだけだと思いますけど。
　あのひと、ストレスがすぐ胃に来るタイプ
ですから」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070130e310">
「そういやそうだな。
　あいつにはきついか、今は」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070140e311">
「進駐軍と戦争だからね……」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070150e309">
「……」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070160e310">
「班長。
　<RUBY text="ジョンブル">英国紳士</RUBY>ども、本当に来ますかね？」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070170e309">
「来るさ……。
　普陀楽城があいつらに<RUBY text="・・・・・・・・">どうされちまった</RUBY>か、
知ってるだろ」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070180e310">
「聞いてますけど。
　……実感湧きませんよ」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070190e309">
「鎌倉から撤退してきた連中が口をそろえて
言ってるんだぞ？　城が吹っ飛んだって。
　どいつもこいつも夢でも見てるってか……
俺だってそう思えるもんなら思いたいが」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070200e309">
「邦氏様までこの会津にお移りあそばしてる
ってのに、全部何かの冗談でしたで済ませる
のは無理だろ。
　……戦争だよ。もう始まったんだ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆嘆息

	SetNwC("cg/fw/nw警備兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070210e310">
「……、……」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070220e311">
「<RUBY text="ここ">会津</RUBY>で合戦になるんでしょうか」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070230e309">
「どうかな。
　大鳥中将のご気性からすると……こっちが
先手を打って、横浜に押し出すって線も有り
そうだが」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070240e311">
「その方がいいですね」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070250e309">
「そうか？」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070260e311">
「会津で<RUBY text="いくさ">戦</RUBY>は嫌ですよ。
　僕、ここの生まれですから」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070270e310">
「そりゃ俺もだ。班長だって。
　うちの軍は大半がそうだろ」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070280e309">
「ああ……。
　確かにそうだな。生まれ故郷で戦争なんて
やりたいもんじゃない」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070290e309">
「それでも、攻め込まれたら戦うしかないが」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070300e311">
「……」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070310e310">
「……さみぃ」


//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070320e310">
「川沿いでもいいから、歩きたくなってきた」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070330e309">
「辛抱しとけ。
　もう少しで――」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070340e309">
「……？」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070350e310">
「班長？」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070360e309">
「今なにか、変な音がしなかったか？」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070370e310">
「…………。
　したか？」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070380e311">
「いや……わからない」


{	NwC("cg/fw/nw警備班長.png");}
//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070390e309">
「あの辺で、固い物が木にぶつかったみたい
な音が……
　気のせいかな」


//【ｅｔｃ／國境班長】
<voice name="ｅｔｃ／國境班長" class="その他男声" src="voice/mc03/0070400e309">
「……いや、念のためだ。
　お前達、二人で行って確認して来い」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070410e310">
「了解」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆がさがさ。

	OnSE("se自然_草木_探る02", 1000);

	WaitKey(1000);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070420e311">
「……誰もいないね」


{	NwC("cg/fw/nw警備兵Ａ.png");}
//【ｅｔｃ／國境兵Ａ】
<voice name="ｅｔｃ／國境兵Ａ" class="その他男声" src="voice/mc03/0070430e310">
「いない……よな？」


{	NwC("cg/fw/nw警備兵Ｂ.png");}
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070440e311">
「班長ー。
　特に怪しい所はありません」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	WaitKey(1000);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070450e311">
「班長？」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070460e311">
「……あれ？
　どうしたんだろ」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070470e311">
「なあ、班長どこ行った？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ウェイト
	SetVolume("@mbgm*", 2000, 0, null);
	WaitKey(1000);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070480e311">
「……おい」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070490e311">
「何だ？
　……二人して僕をからかおうってわけじゃ
ないよね……」


//【ｅｔｃ／國境兵Ｂ】
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070500e311">
「おーい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆がさっ

	OnSE("se自然_草木_探る01", 1000);

	WaitKey(300);

//◆一閃
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	DeleteStC(100,false);
	OnSE("se戦闘_攻撃_刀振る02",1000);
	Fade("絵背景500", 100, 1000, null, true);
	FadeDelete("絵背景500", 500, true);


//◆血
	CreateColorSP("絵色血", 5000, "#CC0000");
	FadeDelete("絵色血", 1000, false);

	CreateTextureEX("絵ＥＦ15", 11000, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");

	OnSE("se人体_血_たれる01", 1000);

	Fade("絵ＥＦ15", 1000, 1000, null, true);
	Delete("絵背景500");
	Fade("絵ＥＦ15", 1000, 0, null, true);
	FadeDelete("黒幕１",1000,true);

	WaitAction("絵色血", null);

	SetNwC("cg/fw/nw警備兵Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
<voice name="ｅｔｃ／國境兵Ｂ" class="その他男声" src="voice/mc03/0070510e311">
「――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ばたん。兵士倒れる

	OnSE("se人体_衝撃_転倒04", 1000);

//◆雪車町
	StL(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStL(300, true);


	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0070520a12">
「…………」


{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mc03/0070530a12">
「へ、へ、へ。
　少しばかり、お邪魔いたします……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_008.nss"