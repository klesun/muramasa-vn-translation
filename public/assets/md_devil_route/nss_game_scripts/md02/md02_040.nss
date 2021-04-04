//<continuation number="370">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_040.nss_MAIN
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
	#bg039_競技場客席b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_041.nss";

}

scene md02_040.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_039.nss"

	PrintBG("上背景", 30000);
	CreateColorEX("黒幕１", 90, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	OnBG(100, "bg039_競技場客席ｃ_01.jpg");
	FadeBG(0, true);

	Delete("黒幕１");
	DrawDelete("上背景", 150, 100, "slide_01_01_1", true);

//◆がすがす。流星団、倒れる

	CreateColorEX("白フラ", 5000, "WHITE");
	Fade("白フラ", 0, 1000, null, true);
	OnSE("se戦闘_攻撃_殴る01", 1000);
	Fade("白フラ", 100, 0, null, true);
	Fade("白フラ", 100, 1000, null, true);
	OnSE("se戦闘_攻撃_殴る01", 1000);
	Fade("白フラ", 100, 0, null, true);
	Delete("白フラ");

	WaitKey(1000);

	OnSE("se人体_衝撃_転倒03", 1000);

	Wait(1000);

//◆茶々丸
	StL(1000, @0, @0, "cg/st/st茶々丸_通常_変装_b.png");
	FadeStL(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　瞬間、脊椎に鉄針でも打ち込まれたかのように身を
強張らせて、二人の男が<RUBY text="くずお">頽</RUBY>れる。
　
　心持ち<RUBY text="すす">煤</RUBY>けた堀越公方が、その後方に立っていた。

　やはりと言うべきか、無事だったようだ。
　何とはなし、俺は彼女が爆死を遂げてなどいない事
に最初から確信があった――どうやって死地を逃れた
のか、その方法はまるで想像がつかないのだが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);
	SetFwC("cg/fw/fw茶々丸変装_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400010a07">
「こいつら流星団だな」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400020a00">
「流星……団？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400030a07">
「聞いたことない？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400040a00">
「寡聞にして」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400050a07">
「ま、派手な活動を始めたのは最近だからね。
　新聞で大きく扱われたこともないし、知ら
なくて普通かな」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400060a00">
「新興の倒幕派テロリスト集団ですか？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400070a07">
「半分正解。
　というか、正解の半分」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400080a00">
「残り半分は」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400090a07">
「こいつら、一種の宗教団体なんだよね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……宗教？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400100a00">
「何らかの宗教的見地から幕府政治に反対を
訴えている、とでも？」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400110a07">
「というよりも、反幕を宗教にしちまったっ
つーか……<RUBY text="・・・・・・">なっちまった</RUBY>みたい。
　最初はまぁまぁ普通に倒幕活動してたのが、
とある英雄に心酔するようになってね」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400120a07">
「次第にその英雄を神様扱い。
　英雄のやることは何でも肯定して、自分ら
もその真似をし始めて……めでたく現在では
ブラックリスト上位の過激派集団ですよ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400130a00">
「…………」

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400140a07">
「自称、流星団。
　一方的に崇め奉ってる御本尊は、もちろん
――今をときめく大殺戮者」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400150a07">
「人中魔王の銀星号ね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　敢えて訊かなかった問いに、足利茶々丸は親切にも
回答してくれた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400160a00">
「……馬鹿馬鹿しい」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400170a07">
「そお？」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400180a00">
「倒幕主義と銀星号に何の繋がりが――」

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400190a07">
「そらま、あてら六波羅軍を単純な力勝負で
ぶっ潰せる唯一のおかたですから。
　倒幕派としちゃあ、そこにしびれて憧れず
にはいられないんでない？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400200a00">
「銀星号は幕府と敵対しているわけではない。
　無差別に殺し回っているだけなのに……！」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400210a07">
「それがこの連中の視点だと『少々の犠牲に
構わず巨悪を追い詰め討ち滅ぼす、英雄的な
戦い』ってことになるみたいやね」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400220a00">
「……ッ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　それを<RUBY text="・・">真似</RUBY>した結果が――これ。
　市民の巻き添えも厭わぬ爆破テロか。

　馬鹿げている。
　最悪の冗談だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400230a00">
（こんな奴らを……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　産み落としてしまっているのか。
　銀星号の名、その存在は。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400240a07">
「お兄さん」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400250a00">
「……」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400260a07">
「御姫を倒す？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400270a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400280a00">
「はい。
　倒さなくてはなりません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　災厄の根源を断つのだ。
　一刻も早く――

　二度と再びこんな愚行を繰り返させないために！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400290a07">
「……そっか。
　じゃあ、試してみよう」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400300a00">
「試す、と？」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400310a07">
「お兄さんに機会をあげる」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400320a07">
「御姫を殺す機会をあげる」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400330a00">
「――――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0400340a01">
《……何ですって？》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400350a07">
「できるかな？
　お兄さんに……」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0400360a07">
「〝英雄〟に徹して――肉親を殺すことが」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0400370a00">
「…………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md02_041.nss"