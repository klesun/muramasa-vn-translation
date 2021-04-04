//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_022.nss_MAIN
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
	$時田光男殺害 = true;

	$PreGameName = $GameName;
	$GameName = "ma05_023.nss";

}

scene ma05_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_021vs.nss"


//◆アナザー選択
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 200, "#000000");
	OnBG(100,"bg086_病室_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆一閃
//◆血がぶしゅー
	CreateSE("SE01","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,5000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdamN(@0, @0,1000);
	SL_leftdamfadeN2(10);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　彼は名を<RUBY text="ときたみつお">時田光男</RUBY>という。

　若い、フリーのジャーナリストであった。
　巷で噂の〝赤い武者〟に強い興味を持ち、あてにな
らない風聞と風聞を繋ぎ合わせ、遂に真実の<RUBY text="ひとかけら">一欠片</RUBY>を
造り上げた――つまりは俺に行き着いた。

　関東拘置所に入所と出所を繰り返す奇妙な<RUBY text="とがびと">科人</RUBY>の話。
　そして〝赤い武者〟の目撃情報。
　前者の出所時期と、後者のうち信憑性の高い幾つか
……その一致を彼は掴んだのだ。

　彼の動機のうち一つはジャーナリストらしい好奇心
であり、もう一つはジャーナリストらしからぬ偏った
熱情――圧制者への怒りだった。
　あなたは希望なのだと、彼は俺に向かって告げた。

　巨大な権力者に挑む一個人がいる。
　その事実はきっと、人々の心に勇気という灯を宿す。
　それはやがて、圧制を打ち砕く力へ育つ。

　<RUBY text="ペン">筆</RUBY>は剣よりも強いのだ、そう彼は主張した。
　それが彼の信念だった。

　あなたを報道させてくれと、彼は俺に懇願した。
　自分のやり方で、あなたと一緒に戦いたい。そうも
言った。

　俺の同意を得られないと知ると、彼は自分の覚悟を
見せようと思ったのか、俺を襲った殺人鬼――青江だ
――について調べ上げ、遂に所在を突き止めるという
真似までやって見せた。

　代償は腕一本を失う重傷であった。
　青江を仕留め、病室を見舞った俺に、彼は微笑んで
言った。ペンが剣を一本折った、自分の信念の勝利だ、
と。

　彼は正しかった。俺が殺人鬼を倒せたのは彼の助力
のお陰だった。
　そう告げると、彼は照れ臭そうに目を伏せた。

　その首を刎ねた。
　
　
　ペンは折れた。

　俺は彼の信念を侮辱した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(3000, 0);

..//ジャンプ指定
//次ファイル　"ma05_023.nss"

}




//◆２３４５６７８９０１２３４５６７８９０１２３４







