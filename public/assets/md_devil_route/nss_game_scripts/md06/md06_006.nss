//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_006.nss_MAIN
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
	#bg034_署長宅茶の間b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_007.nss";

}

scene md06_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_005.nss"

//◆署長宅

//こちら村正視点と想定して立ち絵は立たせておりません　inc櫻井
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 5000, "BLACK");
	SoundPlay("@mbgm05", 0, 1000, true);

	OnBG(100, "bg034_署長宅茶の間b_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　景明は今日も朝から家を空けていた。
　きっと夜が更けるまで戻らないだろう。

　今頃はまた、目的もない町の巡り歩きで時間と体力
を磨り減らしているに違いない。
　己の命の無意味さを噛み締めるような、あの作業で。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060010a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　畳の上へ落とすように、一つ息をつく。
　思いのほか、大きく深くなった。

　誰にも咎められはしなかったけれども。
　それは大声で喚き散らしたとしても同じだったろう。
景明がいない時、家に残るのは私一人だ。

　この家は景明の父のものだというが、ここで彼の姿
を見たことは一度もない。
　牧村という使用人がいたが――彼女もここしばらく
は他出している。

　あの存在感の薄い人をいつから見なくなったのか。
　……思い出そうとして、できなかった。簡単なこと
のはずなのに。

　銀星号との戦いが終わって以来、<RUBY text="こころ">心鉄</RUBY>はどこか鈍い。
　おそらく――そこに刻まれた使命、存在理由が失わ
れたからだ。

　過去五百年。そしてこの二年間。
　出会いと訣別と戦いと死と。
　
　今は何もかも、遠い出来事のようだった。

　劒冑としての死が近付き、あらゆる働きが衰えつつ
あるのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060020a01">
（……けれど）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　それは心鉄の一部分を除いてのこと。

　ちっとも遠くならないものがある。
　劒冑として鈍磨するのに反比例して、肉体を持って
いた頃の感性がどこかで目覚めて、その部分が一つの
ものを近く強く想っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 11000);
	CreateColorSP("絵色黒", 10000, "#000000");
	FadeDelete("絵板写", 500, true);

	StR(10100, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
　景明。

　……私の<RUBY text="つかいて">仕手</RUBY>。

　彼は存在理由を失えば死に向かう劒冑とは違う。
　例え生きる理由を失っても、心臓は動き血液は巡り、
何も変わらず生き続けなくてはならない。

　慙愧と悔恨に身中を灼かれながら。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(500,true);
	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw村正_哀愁.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060030a01">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　こんな結末を望んではいなかった。
　生き残ってくれたのは嬉しい。けれど苦しむために
生き延びて欲しかったのではなかった。

　衝動的に自殺する様子が見えないだけ、良かったと
思うべきなのだろうか。
　しかし彼がそうしないのは、自分自身に逃避を許さ
ないからなのだ。

　何もかも投げ捨てて楽になるという道を選べない。

　死んでしまわれては困る。
　でも、このままでは――――同じだ。

　懊悩を溜め込み、逃す方法を知らなければ、いずれ
内側から腐蝕する。
　体が死ぬか心が死ぬかの違いでしかない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0060040a01">
（どうにかしないと……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　強く想う。

　<RUBY text="わたし">村正</RUBY>はもはや無用。眠っても朽ち果ててもいい。
　けれど、彼をこのままにしてはおけなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1500,true);

}

..//ジャンプ指定
//次ファイル　"md06_007.nss"