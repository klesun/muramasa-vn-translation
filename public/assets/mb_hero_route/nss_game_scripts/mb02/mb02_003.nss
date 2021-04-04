//<continuation number="1410">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_003.nss_MAIN
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
	#bg063_普陀楽城内廊下_01=true;
	#bg045_普陀楽城公方の間_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_004.nss";

}

scene mb02_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mb02_002.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg063_普陀楽城内廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st義清_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030010a00">
「関東第六区の食糧状況報告を提出に参りま
した。
　遊佐中将閣下にお取次ぎ願います」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb02/0030020b21">
「かしこまりました。
　お待ち下さい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　小姓と思しき少年が通路の奥へ消える。

　待つというほどの時間は経たなかった。
　少年が戻り、無言で脇へ下がって通行を促す。

　軽く会釈して、俺は進んだ。
　背に一条が続く。

　十歩ほどで、ごく質朴な書院に行き当たった。
　襖の前で着座し、こちらに背中を向けている大柄な
人物に対して礼を執る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆童心の間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030030a09">
「構わぬぞ。
　入れ」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030040a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	Wait(500);
	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　余り頭を上げぬよう注意しつつ、敷居を跨ぐ。
　無礼をしようが部屋の主には見えまい。が、小姓の
目が背後から光っていることは疑いなく、やはり態度
は慎まねばならなかった。

　死角の一条がどう振舞っているか少し気に掛かる。
　……堂々と胸を張っていたりしなければ良いが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030050a09">
「宇都宮からの報告か」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030060a00">
「は」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030070a09">
「穀類の不足は深刻かの？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030080a00">
「……御意。
　このままでは、配給制に移行せざるを得な
くなる恐れも有りとの事」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030090a09">
「ふむぅ。
　岡部の乱が祟っておるな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030100a00">
「は……。
　総じて食糧事情は改善の方向へ向かっては
おりますが、北関東の一部は例外と言わねば
なりません」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030110a09">
「軍の徴発が苛酷であったからの。
　それにあの辺りの町や村をいくつか、反乱
に加担した咎で<RUBY text="つぶ">鏖殺</RUBY>してしもうたのも響いて
おる……」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030120a09">
「向後を思えば見せしめは必要であったしの、
獅子吼殿のやりようを責める気はないが。
　農業人口をいきなり千人単位で削られては
なァ。経済が土台から崩れてしまうわ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030130a00">
「……はっ……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030140a09">
「さて、さて……。
　どうしたものやら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　書類を見もせず、背を向けたまま、遊佐童心入道は
悩ましそうに唸る。
　それでいて、どこか心ここにあらずの態でもあった
――細かい手作業の最中のようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030150a09">
「茶々丸殿に頭を下げねばならんかな。
　<RUBY text="すんず">駿豆</RUBY>の豊かさをちぃと他へ回してくれ、と
……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030160a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030170a09">
「借りを作るのは少々恐ろしい相手だがの」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030180a00">
「左様で、ございましょうか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030190a09">
「ふっふ……。
　おぬし、あの姫御を侮るか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030200a00">
「滅相も」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　侮る以前に、そもそも一面識もない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030210a09">
「あれは<RUBY text="・・・・">人食い虎</RUBY>ぞ？
　堀越騒動の顛末を知らぬわけではあるまい
……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030220a00">
「…………」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030230a09">
「足利茶々丸、今川雷蝶、大鳥獅子吼……
　みな若く、猛々しく、企み深い、恐ろしき
者どもよ」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030240a09">
「裏も表もない正直者はこの童心くらいじゃ。
　はぁっはっはっはっはっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　とびきりの冗談を口にしたように、四公方の首席は
高く笑う。
　追従して笑っていいものかどうか、俺は悩み。結局
やめた。

　恐縮の風で頭を垂れるに留めておく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030250a09">
「聴かぬ声よの」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030260a00">
「……はっ？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030270a09">
「政所の者は皆、見知っておるつもりでいた
が……
　おぬしとは<RUBY text="こたび">今度</RUBY>が初見よな？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030280a00">
「……これは。
　御挨拶が遅れ、申し訳御座いません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　慌てて詫びる。
　些かならず驚かされていた。

　今現在の普陀楽城における事実上の主とも言えよう
この古河公方が、城の末端、雑用事務に従事する下級
文官の一人一人まで把握しているとは……
　俄かには信じ難い。

　あるいは<RUBY text="・・">かま</RUBY>を掛けられたのかとも思う。
　しかし、確証もなく下手に<RUBY text="しら">白</RUBY>を切るのは危険だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030290a00">
「自分は改景秋と申します。
　本日より出仕させて頂いております」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030300a09">
「改、のぅ……。
　<RUBY text="・・・・">そちらの</RUBY>娘御は？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030310a00">
「は。自分の妻にて、一媛と申します」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　……公方は一度も振り返っておらず、一条は一言も
口にしていない筈だが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030320a00">
「未熟者ゆえ至らぬ点は多々あることと存じ
ますが、どうか御指導御鞭撻の程を」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030330a09">
「ほゥ。
　<RUBY text="めおと">夫婦</RUBY>で出仕とは、感心よの」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030340a00">
「恥ずかしながら、病の父母を養わねばなら
ぬ事情もあり、自分一人の務めでは暮らしが
立ちゆかず。こちらへ参ります際に願い出て、
妻の任官をお許し頂きました」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030350a09">
「<RUBY text="いずこ">何処</RUBY>より参った？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030360a00">
「印旛代官所に務めておりました」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030370a09">
「印旛沼か……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030380a00">
「はい」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030390a09">
「あの沼は、厄介だのう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030400a00">
「は……。
　二年前の水害では周辺の村々が相当な痛手
を受けました」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030410a09">
「五年前にも、大洪水を起こしておる」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030420a00">
「はっ」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030430a09">
「すると……むぅ。
　来年、また<RUBY text="・・">ある</RUBY>ということかな」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030440a00">
「そのように噂する者もおりまする」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　見てきたように、つらつらと口にする。
　実感をもって聴こえていれば良いが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030450a09">
「治水工事を完成させねばならんの。
　印旛沼の洪水は、幕府の蔵米に直接響く」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030460a00">
「差し出口では御座いますが……
　何卒、お願い申し上げます」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030470a09">
「うむ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　難しげに首肯して、公方は口を切った。
　しばらく、かちゃりかちゃりと何かの小道具を<RUBY text="いじ">弄</RUBY>る
音だけが耳孔を占める。

　書類を置いて、退出すべきか……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030480a09">
「御新造」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030490a00">
「――」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030500a02">
「……」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030510a00">
（お前だ）


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030520a02">
「あっ……はい」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030530a09">
「余り口を利かれぬな」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030540a02">
「え……と、まぁ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030550a00">
「申し訳ありませぬ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　旨くない事態になる前に、俺は予防線を張った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030560a00">
「この者、骨惜しみせず良く働くのですが、
どうも言葉の遣い方を知らぬところがあり。
　公方様の前では口を開かぬよう、予め言い
聞かせておりました」


{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030570a09">
「<RUBY text="おなご">女子</RUBY>に口を閉ざせとは、おぬしも酷よのう。
　構わぬ、構わぬ。若いうちは無礼も愛嬌。
好きなように喋らせい」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030580a00">
「は……。
　お言葉とあれば」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　一条に目線で合図を送る。
　無言の意は通じた筈だ――その証拠にやはり目線で
頷いてきた一条は、少なくとも表面上は、六波羅への
敵愾心を押し殺していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030590a09">
「普陀楽は如何かな？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030600a02">
「でっかいですね。
　馬鹿みたく」


{//◆頭痛そう
	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030610a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030620a09">
「ほゥ、ほゥ。
　気に食わんか、この城は」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030630a02">
「いえ。別に。
　金の無駄遣いだなって思うだけです」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030640a09">
「はっはっは！
　なるほど、率直な物言いをする」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030650a00">
「……面目次第も」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030660a09">
「良い良い。怒ってはおらぬ。
　こうも明け透けだと清々しい程よ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030670a09">
「して、御細君。
　何ゆえ金の無駄だと思う？」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030680a02">
「わからないんですか？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030690a00">
「いちっ……媛」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030700a09">
「うむ。ご教示くだされ」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030710a02">
「簡単な事です。
　<RUBY text="・・・・・・・・・・・・・・">落ちない城なんてどこにも無い</RUBY>。どんなに
守りを固めたって、落ちる時は落ちるのが城
です」


//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030720a02">
「そんなものに金を掛けるのは馬鹿げてます」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030730a09">
「ほっ！」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030740a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030750a09">
「改とやら」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030760a00">
「は」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030770a09">
「おぬしの妻は、まことの賢人よの」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030780a00">
「……何と申しましたものか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　返答のしようがない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030790a09">
「いや、いちいちもっともな話じゃ。
　しかしの……一媛どの」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030800a02">
「何ですか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030810a09">
「確かにこの城は、貴重な金穀を湯水のよう
に投じて造られておる。
　おそらくもっとましな使い道がいくらでも
あったことだろうて」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030820a09">
「それでも……無駄では、ないぞ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030830a02">
「そうでしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　一条が一言で返す。
　控えめにみてもそれは返答というより反駁であった
し、挑戦的でもあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030840a09">
「うむ」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030850a02">
「どんな意味があるんですか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030860a09">
「わからぬかな」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030870a02">
「……はい」


{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030880a09">
「それはの」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　一度、言葉を切り。
　それから、法体の武将は<RUBY text="いかめ">厳</RUBY>しくも述べた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030890a09">
「虚仮威しじゃ。
　ほれ、でっかい城を建てればみんな<RUBY text="・・・">びびる</RUBY>
ではないか」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0030900a02">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030910a00">
「……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030920a09">
「ふぁっはっはっはっはっは!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　腹を揺らして、遊佐入道は笑った。
　ちらりと背後の様子を窺う。

　……あからさまに、憮然としていた。
　無理もないが。見られていないのは幸いだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030930a09">
「要は、これと同じよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　相変わらず、こちらには背を寄越したままで。
　中将は肩越しに、何かを突き出して見せた。

　先刻からずっと弄り回していた物のようだが……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030940a00">
「茶杓……で、御座いますか」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030950a09">
「いかにも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　竹で出来た小匙。
　確かに、茶道具の一つに数えられるそれである。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030960a09">
「銘を〝<RUBY text="オモイグサ">思草</RUBY>〟と申す。
　肥後細川家に代々伝えられていたものでの」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030970a09">
「小堀遠州の作であると云う。
　数年前、無理を言って譲ってもろうた」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　櫂先の屈曲がやや深い……。
　そこからの銘か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0030980a00">
「……見事なお品と」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0030990a09">
「であろう」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031000a02">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031010a09">
「名人、小堀遠江守が手がけ……
　比類ない芸道大名、細川家において三百年
二十代に渡り丁重に扱われ、磨き上げられて
きたこの茶杓」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031020a09">
「得もいわれぬ風格が備わっておるわ。
　これほどの品、世にいくつもあるまいて」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031030a00">
「まさに」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031040a09">
「しかし、の。
　……一媛どのはこれをどう見る？」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031050a02">
「小汚い竹の切れっぱし」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031060a09">
「然り！
　まったく、みすぼらしい竹よのう。庭先に
転がっておれば踏んでしまうわ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031070a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031080a09">
「普陀楽城も、これと変わらぬ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031090a00">
「は」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031100a02">
「はぁ？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031110a09">
「恐ろしき城と思えばそう見えよう。
　張り子の虎と思えばそう見えよう」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031120a09">
「どちらも真実。
　どちらも正鵠」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031130a09">
「見る者が、決めれば良い。
　しからば世の万物に意味はなく、世の万物
に意味はあろう……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031140a00">
「……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031150a02">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031160a09">
「ほれ。<RUBY text="・・・・">普陀楽城</RUBY>じゃ。
　くれてやろう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　こちらを見ず、公方が茶杓をぽいっと放る。
　それは正確に、一条の手の上へ落ちた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031170a02">
「え？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031180a00">
「……何と？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031190a09">
「駄賃代わりに、持ってゆけ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031200a00">
「し、しかし……これは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　所謂一つの、<RUBY text="・・・・・・・・">値が付けられない</RUBY>品ではないのか。
　そんなものを――真逆。

　一条も古竹の小匙を握ったまま、どうしたものかと
案じている。
　別に有難くはないにしても、それは、戸惑いもする
だろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031210a09">
「どうした？
　気に入らぬか」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031220a00">
「そのような事は決して。
　しかし、自分の身の程に釣り合うものとは
到底思えず」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031230a09">
「そう卑下するでない。
　たかが耳掻きを貰った程度で」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031240a00">
「……は？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031250a02">
「耳……掻き？」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031260a09">
「うむ。
　ほれ、わしは頭が大きいからの。耳掻きも
それくらいの大きさがないと用が足りぬ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031270a09">
「先頃、自分で作ってみた耳掻きじゃ。
　世に二つとない珍品であろうよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031280a00">
「……」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031290a09">
「はあっはっはっはっはっはっはっは!!」


{//◆べきっ。
	CreateSE("SE01","se人体_動作_木の棒折る");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031300a00">
「…………あっ」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0031310a02">
「……こんの糞坊主……！」


{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031320a09">
「おう、からかいが過ぎたかの。
　桑原桑原」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031330a09">
「改、報告書はそこに置いてゆけ。
　奥方がわしの禿頭をひっぱたく前に、連れ
出してくれい」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031340a00">
「は……
　御意に」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031350a09">
「ご苦労であった」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031360a00">
「はっ。
　失礼致します」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　古河公方は最後までこちらを見なかった。

　目の合図で、一条に退出を促す。
　からかわれた事への不快さを隠しもしていなかった
が。少女は逆らいはせず、むっと押し黙ったまま立ち
上がった。

　俺もそれに続く。
　踵を返す前、畳の上に落ちたそれを一度だけ見た。

　無残に折れた竹の小杓。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031370a00">
「…………」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031380a09">
「<RUBY text="・・・・・・・・・・">小汚い竹の切れっぱし</RUBY>、よ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031390a00">
「……」


{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0031400a09">
「であろう？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0031410a00">
「……はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆転換
	ClearWaitAll(2000, 1000);


}

..//ジャンプ指定
//次ファイル　"mb02_004.nss"