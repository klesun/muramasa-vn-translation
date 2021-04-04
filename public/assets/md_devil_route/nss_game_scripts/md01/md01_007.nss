//<continuation number="1530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_007.nss_MAIN
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
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_008.nss";

}

scene md01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_006.nss"

//◆裏里、家内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	StL(1000, @0, @0,"cg/st/st浦夢_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070010b16">
「村正どの……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070020b30">
「……浦夢殿か。
　傷に障る、もう休まれよ」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070030b16">
「私は平気です。
　村正どのこそ、お体を大事に」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070040b16">
「お酒の飲み過ぎ、体の毒です」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070050b30">
「…………」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070060b16">
「北朝が、憎いですか」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070070b30">
「憎い……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070080b30">
「何という……卑劣な……！
　外道め……賊どもめ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070090b30">
「許せぬ……！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070100b16">
「けれど、南朝も同じです」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070110b30">
「な、何を!?」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070120b16">
「同じくらい汚いこと、たくさんしてます。
　いえ、もっと卑怯なことも……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070130b30">
「馬鹿なっ！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070140b16">
「本当です。
　私、南朝の陰の働きに関わること多かった
ので、良く知っています」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070150b16">
「陰謀の犠牲になった人、とても多いです。
　そのほとんどは、何の罪もない、無力な民
たちでした」


{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070160b30">
「…………」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070170b30">
「まさか……有り得ぬ。
　楠木様たちが、そのような真似をなさる筈
が……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070180b16">
「吉野の方々、悪い人ではありません。
　皆、立派な方たちです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070190b16">
「けれど、前にも言いました。
　今は時代が悪いのです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070200b16">
「善き人々が、悪しき事をする世なのです」


{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070210b30">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_沈鬱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070220b30">
「では、うてはどうすれば良いのだ……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070230b16">
「……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070240b30">
「誰が味方なのかわからぬ。
　誰が敵なのかもわからぬ」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070250b30">
「何が正しいのかわからぬ。
　何が誤りなのかもわからぬ」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070260b30">
「何を信じれば良いのかわからぬ……！」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070270b16">
「村正どの……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070280b30">
「うては……
　何のために……劒冑を打つのだ……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070290b16">
「……」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070300b16">
「悪しき世を正すため……
　そうではないですか？」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070310b30">
「その道筋がわからんのだ！
　南朝の大義さえ信じられぬとあっては……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070320b16">
「村正どの。
　今からする話を、よく聞いてください」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070330b16">
「あなたにお教えしなくてはならないこと、
実はあと一つ残っていました。
　それを、これからお話しします」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070340b30">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆浦夢、フード脱ぐ
//◆ニコラ＝フラメル。深い知性を湛えた老賢者。髭豊か？
//◆怪しい感じにはならんように。
	SetVolume("@mbgm*", 1000, 0, null);
	CreatePlainSP("絵板写", 10000);
	StL(1000, @0, @0,"cg/st/st浦夢_通常_私服b.png");
	CreateSE("SE01","se人体_動作_外套纏う01");
	FadeStL(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 300, true);
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ボイスは「ニコラフラメル」をなるたけナチュラルに
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070350b16">
「私の本当の名前……
　<RUBY text="・・・・・・・">にこやふらめう</RUBY>、云います」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070360b30">
「にこ……？」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070370b16">
「呼びにくいでしょう。浦夢で構いません。
　私の生まれた国とこの大和は、言葉が全く
違うのです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070380b16">
「遠く遠く、離れていますから」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070390b30">
「……浦夢殿は、天竺のお人だったのか？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070400b16">
「いいえ。
　天竺の、更にずっと向こうです」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070410b30">
「西方浄土より参られたと……？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070420b16">
「そうですね……西の果ての国です。
　けれど、浄土ではありません」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070430b16">
「私の生まれた国、戦争ばかりでした。
　今の大和と同じです」

//嶋：修正（私、）【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070440b16">
「だから私は、平和な楽園を求めて、旅に出ま
した」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070450b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070460b16">
「でもそんな国、何処にもありませんでした。
　どの国も短い平和と長い争いを繰り返して
いました」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070470b16">
「私は平和な世界を探して彷徨うより、世界
を平和にする方法を求めるべきだと、考える
ようになりました。
　そうして……あなたに出会ったのです」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070480b30">
「……うては一介の鍛冶師。
　しかも今は、道を見失っている」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070490b30">
「浦夢殿の力にはなれぬ」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070500b16">
「いいえ。
　そんなあなたでなくてはいけません」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070510b16">
「劒冑こそ神の子……。
　奇跡の欠片を宿す聖別の者です」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070520b16">
「最も貴き劒冑の生誕が、人の原罪を<RUBY text="そそ">雪</RUBY>ぐ。
　神は万民を赦し、地を楽園にするでしょう」

{	FwC("cg/fw/fw浦夢_祈念.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070530b16">
「そう……。
　正しき心を持つ鍛冶師が、真理を求めて鎚
を振るう時、苦しみの時代は終わりを告げる
に違いないのです！」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070540b30">
「……？
　済まぬが、わからぬ……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070550b30">
「うてには……真理など……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070560b16">
「それをお教えします。
　村正どの、どうか聞いてください」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070570b16">
「そして私の<RUBY text="ゆめ">理想</RUBY>を叶えてください……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070580b30">
「…………」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070590b16">
「遠い昔……
　<RUBY text="・・・・・">ぐらえきあ</RUBY>に、<RUBY text="・・・・・・・">えんぺどくれす</RUBY>という賢者
がいました」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070600b16">
「宇宙の<RUBY text="ことわり">理</RUBY>を解いた人物です。
　人間の歴史上、真の叡智の持ち主と呼べる
のは彼一人しかいません」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070610b30">
「宇宙の……？
　それは以前にお伺いした、あの話のことで
あろうか」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070620b30">
「この世には磁気、辰気、創気の三つの<RUBY text="ちから">源気</RUBY>
があるという――」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070630b16">
「それは、えんぺどくれすの考えを私なりに
進めてみたものです。
　<RUBY text="・・">物理</RUBY>には近付いているはずですが……<RUBY text="・・">真理</RUBY>
からは離れてしまいました」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070640b30">
「……？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070650b16">
「彼はこう言いました。
　世界は四種の元素と二種の力で構成されて
いる……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070660b16">
「〝地〟〝陽〟〝海〟〝空〟の四つが〝愛〟
の力で結びつき、また〝争い〟の力で別れる
ことによって、世の万象が顕れる。
　そう説いたのです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070670b16">
「例えば人間は、四種類の元素がほぼ均等に
〝愛〟で結ばれることから生まれます。
　そして〝愛〟よりも強い〝争い〟の力――
怪我や病気――に襲われると死にます」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070680b30">
「ふむ……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070690b16">
「この理論で、世のあらゆる物事が説明でき
ます」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070700b30">
「ならば浦夢殿、正義とはいかなるものか？
　また、邪悪とは？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070710b16">
「正義と邪悪。
　善と悪ですか」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070720b30">
「うむ。
　是非とも教えて頂きたい」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070730b16">
「……ありません」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070740b30">
「何？」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070750b16">
「そんなものは、存在しないのです」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070760b30">
「な、無いはずはなかろう！」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070770b16">
「……そうですね。
　実質は何もありませんが、単なる物の見方
としてなら、あるとも言えます」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070780b30">
「見方？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆かちゃかちゃ。フラスコとか準備
	CreateSE("SE01","se人体_動作_フラスコ準備");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052a]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070790b16">
「村正どの。
　今、私はここに一つの世界を作りました」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070800b16">
「<RUBY text="・・・・">ふらすこ</RUBY>に塩と水を入れてかき混ぜ、蓋を
しました。
　この閉じた世界には、塩水と空気しかあり
ません」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070810b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070820b16">
「これを、下から火で熱すると」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆そんな音
	CreateSE("SEL01","se擬音_雰囲気_フラスコ熱する");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	WaitKey(1000);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052b]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070830b16">
「〝争い〟の力が働きます。
　結ばれていた塩と水が別れ、水は水蒸気と
なって空気と混ざり、塩は結晶に戻ります」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070840b30">
「うむ……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070850b16">
「さて。
　善と悪は、何処にあったでしょうか……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070860b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070870b16">
「我々の世界に置き換えて、考えてみてくだ
さい」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070880b30">
「……塩と水を引き離した〝争い〟の力……
　火が、悪なのであろうか？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070890b16">
「そうですね。
　人のつながり、絆は尊いものです。これを
引き離すのは罪悪だといえるでしょう……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070900b30">
「塩と水を塩水にしていた〝愛〟が正義で、
引き離した火が邪悪か……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070910b16">
「しかし村正どの。
　よく見てください」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070920b16">
「塩と水は別れましたが、新たに水と空気が
混ざり合い、<RUBY text="もや">靄</RUBY>が生まれています」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070930b30">
「……むぅ？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070940b16">
「水と空気の間に〝愛〟が働いたのです。
　ということは……火は善でもあったのです」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070950b30">
「…………」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070960b16">
「今度はこの世界を冷やしてみましょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――

//◆それっぽい音。水かけた？
	CreateSE("SE01","se擬音_雰囲気_フラスコ冷やす");

	SetVolume("SEL*", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070970b16">
「靄を冷やすと……
　水は水滴となって落ちます」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070980b16">
「水滴は塩を溶かし、再び塩水になります」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070990b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071000b16">
「塩水を生んだのですから、冷やしたのは善
の行いですね。
　しかし靄を分解してしまったので、悪でも
あります」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071010b30">
「ぬ……むぅ」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071020b16">
「村正どの。わかりましたか」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071030b16">
「善と悪は――」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071040b30">
「……<RUBY text="・・">裏表</RUBY>でしかない、と？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071050b16">
「そうです。
　ある行いを、特定の視点から見た時に善と
呼び、逆方向から見た時は悪と呼ぶ」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071060b16">
「それだけのことに過ぎないのです」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071070b30">
「…………」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071080b16">
「しかし人々は、この善悪をさも重大なもの
であるかのように扱っています。
　無意識に――あるいは意識的に」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071090b30">
「何故……？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071100b16">
「自分の利益になる〝愛〟を肯定し、自分の
損失になる〝争い〟を否定するためです」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071110b30">
「……」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071120b16">
「この独善こそ、人の心を縛る悪魔の呪い」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071130b16">
「村正どの……もうおわかりでしょう。
　どうして平和は永く続かないのか？
　どうして戦争は繰り返されるのか？」

{	FwC("cg/fw/fw浦夢_祈念.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071140b16">
「それは――
　水は水だけの愛を、空気は空気だけの愛を、
塩は塩だけの愛を求めるからです！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071150b30">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071160b16">
「村正どの……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071170b30">
「ならば」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071180b30">
「世界を正すには」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071190b16">
「〝独善〟を滅ぼすのです！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071200b16">
「えんぺどくれすの見つけた真理を、人々に
知らしめてください」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071210b16">
「彼らを呪いから解き放つのです！
　自分だけの愛に囚われて争い合う呪いから」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071220b16">
「そんな奇跡を成し得るものは……劒冑しか
ありません。
　あなたが、神の劒冑を造るのです！」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071230b30">
「…………。
　できようか……？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071240b30">
「この村正に……そこまでの大業が……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071250b16">
「できます！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071260b16">
「あなたには技があります。
　知識は、私が教えました」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071270b16">
「そして力は、ここに――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆金神片を取り出す。フラッシュで誤魔化すか。
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 600, false);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071280b30">
「これは？
　<RUBY text="すいそう">水晶</RUBY>……いや違う……!?」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071290b30">
「……わ、わからぬ！
　馬鹿なっ、蝦夷の知らぬ鉱物など!!」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071300b16">
「知らないのは当然です。
　これはおそらく、地上に一つきりしかない
もの……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071310b16">
「<RUBY text="らぴす・さぎー">聖骸断片</RUBY>。
　神の血肉です」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071320b30">
「……神……!?
　いや、わかる！　確かにこれは――途方も
なきものだ!!」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071330b16">
「はい。
　この石は人を不死にするほどの力を持って
います」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071340b16">
「このように……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ばさっ。ローブを広げた
	CreatePlainSP("絵板写", 10000);
	StL(1000, @0, @0,"cg/st/st浦夢_通常_私服c.png");
	CreateSE("SE01","se人体_動作_外套纏う01");
	FadeStL(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071350b30">
「う、浦夢殿……
　その体は!?」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071360b16">
「……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071370b30">
「この石と……同じ？」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//嶋：修正「この石」【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071380b16">
「ええ。
　この石を手に入れてから、私は歳を取らず
……そして体は次第に、このように変わって
いきました」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071390b16">
「全身が変わる前に、あなたに会えて……
　全てを伝えることができて、良かった」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071400b16">
「私は……
　神より授かった使命を、果たせたようです」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がた。倒れる浦夢
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 300, @10, @30, null, false);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw始祖村正_険しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071410b30">
「浦夢殿！」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071420b16">
「……長く……
　あまりにも長く、生きました……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071430b16">
「ようやく眠れます……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071440b30">
「いかぬ！
　これか――この石を」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071450b16">
「いけません。
　それはあなたが使うのです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071460b16">
「至高の劒冑を造るために」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071470b30">
「し、しかし」

{	FwC("cg/fw/fw浦夢_祈念.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071480b16">
「お願いします。
　あなたに全て……託します」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071490b16">
「人を独善から解き放つのです」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071500b16">
「一人の愛ではなく、全員の愛を……
　争いを起こさず、万物を分け隔てなく結び
つける、普遍の愛を求める道へ――いざなう
のです！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071510b16">
「神の――愛を……！
　この世界に、どうか!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぴきぴき。ひび割れ音
//◆ぱしゃーん。砕け散った
	CreateSE("SE01","se特殊_鎧_アベンジ_ひび割れ");//ダミー注意
	CreateSE("SE01b","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	Fade("絵フラッシュ白", 100, 0, null, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵フラッシュ白", 0, 1000, null, true);
	WaitKey(200);
	FadeDelete("絵フラッシュ白", 1500, true);

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071520b30">
「う、浦夢殿……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071530b30">
「浦夢殿ぉぉぉっっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_008.nss"