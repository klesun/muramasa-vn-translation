//<continuation number="600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_015.nss_MAIN
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
	#bg001_空a_03=true;
	#bg023_弥源太の家_01=true;
	#bg202_旋回演出背景山_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_015_routeFlag==true){$ma02_015_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_016.nss";

}

scene ma02_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_014a.nss"
//前ファイル　"ma02_014b.nss"
//前ファイル　"ma02_014c.nss"

//◆合流

//◆家の中
//◆夜空
//◆ＢＧＭ：コントラバス独奏

	PrintBG("上背景", 30000);
	SetVolume("@mbgm*", 2500, 0, null);
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);
	SoundPlay("@mbgm06",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……夜が更ける。

　食事が済むと、香奈枝は持参の楽器を奏で始めた。
　……最初に出会った時から、肌身離さぬあの巨大な
楽器ケースは一体何なのか疑問だったが、蓋を開けて
みれば答は呆気なく。そのまま、コントラバスだった。

　進駐軍士官がなぜそんなものを持ち歩いているのか。
　不思議がるべきではないのかもしれない。なにしろ
侍従を連れているような女性だ。

　何かにつけ型破りなのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150010a01">
《……？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150020a00">
「良い音です」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150030b05">
「本当に……」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150040b06">
「ふわー……」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150050b55">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　外には容易ならぬ敵がおり、
　身には軽からぬ傷。

　しかし、温かく和やかな一時。
　……ふと、思い出してはならぬものを思い出しそう
になる。

　思い出してはならない――遠い光景。
　忘れてはならない――戦うべき現実。

　今は休む。
　
　しかし、それは安らぎに浸るためでなく。
　明日の戦いのために。

　今は、
　眠る――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ゆっくりフェードアウト
//◆アナザー好感度＋
//$Another_Flag = $Another++;
	$ma02_015_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

	SetVolume("@mbgm*", 4500, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転", 4000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(3000);

//◆弥源太家

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

	SoundPlay("@mbgm23",0,1000,true);

	Wait(1000);

	OnBG(100,"bg020_山脈_01.jpg");
	FadeBG(1000,true);


	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150060b06">
「ほいっ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150070a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆薪割り。かこーん。
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150080b06">
「ほいっ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150090a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　ふなが台の上に置いてくれる薪へ、鉈の重い刃先を
落として割る。
　ふなはそれを脇へのかせ、再び薪を置く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150100b06">
「ほいっ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150110a00">
「はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	StL(1000, @0, @0,"cg/st/stふき_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150120b05">
「すいません、お武家様……。
　薪割りなんかさせちゃって」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150130a00">
「自分の方よりお願いしたこと、どうかお気
になさらず。
　こうして軽く体を動かすのは良い<RUBY text="リハビリ">慣らし</RUBY>に
なるのです」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150140b05">
「ならいいんですけど……
　大変じゃありません？　あて、薪割りする
と必ず次の日は筋肉痛になっちゃいますよ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150150a00">
「それは腕の力で鉈を振るおうとするからで
しょう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150160b05">
「お武家様は違うんですか？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150170a00">
「はい。
　このように、腕の力は抜き」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150180a00">
「……鉈の重さを<RUBY text="・・・・">そのまま</RUBY>落とします。
　これで充分、割ることができます」


{	FwC("cg/fw/fwふき_呆気.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150190b05">
「はー……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150200a00">
「難しいことではありません。
　腕の力で重い鉈を扱えば、筋を痛めます。
このようにやられた方がよろしいでしょう」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150210a00">
「ご迷惑でなければ後程お教えします」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0150220b05">
「そ、そうですか。
　お願いしちゃおうかな……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　どこかぽやっとした様子になって洗濯を続けるふき
の横で、こちらも薪割りを続行する。
　既にここ数日分の需要は満たしていた。しかしもう
少し、ストックを増やしておいてもいいだろう。

　弥源太老人は家の中で仕事をしている。朝方は家の
各所の修繕をするのが日課のようだ。
　大鳥主従はいない。昨夜のうちに村へ戻っていた。

　――何かしら、手立てを考えなくてはなりませんね。

　帰りがけ、香奈枝の残していった言葉がふと脳裏を
<RUBY text="よ">過</RUBY>ぎる。
　そう。事がこうなった以上、代官らはＧＨＱに働き
かけつつ時間を稼ぐ戦術に出る筈。

　それを許しては村は救われない。
　そしておそらく、俺の目的も達せられない。そんな
悠長にしていれば<RUBY text="・・">時間</RUBY>が来る。

　……樹海に潜む敵を引っ張り出す策が必要だ。
　思案を巡らせつつ、俺は薪を割った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆かこーん
	OnSE("se人体_動作_薪割り",1000);
	Wait(600);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150230a01">
《調子は悪くないようね……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150240a00">
（ああ。傷口は塞がった。少々血が足りんが
……何とかなるだろう）

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150250a00">
（後は体の動きを戻していくだけだ。
　お前は？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150260a01">
《甲鉄の損傷は復元完了。
　こちらも後は内部機能の調整だけね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150270a00">
（承知した）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150280a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150290a00">
（……？　どうした）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　沈黙が伝わってくる――というのも妙な話だが。
　通信を断ったのとは違う、押し黙る気配が、劔冑と
連結する脳髄のどこかに届いていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150300a01">
《……責めて欲しいと、思っていたのよ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150310a00">
（責める……？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150320a01">
《忘れたわけではないでしょう。
　昨日の不覚》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック・例の奇襲
//あきゅん「演出：仮入れ、超適当」

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 100, 1000, null, true);

	CreateTextureSP("絵演回想背景", 4000, Center, -576, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演回想立絵", 4010, Center, Middle, "cg2/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	Zoom("絵演回想立絵", 0, 750, 750, null, true);
	Request("絵演回想立絵", Smoothing);

	Wait(500);

	Fade("絵フラ", 400, 400, null, true);



	Wait(1000);

	Fade("絵フラ", 100, 1000, null, true);

	Delete("絵演回想*");

	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150330a00">
（無論だ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150340a01">
《探査を怠り、気付いた時には敵は目前……。
　これほどの醜態を晒した劔冑もかつてない
でしょうね》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150350a00">
（新手の襲来を予測していたなら、俺は周辺
の探査を命じた。それで済んだ。
　だが、俺はその予測ができなかった）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150360a00">
（醜態を晒したのはお前ではなく、俺だ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150370a01">
《違う。仕手は目前の敵を打ち倒すのが務め。
劔冑の務めはその補佐。武者の役割分担とは
そういうものでしょう。
　周辺の警戒なんて劔冑として当然の義務よ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150380a00">
（…………）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150390a01">
《その当然の義務を、私は怠った……。<RUBY text="かかさま">二世</RUBY>
や<RUBY text="じじさま">始祖</RUBY>が知ったらどれほど嘆くか。
　貴方にもどう詫びたらいいのかわからない》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　届く金打声は震えを伴っていた。
　屈辱と、怒りの。すべて自分自身に向けられている。

　……成程。
　そういうことか。しかし。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150400a00">
（詫びなどいらん。
　勘違いをするな、劔冑）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150410a01">
《……御堂？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150420a00">
（お前に役割など端から無い。
　義務も務めもない。お前は只の刃）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150430a00">
（<RUBY text="・・・・・">只の道具だ</RUBY>）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150440a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150450a00">
（俺には仕手として劔冑を使いこなす義務が
ある。劔冑は使われていればそれでいい。
　昨夕の俺はお前を使い損ねた。義務を果た
さなかった。故に失敗の責任は俺にある）

//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150460a00">
（わかるか？　義務にせよ権利にせよ責任に
せよ、全て俺一人の物だ。<RUBY text="・・・・・・・・">お前には何もない</RUBY>。
　当然だろう。奴隷に責任を押し付ける主人
などおらん）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150470a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150480a00">
（愚にもつかぬ思案は捨てろ。
　お前はただ、己の刃を砥いでいればいい）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0150490a01">
《……そう。
　貴方がそう言うのなら……そうしておきま
しょう》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　脳内に打ち響く硬質の声が絶える。
　意識を視界へ戻す――ふと見れば、積み上げられた
薪は随分な量に達していた。

　わずか三人の暮らし、これだけあれば当分炊きつけ
に困ることはないだろう。
　次の薪を抱えて問うように見上げてくる幼い視線へ、
頷きを返す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150500a00">
「このくらいにしましょう」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150510b06">
「いっぱいわった！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150520a00">
「はい。
　お手伝い、ありがとうございました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se日常_建物_スライド開く01");
	MusicStart("SE01",0,1000,0,500,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　そう告げて、一礼をした時。
　鈍い<RUBY text="きし">軋</RUBY>み音がして、家の戸口が開いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150530b55">
「御堂。
　……これはまた、結構な量を」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150540a00">
「御令嬢にお手伝い頂いたので。
　手早く片付いてしまいました」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0150550b06">
「てつだったー！」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150560b55">
「そうか。よくやったな。
　……それで御堂。少し留守を頼んでも良い
かな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150570a00">
「どちらかへお出掛けですか」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150580b55">
「うむ。ちと麓まで下りてくる。
　昼までには戻れるだろう」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0150590a00">
「承知致しました。
　留守をお預かりします」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0150600b55">
「すまんな。
　よろしく頼む」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);
	DeleteStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　危なげのない足取りで、山道を下りてゆく老人。
　脇に少々の手荷物を抱えていた。小さな風呂敷包み。

　その端から何か、白いものが突き出している。
　白い――花。

　墓参りだろうか？
　<RUBY text="ひがんえ">彼岸会</RUBY>にはいささか遅過ぎるが……。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"ma02_016.nss"

