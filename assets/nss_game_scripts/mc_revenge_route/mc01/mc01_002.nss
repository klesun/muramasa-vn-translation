//<continuation number="990">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_002.nss_MAIN
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
	#bg032_八幡宮奥舞殿内a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_003.nss";

}

scene mc01_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_003_3.nss"

//◆八幡宮
//◆※英雄編との共用シーン"mb01_003_3.nss"
//◆「やぁ、よう来てくれたな景明くん〜」から
//◆「〜誰かを斬らねばならない。誰か……」迄

	PrintBG("上背景", 30000);
//	SoundPlay("@mbgm20",1000,1000,true);
	CreateColorSP("絵色黒", 100, "#000000");

	Delete("上背景");

//おがみ：ファイル分岐前にbgmが音量1で流れていたのでここで完全に消します。
	SetVolume("@mbgm*", 100, 0, null);


//おがみ：前シーンとかぶっていたのでコメントアウト
//　護氏を斬れば、あと一人誰かを斬らねばならない。
//　誰か……


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　それは、例えば、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝
	StC(500, @0, @0, "cg/st/st香奈枝_通常_私服c.png");
	FadeStC(300,true);

	WaitKey(1000);

//◆イメージ。斬殺
	CreateTextureSPadd("絵背景500", 10000, Center, Middle, "cg/ef/ef012_汎用斜め軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る02",1000);

	CreateTextureSPmul("絵演効果血", 510, Center, Middle, "cg/anime/Center/bloodA_5.png");
	Wait(200);

	DeleteStC(100,true);
	FadeDelete("絵背景500", 500, true);

	OnSE("se人体_血_血しぶき01",1000);
	CreateColorSP("絵色血", 5000, "#CC0000");
	Wait(12);

	Delete("絵演効果血");
	FadeDelete("絵色血", 3000, false);

	CreateTextureEX("絵ＥＦ15", 150, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureSPmul("絵ＥＦ追加", 4000, @0, @0, "cg/data/circle_09_00_0.png");
	Fade("絵ＥＦ15", 50, 1000, null, true);

	WaitAction("絵色血", null);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020010a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……俺には、<k>……そんな事は、<k>…………。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm30",2000,1000,true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020020a11">
「……景明」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020030a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020040a10">
「あのな。
　気休めになるかどうかはともかく、これは
言うとくけど」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020050a10">
「罪の意識を持つ必要は無いよ。景明くんは
な。
　どんな惨いことになっても、命令したのは
わしや。責任もわし」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020060a10">
「景明くんは苦しまなくてええ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　それは親王なりの気遣いではあったのだろう。
　そしてそれ以上の意味は無かった。何故ならば事の
問題はそこではない。誰かに死を強いる――消してし
まうという一大事実こそが問題だ。

　責任の所在など二次的な案件に過ぎない。
　その上でしかも、舞殿宮の言い分は俺には受け入れ
られないものだった。

　組織において行動の責任を命令した人間が負うのは
当然だが、命令された者とて、諾否の選択を許されて
いたならその決断に責任を負わねばならない。
　知らぬ顔を決め込めというのは無理な話だ。

　俺は間違いなく俺の責任において、決断することに
なる。
　大将領ともう一人、俺の身近の、罪も無かろう人間
を殺めるか否かを。

　…………どう検討しても、結論は一途を辿った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020070a00">
「宮殿下――」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020080a10">
「ついでやし、言うとくけどな」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020090a00">
「――はっ……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　返答を決め、口にしようとしたところで機先を制さ
れる。
　俺は心理的にややつんのめった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020100a10">
「責任の話は、今回の件に限ったことやない。
　<RUBY text="・・・・">これまで</RUBY>の景明くんの行動、全部について
言えることや」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020110a10">
「景明くんを銀星号の追跡に出すんは、わし
が認めたことなんやから」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020120a00">
「……宮殿下……
　それは、」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　違う。
　銀星号追討は、元来が俺の使命。

　親王には関わりない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020130a10">
「だからな。護氏の件と銀星号の件が全部片
付いた後、景明くんの罪を問うつもりはない。
　拘置所には戻らんでええ」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020140a10">
「おまさんの身は誓って自由にしたる。
　のんびり休めるとこも手配するわ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//あきゅん「監修：スクリプトの記述位置の統一をお願いします。」
	SetVolume("@mbgm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　―――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――。

　な、<k>
　
　
　　　　　　　　　　　　　　　　　に？

　何だと？
　何と――――言った？　今？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020150a10">
「せやから、どうやろ。
　もうしばらくの間、踏ん張って力を貸して
くれんかな」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020160a00">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020170a00">
「署長」

{	StL(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020180a11">
「私ではなく、宮殿下にお答えしろ」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020190a00">
「<RUBY text="・・・">あんた</RUBY>に訊きたいのだ。
　……こんな戯言を、何故黙って聞いている」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020200a10">
「ざれ？」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020210a11">
「口を慎め、景明。
　御前だぞ」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020220a00">
「……。
　まさか、あんたも承知の上だというのか」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020230a00">
「今の話は……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020240a11">
「……」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020250a00">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020260a11">
「ああ。
　そうだ」

{
	SoundPlay("@mbgm16",1000,1000,true);
	CreateSE("SE01","se人体_動作_叩く02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @30, @0, "cg/st/st景明_通常_私服.png");
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300, false);
	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020270a00">
「約束が違う!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆景明立つ

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020280a10">
「景明くん……？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020290a11">
「静まれ。
　……座れ」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020300a00">
「俺は忘れていない……！
　二年前、確かに約束した筈だ」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020310a00">
「全てが終わった暁には、俺を裁判に掛けて
処刑すると！」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020320a11">
「…………」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020330a00">
「今更反故にするつもりか……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020340a11">
「あの時はそう約束せねば、お前は自制心を
保てなかったろう」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020350a00">
「く……口先だったというのか!?」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020360a11">
「お前には問うべき罪が存在しない。
　宮殿下が仰せられた通りだ」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020370a11">
「こちらに来てからお前が為した事の全ては、
私と宮殿下の承認の下に行われている。
　罪と責任の所在は疑いもない」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020380a00">
「違う……！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020390a11">
「違わないさ。
　<RUBY text="・・・">だから</RUBY>、私はお前の行動を許したのだ」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020400a11">
「自分で責任を負えないと思ったなら、お前
にやらせはしなかった。
　当たり前の事だろう？」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020410a00">
「他人に責任を委ねた覚えはない」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020420a11">
「お前に覚えが無かろうと、世の道理に照ら
せばそういう事になる。
　お前の望み通り法廷へ出ても、判断は同じ
だ」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020430a11">
「罪と責任の第一は<RUBY text="・・・・・">やらされた</RUBY>者ではなく、
　<RUBY text="・・・・">やらせた</RUBY>者が負う」


</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020440a00">
「命じられてなどいない！
　それに……もしそうだとしても」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020450a00">
「二年前の――事の発端はどう始末をつける
つもりだ」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020460a11">
「……景明……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020470a00">
「あの時……俺は殺した。
　貴方がたとはまるで関わりのない所でだ」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020480a00">
「忘れてはいないだろうな。
　署長――菊池明堯……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020490a11">
「……」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020500a00">
「<RUBY text="・・・・">貴方の妻</RUBY>を殺した!!
　俺がッ！　この手でだ!!」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020510a11">
「……………………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020520a11">
「事故だ」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020530a00">
「――ッッ！」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020540a11">
「私は、お前が<RUBY text="あれ">妻</RUBY>を殺したとは考えていない」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020550a00">
「殺したのだ。
　どう否定しようと、それが事実だ！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020560a11">
「私はそうは思わない。
　お前がどう言おうと」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020570a11">
「あれは事故だ……景明。
　<RUBY text="・・">犯人</RUBY>は存在しない。不幸にも犠牲となった
者がいるだけだ」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020580a00">
「く……っ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020590a00">
「では……貴方は……
　どうあっても……俺を……」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020600a11">
「……」

{	DeleteStR(300, false);
	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020610a00">
「ぐ――あぁぁッ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずがん。柱を殴る音
	CreatePlainEX("絵板写", 990);

	OnSE("se戦闘_攻撃_殴る01",1000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");

	WaitKey(1000);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020620a11">
「……景明。
　護氏暗殺をお前に強いるつもりはない」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020630a11">
「銀星号の件もだ。
　もう無理だというなら、私が村正ごと引き
受ける」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020640a00">
「……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020650a11">
「だが宮殿下の御慈悲は受けろ。
　お前は充分に働いた……安息を得る資格が
あるのだ」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020660a00">
「慈悲など要らない！
　安息も、赦免も、欺瞞も逃避も、お断りだ
……！」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020670a00">
「俺は<RUBY text="さばき">断罪</RUBY>が欲しいのだ！
　俺の犯した罪悪に相応しい報いが！」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020680a00">
「誰でもいい。俺以外の人間なら誰でも。
　厳正で無慈悲な誰かが……俺の罪を列挙し、
一つ一つ弾劾し、刑を量り執行してくれれば
それでいい」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020690a00">
「死刑にしてくれればいい。
　それが――――正義だろう!!」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020700a11">
「…………」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020710a10">
「景明くん……。
　おまさん、死にたいんか……？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020720a00">
「いいえ、宮殿下」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　御簾の奥からの問いに首を左右する。
　死――幾度も目にしてきた、幾度も他人に押し付け
てきたそれが自分の身に降りかかる。その想像は何処
までも恐ろしくおぞましい。

　肌が粟立ち、胃液が<RUBY text="せ">迫</RUBY>り上がって来るほど。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020730a00">
「自分は死にたくなどありません。
　死は何にも勝る恐怖です。……泥にまみれ
糞尿を啜ってでも生き延びたいと思うまでに、
自分は死を恐れています」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　その恐怖をもって、俺は闘争の狭間に数多散らばる
死の陥穽から逃れ、命を拾ってきたのだ。
　生き汚さは相当だと、自ら認めざるを得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020740a10">
「そやったら――」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020750a00">
「だからこそ自分は死すべきなのです。
　舞殿宮殿下」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020760a00">
「死にたいと欲して死ぬのは安楽への逃避に
過ぎません。何の処罰でもない。
　それは単に自殺であり、贖罪の放棄です」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020770a00">
「自分は何よりも死を忌み嫌いながら、その
死を幾人もの他者に強要してきました。
　かような者にこそ死罰は与えられねばなり
ません」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020780a11">
「…………」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020790a00">
「ですから……宮殿下。
　どうか自分には正しき処罰を！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_起きる02");
	MusicStart("SE01", 0, 1000, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　俺は平伏した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020800a00">
「正義の執行を！
　死刑の宣告を下されたなら、自分は必ず、
惨めに泣き喚き、慈悲を乞い、この手に掛け
てきた人々へ今更の謝罪を叫び」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020810a00">
「絞首台へ昇るまでの時間すべてを費やして
苦悶にのたうち回ります。
　宮殿下、どうか！」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020820a00">
「湊斗景明にはそのような最期を与えると、
舞殿宮春煕親王の御名においてここにお約束
頂きたい……！」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020830a10">
「……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020840a10">
「あかんよ……」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020850a00">
「宮殿下ッ！」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020860a10">
「景明くんが罪の意識を捨てられんのは仕方
ない。ま、すっぱり思い切れってほうが無茶
かもしれんし。
　けどな。だからって死んでどうなるんや」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020870a10">
「死んだって何の償いにもならんのえ……？」


{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020880a00">
「それは生者の理屈！
　そもそも、死者に償う方法など無いのです。
彼らはもはや何も言えず、何も欲することが
できないのです」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020890a00">
「せめて同等の懲罰を施し、<RUBY text="・・">均等</RUBY>にするしか
ありません」


{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020900a10">
「…………」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020910a10">
「言うてることはわからんわけやないけど。
　……やっぱりあかんよ」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020920a10">
「君は死んだらあかん。
　わしは納得できひん」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020930a00">
「……署長！」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020940a11">
「死んだ者のことを思うなら、彼らの代わり
に生きて何かを為せ。
　お前が死ぬことに意味は何も無いが、何か
を為せば意味は生じる」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020950a00">
「……ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　駄目だ。
　わかっていない。

　この二人は何もわかっていない。

　意味がどうこうという問題ではないのだ。
　<RUBY text="いわん">況</RUBY>や償いの問題でもない。

　ただ、罪と罰の問題なのだ。
　罪にはその重さに相当する罰が与えられて然るべき
なのだ。

　それが人の世の原理。
　人の世の秩序ではないのか。

　養母。<k>
　新田雄飛。<k>
　ふき。<?>
{Wait(100);}
ふな……

　あの人々を殺した俺が罰せられもしないなら、
　<RUBY text="・・・・・・・・・・・・・・・・">彼らは何のために正しく生きたのだ</RUBY>!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/mc01/0020960a10">
「……景明くん……」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020970a00">
「……大将領の件は御辞退申し上げます。
　どうかお許しあれ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0020980a00">
「……これにて失礼……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0020990a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc01_003.nss"