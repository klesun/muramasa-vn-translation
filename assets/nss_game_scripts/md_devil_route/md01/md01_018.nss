//<continuation number="1040">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_018.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//★ＯＰ
	$express_log=#SYSTEM_skip_express;
	$skip_log=$SYSTEM_skip;
	$auto_log=$SYSTEM_text_auto;

	$SYSTEM_skip=false;
	$SYSTEM_text_auto=false;

	if(#SYSTEM_break_play_movie){MoviePlay("dx/mvOP02.ngs", true);}
	else{MoviePlay("dx/mvOP02.ngs", false);}

	if(#keep_auto_and_skip){
		if($express_log){
			#SYSTEM_skip_express=$express_log;
		}

		if($skip_log){
			$SYSTEM_skip=true;
		}else if($auto_log){
			$SYSTEM_text_auto=true;
		}
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg095_高徳院の境内_02=true;
	#ev213_景明と村正の結縁_a=true;
	#ev213_景明と村正の結縁_b=true;

	//▼ルートフラグ、選択肢、次のGameName
 	#mvOP02=true;

	$PreGameName = $GameName;

	$GameName = "md01_019.nss";

}

scene md01_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_017.nss"

//◆ＥＶ：ずたぼろ村正と景明
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	OnBG(100,"bg095_高徳院の境内_02.jpg");

	FadeBG(0,true);
	FadeStA(0,false);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　銀星号は去り、俺は視線を地上へ戻した。
　……瀕死の劒冑が<RUBY text="うずくま">蹲</RUBY>っている。

　村正は、見るも無残な姿と化していた。
　歪み、<RUBY text="ねじ">捩</RUBY>れ、曲がり――山峰から転落した上に落石
の雨を浴びればかくもなろうか。

　深紅の甲鉄が、今は血塗れの肉膚と目に映る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180010a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180020a01">
《……来ないで……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180030a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180040a01">
《帰って……
　…………お願いだから……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180050a00">
「お前を置いてか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180060a01">
《そうよ……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180070a00">
「駄目だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180080a01">
《……もう私は……貴方の劒冑じゃない》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180090a00">
「俺にはお前が要る」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180100a01">
《<RUBY text="かかさま">二世村正</RUBY>を止めたいなら……ほかの劒冑を
探して……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180110a00">
「お前でなくては勝てない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180120a01">
《なんでよ……
　精神干渉の〝波〟に侵されないから？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180130a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180140a01">
《……っ……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180150a01">
《そんなの……関係ない》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180160a01">
《ほかの劒冑の方がましよ！
　私よりはずっと！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180170a01">
《今のこの姿を見ればわかるでしょう!?
　私がどんなに酷い代物かっ！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180180a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180190a01">
《<RUBY text="ちから">能力</RUBY>は足りない！
　仕手の言うことは聞かない！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180200a01">
《正しい判断もできない！
　のぼせた頭で勝てるはずない相手に挑んで、
地べたに這いつくばらされてる！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180210a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180220a01">
《そのうえ――善悪相殺なんて余計な呪いの
おまけ付き！
　私が何の役に立つのよ！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180230a01">
《……要らないでしょう……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180240a00">
「村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180250a01">
《……別の劒冑を探して……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180260a01">
《私のことは……放っておいて……
　……ここに捨てていってくれれば、勝手に
朽ちるから…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　傷んだ甲鉄が小刻みに震撼している。
　りり、りり、と。鈴虫に似た<RUBY text="ね">音</RUBY>がその上へ重なった。
　
　……泣いているのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180270a00">
（別の劒冑）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　それは一度ならず、考えた事ではある。

　そしていつも、断念してきたのだった。
　並の劒冑では〝卵〟に食われてしまうのだから仕方
がない。銀星号と戦うには、この呪わしい劒冑を使い
続ける以外にない――と。

　そう諦めて、村正を使ってきたのだ。
　
　<RUBY text="・・・">諦めて</RUBY>。

　望んだのでは、決してなく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180280a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180290a01">
《……行って……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村正。

　劒冑にしては感情的で、しばしば<RUBY text="たかぶ">昂</RUBY>り、動揺する。
　自我も強く、時として指示に逆らい、<RUBY text="・・">ごね</RUBY>たりする。
　
　先刻は、俺に対して力を<RUBY text="ふる">揮</RUBY>おうとまでしかけた。

　そして善悪相殺の戒律。
　この劒冑は必ず、戦いを<RUBY text="・・">無益</RUBY>なものにしてしまう。

　……それが村正。

　二年間、<RUBY text="みちゆき">道行</RUBY>を共にしてきた、
　俺の劒冑だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180300a00">
「ああ。
　…………やはり」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180310a01">
《……》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180320a00">
「お前でなくては駄目だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180330a01">
《……なんでよぅ……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180340a00">
「お前と出会ってから、幾度もの戦いを経た。
　俺が生き延びてこられたのは、お前の助け
があったからだ」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180350a00">
「お前が助けてくれたから、〝卵〟の孵化も
阻止してこられた。
　俺の力だけではどうにもできなかった……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180360a00">
「今更だが……それを認める。
　これからも力を貸して欲しい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180370a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180380a01">
《私がしたことは……助けだけじゃない》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180390a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180400a01">
《忘れてはいないでしょう》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180410a01">
《私は貴方に、罪もない人を殺させてきた！
　最初は貴方の母親――その後にも》

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180420a00">
「……ああ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180430a01">
《何人も殺させた！
　もう嫌でしょう!?》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180440a01">
《耐えられないでしょう！
　だから、私を捨てればいいのよ！》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180450a01">
《私がいなければ、そんなことしなくて済む
んだから！
　銀星号に勝てる劒冑なら、きっと何処かに
ある……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180460a01">
《貴方はそれを探せばいいの……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180470a00">
「そんなものは無い。
　……仮にあったとしても」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180480a00">
「俺が望むのはお前だ、村正」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev213_景明と村正の結縁_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180490a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180500a01">
《どうして》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180510a00">
「善悪相殺か」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180520a00">
「お前と共にある限り、俺はこれからも、敵
を一人倒す都度に味方も一人斬ることになる
だろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180530a01">
《そうよ……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180540a00">
「死すべからざる誰かを殺す」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180550a01">
《そうよ》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180560a00">
「だがな。
　……それなら俺の<RUBY text="・">敵</RUBY>となった人間は、死す
べき者だと言えるのか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180570a01">
《……》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180580a00">
「俺は<RUBY text="はは">養母</RUBY>を殺した」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180590a00">
「新田雄飛を殺した」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180600a00">
「蝦夷の姉妹、ふきとふなを殺した」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180610a00">
「……いずれも許されない罪だ。
　しかし、なら」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180620a00">
「鈴川令法を殺したことは？
　長坂右京を殺したことは？
　風魔小太郎を殺したことは？」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180630a00">
「皇路卓を殺したことは？
　ジョージ・ガーゲットを殺したことは？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180640a00">
「それは許されることなのか……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180650a01">
《……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180660a00">
「許されない」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180670a00">
「彼らは俺からすれば悪人だった。
　しかし、彼らにも彼らなりの善があった」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180680a00">
「<RUBY text="・・・・">善悪相殺</RUBY>。
　……成程、人を殺すという事は、善と悪を
諸共に断つという事だ。ようやく理解できた
……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180690a00">
「村正。
　お前は正しい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180700a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180710a00">
「殺人はなべて悪鬼の所業」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180720a00">
「例外など無い。
　あらゆる殺人に正義は無い」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180730a00">
「戦いに正義は無い」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180740a01">
《……御堂……》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180750a00">
「村正。お前がそれを教えてくれた」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180760a00">
「お前ではなく、他の劒冑と結縁して、この
二年を戦っていたら……
　俺は今頃、自分のことを英雄とでも思って
いたかもしれん」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180770a00">
「世の人々を救うために悪と戦いこれを討つ、
正義の武者だとな。
　そうして、銀星号を倒した暁には、六波羅
をも打倒しようなどと考えていたか……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180780a00">
「想像するだに<RUBY text="おぞけ">怖気</RUBY>の走る話だ。
　独善の化粧でしかない正義に酔い、争乱を
引き起こすなど……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180790a01">
《…………》

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180800a00">
「村正。
　俺に正義は無い」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180810a00">
「その真実を決して忘れたくない。
　だからお前が必要だ」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180820a00">
「お前を捨てて別の劒冑を取れば……
　<RUBY text="・・・・・・・・・・・">善人は殺さず悪人は殺す</RUBY>という独善の道を、
俺は選ぶことになる」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0180830a00">
「世には死んで良い人間と死んではならない
人間とがいて、自分にはその区別をする権利
があるのだと認めることになる……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180840a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180850a00">
「俺は厚顔無恥な英雄になどなりたくはない。
　世間の人々がそんな俺を見て、正義の戦い
があると信じ、後に続こうとする――などと、
馬鹿げた始末になるのは尚のこと御免だ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180860a00">
「それこそ<RUBY text="わざわい">災禍</RUBY>というものだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180870a01">
《御堂》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180880a00">
「俺はお前を選ぶ」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180890a00">
「善悪相殺の戒律を選ぶ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180900a00">
「お前も、俺を選んではくれないか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180910a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180920a01">
《本当に……いいの……？》

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180930a00">
「俺には、お前でなくてはならないのだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180940a01">
《御堂……
　……でも……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180950a01">
《<RUBY text="かかさま">二世村正</RUBY>を生かしたのは……私。
　銀星号をこの時代に呼び込んだのは私……
だから》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180960a00">
「自分独りで戦わなくてはならない、か？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0180970a01">
《……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180980a00">
「俺にもそっくり同じ思いがあった。
　いや、今でもある……が」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0180990a00">
「認めよう、村正。
　俺もお前も独りでは弱い」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0181000a00">
「互いが必要だ。
　俺達はふたりで一騎とならねば、戦えない
のだ」

{	FwC("cg/fw/fw景明囚人_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0181010a00">
「一緒に……戦ってくれ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0181020a01">
《……御堂……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆ＣＧ差分
	CreateSE("SE01","se人体_血_たれる01");

	CreatePlainEX("絵板写", 4990);
	SetShade("絵板写", HEAVY);

	CreateWindow("絵窓右", 5000, 579, Middle, 378, 580, false);
	SetAlias("絵窓右","絵窓右");
	CreateTextureEX("絵窓右/絵演", 5110, -900, -90, "cg/ev/resize/ev213_景明と村正の結縁_bl.jpg");
	Move("絵窓右/絵演", 6000, -460, @0, DxlAuto, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵板写", 1000, 1000, null, false);
	Fade("絵窓右/絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　右手の親指に歯を立て、腹を浅く食い破る。
　血が溢れ始めたそれを、俺は劒冑へ向けた。

　――この指は、太刀を扱うに欠かせぬ指。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0181030a01">
《……ぁ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵窓右/絵演", null);

//◆ＣＧ差分
	CreateSE("SE01b","se特殊_鎧_駆動音02");

	CreateWindow("絵窓左", 5000, 67, Middle, 378, 580, false);
	SetAlias("絵窓左","絵窓左");
	CreateTextureEX("絵窓左/絵演", 5110, -30, -570, "cg/ev/resize/ev213_景明と村正の結縁_bl.jpg");
	Move("絵窓左/絵演", 6000, -396, @0, DxlAuto, false);

	MusicStart("SE01b",0,500,0,600,null,false);
	Fade("絵窓左/絵演", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　おずおずと、劒冑が<RUBY text="あし">肢</RUBY>を差し伸ばして応える。
　触れる。

　血が甲鉄を染める。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵窓左/絵演", null);

	CreateTextureEX("絵演", 6000, Center, Middle, "cg/ev/resize/ev213_景明と村正の結縁_bl.jpg");
	Fade("絵演", 1000, 1000, null, true);

	WaitKey(1000);

//◆キーン。ホワイトアウトホワイトイン
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);

	CreateTextureSP("絵演", 4010, Center, Middle, "cg/ev/ev213_景明と村正の結縁_b.jpg");

	Wait(500);

	Delete("絵ＥＶ*");
	Delete("絵板写");
	Delete("絵窓*");
	FadeDelete("絵フラ", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　水晶の鐘を打つような<RUBY text="がく">楽</RUBY>が、一度。
　俺と村正の間を渡った。

　これが――――
　
　最も簡素で、最も古い、武者正調の<RUBY text="タテワキノギ">帯刀儀礼</RUBY>。

　ここに<RUBY text="えにし">縁</RUBY>は結ばれ……
　俺と村正は初めて、一騎の武者と<RUBY text="な">成</RUBY>った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小ウェイト
	WaitKey(1000);
	CreateVOICEEX("ｅｔｃ","md01/0181040e060","その他男声");
	MusicStart("ｅｔｃ",0,1000,0,1000,null,false);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//◆ボイスのみ、テキスト表示なし
//【ｅｔｃ／警官】
<voice name="ｅｔｃ／警官" class="その他男声" src="voice/md01/0181040e060">
「いたぞー！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//◆多数の人間の足音が近付く
//◆フェードアウト

	WaitKey(500);

	CreateSE("SEL01","se人体_足音_踏み込み01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	WaitKey(1500);

	ClearWaitAll(3000, 2000);


//◆ＯＰムービー・村正編
//◆完全新作とは言わんので、いくらかのアレンジを。

}

..//ジャンプ指定
//次ファイル　"md01_019.nss"