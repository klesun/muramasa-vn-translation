//<continuation number="1140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_024.nss_MAIN
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
	#bg016_公園a_01=true;
	#bg016_公園d_01=true;
	#ev260_骨董屋に立ち寄る景明と村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_025.nss";

}

scene md06_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_023.nss"

//◆公園
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg016_公園a_01.jpg");
	FadeBG(0, true);

	CreateSE("SE01L","se背景_ガヤ_ざわめき01_L");
	MusicStart("SE01L",600,1000,0,1000,null,true);

	Wait(1000);

	Delete("上背景");
	DrawDelete("黒", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm29", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ベンチと子供用遊具が幾つかあるきりの、本来なら
寒々しい公園である。
　しかし今日ばかりは様相を違えていた。

　地面に茣蓙、絨毯、ビニールシートが敷かれ、列を
成している。
　その上には多種多様の品々と、それを商う人々。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 1000, 500, null);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240010a01">
「市？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240020a00">
「古物市だな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　それなり以上の規模の街なら、適当な広場を使って
折々に開かれる自由市場だ。
　鎌倉でも、別段珍しい催しではない。

　だが最近の頻度の高さには、やはり時勢が絡むので
あろう。

　鎌倉に逃げ込んだ戦災難民が、当座の生活費を得る
ために持ち合わせの品々を売る。
　あるいは身一つで逃げてきた難民が、少ない所持金
で安値の品々を買い求める。

　双方の要求を満たす取引場が求められ、用意される。
　この市も、人出の多くはどちらかを目的とする難民
と<RUBY text="おぼ">思</RUBY>しかった。

　もっとも、どちらにも属さない市民の売り手買い手
とて散見する。
　俺は戸惑い気味に辺りを見回す村正を促して、その
一つに近寄った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);
	SetVolume("SE01L*", 1000, 0, null);

//◆ＥＶ：骨董市の村正？
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);
	OnBG(100,"bg016_公園d_01.jpg");
	FadeBG(0,true);

	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw骨董商_通常.png");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	SetComic(@0,@0,11);}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240030e075">
「はぁい、いらっしゃーい！
　お手に取ってどーぞ！」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　見た目は小柄だが威勢はいい、若い女性店主の声に
迎えられ、敷物の前に腰を落とす。
　扱う品は――彫刻、茶碗、壺、貴金属の細工物……。

　古物ではなく、骨董と呼ばねば失礼にあたりそうな
ものばかりだ。
　素人に<RUBY text="さば">捌</RUBY>ける品とも思えない。おそらくここは本職
の骨董商の出店なのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240040a00">
「ふむ……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240050a01">
「……御堂、こういうの好きでしょう」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240060a00">
「わかるか」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240070a01">
「何となく」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240080e075">
「なんかそういうオーラが出てるっすよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　何故か店主にも同意された。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240090a00">
「……良い物を置いていますね」

{	SetComic(30,10,4);
	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240100e075">
「あ、わかる？　わかる？
　かーっ、嬉しくなるね、<RUBY text="ちがいのわかるおきゃくさま">ネギしょったカモ</RUBY>
に巡り合えると！」

{	DeleteComic();}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240110e075">
「さぁ、どんどん見て下さいなっ！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240120a01">
「……今なにか、変じゃなかった？
　変っていうか不穏っていうか」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240130a00">
「そうか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　店主に勧められるまま、目についた品を一つ取る。
　天目茶碗――華やかな<RUBY text="いろ">彩</RUBY>だが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240140e075">
「流石だねお客さん。そいつはいいものだよ。
　裏千家の宗匠も絶賛した、丸山雅永の孔雀
天目だ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240150a00">
「ほう……これが」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240160e075">
「もちろん<RUBY text="しんさくほしょう">贋作確定</RUBY>。
　箱もあるし、蓋の裏にはちゃんと裏千家の
宗匠直筆間違い<RUBY text="なし！">だらけ</RUBY>の箱書も」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240170a01">
「……やっぱり何か……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240180a00">
「お値段は？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240190e075">
「本当なら万って話になるんですけどねえ。
　最近は景気が悪いし、お客さんは目の高い
お人だしねえ……」

//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240200e075">
「三千円でどうかな？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240210a00">
「それはお安い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　本物であればの話だが。
　
　後半は胸中に封印して、茶碗を元の位置に戻す。

　その隣には、味わい深い色をした壺があった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240220a00">
「こちらは……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240230e075">
「信楽焼ですよ。
　へへへー、こいつも滅多にない逸品でねえ」

//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240240e075">
「いいでしょ？　この<RUBY text="ひがきもん">桧垣文</RUBY>」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240250a00">
「なかなか」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240260e075">
「<RUBY text="ゆう">釉</RUBY>はないけど、そこがまた味だ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240270a00">
「確かに……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240280e075">
「手触りも素晴らしい。
　どうぞどうぞ、お客さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　店主に手を掴まれ、壺まで持っていかれる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240290a01">
「むっ……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240300e075">
「どーですか？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240310a00">
「良い肌です」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240320e075">
「なんかこう、官能的で……背筋にゾクゾク
くるでしょう？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240330a00">
「はい」

{	FwC("cg/fw/fw骨董商_照れ.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240340e075">
「あぁー……。
　お客さんとこうしているだけで、あたしも
だんだんとおかしな気分に……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240350a00">
「骨董屋さん……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240360a01">
「何の話をしてるのよっ!!」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240370a00">
「壺だが」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240380e075">
「壺ですよ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240390a01">
「……そ、そう……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240400e075">
「で、どうですお客さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　店主は俺の手を握ったまま、その甲に、つつつっと
指を這わせてきた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240410e075">
「ちょいとお高くつきますが、ご損はさせま
せんよ？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240420a00">
「いかほど？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240430e075">
「お客さんの色男ぶりに負けに負けて……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　撫でるような動きで、指先が数字を描く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆怒
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240440a01">
「…………」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240450e075">
「こんなもんで」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240460a00">
「それは骨董屋さん、手が出ない」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240470e075">
「やぁー困ったなー。
　こいつは江戸か、ひょっとするとそれ以前
ってぇ代物でねえ。これ以上安くはできない
んだなぁー」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240480e075">
「ええい、でも仕方ない。
　商売にならなくなるけど、お客さんのため
……これでどうだ!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240490a00">
「さて……」

//◆にこやか怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240500a01">
「……そろそろ手、離したらどうかしら……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240510e075">
「後生ですよーお客さぁん。
　あたしにも暮らしがあるんですからさー」

//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240520e075">
「ここは気持ち良くこのお値段で折り合いを
つけましょう」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240530a00">
「しかしこれは悩ましい」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240540e075">
「そう言わずそう言わず。
　お買い上げ頂けたら……あたしお客さんの
お宅までちゃんとお届けしますよ？」

{	FwC("cg/fw/fw骨董商_照れ.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240550e075">
「ちょっとした<RUBY text="・・・・">サービス</RUBY>もできるかも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　何やら含みを持たせて、店主は言った。
　何故か体を寄せてくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240560a01">
「……………………」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240570a01">
「み<?>
{	Wait(300);}
・ど<?>
{	Wait(300);}
・う」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240580a00">
「村正？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240590a01">
「その壺、欲しいの？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240600a00">
「まぁ、悪くないとは思っている」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240610a01">
「じゃあ、十分の一に値切って」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240620a00">
「……いきなりか？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240630e075">
「おぉーいおいおいおい！
　姉さん、ちょっと耳が長いからって調子に
乗ってもらっちゃ困るねえ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　俺の手を振り払い、店主は伝法調で啖呵を切った。
　小柄なのに見下ろすような目で、村正を<RUBY text="ね">睨</RUBY>めつける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240640e075">
「うちの品物にケチつけようってのかなっ？
それとも買い叩こうってのかなっ？
　どっちにしたってそいつをやっちゃあもう
大事なお客さんじゃあないなあ!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240650a01">
「どっちでもありません。
　正しい値段をつけてあげただけよ」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240660e075">
「いいのかいそんなこと言っちまって!?」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240670a01">
「ふん」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240680e075">
「かーっ、北極の熊でおもしれえ！
　こうなりゃとことん勝負だ、耳がクルクル
回る姉さんよう!!」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240690a01">
「回るかっ！」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240700e075">
「じゃあひとつ教えて頂きましょう！
　この年代物の信楽壺と今のふざけた値踏み、
どういう理屈で引っ付き合わせるのか！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240710a01">
「理屈ってほどの話でもないけど」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240720e075">
「逃げ口上は聞けないなあ！」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240730a01">
「……年代物じゃないでしょ。これ」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240740e075">
「――――」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240750e075">
「ど、どっ、どういうことかなっ!?
　こいつは間違いなく江戸の昔の――」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240760a01">
「御堂、江戸っていつ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240770a00">
「百年ほど前に終わった時代だ」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240780a01">
「はったり利かせ過ぎね。
　実際はその半分も無いじゃないの」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240790e075">
「姉さん、適当吹かしちゃあいけない――」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240800a01">
「二二年と四ヶ月」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240810e075">
「……はっ？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240820a01">
「二二年と四ヶ月よ。この壺が出来てから。
　貴方、これの由来を知ってるなら計算して
みなさいな」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240830a01">
「ぴったり合ってるはずだから」

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240840e075">
「……………………」

{	DeleteComic();
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240850a00">
「そこまでわかるのか」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240860a01">
「私を何だと思ってるの」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240870a00">
「骨董に目が利くとは考えた事もなかった」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240880a01">
「それはそうだけどね。
　でも土や鉱物から出来たものなら、その<RUBY text="・">歳</RUBY>
くらい一目でわかるってば」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240890e075">
「……あぁーくそう……これだから蝦夷って
連中は……。
　商売がやり辛くってしょうがない……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240900e075">
「もういいよぅ……その値段で持ってけ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　すっかり<RUBY text="しお">萎</RUBY>れた店主は引き下がり、膝を抱えて座り
始めた。
　……何だか少々哀れだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240910a01">
「どうする？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240920a00">
「やめておこう。
　なら村正……ここにある品の中で一番古い
物はどれだ？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240930a01">
「うーん……
　そこの小さくて丸いやつ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240940a00">
「この茶入か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　隅で埃を被っていた、文琳形のそれを取り上げる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240950e075">
「ふ、ふふ……ピンポイントなのさぁ……。
　そいつは安っぽく見せといて、玄人が掘り
出し物ゲットォーッと大喜びの所に値を吹っ
掛けてガッカリさせる罠なんだけどね……」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240960a01">
「貴方、とことん性根が曲がってない？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240970e075">
「耳でカスタネット打てるねーさんにはもう
逆らいませんよ……適正価格でどーぞぉ……。
　でもそれ以上の勉強はどうかご勘弁……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　指先で埃を拭えば成程、色艶は名品と呼べるだけの
ものだった。
　本象牙の蓋も良い。

　蓋を取って中を覗くと、そこにも埃が積もっていた。
　払うため、息を吹き込む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240980a00">
「……けほっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @30, @0, "cg/st/st村正_通常_私服.png");
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240990a01">
「何してるの」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241000a00">
「思ったより酷かった……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　顔に飛んだ埃を手で拭う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//memo:ここらへんで村正大きいの表示する？　でもなんかいかにもすぎるかもしれない inc櫻井

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241010a01">
「待ちなさい。
　いま拭いてあげるから……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241020a01">
「ほら、こっち向く」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241030a00">
「うむ……」

{	DeleteStR(300,false);
	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241040a01">
「貴方ってたまに子供っぽいことするのよね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241050a00">
「そうか？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241060a01">
「そうよっ。
　もう」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241070a01">
「耳にまで飛んでる」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241080a00">
「……指を入れられるとくすぐったいんだが」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241090a01">
「我慢する」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241100a00">
「逆もか？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241110a01">
「もちろん。
　はい、向き変えて」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241120a00">
「ん……」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0241130e075">
「……あの……お客さん……。
　なんか商売の邪魔っていうか……見てると
独り身の寂しさが身に<RUBY text="こた">堪</RUBY>えるっていうか……」

{	SetComic(@0,@0,5);
	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0241140e075">
「うっうっ……なんか涙出てきた。
　いちゃつくならあっち行けよう……」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_025.nss"