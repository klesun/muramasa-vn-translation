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

scene md06_009.nss_MAIN
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
	#bg069_普陀楽城内広間_01c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_010.nss";

}

scene md06_009.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md06_008.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "BLACK");
	CreateColorSP("黒", 50, "BLACK");

	OnBG(100, "bg069_普陀楽城内広間_01c.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("上背景");
	FadeDelete("絵色黒",1500,true);

//◆ざわざわ。

	CreateSE("SEL01", "se背景_ガヤ_ざわめき02");
	MusicStart("SEL01", 0, 1000, 0, 1000, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　間違いだ。

　これは間違いなのだ。
　誰かの。何かの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 3000, 0, null);

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090010e146">
「今の世には災いが満ちている！
　戦争はいつまでも続き、犠牲者はひたすら
増えてゆく」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090020e146">
「遂に天までもが狂い始めた。
　やがて大きな災害が起こるだろう」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090030e146">
「どうしてこのようなことになったのか!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　災いの全ては俺が導いた。
　俺だ。俺だ。俺だ。

　だから俺を<RUBY text="・・・・">どうにか</RUBY>してくれ。
　俺がこうしてのうのうとしているのはおかしいんだ。
間違っているんだ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090040e146">
「これは貴方がた一人一人に責任がある。
　他人のせいにしてはいけない」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090050e146">
「貴方が今日の災いを招いてしまったのだ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　そうだそうだ。
　全くその通りだ。誰が否定などするものか。疑問を
挟む余地もありはしないのだ。

　認める。だから教えてくれ。
　俺はどうしたらいいのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090060e146">
「貴方がたの犯した間違いを教えよう。
　思い出して頂きたい。貴方がたは誰がこの
国の主だと思っている？」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090070e146">
「そう、<RUBY text="みかど">帝</RUBY>だ。
　しかし、貴方がたの崇める今上の帝は偽物
なのだ！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090080e146">
「五百年前、南北朝の争いで南朝方が勝利し、
今に至る皇統の元となっている。
　だがあの時、正統の朝廷は北朝であった！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090090e146">
「正しい皇統が消え、誤った皇統が立てられ
……神州大和は穢れてしまった。
　その穢れが今、数多の災いとなって我々を
襲っているのだ！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090100e146">
「貴方がたは大和国民として正しい道へ立ち
戻らねばならない！
　誤った道を捨てなくてはならない！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　正しい道。
　誤った道。

　俺の選んだ道が誤りで。
　今からでも正しい道を選び直せるというなら、是非
そうしたい。

　だが。
　……何が正しく、何が誤っていたのだろう。

　振り返れば、何もかも誤りだったと思える。
　しかしその一つ一つは、既に選ぶ余地なく決定付け
られていたのではないか――それ以前の誤りによって。

　なら、根源はどこだ。
　どこまで遡れば、俺はやり直しが利くのだ？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090110e146">
「正しい帝を崇めるのだ！
　それは誰あろう、私である！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090120e146">
「この私、倉澤こそ、北朝の末裔……
　倉澤正統帝なのであぁぁァる!!」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090130e146">
「貴方がたは京都の偽帝を廃し、代わりに私
を奉戴しなくてはならないっ！
　北朝を復興するのだ！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090140e146">
「さすれば私は大和に泰平を与えよう！
　<RUBY text="いつ">稜威</RUBY>によって成し遂げるであろうっ！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090150e146">
「何故なら朕は正しい帝……
　<RUBY text="あらひとのかみ">現人神</RUBY>なのだっっ!!」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090160e146">
「朕は神なのだァァァァ!!
　ひれ伏せ、我が臣民よォォォォ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　神。

　神が平和をもたらすのか。

　……神？

　神とは、<RUBY text="・・">あの</RUBY>神か。

　あれは古代の予言に云う最後の救い手だか何だかで、
地上の救済を果たすために現れたものだったのだろう
か。

　世の中の全てが正されて、俺の殺人も無かった事に
なって、誰もが幸福を取り戻せたのか？

　とすれば何か。

　俺の最大の誤りとは、あれを破壊した事か。

　なんて事だ。

　だったら、だったら……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090170a00">
「神……」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090180e146">
「おお！　我が民よ！
　そなたが最初に、正しき道へ立ち返った！」

//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090190e146">
「北朝の帝位を奪還するため共に戦おう！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090200a00">
「神よ」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090210e146">
「さあ、他の者も何をしている！
　彼に続き、我が手を取るのだ！」

//嶋：修正（救われぬ）【090930】
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090220e146">
「偽りの帝を崇め続ける者は救われんぞ！」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090230a00">
「神」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090240a00">
「お前が、世界を救うために来たのなら」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がし。胸倉掴む音

	OnSE("se人体_動作_腕を掴む01", 1000);

	WaitKey(300);

	SetNwC("cg/fw/nw演説する男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090250e146">
「うおっ!?」

{	CreateSE("SEL01", "se背景_ガヤ_ざわめき02");
	MusicStart("SEL01", 0, 1000, 0, 1000, null,true);
	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090260a00">
「なんで俺ごときに殺された!?
　神が……なんでだ！」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090270e146">
「ちょ、あんた、右翼の人……!?」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090280a00">
「救うならちゃんと救えっ！
　俺など踏み潰せば良かったろうが……」

//【景明】
<voice name="景明" class="景明" src="voice/md06/0090290a00">
「貴様が<RUBY text="・・・・">真面目に</RUBY>やっていればァ!!」

{	NwC("cg/fw/nw演説する男.png");}
//【ｅｔｃ／倉澤帝】
<voice name="ｅｔｃ／倉澤帝" class="その他男声" src="voice/md06/0090300e146">
「まっ、待って！　殺さないで！
　やめます、北朝正統帝やっぱりやめます！
退位して法皇に――」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0090310a00">
「ああああああああッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。
	OnSE("se人体_動作_物音立てる01", 1000);

	CreatePlainEX("絵板写", 9990);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 30, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　突き上げる憤懣ごと、神を放り捨てる。
　うぎゃあああ、と悲鳴を上げながらそれは一目散に
走り去っていった。

　……どうしようもない。
　もう神は死んだ。

　間違いを全て帳消しにしてくれるような都合の良い
存在は何処にもいない。

　どうにもならない。

　もはや何もかも、どうにもならないのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 1000, 0, null);

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);



}

..//ジャンプ指定
//次ファイル　"md06_010.nss"