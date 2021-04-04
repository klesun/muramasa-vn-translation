//<continuation number="540">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_019.nss_MAIN
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
	#bg056_建長寺三門前_01=true;
	#bg077_建朝寺得月楼前_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;
	#ev128_病床の光_g01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md03_020.nss";

}

scene md03_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md03_018.nss"


//◆bg056_昼

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");


	OnBG(100, "bg056_建長寺三門前_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm30", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　決意はついた。

　けれど、助けられた義理というものがある。
　無断で出て行くわけにはいかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg077_昼
//◆bg032a_昼

	OnBG(101, "bg077_建朝寺得月楼前_01.jpg");
	FadeBG(2000, true);

	Wait(1000);

	OnBG(102, "bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(2000, true);

	Wait(500);

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190010a10">
「普陀楽城へ行く……やて？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190020a01">
「はい」

{	StL(1000, @0, @0, "cg/st/st黒瀬_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fw黒瀬_怒り.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190030b26">
「無謀ぞ！
　我らも幾度となくあの城に間者を放っては
いるが、首尾良く忍び込める者は十人のうち
二人もおらぬ」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190040b26">
「しかも今は宣下に備えてか、常にも増して
警備が堅い。
　例え隠形の技に秀でた劒冑であろうと、堀
を越える間もなく捕まるのは目に見えている」

{	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStR(300, false);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190050a11">
「幕府の内部に協力者がいて、手引きをして
くれるなら話は別だが……
　その用意はまだ出来ていない」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190060a11">
「今は無理だ、村正」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190070a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　予想はしていたが、誰も賛同しなかった。
　反対していないのは黙りこくっている綾弥一条と、
そもそもこの場にいない人間だけだ。

　大鳥香奈枝とその侍従の姿は寺から消えている。
　何やらの裏工作をするため、今は<RUBY text="いこく">夷国</RUBY>に飛んでいる
そうだ。国連本部でどうとかという説明だったけれど、
私には良くわからない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190080a10">
「景明くんを助けたいのはわかるけどな。
　わしかて同じ気持ちやし……」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190090a10">
「しゃあけど、闇雲に突っ走ったらあかんえ。
　こういう時こそ、冷静にならんと」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190100a01">
「わかっています。
　でも……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190110a01">
「時間がない。
　機会が来るのを待っていたら、取り返しの
つかないことになる」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190120a01">
「……そう思うんです」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190130a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　半分は勘だった。
　けれど、根拠もある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：病床の光
	EfRecoIn1(18000,600);

	CreateTextureSP("思い出", 5000, Center, Middle, "cg/ev/ev128_病床の光_g01.jpg");

	EfRecoIn2(300);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　湊斗光の寿命は残り僅かだと、足利茶々丸は言って
いた。
　あの言葉に嘘はない――劒冑の眼で診ても同じ結論
を出せた。

　なら……
　湊斗光を生かしたい今の景明と、銀星号を利用して
何かの望みを遂げたい茶々丸にとっても、時間は残り
少ないということになる。

　悠長な計画を立てているとは思えない。
　何をするつもりでいるにしろ、短時日のうちに決着
をつける気だろう。

　そして、その決着がついてしまったなら。
　きっと――もう何もかも、<RUBY text="・・・・・・・・">どうにもならない</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	EfRecoOut1(300);
	Delete("思い出");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190140a01">
「だから、行かないと」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190150a10">
「…………」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190160b26">
「…………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190170a01">
「お世話になったのに、勝手を言ってごめん
なさい。
　でも……私は劒冑だから」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190180a01">
「<RUBY text="あるじ">仕手</RUBY>のもとへ行きます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　言って、私は立ち上がった。
　外へ向かいながら、考える――潜入の手立ては何も
思いつかない。

　あの城の警備の堅さは、銀星号の探索がてら近付く
ことが何度かあったので良く知っている。
　正攻法ではまず無理だ。何か、策を……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190190a11">
「村正、待て」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190200a01">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190210a11">
「宮殿下……宜しいですか？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190220a10">
「せやな。
　なんか、これで踏ん切りがついたわ」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190230b26">
「確かに」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190240a01">
「……？」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190250a11">
「村正、行くなら我々と協力しろ。
　その方が見込みがある」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190260a01">
「――えっ？」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190270a01">
「いえ、でも。それは」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190280a11">
「誤解するな。
　我々には我々の事情があるのだ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190290a10">
「ほんとのとこ言うと……こっちものんびり
待ってるわけにはいかなくてなぁ。
　一か八かの勝負をやらなァあかんとこまで
追い込まれてるんよ」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190300b26">
「妨害工作の甲斐なく、足利邦氏への大将領
宣下は確定してしまった。
　既に式典の日時まで決まっている」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190310a11">
「宣下式典の実施は六波羅体制の復活と同義
であり、それは進駐軍との決戦開始と同義だ。
　我々が避けたかった、最悪の事態が迫って
いる」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190320a10">
「香奈枝さんが国連方面で今動いてくれてる
けど、間に合うかわからん。
　こっちでも手を打たんとならんかったんよ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190330a11">
「無理矢理にでも、式典を中止ないし延期に
できるような手を。
　……そういうわけだ、村正」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190340a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw黒瀬_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190350b26">
「加えて言えば、某には個人的な事情もある。
　義姉が普陀楽城に囚われているのだ」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190360b26">
「幾度も救出を計画したが、果たせなかった。
　今度こそ助け出したい」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190370a10">
「桜子さんか。
　そやな……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190380a11">
「具体的な計画ですが――」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190390a02">
「どうもこうもねえ。
　どんだけ作戦こね回したって、無謀なもん
は無謀だろ」

{	StCR(1000, @80, @0, "cg/st/st一条_通常_制服.png");
	FadeStCR(300, false);
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190400a02">
「忍び込める所までは忍び込んで、バレたら
後は暴れ回る。
　式典なんてやりたくてもやれないくらい、
荒らし尽くしてやりゃあいい」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190410a02">
「それで勝ちだ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190420a10">
「……」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190430a11">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190440a11">
「そうだな」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190450a10">
「そうなんか!?」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190460a11">
「まともな作戦計画を立てられるほどの材料
がありません。
　なら考えるだけ時間の無駄でしょう」

{	FwC("cg/fw/fw黒瀬_瞑目.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190470b26">
「然り然り。
　某は一条殿に賛同いたす」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md03/0190480a10">
「……おまさんら、露骨に体育会系やねー」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190490a11">
「では、おおまかにまとめよう。
　普陀楽へ潜入するのは綾弥、黒瀬殿、村正」

//【署長】
<voice name="署長" class="署長" src="voice/md03/0190500a11">
「潜入後、綾弥は城内を破壊。
　黒瀬殿は桜子姫を救出。
　村正は景明を探す。
　私は退路を用意するために動こう」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md03/0190510a11">
「宜しいか？」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/md03/0190520a02">
「ああ」

{	FwC("cg/fw/fw黒瀬_通常.png");}
//【黒瀬】
<voice name="黒瀬" class="黒瀬" src="voice/md03/0190530b26">
「うむ」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md03/0190540a01">
「……ええ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md03_020.nss"