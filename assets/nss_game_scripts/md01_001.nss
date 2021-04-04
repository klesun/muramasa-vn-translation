//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_001.nss_MAIN
{

	$TITLE_NOW=" ――――　魔王編　―――― ";

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
	#bg014_鎌倉繁華街_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_002.nss";

}

scene md01_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_000.nss"

//◆鎌倉市街、夜
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg014_鎌倉繁華街_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);
	SoundPlay("@mbgm16",0,1000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　<RUBY text="すまい">拘置所</RUBY>への道を、ぽつぽつと歩く。

　義侠心溢れるジャーナリストを殺めた行為は両肩に
重かった。
　罪――何処かへ捨てることも、誰かに預けることも、
決して叶わない荷。

　生き続ける限りそれは積み重ねられ続ける。だから
こそ人は正しく生きて少しでも荷を減らすのだ。
　が、この俺はあたかも精神の剛力を誇示するが如く、
殺人という最大の罪を次から次へと抱え込んでいる。

　<RUBY text="いもうと">銀星号</RUBY>を止める、その自己一身の欲求のためだけに。

　……俺は愚かなのだろう。
　おそらく、最も<RUBY text="たち">質</RUBY>の悪い意味で愚かなのだ。

　嘲笑うにも値しない。
　唾棄する以外に仕様もない、愚物。
　
　そうと自覚してなお続ける、救いの無さ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010010a01">
《……御堂》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010020a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010030a01">
《繰り返し、言ってきたことだけれどね。
　貴方は何も考えなくていい》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010040a01">
《私に使われていればいい。心を止めて。
　止められないなら……私を憎めばいい》

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010050a01">
《……自分を憎むのはやめて……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010060a00">
「俺の答えも、繰り返し言ってきた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010070a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010080a00">
「<RUBY text="おまえ">劒冑</RUBY>は道具だ。
　使われるものに過ぎない」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0010090a00">
「使われるだけの道具は罪など背負えない。
　使う人間が罪を背負う」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010100a00">
「憎悪に値するのは<RUBY text="おれ">人間</RUBY>のみだ。
　分際を知れ、道具」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010110a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　同様の対話を幾度交わしたろう。
　二年前のあの時、村正と結縁してから。

　今のように村正が言い出すこともあれば、俺の側が
口火を切ることもあった。
　<RUBY text="しか">然</RUBY>して結末は毎回変わらず。二人共に黙り込んで、
互いに譲らないまま話を終える。

　俺が譲らないのは、それが譲れない部分だからだ。
　村正にとっても、同じなのだろう。

　だから対話はいつも不毛に、相互の拒絶で終結する
ほかない。<k>
　
　これまでは、そうだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010120a00">
「だが」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0010130a01">
《……えっ？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0010140a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　不意に口をついて出た、逆接の一語。
　そして続けるべき言葉は――<k>しかし、俺の意識野に
存在していなかった。

{	SoundPlay("@mbgm32",2000,1000,true);
	CreateSE("SEL01","se人体_足音_歩く01_L");
	MusicStart("SEL01",0,1000,0,700,null,true);}
　元通りに口を噤んで、歩く。
　村正も、夜陰に潜んで<RUBY text="つ">従</RUBY>いてくる。

　が、劒冑の沈黙は、物問いたげな成分を含んでいた。
　それはそうだ。やにわに<RUBY text="パターン">約束事</RUBY>を崩されれば、疑問
も湧くだろう。

　俺自身さえ不思議だった。
　魔が差したかのような一刹那、俺は何を思い、何と
言い募ろうとしたのか。

〝だが〟
　
　
　その言葉の後に、何を。

　既に手放してしまったそれは、もう俺の精神の沼の
底だ。見えないし、手に取ることもできない。
　やがては完全に溶けて、消えてしまうだろう。

　そうなって、何が不味いということも無かろうに。
　俺はどうしてか、脳裏で<RUBY text="・">糸</RUBY>を<RUBY text="たぐ">手繰</RUBY>っていた。

　沼の底の何かと繋がっている糸を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……言うなれば、その糸は情景だった。
　但し、俺自身に根差すものとは違う。

　青江の幻覚世界に囚われている<RUBY text="さなか">最中</RUBY>、意識野を通り
抜けていった光陰。
　あれもやはり、青江の陰義で引き出されたものだっ
たのだろう。俺の心ではない処から。

　俺の夢、俺の過去に符合しない異質なそれを、俺は
見た瞬間に忘却してしまったらしい。
　
　……どういう次第でか、<RUBY text="・・">今の</RUBY>俺は取り戻している。

　確かに見たことを、一度忘れ去ったことをも自覚し、
そして内容を思い出している。

　断片的にだが。
　心裡の鏡面へ映し出せる。

　それを――――<k>
　
　村正の、記憶を。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);

//◆テロップ
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateColorSP("絵黒地", 150, "#000000");
	Move("絵黒地", 0, -512, @0, null, true);
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/tp_魔王編序文01.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);
	Delete("上背景");

	FadeDelete("絵黒面", 2000, true);

	WaitKey(2000);
	FadeDelete("絵黒地", 1000, true);

	WaitKey(3000);
	ClearWaitAll(3000, 2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　これは英雄の物語ではない。

　誰もが英雄ではいられない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//◆消去。やや間を置いて
//◆ＢＧＭと共に
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm37",2000,1000,true);
	CreateColorSP("絵黒面", 10000, "#000000");
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/tp_魔王編序文02.png");
	Zoom("絵テロ１", 0, 700, 700, null, true);
	Request("絵テロ１", Smoothing);
	Delete("上背景");

	FadeDelete("絵黒面", 2000, true);

	WaitKey(3000);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 3000, 1000, null, true);
	Wait(2000);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　それでも誰もが戦っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//◆タイトル：装甲悪鬼村正　魔王編
	PrintBG("上背景", 30000);
	CreateTextureSP("絵テロ１", 100, Center, Middle, "cg/sys/Telop/lg_魔王編.png");
	FadeDelete("上背景", 2000, true);
	WaitKey(3000);

	ClearWaitAll(3000, 3000);

}

..//ジャンプ指定
//次ファイル　"md01_002.nss"