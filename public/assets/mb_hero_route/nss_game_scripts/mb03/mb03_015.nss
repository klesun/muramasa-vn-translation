//<continuation number="980">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_015.nss_MAIN
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
	#bg074_喫茶店の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_016vs.nss";

}

scene mb03_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_014.nss"

//◆喫茶店
//◆ウェイトレス（稲田？）
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg074_喫茶店の店内_01.jpg");
	CreateSE("SE01","se日常_建物_扉開く05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

	StL(1000, @30, @0,"cg/st/st稲田_通常_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150010b15">
「いらっしゃいませー！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　店内の装いは見るからに若者向けの、明るく華やか
なものだった。
　しかしそれも、肝心の客が皆無では、ただ寒々しい
だけである。

　店員の快活な声が不似合いなこと甚だしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150020b15">
「お二人様ですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150030a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　当の本人、顔の造形よりも表情が魅力的なタイプで
あろうと思える若い女性店員は、全くそうは思ってい
ないようだったが。
　完璧な営業スマイルで俺と一条を席へ導く。

　案内されたのは、窓際の一席だった。
　眺望が良い。それはこの際何の意味もないが、厨房
から離れているのは有難かった。これなら小声で会話
すれば聞き取られる心配は要らない。

　手入れの良い椅子に腰を下ろす。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150040b15">
「ご注文は？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150050a00">
「……シナモンティーを」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150060a02">
「それもういっこ」


{	FwC("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150070b15">
「シナモンティー二つ。
　以上でよろしいですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150080a00">
「とりあえず」


{	FwC("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150090b15">
「少々お待ち下さいませー！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　軽やかに足を踊らせて店員が奥へ下がる。
　俺はつい、その後姿を見送っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -600, -690, "cg/bg/resize/bg074_喫茶店の店内_01l.jpg");
	CreateTextureEX("絵演窓上/絵立絵", 16200, -292, 0, "cg/ev/ev989_尻待一蔵.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Fade("絵色100", 500, 500, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(1000);

	Move("絵演窓上/絵演背景", 2000, @0, @-50, AxlDxl, false);
	Move("絵演窓上/絵立絵", 2000, @0, @-100, AxlDxl, true);


	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150100a02">
「湊斗さん。
　まさかとは思うんですけど」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150110a02">
「おしり見てます……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150120a00">
「うむ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵演窓*", 200, 0, null, true);
	FadeDelete("絵色*", 200, false);

	Delete("絵演窓*");
	SetFwC("cg/fw/fw一条_驚く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150130a02">
「なぜに」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150140a00">
「<RUBY text="・・・・">揺れ具合</RUBY>が気になった」


{	SetComic(@0,@0,16);
	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150150a02">
「真剣な顔して言うことじゃないです！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　どうしてか憤然と、一条。
　何か気に食わない事があったのか。

　があー、と噛み付いて来そうな顔をしている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150160a02">
「ああいうの好みなんですかっ？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150170a00">
「好み？　……何の」


{	SetComic(@0,@0,15);
	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150180a02">
「女性の！」


{	DeleteComic();
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150190a00">
「そうだな。それなりには」


{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150200a02">
「うう……節操ない……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　泣き言に変わった一条の声を聞き流して、俺は店員
が視界から消えるまで見届けた。
　そして店内を再確認。他に客も従業員もいない――
いや、厨房にはあと何人かいるだろうが。気配もある。

　差し当たって近辺には俺と一条のみだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	SetComic(@0,@0,12);}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150210a02">
「……作戦会議しましょうよ」


{	DeleteComic();
	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150220a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　向き直る。
　何故か一条が落ち込んでいるが気にしない事にする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150230a00">
「この先どうするかだが。
　まず、強行突破はまだ早い」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150240a02">
「…………」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150250a00">
「公方府に着く前にこちらが撃滅される。
　陸路をとっても空路をとっても無理だろう」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150260a02">
「……空も駄目ですか？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150270a00">
「公方府まで数分は要する。
　防空隊との<RUBY text="エンゲージ">遭遇</RUBY>は避けられん。突破できた
としても公方府はその間に完全な迎撃態勢を
敷いている」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150280a00">
「対空砲の釣瓶撃ちに遭うな」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150290a02">
「……むぅ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150300a00">
「もう少し奥深くまで潜入したいところだ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150310a02">
「六波羅の兵士になりすますとか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150320a00">
「一手ではある。
　だが、難しいな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　敵兵を襲って倒し、装備を奪って潜り込む。
　……フィクションでは定番の策だが。実行するには
困難が多い。迅速かつ密やかに襲撃を行えるか、誰に
も怪しまれぬほど六波羅の人間になり切れるか、等々。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150330a00">
「前回のように内部の人間の協力があるわけ
でもない」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150340a02">
「そうですね……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150350a00">
「他には、そうだな。
　道なき道を行くというのも一手ではあるか」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150360a02">
「どういうことです？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150370a00">
「道路を使わないという意味だ。
　山野に潜んで小弓へ接近する」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150380a02">
「……それはそれで難しそうですね」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150390a00">
「難しい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　地理に明るい地元の人間の協力がない限り、これは
困難を極めるだろう。
　下手をすれば遭難する。

　加えて、幕軍に発見されたとき言い訳が利かない。
　その時点で強攻策に移らざるを得なくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150400a02">
「時間も掛かりそうです」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150410a00">
「確かに。それも難点だ。
　他に良い考えはあるか？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150420a02">
「……地面の下を潜っていけたら楽なんです
けど」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150430a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一応、近辺に潜伏中の劒冑に訊いてみる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150440a00">
（村正）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0150450a01">
《なに？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150460a00">
（お前は地蜘蛛か？）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb03/0150470a01">
《違います》


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150480a02">
「……」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150490a02">
（正宗）


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0150500b40">
《<RUBY text="どりる">螺旋錐</RUBY>というやつを買ってくるがいい。
　あの――吾の時代にはなかった素晴らしい
器械》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb03/0150510b40">
《解析して、甲鉄改組で再現できないか試し
てみよう》


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150520a02">
（……考えとく）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　現実的なプランへ仕上げるには難が多そうだった。

　厨房からウェイトレスが戻ってくる。
　丁度思案も尽きたところだったので、俺達は黙って
待った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @30, @0,"cg/st/st稲田_通常_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150530b15">
「お待たせしましたー！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　相変わらずの笑顔を振りまきながら、店員がティー
カップをテーブル上に並べる。
　<RUBY text="かぐわ">芳</RUBY>しい香りが<RUBY text="たちま">忽</RUBY>ち広がった。

　快活な印象に反して、女性店員の手付きはあくまで
礼儀正しく、丁寧だ。
　陶磁器にがちゃがちゃと無粋な音を立てさせたりは
しない。

　だからだろうか。彼女の手は、酷く美しく見えた。
　
　白く――滑らかな手。

{	DeleteStL(300,false);
	SetVolume("@mbgm*", 100, 0, null);}
　俺は自分の手を伸ばし、それを握った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");
	CreateTextureEX("絵演窓上/絵演背景", 16100, -600, -444, "cg/bg/resize/bg074_喫茶店の店内_01l.jpg");

	CreateTextureEX("絵演窓上/絵立絵", 16200, 60, -60, "cg/st/resize/st稲田_通常_制服l.png");
	Move("絵演窓上", 0, @0, @128, null, true);

	Request("絵演窓上/絵演背景", Smoothing);
	Request("絵演窓上/絵演背景", Smoothing);

	Move("絵演窓上/絵演背景", 40000, @100, @0, null, false);
	Move("絵演窓上/絵立絵", 40000, @200, @0, null, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	SetFwR("cg/fw/fw稲田_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150540b15">
「あら……」


{	SoundPlay("@mbgm22",0,1000,true);
	SetComic(@250,@0,7);
	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150550a02">
「み、みっ、湊斗さん!?
　破廉恥ですよっ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

	DeleteComic();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　ウェイトレスはきょとんとし、一条は顔を赤くして
立ち上がった。
　俺は構わず、掌中に収めた女性の手の感触を味わう。

　……柔らかい。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_微笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150560b15">
「お客様ったら。
　こんな可愛らしいお連れ様がいらっしゃる
のに」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150570a00">
「今は貴方が気になるのです」


{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150580a02">
「みーなーとーさーんー!?」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150590b15">
「そんなことを言って。
　もう、悪戯はお止めください」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150600a00">
「自分は本気です」


{	SetComic(@250,@0,16);
	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150610a02">
「なんでっ!?」


{	DeleteComic();
	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150620b15">
「……困ったお客様」


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150630a00">
「自分も困っています。
　こんな所で、貴方のような人と出会ってし
まうとは」


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150640a02">
「あたしも今すごい困ってるんですが!?」


{	FwR("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150650b15">
「お客様……
　どうして？」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150660a00">
「三つあります。
　貴方の手、貴方の脚、貴方の瞳」


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150670a02">
「身体だけかよ。
　いや、問題はそこじゃないけど！」


{	FwR("cg/fw/fw稲田_微笑.png");}
//嶋：修正（そんなことを）【090930】
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150680b15">
「誰にでも、そんなこと仰るんでしょう？」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150690a00">
「いいえ。
　貴方だけです……」


{	FwR("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150700a02">
「なんでいきなり<RUBY text="キャラ">人格</RUBY>変わってるんですか!?
　それとも元々そーいう人だったんですか!?
あたし裏切られた!?　しかもよりにもよって
こんな裏切られ方ーーー!?」


{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150710a00">
「貴方の手……
　白く、綺麗で」


{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150720a00">
「今は……とても冷たい」


{	FwR("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150730b15">
「手の冷たい人は心が温かい、とでも仰るの
かしら？」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150740a00">
「俗説に興味はありません。
　貴方のこの手は――」


{	FwR("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150750a02">
「単に水仕事してきただけだと思います！」


{	FwR("cg/fw/fw稲田_通常.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150760b15">
「ええ。
　人手が足りないので、皿洗いから飲食物の
準備まで手伝わないとならなくて」


{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150770a00">
「そうなのでしょう。
　貴方は接客だけでなく、厨房の仕事もして
いる」


{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150780a00">
「だというのに、この手は全く荒れていない。
白く、綺麗で、滑らかだ。
　そのかわり、指の付け根に薄い<RUBY text="・・">たこ</RUBY>がある」


{	SetVolume("@mbgm*", 100, 1, null);
	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150790a00">
「これは剣の鍛錬を積んだ人間特有のもの」


</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	Fade("絵色*", 150, 0, null, false);
	Fade("絵演窓*", 150, 0, null, true);
	Delete("絵演窓*");
	Delete("絵色*");

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0255]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150800a02">
「……え？」


{	FwC("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150810b15">
「――――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150820a00">
「貴方の足取り、腰つき……
　仔細に検分させて頂きましたが、あまりに
<RUBY text="・・・・">落ち着き</RUBY>過ぎている」


//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150830a00">
「いつ襲い掛かられても即応できそうだ。
　武術の心得が無い人間には決してできない
歩法です」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150840a02">
「――――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150850a00">
「そして、貴方の瞳……
　時期外れの、地元民でもない客に対して、
何ら怪しむ様子がない」


{	FwC("cg/fw/fw稲田_無.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150860b15">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150870a00">
「実に……不可解な事です。
　貴方は俺の興味を引いてやまない」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150880a02">
「湊斗さん。
　じゃあ、こいつは……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150890a00">
「ああ。
　結論は一つ」


{	SetVolume("@mbgm*", 100, 1000, null);
	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150900a00">
「たまたま武術の心得があった、最近ここで
働き始めたばかりのウェイトレスだ」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150910a02">
「えーーー!?」


{	FwC("cg/fw/fw稲田_微笑.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150920b15">
「そ、そうです！」


{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150930a00">
「勿論違う。
　今の時節に従業員を新規雇用するなどまず
考えられないし、大体、働き始めにしては客
慣れし過ぎている」


{	FwC("cg/fw/fw稲田_緊張.png");}
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150940b15">
「くっ……！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StC(1000, @30, @0,"cg/st/st稲田_戦闘_制服.png");
	Move("@StC*", 300, @-30, @0, Dxl2, false);
	FadeStC(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　店員は俺の手を振り払って後方へ飛び離れた。
　同時に俺は立ち上がる。

　ここは既に敵地。
　いつ何処から攻撃されるとも知れない。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw稲田_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【稲田】
<voice name="稲田" class="その他女声" src="voice/mb03/0150950b15">
「……油断した。
　ただのえろにーちゃんかと思えば……！」


{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150960a02">
「へっ、ばーか。
　湊斗さんはそんな男じゃねえ！」


{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb03/0150970a00">
「さっきお前が横で何を言っていたか、俺は
おおむね記憶している」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


//◆へこむ
	CreateSE("SE01","se擬音_コミカル_ガーン01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetComic(@250,@0,8);
	SetFwR("cg/fw/fw一条_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0150980a02">
「……相手はしてくれなかったのに……」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//――――――――――――――――――――――――

	DeleteComic();

//◆がちゃーん
//◆村正＋正宗登場
	CreateColorEX("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 100, 1000, null, true);

}

..//ジャンプ指定
//次ファイル　"mb03_016vs.nss"