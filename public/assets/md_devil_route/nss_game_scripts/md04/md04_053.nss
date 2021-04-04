//<continuation number="440">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_053.nss_MAIN
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
	#bg053_堀越御所の庭_01=true;
	#bg025_坑道山脈と森a_01=true;
	#bg001_空c_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_054vs.nss";

}

scene md04_053.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md04_052.nss"

//◆堀越御所
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

	CreateEffect("Memory_cover", 1500, 0, 0, 1024, 576, "Sepia");
	OnBG(100, "bg053_堀越御所の庭_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　歳月が過ぎ去り。
　六波羅が大和を制し、堀越家は堀越公方となって。
　
　茶々姫の父は、待望の子を得た。

　その夜、祝宴が張られる中、一人遠ざけられていた
茶々姫は突如襲われ館の外へ連れ出された。
　以前の強盗――を装った刺客――と違い今度のそれ
は屈強の武者で、茶々姫の力も及ばなかった。

　……元々、抵抗する意欲も無かったのだけれど。
　茶々姫は自分の運命をとっくに知っていて、諦めて
いたから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆山野。bg025？

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg025_坑道山脈と森a_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	OnSE("se人体_衝撃_転倒05", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　人気のない深夜の川原で、砂利の上に引き倒され、
首に刃を当てられる。
　あの時と同じだと、茶々姫は思った。

　あの時に殺されていれば良かった。
　おとなしく死んでいれば、何も苦しまなくて済んだ。

　そう思った。
　――でも、これでおしまい。

　おしまいの、<k>
　
　
　はずだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――



	SetFwC("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【光】
<voice name="光" class="光" src="voice/md04/0530010a14">
『……ふむ。
　まぁ、人には色々な事情があるのだろうが』

{	FwC("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530020a14">
『夜闇の中、劒冑持つ者が無抵抗の女を殺し
かけている図というのはどうにも興を欠くな。
　武者よ、そんな無粋な遊びはやめておれの
相手を一差し務めてみてはどうか？』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆一撃。ずがーん。

	CreateSE("SE01","se戦闘_破壊_爆発01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainEX("絵板写", 100);
	Fade("絵板写", 0, 800, null, true);
	Shake("絵板写", 500, 0, 30, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");


//◆月夜＋銀星号


	OnBG(101, "bg001_空c_03.jpg");
	FadeBG(1000, true);

	StC(1000, @0, @0, "cg/st/3d銀星号_立ち_通常.png");
	FadeStC(300, false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　天から降りてきた白銀のひと。
　月のかけらが生命を得たかのような。

　――姫だ。

　茶々姫はそう直感した。
　その名を押し付けられただけの自分とは違う、本当
に貴いひと。

　白銀の武者の方でも、茶々姫を見定めたようだった。
　そして一言。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/md04/0530030a14">
『なんだ、負け犬か』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【光】
<voice name="光" class="光" src="voice/md04/0530040a14">
『つまらん眼をしている。
　どうせさっさと死にたいとか考えているの
だろう』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530050a14">
『死んでも楽にはならんのに。
　死は<RUBY text="・・">停止</RUBY>だぞ？　絶望して死ぬ者は、絶望
に沈み続けるのだ。いつまでも』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_拗ね.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【光】
<voice name="光" class="光" src="voice/md04/0530060a14">
『おまえのようなやつにこそ、武の法を叩き
込んでやりたいが……。
　どういうわけか<RUBY text="なみ">汚染波</RUBY>が効かぬらしいな』

{	FwR("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530070a14">
『こんな負け犬を殺しては光の武の穢れ。
　といって放置してゆくのも、満天下を制覇
せんとする者の行動ではない』

{	FwR("cg/fw/fw光_不快.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530080a14">
『……むぅ。どうしよう。
　この負け犬、始末に困る』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【光】
<voice name="光" class="光" src="voice/md04/0530090a14">
『やんぬるかな。これも何かの縁。
　負け犬の娘よ、お姉さんが人生相談の相手
をしてやろう』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……相談？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_好戦.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【光】
<voice name="光" class="光" src="voice/md04/0530100a14">
『うん。さあ言え。言ってみろ。
　おまえはどうしてそんなにもどうしようも
なくみっともなく恥ずかしげもなくヘタレて
いるのだ』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　…………そんなに酷い？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md04/0530110a14">
『来年度の全世界挫折選手権に出場するため
特訓中なのかと思えるくらいにはな』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　…………。

　……辛い……から。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【光】
<voice name="光" class="光" src="voice/md04/0530120a14">
『何が？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　……声が――

　人の声が鳴り止まない。
　地の底の獣の雄叫びは耳をつんざく。

　いつも、いつも、響いている。
　だから……辛い。安らげない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【光】
<voice name="光" class="光" src="voice/md04/0530130a14">
『すまない。
　綺麗さっぱり、全然わからん』

{	FwR("cg/fw/fw光_拗ね.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530140a14">
『だがそれは耳栓とかで何とかならないもの
なのか？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……無理……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【光】
<voice name="光" class="光" src="voice/md04/0530150a14">
『医者でもだめか？
　耳鼻科とか、あと考え無しに人に勧めると
侮辱と受け止められてしまうことが多いので
注意が必要な病院とか』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……うん……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_拗ね.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【光】
<voice name="光" class="光" src="voice/md04/0530160a14">
『なるほど厄介だな。
　しかしそれなら、元を断てば良いだろう？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……元を？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md04/0530170a14">
『何か知らぬが、おまえの耳元で騒いでいる
やつらがいるわけだ。
　そいつらを全員抹殺すれば静かになる理屈
ではないか？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　…………無理だよ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md04/0530180a14">
『なぜ』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　……一人二人じゃ済まないもの。

　この伊豆に住む人をみんな殺さないと、声は消えて
なくならない。

　……それでも足りないかも。
　大和に住む人をみんな殺さないと静かにならないの
かも。

　……それでも足りないのかな……。
　世界中の人をみんな殺さないと、この声はなくなら
ないのかな……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【光】
<voice name="光" class="光" src="voice/md04/0530190a14">
『そうか』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530200a14">
『なら、殺したらいい』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……………………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不思議.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/md04/0530210a14">
『ん？　どうした。
　おれは何か変なことを言ったか？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　……すごく。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/md04/0530220a14">
『どうして。
　世界中の人を殺さないとおまえは楽になれ
ないのだろう？』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530230a14">
『なら殺す。
　単純な話だ。三段論法ですらない』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　…………その中には、あなたも含むと思うんだけど。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_笑い.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【光】
<voice name="光" class="光" src="voice/md04/0530240a14">
『そうか。決戦だな』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/md04/0530250a14">
『しかし奇遇。
　実は、おれもおまえと同じだ』

{	FwR("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530260a14">
『世界全てと戦い、打ち倒さねばならぬ』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……なぜ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【光】
<voice name="光" class="光" src="voice/md04/0530270a14">
『愛を得るため。
　この光は人を超え、神の座に至らなくては
ならぬ』

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530280a14">
『そのために全人類と戦って勝つ』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……綺麗さっぱり全然わからない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_警戒.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/md04/0530290a14">
『おまえ、実は執念深いだろう』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　…………。

　……どうして、戦えるの。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_驚き.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/md04/0530300a14">
『どうして？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　……戦えるわけ、ない。

　世界全てとなんて……。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【光】
<voice name="光" class="光" src="voice/md04/0530310a14">
『……ふん……』

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530320a14">
『逆におれが訊こう。
　どうして世界とは戦えない？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　……だって。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/md04/0530330a14">
『だって？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　……世界だもの。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_不快.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【光】
<voice name="光" class="光" src="voice/md04/0530340a14">
『負け犬め』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【光】
<voice name="光" class="光" src="voice/md04/0530350a14">
『なぜ諦める？
　相手が世界だから？　全ての人類だから？』

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530360a14">
『それがどうした。
　そちらが全世界全人類なら、おれは一個の
湊斗光だ！』

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530370a14">
『対等の勝負を挑んでいけない理由があるか』

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530380a14">
『戦う前から降伏して、望みを諦めなくては
ならない理由があるか!!』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_沈思.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【光】
<voice name="光" class="光" src="voice/md04/0530390a14">
『一つだけ教えてやろう。
　とても簡単なことだ』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　…………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_瞋恚.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【光】
<voice name="光" class="光" src="voice/md04/0530400a14">
『<RUBY text="・・・・・・・・・・・・">戦うことは誰にでもできる</RUBY>！』

//【光】
<voice name="光" class="光" src="voice/md04/0530410a14">
『敵がどれほど強く大きくともだ。
　勝ち負けや優劣は知らぬ。ただ戦うことは
必ずできる』

{	FwR("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530420a14">
『その意思があれば！』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　……………………。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【光】
<voice name="光" class="光" src="voice/md04/0530430a14">
『この理屈がわからんなら、おまえは骨の髄
から負け犬だ。
　手の施しようもないな』

{	FwR("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md04/0530440a14">
『だが……本当にわからんか？』

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　……戦うことは誰にでもできる。

　敵がどれほど強大でも。

　戦いを挑むことは、できる。
　……その意思があれば。

　<RUBY text="・・・・・・・・">その意思があれば</RUBY>!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
	Delete("Memory_cover");
}

..//ジャンプ指定
//次ファイル　"md04_054vs.nss"