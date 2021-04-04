//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_004.nss_MAIN
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
	#bg098_堀越御所内廊下_01=true;
	#bg031_八幡宮境内_01=true;
	#ev924_銀星号飢餓虚空魔王星=true;
	#bg001_空a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_005.nss";

}

scene md02_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_003.nss"

//◆ＢＧＭ
//◆御所内
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm23", 0, 1000, true);
	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　聞けば、奉刀参拝は既に三日前の事であるらしい。
　だいぶん長く眠ってしまっていたようだ。

　そのつもりで自分の身体を点検すれば、成程確かに、
寝過ぎた時特有の痛みが随所にある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆こぽこぽ
	OnSE("se日常_水_注ぐ01", 1000);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040010a07">
「お茶どうぞー」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040020a00">
「……有難うございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　足利茶々丸六波羅中将と二人、縁側に並んで煎茶を
<RUBY text="すす">啜</RUBY>る。
　香りも風味も良い。伊豆は茶の名産地にも近い事を、
俺は思い出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040030a07">
「今日は雲が張っててだめだな」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040040a00">
「？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040050a07">
「あっちの空。
　富士山がよく見えない」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040060a00">
「……あぁ。
　この北向きの庭は、富士を楽しむ仕立てで
したか」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040070a07">
「そっ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040080a07">
「この辺りからだと、富士山の<RUBY text="・・・・・">どてっぱら</RUBY>に
開いたでっかい穴がちゃんと見えて面白いん
だよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040090a00">
「そうですか……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040100a00">
「して、閣下」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040110a07">
「あて？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040120a00">
「はい」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040130a07">
「そんな他人行儀な呼び方しなくても」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040140a00">
「他人です」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040150a07">
「クール……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040160a00">
「お伺いしますが。
　何ゆえ、自分を伊豆まで連れてこられたの
です？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040170a07">
「鎌倉にいたら面倒なことになるからね。
　あて、<RUBY text="かまくら">東都</RUBY>防衛警備の月番だったもんでさ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040180a07">
「八幡宮の事件はあての不手際だって言えば
そう言えるわけで。
　雷蝶あたりから責任追及される前に、先手
打って本拠地に<RUBY text="ひきこもっ">自主謹慎し</RUBY>たのよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040190a00">
「……八幡宮の事件……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040200a07">
「足利護氏死す。
　一代の覇王も最期はあっけないもんだ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040210a00">
「それは――確かに？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040220a07">
「<RUBY text="そと">表</RUBY>向きには隠されてるし、内向きにもまだ
失踪って扱いで捜索中だけどね。
　八幡宮と護衛団ごといなくなって、三日間
経っても手掛かりすら無いんだ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040230a07">
「<RUBY text="おなくなり">死亡</RUBY>は確定だよ。
　普陀楽じゃ後継者を立てる準備に入ってる」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　銀星号の打撃で吹き飛ばされ――それで死んだにし
ても生きていたにしても、大将領の体は最終的にあの
黒い渦へ呑まれて消えたのであろう。
　あれきり姿を現さないなら、そういう事になる。

　結果的に舞殿宮の企図は達せられた。
　ただ……俺が報告に戻れなかったため、状況を把握
するのにさぞ苦労するに違いない。

　それが親王の安全に災いしなければ良いのだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040250a00">
「死亡を知っているのは、普陀楽の首脳だけ
ですか」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040260a07">
「どーだろ？
　ＧＨＱの動きがなんか怪しいし、倒幕派も
ちょろちょろし始めてるしな……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040270a07">
「実はもうかなり漏れてるのかもしれんね。
　ま、こういうのは隠そうとして隠し切れる
もんでもないし」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040280a00">
「ええ。
　……それはともかく」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040290a00">
「先ほど閣下にお尋ねしたかったのは、自分
の身柄をわざわざ回収された件についてです」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040300a07">
「あそこにほったらかしといたらまずいやん。
　お兄さん、事件の主犯に仕立て上げられて
処刑よ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……冤罪とも言い切れないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040310a00">
「しかしそれは、自分の都合に過ぎません」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040320a07">
「あての都合でもあるんだなァ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040330a00">
「……どういう事でしょうか？」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040340a07">
「お茶うめぇー」

//◆ずずー。
{	OnSE("se人体_動作_茶をすする", 1000);
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040350a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040360a00">
「では閣下の御都合に照らした場合、自分の
身は今後どのように扱われるのでしょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　差し当たっては軟禁か？

　こちらとしては鎌倉に戻り、八幡宮で起きたことの
一切を親王と署長に報告したい。
　堀越公方がそれを認めないなら、強行突破するしか
ないが……。

　ここは公方府、歴とした軍事基地だ。
　容易ではないだろう。少なくとも村正が回復しなく
ては話にもならない。

　強行策より、<RUBY text="から">搦</RUBY>め手を用いるべきか……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040370a07">
「特に考えてないけど。
　お兄さん次第」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040380a00">
「……？」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0040390a00">
「自分の好きにして構わないと？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040400a07">
「もちろん。
　あては男を縛って食い物にするタイプでは
なく、陰から尽くすタイプなのです」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040410a07">
「邪魔はしないけど必要なことは何でもして
くれる女。当然処女。でも床上手だったり。
　……うわーなんて都合がいいんでしょう」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040420a07">
「色男は得だねーこのー」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040430a00">
「…………。
　鎌倉に戻ろうかと考えているのですが」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040440a07">
「そりゃさみしぃ……。
　あてはまだしばらく戻れないしなー」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040450a07">
「でもお兄さんがそうしたいなら仕方ないね。
　列車の手配しようか？　船でちんたら行く
よりいいでしょ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040460a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　わからない。
　この将軍は――この少女は俺に何を望んでいるのか。

　敵なのか。味方なのか。
　親しげな、懐っこい子犬のような様子からは敵意も
裏表も感じられない。が――彼女は銀星号の擁護者で
あると自ら認めている。

　それは事実なのか。
　事実なら何故、そんな事をするのか。

　足利茶々丸の目的は何なのか。

　……謎が多過ぎる。

　多過ぎて、何からどう聞けば良いのかすら悩む。
　思いつく端から訊いても良いが――その答えとて、
どこまで信用したものなのか……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040470a07">
「おや？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040480a00">
「……何か？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040490a07">
「しばらくは現れないと思ってたんだけどな。
　お兄さんが起きたせいかな？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040500a00">
「？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040510a07">
「良かったね。
　待ち人来たれり」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040520a07">
「落ち着いた場所で向き合うのって久しぶり
なんじゃない？」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040530a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	Wait(1000);


//◆光登場

	StC(1000, @0, @0, "cg/st/st光_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　――――光。

　光だ。
　光が、いた。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37", 0, 1000, true);


//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("絵回想200", 2100, -200, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateTextureSP("絵回想300", 2200, 100, InBottom, "cg/st/3d村正標準_立ち_通常.png");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw光_好戦.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【光】
<voice name="光" class="光" src="voice/md02/0040540a14">
「人が人のまま、ささやかにまとまって身を
寄せ合う時代はここで<RUBY text="・・・・・">ぶった切る</RUBY>。
　誰もが欲するままに生き、戦い、殺す――
そんな時代を導こう！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　光。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, -240, -460, "cg/ev/resize/ev924_銀星号飢餓虚空魔王星l.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw光_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/md02/0040550a14">
「神となれば我が望みは<RUBY text="・・・">正当化</RUBY>されよう。
　人の世を壊せば人の法に囚われる父は解放
されよう……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040560a14">
「妨げる何物もなく、光は父に向き合える！
　母に奪われた父を、取り戻せる！」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040570a14">
「これが光の<RUBY text="みち">覇道</RUBY>だ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　光……

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("絵回想200", 2100, -200, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateTextureSP("絵回想300", 2200, 100, InBottom, "cg/st/3d村正標準_立ち_通常.png");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw光_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/md02/0040580a14">
「村正が如何なる劒冑であるか」

//【光】
<voice name="光" class="光" src="voice/md02/0040590a14">
「承知の上で、我が物としたのだ」

//【光】
<voice name="光" class="光" src="voice/md02/0040600a14">
「そしておまえにも与えた……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040610a14">
「おまえの手で、母上を殺させるために！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);

	Delete("絵回想*");

	EfRecoOut2(600,true);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040620a00">
「光ッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆だっ。飛び掛かる。

	OnSE("se人体_動作_跳躍01",1000);

	SetVolume("@mbgm*", 1000, 0, null);
	Request("@StC*", Smoothing);
	Zoom("@StC*", 300, @2500, @2500, null, false);
	Zoom("@OnBG*", 300, 2000, 2000, null, true);

	CreatePlainEX("絵板写", 10000);
	Fade("絵板写", 0, 1000, null, true);

	Shake("絵板写", 500, 50, 50, 0, 0, 500, null, false);
	OnSE("se戦闘_攻撃_殴る01",1000);

//◆ずだーん。世界回る。
	CreateSE("たたきつけ","se人体_動作_叩く02");
	CreateSE("たたきつけ２","se戦闘_攻撃_殴る05");

	SetBlur("絵板写", true, 3, 500, 30, false);
	Zoom("絵板写", 300, 2000, 2000, Dxl2, false);
	Rotate("絵板写", 300, @0, @0, @180, Axl2,false);
	Wait(300);
	MusicStart("たたきつけ",0,1000,0,1000,null,false);
	MusicStart("たたきつけ２",0,1000,0,1000,null,false);
	Shake("絵板写", 500, 50, 50, 0, 0, 500, null, false);

	Wait(200);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	OnSE("se人体_衝撃_転倒03",1000);

	Wait(1);
	PrintGO("上背景", 10000);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	Delete("上背景");
	WaitKey(10);
	OnBG(100,"bg001_空a_01.jpg");
	FadeBG(0,true);

	Wait(2000);

	FadeDelete("絵白転", 1500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……我に返った時。
　俺は背中を床につけて、天井と空を仰いでいた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/md02/0040630a14">
「……景明……」

{	SoundPlay("@mbgm30", 0, 1000, true);
	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040640a14">
「そう熱烈に求められるのはな、悪い気分で
はないというか、光としても本望なのだがな。
　ＴＣＯはわきまえてくれ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040650a00">
「……<RUBY text="ＴＣＯ">資産保有費用</RUBY>……？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040660a07">
「御姫、<RUBY text="ＴＰＯ">時と場所と場合</RUBY>です」

{	FwC("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040670a14">
「――ＴＰＯはわきまえるように。
　まだ朝方、ここは縁側、光は起き抜けだ」

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040680a14">
「そして、親しき仲にも礼儀あり。
　まずは朝の挨拶からだ」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040690a14">
「おはよう、景明」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040700a00">
「…………お早う」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040710a07">
「おはよー、御姫」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040720a14">
「うむおはよう。
　今日は青空が見えるな。いい気分だ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040730a07">
「野球でもしたくなる天気だね」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040740a14">
「悪くない」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040750a07">
「昼からやろうか？
　ヒマしてる武者集めてさ」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040760a14">
「良かろう。
　新たな魔球を試したかったところだ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040770a07">
「お兄さんもどう？
　<RUBY text="フルアーマーベースボール">全身装甲野球</RUBY>」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040780a00">
「……フルアーマー？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040790a07">
「普通にやるとゲームにならないんだよね。
御姫の投げる球誰も打てないし。<RUBY text="キャッチャー">捕手</RUBY>は一球
ごとに病院送りだし。打席に立てば<RUBY text="ピッチャーライナー">投手返し</RUBY>
でそのまま<RUBY text="・・・・">投手ごと</RUBY>場外<RUBY text="ホームラン">本塁打</RUBY>とかになるし」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040800a07">
「選手全員劒冑着用の武者にして、<RUBY text="おひめ">銀星号</RUBY>は
重力操るのとかナシにすると、どうにかこう
にか勝負になるんだよ。
　野球っつーにはだいぶ<RUBY text="アストロ">宇宙的</RUBY>な感じだけど」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040810a00">
「…………」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040820a14">
「なかなかエキサイティングで面白い競技だ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040830a07">
「エキサイトし過ぎて、試合の終わる頃には
選手の半分くらいが両足で立ってないしねー。
　お兄さん、どうよ。興味あるでしょ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040840a00">
「欠片もありません」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040850a07">
「残念。
　ま、劒冑が復旧中だししょうがないか」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040860a07">
「お兄さん、野球好きそうなんだけどな」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040870a14">
「当たりだ。
　ふふふ、景明はかなりの巧者だぞ」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040880a14">
「地元ではバントの魔王と呼ばれていた」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040890a07">
「ツケメン大王みたいな王座っすね」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040900a14">
「何を言う。
　あとグラブトスは神業、ライン際の打球を
フェアかファールか見極める判断にかけても
達人級との評判を専らにしていたんだぞ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0040910a07">
「……微妙な才能に満ち溢れてる人だな」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆景明、起き上がる
	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	OnBG(100, "bg098_堀越御所内廊下_01.jpg");
	FadeBG(0, true);

	StR(1000, @0, @0, "cg/st/st光_通常_私服.png");
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_私服.png");
	FadeStR(0, false);
	FadeStL(0, true);

	OnSE("se人体_動作_立ち上がる_畳",1000);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("黒幕１");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　頭上で行き交う会話を記号的に受け止めつつ、立ち
上がる。
　激情は去っていた。

　平静でいられるわけでもなかったが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0040920a00">
「光……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md02/0040930a14">
「何だ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);
	SoundPlay("@mbgm32", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　名を呼べば、光は屈託のない声を返してくる。

　隔絶。

　何気ない態度こそ、何より違和感を覚えさせられて
ならない。
　何故、そんなにも自然の<RUBY text="てい">態</RUBY>でいられるのか。

　この二年間の出来事は、光にとって何だったのか。

　互いに全身を劒冑で覆って相対していた時でさえも
感じずに済まされなかった心理の隔絶は、素肌で向き
合ってみれば尚一層赤裸々だった。
　光は二年前と同じ目で俺を見ている。

　俺との関係は何も変わっていないと、そう言うかの
ように。
　
　そんな筈はない――何もかも変わった。

　変わらないと信じるなら、その妄信こそ狂気だ。
　光はやはり狂っている。<k>
　そう思う。<k>
　<RUBY text="・・・・">思いたい</RUBY>。

　狂ったからこそ殺戮の銀星号と化したのだと、そう
思いたい。
　そう思えば、後は光の悲運を嘆いて戦うだけで済む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//■以下の演出をするため、↑↓のウィンドウは櫻井がいじっている inc櫻井
//　修正する場合、上のウィンドウコマンド末端、下のウィンドウ先端を削除すればOK

	CreateColorSP("黒幕１", 50, "BLACK");
	Fade("黒幕１", 3000, 1000, null, false);
	FadeDelete("@OnBG*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　だが。

　もしも……狂っていないのなら。
　本人が言った通り、全て<RUBY text="・・">正気</RUBY>でしたことなら。

　どうなる？

　あの殺戮、
　あの災厄が、
　
　狂気ゆえではなく――

　希望ゆえに引き起こされたものであったのなら。

　光はただ、この二年を<RUBY text="いちず">一途</RUBY>に生きていただけである
なら。

　……それは、可能な事なのだろうか？

　<RUBY text="・">狂</RUBY>ではなく、
　<RUBY text="・">憎</RUBY>でもなく、
　
　願いを追い求める<RUBY text="・">理</RUBY>によって諸人を殺戮する――

　世界を<RUBY text="こわ">毀</RUBY>す。

　……そんな事が可能なのか。

　もしも可能であったなら――<k>
　
　
　　　　　　　　　　……俺は、どうするべきなのだ。

　養母の死も、
　関東に撒き散らされた災厄も、
　
　光の、父を求める想いゆえであったのなら――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(500, 500);

}

..//ジャンプ指定
//次ファイル　"md02_005.nss"