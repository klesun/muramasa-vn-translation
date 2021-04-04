//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_018.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_018.nss","RandomMeimetsu_mc04_018",true);
	Conquest("nss/mc04_018.nss","RandomMeimetsuSet_mc04_018",true);
	

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
	#bg044_研究施設内_01b=true;
	#ev189_銀星号の成れの果て_a=true;
	#ev189_銀星号の成れの果て_b=true;
	#ev189_銀星号の成れの果て_c=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_019.nss";

}

scene mc04_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_017vsaa.nss"


//◆地下へ
//◆かつーんかつーん。階段下りる
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateSE("足音", "se人体_足音_歩く_地下_L");
	MusicStart("足音", 2000, 1000, 0, 800, null,true);

	Delete("上背景");

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　階段は思いのほか長かった。

　しかし傾斜は緩く、時として平面の通路にもなった。
　歩いた時間の長さの割りに、さほど深くは下りてい
ない筈だ。

　地上の邸宅の範囲から外れたかといえばそんな事も
なく、単に<RUBY text="・・・・">ぐるぐる</RUBY>回されているだけだと村正は云う。
　……設計意図が良くわからない。

　とまれ数分もして、俺はようやく部屋らしき場所へ
到着した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆地下研究施設。江ノ島の研究所絵を流用。
	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg044_研究施設内_01b.jpg");
	Fade("黒幕１",1000,0,null,false);
	SetVolume("足音", 1000, 0, null);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　室内には光源がなかった。
　電灯くらい用意されていそうなものだが、この暗さ
ではスイッチの所在を調べるのも難事だろう。

　とりあえず、俺は見渡してみた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180020a01">
《……御堂》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180030a00">
「……ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="・・">いる</RUBY>。

　闇の中、何が見て取れたというのでもない。
　だがわかる。知る――皮膚の感覚で単純なる事実を
理解する。

　銀星号はここにいる。

　……短慮な行動は慎まねばならない。
　銀星号がこの付近に在るのなら、つまりここは猛虎
の<RUBY text="・・・">狩り場</RUBY>だ。

　いつ何時、研ぎ澄まされた爪が襲ってきても不思議
ではなかった。
　心を鎮めて、室内へ一歩踏み込む。

　用心の上に用心を重ねて、探索しなくては……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆顔グラなし
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180040a07">
「平気だよ。
　そんな心配しなくても」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カチッ。
//◆ホワイトアウト
	OnSE("se日常_建物_照明点灯",1000);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg044_研究施設内_01a.jpg");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180050a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureSP("EV1", 1550, Center, Middle, "cg/ev/resize/ev189_銀星号の成れの果て_am.jpg");
	Request("EV*", Smoothing);
	SetBlur("EV1", true, 3, 500, 60, false);
	Zoom("EV1", 0, 750, 750, null, true);

	Fade("フラッシュ白",10000,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　やおら、部屋の奥から声が投げられると同時。
　白光が炸裂した。

　……ただの明かりだ。光量も大したことはない。
　だが闇に慣れた眼は急激な変化に対応しかね、暫時
視力を失った。

　徐々に回復する。
　地下室の様子が――明らかになる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：金神／魔王尊
//◆地下室。青白い光源？　部屋中央に怪奇物体
//◆怪奇物体アップ。ねじれ狂った銀の柱？

	Fade("フラッシュ白",3000,0,null,false);

	Wait(2700);

	Zoom("EV*", 300, 1000, 1000, Dxl2, false);

	SoundPlay("@mbgm02",0,1000,true);

	SetFwL("cg/fw/fw景明_驚き.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180060a00">
「――――」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180070a01">
《――――》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　何だ？
　これは。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101a]
　
　　　　　　　　　　<RUBY text="ネジ">捩</RUBY>れている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101b]
　こんなものは知らない。
　こんなものは在り得ない。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101c]
　
　　　　　　　　　　<RUBY text="クル">狂</RUBY>っている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101d]
　こんなものは<RUBY text="このよ">現実界</RUBY>に存在しない。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101e]
　
　　　　　　　　　　奇怪、
　　　　　　　　　　　　　奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101f]
　存在してはならない。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101g]
　
　　　　　　　　　　奇塊、
　　　　　　　　　　　　　奇械。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101h]
　存在を許されない物体。
　存在すべきではない物体なのだ。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101i]
　
　　　　　　　　　奇異なカタマリ。
　　　　　　　　　異奇なセイメイ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101j]
　何なのか。
　これは――――何なのか。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180080a07">
「……ま、<RUBY text="アバン・ガード">前衛芸術</RUBY>ってとこ？
　アホみたいな<RUBY text="コスト">手間隙</RUBY>かけて何の意味もねぇ
ものつくっちまったって思えば、ほんとそう
だしねー」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆茶々丸。平服
	FadeDelete("EV*", 2000, true);

	StR(1100,@0,@30,"cg/st/st茶々丸_通常_私服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　<RUBY text="・・">ソレ</RUBY>をぐるりと回り込み、少女が一人、姿を見せる。
　どうしてか、気安い様子であった。

　何処かで会っていただろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180090a07">
「バベルの塔だ！」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180100a07">
「神を目指した夢の、成れの果てだ！」


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180110a07">
「ここにはもう何もない。
　終わっちまったんだから、何もない」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180120a07">
「神は来たらず。
　世はなべて事もなし」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180130a07">
「……何が足りなかったのかなー。
　勇気かな。友情かな」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180140a07">
「やっぱ愛かな。
　考えてみればこの世界のあらゆる問題って
愛があるとわりかし適当に解決するよねー」


//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180150a07">
「お兄さん。
　やっぱあんたをほっとくんじゃなかった」


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180160a07">
「捕まえとかなきゃいけなかった。
　……なんでそうしなかったかなぁ。そうし
とけば楽しく過ごせもしたのになぁ」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180170a07">
「ねー？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　あははと、少女が両手を広げて笑う。
　その声は室内ではなく、彼女の体内の空洞に反響し
ているように、俺には聴こえた。

　骨も腑も心臓もない、空洞の少女。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180180a07">
「……あての愚痴だけ聞かせてちゃ悪いか。
　さ。本命の方へどうぞ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180190a00">
「……？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180200a07">
「愛を語るなりお別れするなり。
　お好きに」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180210a00">
「…………？」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180220a07">
「あ。
　まだ気付いてなかったかな」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180230a07">
「それとも全力で現実から戦略的撤退？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180240a00">
「……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180250a07">
「お兄さん。
　だめだよ、ちゃんと見て」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180260a07">
「最後なんだから……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180270a01">
《御堂》


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180280a07">
「これは、
　<RUBY text="・・・・・">このひとは</RUBY>」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆オブジェ表面。瞳のような模様が現れる

	CreateTextureEX("絵演", 1600, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_a.jpg");
	Fade("絵演", 1000, 1000, null, true);

	CreateSE("SE01","se戦闘_正宗_投擲腸管");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSP("EV1", 1550, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_b.jpg");
	FadeDelete("絵演", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　
　　　　　　　　　　見つめて
　　　　　　　　　　　いる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180290a00">
「――――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　　　　　知っている。
　　　　　　　　　知っている、瞳。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180300a00">
「――――あ」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　
　　　　　　　　　<RUBY text="わら">微笑</RUBY>っている。
　　　　　　　　　うれしそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180310a00">
「――――あ、あ」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　俺に会えたことが
　　　　　　　　うれしいのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180320a00">
「――――――――――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　
　　　　　　<RUBY text="わら">微笑</RUBY>っている。
　　　　　　微笑って、俺の名を、そっと。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180330a00">
「――――――――――――――――――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音ぽいの。
	CreateSE("きーん","se特殊_雰囲気_不協和音");
	MusicStart("きーん",0,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　
　　　　　　　　　　　か<k>げ<k>
　　　　　　　　　　　あ<k>き

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音ぽいの。
//◆瞳が巨大化
	MusicStart("きーん",0,1000,0,1000,null,true);

	CreateTextureSP("EV2", 1600, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_c.jpg");
	CreateTextureEXadd("絵ブラー１", 2000, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_c.jpg");
	Zoom("絵ブラー１", 0, 1500, 1500, Dxl1, true);
	Zoom("絵ブラー１", 1500, 2000, 2000, Dxl1, false);
	Request("絵ブラー１", Smoothing);
	Fade("絵色白", 0, 1500, null, true);
	Fade("絵ブラー１", 0, 1500, null, false);
	Shake("絵ブラー１", 1500, 50, 50, 0, 0, 1000, Axl2, false);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	FadeDelete("絵ブラー１", 1500, false);

	FadeDelete("EV1", 0, true);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180340a00">
「あああああああああああああああああああ
ああああぃぃぃぃイイイイイイイイイッッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆後退。アップから地下室全景へ
	FadeDelete("EV2", 1000, true);
	SetVolume("きーん", 1000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180350a01">
《……かっ》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180360a01">
《かかさま》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180370a01">
《母様》


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180380a00">
「あ……うううああああえあああああああ」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180390a00">
「ヒッ、カ――カカ、カ」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180400a00">
「ひかる」


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180410a00">
「光！」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180420a00">
「光――光！　光!!」


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180430a07">
「……届かなかったんだ」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180440a07">
「あの力――地上最大の破壊力を食い尽くす
には、完全な〝飢餓虚空〟が必要だった。
　けどそこまで届かなかった」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180450a07">
「なんか足りなかったんだ。
　やっぱ愛かな。愛なんだろーなぁ。うん」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180460a00">
「……………………」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180470a07">
「さってっと。
　じゃ、おしまいにしようか」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180480a07">
「お兄さんは早いとこ逃げて。
　なんとなくで言うけど、まだこの世にやり
残したことがあるんでない？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180490a00">
「――――――」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180500a07">
「ここにいると巻き添え食うからさ。
　おい、村正」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180510a01">
《……えっ？》


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180520a07">
「しっかりしとけよ。
　文字どーりの<RUBY text="はがね">鋼鉄</RUBY>の心で、仕手が平静じゃ
ない時に支えてやるのも劒冑の仕事だろ？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180530a07">
「外へ引っ張っていってやれ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180540a01">
《…………。
　あ、貴方はどうするの？》


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180550a07">
「ほっとけよ、かびくせぇ骨董品が。
　こっちの始末はこっちでつける」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180560a01">
《――――》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180570a01">
《貴方》


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180580a07">
「やかましい。
　とっとと行け」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180590a07">
「正国！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆同田貫正国。亀

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorSPadd("絵フラ", 15000, "#FFFFFF");
	StL(1000,@0,@100,"cg/st/3d同田貫亀_正面.png");
	FadeStL(300,true);
	WaitKey(1000);
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw茶々丸_悪戯.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180600a07">
「おめーも主人のいなくなった世の中に興味
無さそうだよな。
　一緒に行くか？」


{	FwC("cg/fw/fw同田貫亀_通常.png");}
//【正国】
<voice name="正国" class="正国" src="voice/mc04/0180610b39">
《…………》


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180620a07">
「その力……
　八大地獄の炎が、最後に欲しい」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180630a07">
「世界の全てとはいかなかったけど。
　だったらせめて、<RUBY text="あて">自分</RUBY>くらいは、灰も塵も
残さず消し去りたいから」


{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180640a07">
「やっちまえ、同田貫!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆陰義・界現八大地獄
//◆業火
//inc久保田　界現八大地獄ですが　現状、CGが無いため仮で演出。なくなるかも知れない演出なのでタイミング調整はしていません。
	CreateSE("SEL00","se特殊_陰義_界現八大地獄準備_L");
	MusicStart("SEL00",0,1000,0,1000,null,true);

	CreateTextureEX("EF1", 1500, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	CreateTextureEX("EF2", 1400, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Fade("EF1",500,1000,Dxl3,true);
	Fade("EF2",0,1000,Dxl3,true);

	Delete("絵背景10");
	DeleteStA(0, true);

	Fade("EF1",1000,500,Axl3,true);
	Fade("EF1",900,1000,Dxl3,true);
	Fade("EF1",1500,700,Dxl3,true);
	Fade("EF1",1000,500,Axl3,true);
	Fade("EF1",900,1000,Dxl3,true);


	DrawDelete("EF1", 300, 100, "circle_09_00_1", true);

	WaitKey(500);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1500,1000,null,true);

	CreateTextureSP("EF2", 1500, Center, Middle, "cg/ef/ef046_炎a.jpg");
	CreateTextureSPadd("絵ブラー１", 2000, Center, Middle, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	SetBlur("絵ブラー１", 3, true, 400, 200);

	SetVolume("SEL00", 300, 0, null);

	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se戦闘_攻撃_火炎放射");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeDelete("フラッシュ白",100,true);

	Request("絵ブラー１", Smoothing);
	SetVertex("絵ブラー１", center, 820);
	Zoom("絵ブラー１", 1500, 1100, 2000, Dxl1, false);
	Shake("絵ブラー１", 1500, 2, 50, 0, 0, 1000, Axl2, false);

	Wait(1000);

	Fade("絵ブラー１", 500, 0, null, false);

	FadeDelete("絵ブラー１", 1500, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("絵背景11");

	CreateTextureEXadd("絵演効果炎", 2010, -910, -50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	Fade("絵演効果炎", 0, 200, null, true);
	DrawEffect("絵演効果炎", 0, "HighWave", 10, 10, null);
	MoveFFP1("@絵演効果炎",10000);

	RandomMeimetsu();

	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",0,1000,0,1400,null,true);

	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg044_研究施設内_01a.jpg");

	CreatePlainEX("絵板写", 1100);
	Fade("絵板写", 0, 500, null, true);
	MoveFRP1("@絵板写",1000,1,10);
	DrawEffect("絵板写", 0, "HighWave", 20, 20, null);

	CreateColorEX("絵演黒煙", 900, "#000000");
	Fade("絵演黒煙", 0, 800, null, true);
	DrawTransition("絵演黒煙", 0, 0, 200, 1000, null, "cg/data/circle_13_00_1.png", true);

	CreateTextureEXadd("火前だー", 1100, -480, 50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	Zoom("火前だー", 0, 1100, 1100, null, true);
	Fade("火前だー", 0, 300, null, false);
	DrawTransition("火前だー", 0, 0, 180, 1000, null, "cg/data/circle_13_00_0.png", true);
	DrawEffect("火前だー", 0, "HighWave", 20, 20, null);

	Delete("EF2");
	Delete("EF1");
	DrawDelete("黒幕１", 300, 1000, "slide_01_02_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180650a01">
《……陰義!?》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180660a01">
《いけない――御堂！》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180670a00">
「……………………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180680a01">
《正気でいられないのはわかる。
　忘れろなんて無茶は言わない》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180690a01">
《でも、今は動いて！
　苦しむのも狂うのもあと！》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180700a00">
「――――」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180710a01">
《逃げるのよ！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆火がぼー。
	CreateSE("SE02","se戦闘_破壊_爆発05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("絵演効果炎覆", 2010, -910, -50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	DrawEffect("絵演効果炎覆", 0, "HighWave", 10, 10, null);
	MoveFFP2("@絵演効果炎覆",10000);

	Fade("絵演効果炎", 2000, 1000, null, true);

	Wait(1000);

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_019.nss"

..ランダム明滅
function RandomMeimetsu_mc04_018()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_mc04_018");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_mc04_018()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@絵演効果炎", $RFTS, 400, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	$RFade = Random(4)+2;
	$RF = ($RFade * 50)+600;

	Fade("@絵演効果炎", $RFTS2, $RF, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;

	Wait($RWS2);

	}

}