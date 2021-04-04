//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_007.nss_MAIN
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
	#bg022_山林a_01=true;
	#bg025_坑道山脈と森a_01=true;
	#bg002_空a_01=true;

	#ev268_ヤクザと対峙する一条=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma02_008vs.nss";

}

scene ma02_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_006a.nss"
//前ファイル　"ma02_006b.nss"


//◆合流
	PrintBG("背景０", 30000);
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070010a02">
「……もういいよ。見物人」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　このまま立ち去ったものかどうか悩んでいた矢先、
人影が振り返らないまま声を投げてくる。
　どうやら気付いていたらしい。俺は木の陰から踏み
出した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StR(1000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070020a00">
「武者式の組打術ですか」


{	NwC("cg/fw/nwその他.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070030a02">
「……わかるのか。
　婆さんに習ったんだ。維新で没落する前は
ここらへんの殿様だった家の係累だとかで、
色々とな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ぱっぱっ、と手を払って人影がこちらを向く。
　きりとした眼差し。それが不意に細まり――<k>やがて、
不愉快げな鋭さを帯びた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);


	SoundPlay("@mbgm17",0,1000,true);
	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070040a02">
「……てめぇかよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070050a00">
「……その節は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　軽く一<RUBY text="ゆう">揖</RUBY>する。
　――少年ではなく、初対面でもない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵回想100", 5000, Center, Middle, "cg/ev/ev268_ヤクザと対峙する一条.jpg");
	Fade("絵回想100", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
　そうそう忘れられる風貌ではなかった。
　少し前、鎌倉の街中で六波羅御雇の人々と<RUBY text="いさか">諍</RUBY>った折、
割って入ってくれた人物に間違いない。

　確か――<k>一条。そう呼ばれていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵回想100", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
　あの時は彼女のお陰で同行の少年らが無事に済んだ。
　礼は拒絶されたが、今こうして出会ったからには、
改めて言っておくべきだろうか。

　考える間に、先方が口を開いていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070060a02">
「あの時は土下座で、今日は見物か。
　大したもんだな、近頃の警察は」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070070a00">
「恐縮です。
　助勢は無用と見えたもので、手出しを控え
させて頂きました」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070080a02">
「言い訳としちゃ上等だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　露骨な挙措で唾を吐き捨てる少女、一条。
　成程、そう思われるのは仕方ない事だった。物陰に
隠れて黙って見ていれば普通、人は怯えて立ち竦んで
いると考える。

　実際、やっていることに変わりはなかったのだから
どう思われようが文句を言える筋でもない。
　人の危難を看過した者としては、謝罪が必要だろう。
俺は神妙に頭を下げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070090a00">
「申し訳ありません」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070100a02">
「……ちっ。
　でけえ図体してやがる癖に」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　それがまた苛立たしいのか。学生服の少女は舌打ち
と共に顔を背けた。
　嫌悪の様子がありありと見える。

　もっともこちらにしてみれば、そうした若人らしい
潔癖さは不快なものではない。
　無難な問いを選んで投げかけてみた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070110a00">
「一条さんと仰いましたか。
　このような所でお会いするとは奇遇なこと
です。何かご用事でもおありですか」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070120a02">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070130a00">
「一条さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　返答はない。
　静寂の一時が訪れる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070140a00">
（会話が途絶えた）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070150a01">
《私に言われても》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070160a00">
（小粋な冗句か？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070170a01">
《やめなさい》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　付近のどこかの陰――おそらくは頭上に繁る枝葉の
間――から劔冑の素っ気ない金打声が届く。
　それを聞きつけたというわけではないのだろうが。
少女、一条の視線がこちらへ戻り、口が苦々しく開く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070180a02">
「…………綾弥だ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070190a00">
「は」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070200a02">
「……綾弥だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　繰り返し告げられるその一語。
　あやね。

　つまりそれは、彼女の名なのだろう。
　それはわかる。わかるがしかし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070210a00">
（先方の主旨はつまり、名前で呼べ、という
ことか？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070220a01">
《そ……そうね。
　私にもそう聞こえるけど……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　村正の声音も困惑していた。
　はて。どう見ても嫌われているとしか思えなかった
のだが。風向きがどこで変わったのか。

　とりあえず、失礼のないように応対しておくことに
する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070230a00">
「一条あやねさん、ですか。
　愛らしい、良き名前かと思います」

{	FwC("cg/fw/fw一条_警戒.png");}
//◆歯軋りする感じで
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070240a02">
「……ッッ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070250a00">
「しかし、面識の浅い身で名前をお呼びする
のも不躾。
　やはり一条さんと呼ばせて頂く方が、自分
としても心苦しくなく――」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070260a02">
「……そ、……ッ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070270a00">
「何か？
　一条さん」

{	SetVolume("@mbgm*", 100, 1, null);
	FwC("cg/fw/fw一条_怒りa.png");
	SetComic(@0,@0,15);}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070280a02">
「そっちが名前だぁッッッ!!」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070290a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070300a01">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆森
	OnBG(5000,"bg025_坑道山脈と森a_01.jpg");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0209a]
　……………………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空
	OnBG(5000,"bg002_空a_01.jpg");
	FadeBG(1000,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0209b]
　……………………………………………………………
………………………………………………………………
………………………………………………………………
………………………………………………………………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
	SetVolume("@mbgm*", 2000, 1000, null);
	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(1000,true);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070310a00">
「失礼致しました。綾弥一条さん。
　自分は鎌倉署の湊斗景明です」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070320a02">
「……ッ、くっ……。
　ああ、ほんとに失礼だっ……馴れ馴れしく
何度も名前呼びやがった挙句に……くそっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　赤面して荒く息をつく一条――否。綾弥を前にして、
俺は感慨をもって頷いていた。
　成程、固定観念の愚とはこうしたものか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070330a00">
（勉強になった……）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070340a01">
《そうね……。
　この場合、問題は私たちより彼女の名付け
親にあるような気もするけれど……》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070350a00">
（真っ直ぐに育って欲しいとの願いを込めた
のではなかろうか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070360a01">
《女の子らしさとかは考えてあげなかったの
かしら……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　村正とそんな無音のやり取りを交わす間に、綾弥は
立ち直っていた。眼光がこちらを刺している。
　心なし、険しさが増しているような気がした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070370a02">
「……それで。
　なんでこんなとこにいるんだよ。お巡り」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070380a00">
「公務です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　質問に同じ質問で返されてしまっているが、答えて
おく。
　興味もなかったのか、彼女はふんと鼻だけ鳴らした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070390a00">
「貴方は？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070400a02">
「公務だよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　いかにも適当ないらえが返る。
　……公務？

　学生の公務で、この山林へ。
　ということは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070410a00">
「昆虫採集ですか」


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070420a02">
「なんでだっ!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070430a00">
「カブトムシの幼虫を狙うならそこの腐葉土
などが適しています」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070440a02">
「違うっ！　答える義理はねえって遠回しに
言ってんだ！　わかれよ！」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070450a00">
「わかりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　おそらくそうだろうと思いつつも、万一の可能性を
考慮してみたのだが。
　要らぬ気配りだったようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070460a00">
「無作法な詮索をお詫びします」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070470a02">
「…………。
　いちいち苛々させる野郎だな……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070480a00">
「そうですか。
　面目ありません」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070490a02">
「……っ。
　あのな、こっちが先に聞いたんだよ、なに
してんのかって。その後でおまえが同じこと
聞いたからって無作法なわけねえだろ？」


//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070500a02">
「真面目に答えろとでも言やあいいじゃねえ
か。それをあっさり、頭下げやがって……。
　恥ずかしいとは思わねえのかよ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070510a00">
「思いません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　敵意と侮蔑のこもった言葉に、即答する。

　綾弥は絶句した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070520a02">
「…………なんでだ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070530a00">
「自分は公僕です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　正確には違うが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070540a00">
「である以上、自分の活動は、任務上支障の
ない範囲で市民の方々に対し明らかにされて
いるべきです。
　それが開かれた政治というものです」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070550a00">
「しかし市民は警察に対して生活を明らかに
する義務はありません。
　もし警察がそれを強要するなら基本的人権
に対する侵害となります」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070560a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070570a00">
「従って、自分には貴方の質問に答える義務
がありますが、貴方が自分の質問を拒絶する
のは自由です。
　貴方に責められるべき非礼はありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　説明してから、気付く。
　ここが森の中で幸いだったかもしれない。

　政道批判とも受け取れる内容だ。
　控えめに言っても、六波羅幕府の政治は人権の擁護
を主目的とはしていないのだから。

　街中で声高に今のような論説を述べ立てれば、まさ
に<RUBY text="プライバシー">私生活</RUBY>保護の権利を侵害して何処にでも配置されて
いる幕府の耳が聞き咎め、お縄という事にもなりかね
ない。実際、そんな事例は幾らでもあるのだ。

　もしそうなれば、言った人間だけでなく聞いた人間
も巻き添えを食う。注意した方が良さそうだった。
　もっとも目の前の彼女はそんなことを気にした風で
もない。渋柿を食ったような顔で、こちらを見ている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070580a02">
「……根性ねえくせに、口は達者だな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070590a00">
「有難うございます」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070600a02">
「褒めてねえよ。
　……墓参りに来たんだ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070610a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　それが俺の問いに対する答えだと気付くまで、一瞬
の時間経過が必要だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070620a02">
「この近くに小さい村があるだろ。婆さんが
そこの生まれなんだ。墓もそこにある……。
　鎌倉に埋めれば面倒もなかったんだけどよ、
遺言だったから」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070630a00">
「そうですか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　面倒臭いのか、味も素っ気も全くない説明だったが、
それだけにわかり易い。
　
　しかし、疑問点はあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070640a00">
「鎌倉から村へ行く途中でここへ？」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070650a02">
「……ああ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070660a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　俺は脳裏に周辺の地図を描いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070670a00">
「この森は、村を間に挟んで、鎌倉の反対側
にある筈なのですが」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070680a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070690a00">
「……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070700a02">
「そ、そうなのか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070710a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　地球を一周してきたというなら別だけれども。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070720a02">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070730a00">
「迷子になられたのですか？」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070740a02">
「ま、迷子とか言うな！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070750a00">
「沢口まではバスで？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070760a02">
「あ……ああ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070770a00">
「そこから村までは一本道の筈……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070780a02">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070790a00">
「……」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070800a02">
「な、なに首を傾げてやがる」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070810a00">
「一体、どうして迷子になられたのですか？」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070820a02">
「迷子じゃねえっ！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070830a00">
「では？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070840a02">
「いや……その、ほら……なんだ。
　歩きっぱなしじゃ飽きるから……ちょっと
足を止めて、景色とか眺めたりすることって
あるだろ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070850a00">
「あります」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070860a02">
「それで、また歩き出そうとして、ふと周り
を見ると、自分がどっちの方角から来たのか
わからなくなってるってことも、普通にある
よな？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070870a00">
「ありません」


{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070880a02">
「こ、こ、この野郎、きっぱりはっきりと」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　わななく綾弥。
　とりあえず、俺は事態の核心をおおむね察していた。

　理解したところをそのまま口にしてみる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070890a00">
「要するに方向音痴なのですね」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070900a02">
「要するんじゃねえ！
　い、いや、違うからな!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070910a01">
《御堂。ちょっと》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070920a00">
（ん？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　唐突に口を挟んでくる村正――といっても綾弥には
聞こえていまいが。
　意識をそちらへと向ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0070930a01">
《不味いんじゃない？
　今、この森は危険よ。そこをこんな迷子に
うろうろされたら……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070940a00">
（成程。確かに）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　その懸念は尤もだった。
　代官と鉢合わせでもしたらどうなるか。殺されると
は限らないが、無事に済む保証もない。

　速やかに森を出て欲しいが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070950a02">
「おい聞けよ！　いいか、あたしは別に迷子
でも方向音痴でもなくて……その……三次元
世界を二次元に矮小化する地図というものの
欺瞞に対して科学的義憤を禁じ得ないという」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070960a00">
「病気回復への第一歩は症状を直視すること
です」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070970a02">
「びょ、病気？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0070980a00">
「綾弥さん。
　ここからどう進めば村へ出られるかわかり
ますか」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0070990a02">
「まっすぐ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071000a00">
「芸術的な回答です。困り果てました」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071010a02">
「おまえ今、心底、虚仮にしなかったか!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071020a00">
「ここは村から直線距離で約一キロ半ほどの
地点です。方角はこちらが北。そしてあちら
の方角、約八キロに沢口があります。
　如何でしょう。現在地の把握は可能ですか」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071030a02">
「えぇと……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　彼女は暫時、周囲を見回した。
　やがて北と反対の方角を指差し、呟く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071040a02">
「南極ってこっちだよな……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071050a00">
「何故そういちいち芸術的なのですか」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071060a02">
「だ、だから何がだ!?」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071070a00">
「わかりました。
　仕方ありません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　俺は右手を伸ばし、村の方向を指差した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071080a00">
「この方向へ真っ直ぐ進んで下さい。
　そちらに村があります」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071090a02">
「あ、ああ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071100a00">
「良いですか。
　必ず、真っ直ぐ進むことです」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071110a02">
「わかったよ……。
　木を避ける時には曲がるけど。それはいい
んだろ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071120a00">
「駄目です」

{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071130a02">
「駄目!?」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071140a00">
「貴方のように芸術的な方はきっとそれだけ
で迷います」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071150a02">
「その芸術的ってのやめろ！
　じゃあ、どうしろってんだよ!?」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071160a00">
「できれば、飛び越えて下さい」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071170a02">
「できるかっ!!」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071180a00">
「では、立ち塞がる木々を粉砕しながら直進
するアグレッシブな方針でお願いします」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071190a02">
「どこの羆だ!?　ていうかそれ森林破壊だろ！
　そんなことしなくても、あぁ、あっち……
に真っ直ぐ行きゃあいいんだろうが！　迷わ
ねえよ!!」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071200a00">
「その『あっち』が既に三〇度弱ずれている
ので説得力を見出せません」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071210a02">
「……す、少し勘違いしただけだ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071220a00">
「貴方には、無理です」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071230a02">
「淡々としたツラで静かに言うなっ！
　もういい……じゃあな。一応、道を教えて
くれたことには礼を言っとく」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071240a00">
「有難く頂戴します。
　しかしそんなことよりどうか真っ直ぐ進む
ことにお気を向けて下さい。早くも曲がって
ます」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071250a02">
「あ、ああ」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く04_L");
	MusicStart("SE01",0,1000,0,800,null,true);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0558]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071260a00">
「はい、そのまま真っ直ぐ。
　そしてその木は蹴り割って下さい」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071270a02">
「うるせえ!!」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071280a00">
「時々こちらを振り返って、自分がちゃんと
真後ろにいるかどうかを確認すると、直進の
目安になるかと思われますが――」


{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma02/0071290a02">
「絶対、見ねえよっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2000, 0, null);

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　…………………………。

　学生服の背が程遠くなった頃。
　俺は村正に尋ねた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071300a00">
「どう思う」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0071310a01">
《あの娘が村へ辿り着けるかどうか？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0071320a00">
「ああ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0071330a01">
《着くんじゃない？
　……明日くらいには》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　木々の狭間に見え隠れする姿。
　方角のずれは、そろそろ四五度に達していた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	WaitKey(2000);

//◆小太郎

	PrintGO("上背景", 15000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw小太郎_冷静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071340b35">
（…………）

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071350b35">
（警告の叫びが一度。
　攻撃の叫びが一度。
　方角は北西……痣丸の陣所……）

{	FwC("cg/fw/fw小太郎_警戒.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071360b35">
（駆逐の叫びは無し。
　……果てたか、痣丸。御苦労であったの）

{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071370b35">
（さて……。
　敵は既に我が結界の内。となればうかうか
してはおれんかな。代官殿を殺されても困る
しの）

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0071380b35">
（出迎えてやるとしようかい。
　いざ、参るぞ……右衛門尉村正）


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_008vs.nss"

