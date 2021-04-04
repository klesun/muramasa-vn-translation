//<continuation number="730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_010.nss_MAIN
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
	#bg007_若宮大路a_03=true;
	#bg001_空d_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_011.nss";

}

scene md06_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_009.nss"

//◆郊外。bg049
	SoundPlay("@mbgm32", 0, 1000, true);

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 10000, "BLACK");

	OnBG(100, "bg049_景明故郷住宅地a_03.jpg");
	FadeBG(0, true);

	Delete("上背景");
	DrawDelete("黒", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　何故、生きているのだろう。

　何故、歩いているのだろう。

//おがみ：シナリオ修正
//　ここは何処だのだろう。
　ここは何処なのだろう。

　わからない。

　何だか、わからない事ばかりだ。

　いつの間にか脳味噌が抜け落ちたらしい。

　拾いに行こうか……。

　いや、いい。
　どうせ大して役に立たないものだ。

　放っておけ。

　余計なものなんて無い方が軽くていい。

　そうに決まってる。

　ところで、ここは何処だ？

　見覚えがあるような無いような。

　人がいる。
　訊いてみるか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆泥酔中
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100010a00">
「失礼。
　脳味噌を探してるんですが知りませんか？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100020e109">
「お前ら、なんでこんな時間にうろうろして
やがるんだ？　ああァ!?
　やっぱり怪しい奴らだ……」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100030e110">
「橋を壊しただけじゃ足りないのか。
　今度は何をやるつもりだった!?」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100040e227">
「違う！
　俺達も、怪しい奴がいないか見回ってたん
だよ」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100050e228">
「橋を壊した奴が出て来たら、捕まえようと
思って……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100060e109">
「はっ。捕まるわけねえだろ。
　犯人が犯人を捜してるんじゃなァ！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100070e227">
「だから、本当に違うんだ！
　俺達はやってない！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100080e110">
「白々しい。
　お前らでなけりゃ誰がやるんだよ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……むう。
　何か立て込んでいるようだ。

　人は十人近くもいるが、言い合うのに忙しくて誰も
俺の話を聞いてくれない。

　これはいかん。
　手相によればここは人生の分岐点なのだ。

　是が非でも彼らに話を聞いて脳味噌を捨てるか神に
払った五百円を取り戻すか決めなくてはならない。

　全ては北朝復興のため……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100090a00">
「道をお尋ねします。
　神か、脳味噌か、涅槃か地獄へ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100100a00">
「ああ、自分でも結構です。
　あれです。自分探し」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100110e227">
「は？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100120e228">
「何だよあんた……
　うわっ、酒臭え！」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100130a00">
「何故でしょう。
　誰も酔ってはいないようですが」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100140e110">
「……おい。誰だよ、こんな酔っ払い連れて
来たのは」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100150e109">
「知らねえって。
　勝手に寄って来たんだろ？」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100160e228">
「なぁ、あんた。
　悪いけど今、取り込み中でさ」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100170a00">
「そうです。取り込んでいるのです。
　自分がなぜ生きているのかわかりません」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100180a00">
「何方かご存知ではないでしょうか？
　願わくばご教示を賜りたく」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100190e110">
「やけに丁寧な酔っ払いだな……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100200e109">
「あー、こんなのはどうでもいい！
　とにかくお前ら！　橋のことを忘れる気は
ねえからな」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100210e227">
「だから、俺達は――」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100220a00">
「橋とは何ですか」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100230e228">
「いや……ほら。そこの川に落ちてるだろ。
　壊されて、渡れないんだよ」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100240a00">
「成程。これはいけません。
　しかし自分が思うに――端を渡れないなら
フォークかスプーンを渡れば良いのではない
かと」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100250e228">
「……」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100260e227">
「相手するなよ……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100270e110">
「あの橋はな、俺達の生活に必要だったんだ」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100280e109">
「このままで済ませてたまるか。
　弁償しやがれ！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100290e227">
「弁償って……そんな」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100300e109">
「できないってんなら――」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100310a00">
「フォークを」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100320e227">
「フォーク？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100330e109">
「お前ら全員、追い出すまでだ！」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100340a00">
「フォークで」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100350e227">
「フォークで!?」

//おがみ：音声合わせ修正
//「誰と話してんだよ！
//　っていうか、邪魔だからあっちに行ってろ、
//酔っ払い!!」
{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100360e109">
「誰と話してんだよ！
　っていうか、邪魔だからあっち行ってろ、
酔っ払い!!」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100370a00">
「……？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100380e109">
「お前だよ！　きょろきょろすんなっ！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100390a00">
「自分は酔っていませんが」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100400e109">
「どう見ても酔ってるよ！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100410a00">
「何と。
　自分は酔っていたのですか……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100420a00">
「ではもう少し、酔っ払いらしく振舞った方
が良いですね」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100430e109">
「充分だっっ!!」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100440e110">
「おい、構うなって」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100450e109">
「わかってる。
　……いいか。もう一度言っとく」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100460a00">
「はい」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100470e109">
「お前にじゃねえよっ！」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100480e110">
「だからさ……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100490e109">
「わかってるっ！
　いいか難民ども！　弁償するか出て行くか
どっちかだ！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100500e227">
「……勝手ばっか言いやがって！
　俺達はやってないって言ってるだろう！」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100510e109">
「知るか！
　どのみち、お前らは邪魔なんだよ！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100520e227">
「何だとぉ!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100530a00">
「争わないで下さい」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100540e109">
「もういいからお前はどっか行け！」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100550a00">
「いいえ。
　争ってはいけません」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100560a00">
「悪いのは自分ですから」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100570e110">
「はぁ？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100580a00">
「貴方がたが責め合うべきではない。
　俺を責めればいい……」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100590a00">
「災いを生んだのは俺だ。
　俺が悪い。俺を責めろ。俺を罰しろ」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100600e227">
「……」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100610e228">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100620a00">
「そうしてくれ。
　どうされてもいい。殺してくれて構わない」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100630a00">
「だから」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100640a00">
「……だからァ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0);//―――――――――――――――――――――――――――――

//◆ばた。倒れる
//◆空。割れた月
	CreatePlainEX("絵板写", 4900);
	CreateColorEX("黒幕１", 5000, "#000000");
	OnSE("se人体_衝撃_転倒03", 1000);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Fade("黒幕１", 200, 1000, null, true);

	WaitAction("絵板写", null);
	Delete("絵板写");

	CreateTextureSP("割れた月大", 2010, Center, InBottom, "cg/bg/resize/bg001_空d_03l.jpg");
	CreateTextureSP("割れた月", 2000, @0, @0, "cg/bg/bg001_空d_03.jpg");

	Move("割れた月大", 10000, @0, -120, DxlAuto, false);
	FadeDelete("黒幕１", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　夜空が広がっている。

　月だ。
　割れた、月だ。

　……どうしてあんな事に。

　そうだ。
　光が、蹴り割ってしまったのだった。

　まったくお茶目なやつだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100650a00">
「ははっ」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0100660a00">
「はは、ははは」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("割れた月大", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　可笑しい。
　月が割れているのだ。可笑しくて仕方ない。

　地面の上で、転がって笑う。
　腹が痛い。笑い過ぎて痛い。

　ああ……可笑しい。
　でも。

　なぁ、光？

　どうしてお前は……
　俺の事も、あんな風に叩き割ってくれなかったんだ。

　どうして、俺を連れて行かなかった？

　どうして…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 1000);

//◆元の場所
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100, "bg049_景明故郷住宅地a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nw馬面の男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100670e110">
「……おい。
　こいつ、どうする？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100680e109">
「どうするって……知るかよ」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0100690e227">
「…………」

{	NwC("cg/fw/nw小柄な難民.png");}
//【ｅｔｃ／難民Ｂ】
<voice name="ｅｔｃ／難民Ｂ" class="その他男声" src="voice/md06/0100700e228">
「…………」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100710e109">
「……くそ。
　何だか馬鹿馬鹿しくなっちまった」

{	NwC("cg/fw/nw馬面の男.png");}
//【ｅｔｃ／住民Ｂ】
<voice name="ｅｔｃ／住民Ｂ" class="その他男声" src="voice/md06/0100720e110">
「俺もだ。
　……今日は引き上げようぜ」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0100730e109">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md06_011.nss"