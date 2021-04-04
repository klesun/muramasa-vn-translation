//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_010.nss_MAIN
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
	#bg103_普陀楽城外郭藤沢方面_01=true;
	#bg105_城門付近内側_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_011.nss";

}

scene md04_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_009.nss"

//◆藤沢口
//◆交戦中

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg103_普陀楽城外郭藤沢方面_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm35", 0, 1000, true);
	CreateSE("SE銃撃戦", "se背景_ガヤ_戦闘_空爆_L");
	MusicStart("SE銃撃戦", 2000, 500, 0, 1000, null,true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　藤沢方面に押し寄せた攻城軍は、<RUBY text="セオリー">定石</RUBY>に対してごく
忠実であった。
　まず遠距離砲撃と竜騎兵による空爆とで攻め立て、
防御火力を弱らせたところで機甲部隊を前へ出す。

　しかしこちらも、大和戦史上随一を豪語して憚らぬ
普陀楽城塞である。
　爆撃の合間に態勢を回復するや、砲塁から十字砲火
を浴びせ掛け、敵の前進を押し戻す。

　一進一退の攻防が、時につれて激しさを増しながら
続いていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg105
	SetVolume("SE銃撃戦", 2000, 200, null);

	CreateTextureEX("絵背景100", 1000, @0, @0, "cg/bg/bg105_城門付近内側_01.jpg");
	Fade("絵背景100", 1000, 1000, null, true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100010a00">
「……堀越領衆はいい働きをするな」

{	StL(1000, @0, @0, "cg/st/st茶々丸_通常_制服a.png");
	FadeStL(300, false);
	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100020a07">
「そう見える？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100030a00">
「実戦から六年以上離れていた軍とは思えん」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100040a07">
「あー、それは当たり前かな。
　大戦終わってから六年、ヒマしてたやつら
ばっかじゃないしね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100050a00">
「……そうか。
　反乱が幾度もあったのだから、鎮圧の経験
もあって当然か」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100060a07">
「それもだけど。
　どっちかってーと、その逆」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100070a00">
「逆……？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100080a07">
「先代の堀越公方に刃向かって投獄されたり
放逐されたりしてた連中が、尉官クラスには
多いんだ。
　あてが先代ぶっ殺した後で駆り集めたから」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100090a07">
「連中にしてみれば、大軍相手の絶望的戦闘
なんて、今が初めてじゃないってわけ」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100100a00">
「…………成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　そんな修羅場上がりどもが中尉大尉の立場で最前線
の指揮を担っているのなら、兵に動揺の気配があまり
見受けられないのも頷ける。
　下級指揮官の性質は兵に色濃く反映するものだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100110a00">
「ただ――良くやってはいるが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　俺は身分差を無視した口調で話を続けた。
　周囲には無論ほかの幕僚もいるが、どうせ戦場から
の交響曲で良く聴こえまいし、聴こえたとしてもこの
状況で追及する余裕はない。気にすることもなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100120a00">
「<RUBY text="うえ">上空</RUBY>の様子がまずい」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100130a07">
「うん……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100140a00">
「このままでは、いずれこちらの航空戦力が
壊滅する」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100150a07">
「全くその通りなんだけどさ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　とっくに考えていた事なのだろう。
　茶々丸は悩ましげに、こめかみを掻いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_落胆.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100160a07">
「現状、打開策が無いのよね」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100170a00">
「全く、か？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100180a07">
「<RUBY text="・・">あれ</RUBY>がいる限りどーにもならんわ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景200", 5000, @0, @0, "cg/ev/ev805_戦争絵シリーズその３_b.jpg");
	Fade("絵背景200", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　言って茶々丸が指差したのは、頭上遥かに鎮座する
飛行艦だった。

　単なる飛行船、単なる軍用飛行艦ではない。
　世界最大の飛翔する船である。

　ガレーキープ級重飛行艦。
　その巨躯に比例して爆弾積載量も最大、竜騎兵母艦
としての機能もまた同様を誇る。

　まさしく空飛ぶ要塞だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100190a07">
「あれが基地の役目を果たすから、敵さんの
竜騎兵は高度優勢を確保したまんま何度でも
攻めて来られる。
　こっちはいくら撃退してもきりがない」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100200a07">
「戦力を集中して<RUBY text="・・・">城攻め</RUBY>をやろうとすれば、
あの<RUBY text="ステルスドラコ">隠形竜騎兵</RUBY>が出てきて引っ掻き回すしな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100210a00">
「…………」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100220a00">
「本当に手詰まりだな」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100230a07">
「手詰まりっす。
　立ち上がりの遅れはほんと致命的ですよー、
現代戦だと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100240a00">
「航空戦の<RUBY text="キルレシオ">損害比</RUBY>は一対四くらいか？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100250a07">
「もっと酷いかも」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100260a00">
「…………。
　打開策とは言い難いが」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100270a07">
「あい？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100280a00">
「こちらの竜騎兵を全て下ろしてはどうだ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100290a07">
「……分の悪い勝負はやめて航空戦力を保全
する？
　そら、一つの選択だけど」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100300a07">
「それやると、ここの防衛線を維持できなく
なるよ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100310a00">
「空の<RUBY text="・・・・">でかぶつ</RUBY>が竜騎兵母艦としてだけでは
なく、爆撃艦としても働き始めると？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100320a07">
「うん。
　こっちが竜騎兵を下げたら、やらない理由
がないっしょ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　強襲爆撃という戦術がある。
　護衛竜騎兵に身辺を守らせながら飛行艦が低空まで
降下、敵陣に対して高精度の爆撃を行うというものだ。

　成功すれば戦果は大きいが、敵の竜騎兵による攻撃
や地上からの対空射撃を食らって飛行艦が沈められる
危険もまた大きい。
　行う側にも決断の要る戦法である。

　こちらが竜騎兵を下げれば、敵が強襲爆撃を行うに
当たっての危険を減らしてやる事になるだろう。
　茶々丸の懸念は理解できた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100330a00">
「尤もだ。
　が、今回に限って言えば<RUBY text="・・">理由</RUBY>はある」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100340a07">
「……え？　どんな？」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100350a00">
「忘れたか。
　<RUBY text="やつら">進駐軍</RUBY>の目的は何だ？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100360a00">
「戦力で優るにも関わらずさっさと開戦せず、
六年もの時間を費やしたのは何故だ？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100370a07">
「――――」

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100380a07">
「あ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景200", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　堀越公方は、平手で自分の額を打った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_歯噛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100390a07">
「……いけね。
　頭が戦争バカになってたや」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100400a00">
「そうだ。
　奴らは戦争に勝った後の事を考えている」

//【景明】
<voice name="景明" class="景明" src="voice/md04/0100410a00">
「市民を敵に回さず、彼らの支持のもと統治
するためにはどうすれば良いのかをだ」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100420a07">
「……普陀楽の中心部ならともかく、外縁部
への爆撃は被害が周辺地域にも及ぶ危険性が
高いな。
　味方の軍は下げりゃいいだけの話だが」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100430a07">
「土地をどかすわけにゃいかねえ。
　で、この藤沢口は普陀楽の外縁でも比較的
市街地に近い」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100440a00">
「住民は既に避難させているだろうが……
　逃げ遅れもいるだろうし、まだ避難してい
ない地区まで飛び火する事もあろうし、例え
無人でも市街地を破壊するのは心象が悪い」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100450a00">
「戦後の統治に支障をきたす」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100460a07">
「となれば、やらねえわな。
　少なくとも<RUBY text="てめー">自分</RUBY>らが圧倒的に有利で、そこ
までせんでも勝てるって思ってるうちは」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100470a00">
「ああ。
　大体、空の戦闘の優劣がこれだけはっきり
しているのだ。強襲爆撃をやる気があれば、
とっくにやっている」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100480a07">
「ごもっとも。
　……ちっ、判断が遅れちまった」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100490a07">
「この遅れで何人無駄に死んだかな」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100500a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100510a07">
「貴重な戦力だ。今からでも大事にせんとね。
　ありがと、お兄さん」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100520a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　茶々丸は幕僚を呼び寄せ、手短に指示を下した。
　命じられた側は初め驚いたものの、すぐ呑み込んだ
らしく、指示を実行に移すため慌しく散ってゆく。

　通信兵の叫びと駆け回る伝令兵の足音とで、周囲の
喧騒は俄かに厚みを増した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100530a07">
「ただ何にしろ、竜騎兵を引き上げちまうと、
こっちはだいぶ苦しくなるね。
　飛行艦での爆撃は無くても、<RUBY text="ファイアードラコ">爆装竜騎兵</RUBY>は
大挙しておいでなさるだろうし」

{	FwC("cg/fw/fw景明汚染_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100540a00">
「航空戦力を保持しておく方が重要だろう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100550a07">
「そいつは間違いない。
　あと気をつけておかなきゃならんのは……
降下襲撃か」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100560a00">
「<RUBY text="グラップラー">制陸戦用竜騎兵</RUBY>？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100570a07">
「うん。高射砲であの降下猟兵どもの侵入を
阻止できるとは思えんから。
　下ろした竜騎兵に応戦の用意をさせておく
必要があるな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md04/0100580a00">
「それも不利な勝負だが……
　損害比一対四より酷くなる事はあるまい」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md04/0100590a07">
「こっちの土俵でこっちの得意な喧嘩になる
からね。
　多少の不利はどーってことない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆藤沢口の戦場
//◆ぼーんぼーん
	DeleteStA(1000,false);
	FadeDelete("絵背景100",1000,true);
	MusicStart("SE銃撃戦", 0, 1000, 0, 1000, null,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　俺と茶々丸が話す間にも、戦況は進展してゆく。

　銃火が交わされ、刀剣が打ち合わされ――
　人が死ぬ。

　ひたすらに死んでゆく。
　際限もなく死んでゆく。

　生命の価値は塵芥であった。
　誰がそれに対して否定の叫びを上げようと、事実、
塵となり芥となって失われてゆく生命の前には無力で
あった。

　ここは戦場。
　戦場という世界なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1500, 0, null);
	SetVolume("@OnSE*", 1500, 0, null);

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_011.nss"