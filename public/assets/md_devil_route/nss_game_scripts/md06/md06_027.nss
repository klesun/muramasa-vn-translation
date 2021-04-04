//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_027.nss_MAIN
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
	#bg009_鎌倉住宅街a_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_028.nss";

}

scene md06_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_026.nss"

//◆夕
//◆街路。bg009
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_02.jpg");
	FadeBG(0, true);
	Delete("上背景");
	FadeDelete("黒", 1500, true);

	SoundPlay("@mbgm30", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st村正_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_凹むb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270010a01">
「実家に帰ります」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270020a00">
「……何処だ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　夕日の下の帰り道。
　連れ合いの者は、当然というべきか拗ねていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270030a01">
「うっ、うぅ……。
　あんなことして、あんなことして、あろう
ことかあんなことまでして！」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270040a00">
「有意義な時間だった」

{	FwC("cg/fw/fw村正_驚きb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270050a01">
「反省の色がないっ！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270060a00">
「感謝はしているつもりだが」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270070a01">
「……あんなこと、またやらせる気じゃない
でしょうね？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270080a00">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270090a00">
「知っているか、村正。
　朝焼けは雨の、夕焼けは晴れの兆しとよく
言われるが、一応の根拠はあって――」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270100a01">
「話をそらすなっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　叱られながら、街路をゆく。
　路上の人影は既に<RUBY text="まば">疎</RUBY>ら、閑散としつつある……が、
それでも昼の賑わいを偲ばせる余熱が何処かに残って
いるようだった。

　寂寥と見えないのはそのせいだろう。<k>
　
　
　――と。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：ざわめき
	CreateSE("SE01", "se背景_ガヤ_ざわめき01_L");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270110a00">
「……？」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270120a01">
「いいこと、そもそも男女間の契りっていう
のは――」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270130a01">
「……何かしら？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270140a00">
「わからん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　交差点の路傍に十人ばかり、人が参集している。
　互いに顔を見合わせて言い交わす様子は、世間話の
それと異なり、どうも余り穏やかではない。

　近付いてみると、中に一人二人、呼吸を乱して膝を
突いている者もいるのがわかった。
　まるで獣に追われて逃げ出してきたかの風情だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270150a00">
「どうかしたのですか」

{	NwC("cg/fw/nw市民Ａ.png");}
//【ｅｔｃ／市民Ａ】
<voice name="ｅｔｃ／市民Ａ" class="その他男声" src="voice/md06/0270160e088">
「ん、ああ……。
　また<RUBY text="ドンパチ">紛争</RUBY>があったらしくてね」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270170e089">
「それも相当激しいやつが。
　巻き込まれそうになって、ようやく逃げて
きたんだってさ。この人達」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270180a00">
「……そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　もはや日常の事だが。
　また、関東の何処かで銃火が……。

　せめて早期に沈静してくれるよう祈るほかない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270190a00">
「場所は何処でしょう。
　やはり房総半島の――」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270200e089">
「いや、違うよ。
　<RUBY text="・・">ここ</RUBY>さ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270210a00">
「……<RUBY text="ここ">鎌倉</RUBY>!?」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270220e089">
「ああ。
　<RUBY text="キタカマ">北鎌倉</RUBY>の方の……どこって言ったっけ」

{	SetVolume("@mbgm*", 300, 0, null);
	NwC("cg/fw/nw市民Ａ.png");}
//【ｅｔｃ／市民Ａ】
<voice name="ｅｔｃ／市民Ａ" class="その他男声" src="voice/md06/0270230e088">
「建朝寺だよ。
　宮様がいらっしゃる」

{	NwC("cg/fw/nw市民Ｂ.png");}
//【ｅｔｃ／市民Ｂ】
<voice name="ｅｔｃ／市民Ｂ" class="その他男声" src="voice/md06/0270240e089">
「そうそう、その辺りだってさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　八幡宮の再建はまだ着手もされていない状態だ。
　舞殿宮は相変わらず建朝寺に寄寓する身である。

　その付近で紛争？
　ならば当然、朝廷に敵意を持つ勢力――進駐軍内の
強硬派、六波羅の一部過激派、等々――による舞殿宮
襲撃である確率が高い。

　親王の身が危険だ。
　いやそれに留まらない――あの近辺には住民も多い
のだ。現にこうして避難者がいる。

　甚大な被害が出るだろう。
　
　
　――止めねば。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270250a00">
「村正！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　何処か近くで身を隠せる場所を探し、装甲しよう。
　武者の足なら建朝寺は目先の距離。

　間に合う。
　駆けつけて、惨劇を未然に、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);

	SetVolume("@mbgm*", 100, 0, null);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270260a01">
「――――」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270270a00">
「……ぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　深い双眸が、沸き立つ思考を一瞬にして鎮めた。

　……俺は、どうしようというのだ。
　争乱の巷に飛び込んで和平を訴えるのか。

　それは俺には無理なのだと、もう思い知ったのに。

　争いを止めるなら、武力を用いるしかない。
　先日、やくざ者四人を相手取った際のように手心を
加えてはいられないだろう――おそらく武装した軍が
相手なのだ。必然、命の奪い合いになる。

　殺すのか。敵を。
　善を守って悪を討つ偽善にまた浸るのか。

　そして偽善を帳消しにする為、更に殺すのか。
　味方をも。

　……できない。
　できる筈がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270280a01">
「御堂」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270290a00">
「…………」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0270300a00">
「帰ろうか……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0270310a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　集まりから離れる。
　村正も、黙って並んだ。

　夕闇の下、家へ続く道を歩く。
　ぽつぽつと。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_028.nss"