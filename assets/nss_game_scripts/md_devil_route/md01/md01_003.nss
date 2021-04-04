//<continuation number="1250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_003.nss_MAIN
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
	#bg093_山間の村a_01=true;
	#bg023_弥源太の家_01=true;
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_浦夢=true;

	$PreGameName = $GameName;

	$GameName = "md01_004.nss";

}

scene md01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_002.nss"

//◆蝦夷村
//◆飽間
	PrintBG("上背景", 30000);

	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg093_山間の村a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

	StR(1000, @30, @0,"cg/st/st飽間_通常_私服.png");
	FadeStR(500,true);
	Wait(500);

	SetFwC("cg/fw/fw飽間_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030010b50">
「この村も、久方ぶりだ」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030020b30">
「うむ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-60, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(500,true);
	Wait(500);

	SoundPlay("@mbgm05",0,1000,true);

	StCL(1000, @90, @0,"cg/st/st二世村正_通常_私服.png");

	SetFwC("cg/fw/fw村正_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030030a01">
「飽間様、ようこそいらっしゃいました」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030040b50">
「おう！　見違えたわ。
　蝦夷はまったく、瞬きの間に大きくなるな」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030050b50">
「どちらが村正の娘で、どちらが孫だったか、
うっかりしていると間違えそうじゃ」

{	FadeStCL(300,false);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030060a15">
「……それは言い過ぎだ。
　こやつはまだまだ子供」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030070a15">
「鍛冶の技も、ようやく基礎が出来てきたか
どうかというところだ」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030080a01">
「でも、背は<RUBY text="かかさま">母様</RUBY>より少し高い」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030090a15">
「む」

{	FwC("cg/fw/fw始祖妻_通常.png");}
//【始祖妻】
<voice name="始祖妻" class="その他女声" src="voice/md01/0030100b29">
「ふふ……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030110b30">
「長いこと、各地を転戦していたそうだが」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030120b50">
「うむ。
　甲斐あって、赤松めの裏切りからの頽勢を
ようやく半分ばかりは挽回できたわ」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030130b50">
「虜囚の身で世を去らねばならなかった先帝
の御無念、いささかは晴らせたかのう。
　ぬしの婿殿の無念もな……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030140a15">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030150a01">
「……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030160b30">
「……して、そちらの御仁は？」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030170b50">
「おう。
　この方は鞍馬山の学僧での」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆浦夢。フード男？
	DeleteStA(300,true);

	StR(1000, @0, @0,"cg/st/resize/st浦夢_通常左_私服a.png");
	FadeStR(500,true);

	Wait(500);

//◆※浦夢の喋りはややカタコト。
//◆日本語の上手い外国人、のイメージで
	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

	#voice_on_浦夢=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030180b16">
「浦夢と申します。
　どうか、よしなに」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030190b30">
「……」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030200b50">
「非常に深い学識をお持ちでな。
　長らく南朝の、陰の相談役のようなことを
して下さっていた」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030210b30">
「ほう……」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030220b50">
「わしも幾度となく世話になったものよ。
　先日も相談事を持ち掛けたのだが、その折
にふと、ぬしのことを話してみたところ――」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030230b16">
「至高の劒冑を求めておいでと伺いました。
　それはとても、とても興味深い命題です」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030240b16">
「是非、私に協力させてください」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030250b50">
「――と、こう言われる」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030260b30">
「協力？
　……鍛冶の心得でもお有りか」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030270b16">
「いいえ。鍛冶の技は知りません。
　しかし私、広い、とても広い世界を巡って
きました」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030280b16">
「色々な学問を知っています。
　劒冑もたくさん、見てきました」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030290b30">
「……ふむ」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030300b50">
「どうだ。
　その分ではまだ劒冑の工夫がついておらん
のだろう？」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030310b50">
「物の試しに、浦夢殿の知恵を拝借してみて
も損はあるまい」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030320b30">
「まぁ……
　そう言われるなら、あえて断る理由もない
がな」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030330b30">
「見ての通り貧しい村、京の暮らしに慣れた
方にはさぞ不自由が多かろうと存ずるが……。
　それでも宜しいか」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030340b16">
「構いません。
　ありがとうございます。村正どの」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030350b16">
「どうか、よろしく」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030360b30">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 2000);

//◆家内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	Wait(500);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030370b16">
「村正どのは、計算が得意ですか」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030380b30">
「……異な事を。
　計算が不得手で、劒冑鍛冶など務まろうか」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030390b16">
「ではお答えください。
　六十二万五千五百九十二に七万八千四百二
十一を加え、十五万六千五十九を引き、それ
から三倍すると、いくつになります？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030400b30">
「…………待たれい。
　今、<RUBY text="さんぎ">算木</RUBY>を――」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030410b16">
「ふふふ。
　算木を使っても、答えを出すのには時間が
少し掛かるでしょう」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030420b30">
「少しな」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030430b16">
「これを使ってみてください」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆筆記する音
	OnSE("se日常_物_鉛筆筆記01",1000);

	Wait(1500);
	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030440b30">
「……これは？
　何かの記号に見えるが」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030450b16">
「天竺の数字です」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030460b30">
「数字？　これが？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030470b16">
「はい。
　これが一、これが二、これが三……となり
ます」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030480b30">
「ふむ……。
　では、この丸い記号は十か」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030490b16">
「いいえ、違います。
　それは<RUBY text="・・">ぜろ</RUBY>です」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030500b30">
「ぜろ？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030510b16">
「無い、ということを示します。
　空白を表す数字が<RUBY text="ぜろ">〇</RUBY>です」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030520b30">
「？　……？」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030530b30">
「無いものを、どうして数字で表さねばなら
ない？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030540b16">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030550a15">
「あぁ――!?」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030560b30">
「どうした」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030570a15">
「いや、どうしたではない、御父！
　これは途轍もない発見だぞ!!」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030580b30">
「何？」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030590a15">
「浦夢殿、この数字で十を表すと……
　もしやこうなるのか？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030600b16">
「はい。<RUBY text="いち">１</RUBY>と<RUBY text="ぜろ">〇</RUBY>を並べます。
　縦ではなく、横に並べるのが正しいやり方
ですが」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030610a15">
「御父、見ろ。
　この数字を使って、さっきの計算をすると
――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆フェードイン
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	OnSE("se日常_物_鉛筆筆記01",1000);
	$残時間=RemainTime("@OnSE*");
	WaitKey($残時間);

	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030620a15">
「百六十四万三千八百六十二。
　瞬く間だ……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030630b30">
「――――」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030640b16">
「どうですか。
　天竺の数字を使うと、計算がしやすくなる
でしょう」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030650b30">
「十、百、千といった数字を無くし……
　一から九、これに<RUBY text="ぜろ">〇</RUBY>を加えた十個の数字で、
あらゆる数を表す……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030660b30">
「ただこれだけの工夫で、計算の手間がかく
も減るのか！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//嶋：修正（形を）【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030670b16">
「実はこの数字と計算法は、もっと古くから
大和に伝わっていたのです。
　少し形は変えてはいましたが……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030680b16">
「けれど、ほとんどの人は価値を理解できま
せんでした。
　理解できた人は独占して、隠してしまいま
した」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030690b16">
「だから広まっていないのです」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030700b30">
「むぅ……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030710b16">
「せっかく海を越えて伝わったのに埋もれて
しまった知識、他にもたくさんあります。
　もちろん、まったく未知の知識も」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030720b30">
「浦夢殿は、それをご存知なのか」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030730b16">
「はい」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030740b30">
「……教えてくれ！
　いや、お願いする。教えて頂きたい」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030750b30">
「どうか！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030760b16">
「頭を下げないでください。
　教えます。私はそのために来たのです」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030770b16">
「村正どのに、私の知識をすべて差し上げる
ために……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(500);

//◆蝦夷村
	OnBG(100,"bg093_山間の村a_01.jpg");
	FadeBG(0,true);
	FadeDelete("絵色黒", 2000, true);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030780b16">
「村正どの。
　あなたが至高の劒冑を求めるなら、三つの
<RUBY text="チカラ">源気</RUBY>について知らなくてはなりません」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030790b30">
「三つのちから？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030800b16">
「この宇宙の根源的なちからです。
　私はこれを、磁気、辰気、創気と呼びます」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030810b30">
「…………」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030820a01">
「磁気というのは、磁石の？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030830b16">
「はい。
　磁石が引き合い、反発し合うちからのこと
です」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030840b16">
「あと二つはわかりますか？」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030850b30">
「いや」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030860b16">
「辰気とは、あらゆる物体に備わるものです。
　他の物体を引き寄せるちからです」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030870b30">
「……？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030880b16">
「今、私は石を拾いました。
　手を離すと、この通り」

{//◆ころ。
	OnSE("se人体_動作_石を落とす",1000);
	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030890b16">
「石は地面に落ちます」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030900b30">
「……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030910b16">
「これが辰気です」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030920a01">
「？　……？」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030930a15">
「…………」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030940a15">
「つまり――物が落ちるのは、大地の辰気が
引き寄せているからだ……と？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030950b16">
「そうです。
　あなたはいつも理解がお早い」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//◆難しい顔
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030960a15">
「……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030970b30">
「……では、創気とは？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030980b16">
「基素を結び合わせ、物体を造り上げている
ちからのことです」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030990b30">
「基素？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031000b16">
「物体をひたすら細かく細かく砕いていった
時、最後に残るもの――もうこれ以上は砕け
ないものを基素と呼びます」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031010b16">
「万物の素材です。
　これを多種多様に組み合わせて、草花や、
鉱物や、昆虫や、<RUBY text="・・・">私たち</RUBY>を生み出すちからが
創気です」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031020b30">
「それは……神仏の<RUBY text="みわざ">御業</RUBY>のことか？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031030b16">
「そう言っても構いません」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031040b30">
「……創気。
　それに磁気……辰気……？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031050b16">
「無理に理解しようとしないでください。
　焦ること、急ぐことは、頭脳の働きを妨げ
ます」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031060b16">
「学問に近道はありません。
　ゆっくり、学んでいきましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆家内
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(500);
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);
	FadeDelete("絵色黒", 2000, true);

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031070b30">
「前からお尋ねしたかったのだが……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031080b16">
「はい？」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031090b30">
「浦夢殿は、何ゆえ劒冑に興味を持たれる？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031100b16">
「不思議ですか」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031110b30">
「森羅万象を窮めた御方がどうして武具など
にこだわられるのか……
　今ひとつ得心がゆかぬ」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031120b16">
「褒めてくださること、光栄です。
　けれど、私はまだ何も知りません」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031130b30">
「まさか」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031140b16">
「いいえ。本当に何も知らないのです。
　私が本当に知りたいことは、まだ遥か遠く
にあります」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031150b30">
「浦夢殿の知識をもってしても、遥か遠い？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031160b16">
「海に落とした一粒の砂金を探している心地
です」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031170b30">
「……想像もつかぬ」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031180b16">
「<RUBY text="あがぺ">神の愛</RUBY>」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031190b30">
「？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//嶋：修正【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031200b16">
「何処にあるかわかりません。
　どんな形をしているのかも……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031210b16">
「しかし私は信じているのです。
　劒冑は人間に与えられし翼。天へ至るただ
一つの方法……なら、」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031220b16">
「これを極めた先に、求めるものはあると」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031230b30">
「…………」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031240b16">
「村正どの。あなたに巡り合ったのは天命で
した。
　私はあなたに会うために、この東の果ての
国までやって来たのです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031250b16">
「どうか私を導いてください。
　……黄金の夜明けへ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 3000);


}

..//ジャンプ指定
//次ファイル　"md01_004.nss"