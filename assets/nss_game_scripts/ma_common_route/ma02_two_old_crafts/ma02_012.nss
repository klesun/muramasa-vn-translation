//<continuation number="1780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_012.nss_MAIN
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
	#bg022_山林a_03=true;
	#bg002_空a_03=true;


	//▼ルートフラグ、選択肢、次のGameName
	if($ma02_012_routeFlag==true){$ma02_012_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_013.nss";

}

scene ma02_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_011.nss"

//◆弥源太の家
	PrintBG("上背景", 30000);
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 2000, 0, null);
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……視界の中の人々にまつわる教科書的知識を引き
出したところで、何が変わるというものでもない。
　だがいくつか、頷けることはあった。ふきという娘
の態度、山中孤立の家、反面そう貧困でもない佇まい。

　蝦夷という種族の複雑な在り方はこの小さな家の中
にもすべて詰まっていると言えた。
　唯一、子供の快活さだけを例外として。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @10,"cg/st/stふな_通常_私服.png");
	FadeStR(300,true);

	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120010b06">
「にーやはどこから来たの？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120020a00">
「鎌倉の町から参りました」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120030b06">
「かまくらー……。
　いったことないけど、しってる。でっかい
まち？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120040a00">
「はい。現在の大和における事実上の首都で
すから」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120050b06">
「じじつじょうのしゅと？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120060a00">
「首都とは、国で一番の都のことです。
　事実上とは、本当は違うのだけれども大体
そのようなものである、という意味です」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120070b06">
「かまくらは……いちばんのみやこみたいな
もの？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120080a00">
「はい」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120090b06">
「ほんとうのしゅとは？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120100a00">
「<RUBY text="やましろのくに">山城國</RUBY>、京都です。
　現在も近畿以西においては中心的な位置を
占めていると言えるのですが……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120110a00">
「しかし、大和西部は未だほぼ全域が遅々と
して進まぬ戦災からの復興の途上にあります。
　京都の賑わいも相応のものに過ぎません」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120120b06">
「かまくらはもっとすごい？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120130a00">
「人が大勢います」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120140b06">
「どのくらい？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120150a00">
「この村の倍の、十倍の、百倍ほど」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120160b06">
「きゃー！
　すごいねぇ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　はしゃいで、ぱちぱちと手を叩く下の娘。
　ふなという名前だったか。先程から、突然の闖入者
である俺にくっついて離れない。

　物怖じしない性格のようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120170b05">
「ふなー。
　あまりお武家様を困らせないの」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120180b06">
「んぅー」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120190a00">
「いえ、お気遣いなく。
　ただ寝ているだけというのは無聊なもの、
かえって助かります」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120200b06">
「こまってない！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120210b05">
「もぅ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw弥源太_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120220b55">
「世話を掛けるな、御堂」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120230a00">
「とんでもありません」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120240b55">
「そやつは誰に似たやら、まるで落ち着きと
いうものがなくて困っておる。
　昼は外で遊んでおるから良いが、夜になる
とうてらの邪魔しかすることがないらしい」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120250b05">
「そうなんですよぅ。
　台所に来ればおなべに手を入れようとする
し、じっちゃまの刃物は触りたがるし、気が
つくと箪笥の中身をひっくり返してるし……」


{	FwC("cg/fw/fwふき_照れ.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120260b05">
「申しわけないですけど、今日はお武家様の
お陰で助かっちゃってます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　大工道具かなにかと思しき刃物を磨いている老人と、
厨房に立っている上の娘が口を合わせる。
　この家の最年少者はなかなかの暴れん坊のようだ。
実際、腹の上に飛び乗って来られては疑うべくもない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_呆気.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120270b05">
「……って言ってるそばからもー！
　怪我してる人にそんなことしちゃ駄目！」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120280a00">
「お気遣いなく」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StCR(900, @600, @0,"cg/st/stふき_通常_私服.png");
	FadeStCR(0,true);

	Move("@StMR*", 600, @-540, @0, Dxl2, true);

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0058]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120290b05">
「遣います遣わせてくださいっ！
　ほら、おとなしくしてる！」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_コミカル_グリグリ");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	Shake("@StR*", $残時間, 0, 4, 0, 0, 400, null, true);

	CreateSE("SE01a","se擬音_コミカル_登場01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Move("@StR*", 600, @500, @0, Dxl2, false);
	Move("@StMR*", 600, @500, @0, Dxl2, false);

	SetFwC("cg/fw/fwふな_笑い.png");
	SetComic(@0,@0,11);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0059]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0120300b06">
「わー」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(0,true);
	DeleteStCR(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　厨房から飛んでくるや、妹を担ぎ上げて脇へのけ、
また戻っていく上の娘。
　手が離せない仕事の最中らしく、慌しい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120310a01">
《意外に騒々しい家ね……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120320a00">
（珍客のせいでもあるだろう。
　あまり来訪者の多い家とは思えん）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120330a01">
《そうね。
　……少しだけ、懐かしい。この空気》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120340a00">
（似ているのか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120350a01">
《どうかしら。
　私に妹はいなかったし……けどやっぱり、
蝦夷の家には蝦夷の家の匂いがあるのかもし
れない》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120360a00">
（……そうか。
　お前も蝦夷か。言われてみれば当然のこと
だな）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120370a01">
《……そういえば、そんなことさえも話して
いなかったのね。
　少しは……話しておくべきだったのかしら》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120380a00">
（そう思うのか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120390a01">
《…………いいえ。
　貴方は？　聞きたいと思う？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120400a00">
（いいや）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120410a01">
《……そう。
　ところで……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120420a00">
（何だ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120430a01">
《あのふきっていう娘の、私に対する仕打ち
には何か底深い理由があるのかしら》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120440a00">
（いや。
　単に慌てていただけだと思うが）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　そこはかとなく憮然たる様子で妹娘に<RUBY text="・・・・">座られて</RUBY>いる
劔冑に個人的見解を述べておく。
　玩具を与えられた格好の娘は、ご満悦のようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120450b05">
「もうすぐごはんできますからねー。
　お武家様、待っててください。今日は腕に
よりをかけましたからっ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120460a00">
「どうかお構いなく」


{	FwC("cg/fw/fw弥源太_微笑.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120470b55">
「腕をふるうのは良いがな。
　怪我人に食わす物だということはちゃんと
考えておるのか？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120480b05">
「もちろん。
　あ、お武家様。好き嫌いはあります？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120490a00">
「油の強いものがやや苦手ですが、ほかには
別段」


{	FwC("cg/fw/fwふき_笑い.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120500b05">
「よしっ、大丈夫！
　じっちゃま、ちゃぶ台出しておいてー」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120510b55">
「…………」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120520b05">
「じっちゃま？」


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120530b55">
「……飯は少し後だ。
　客が来たらしい。招かれざる類のな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120540a00">
「！」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120550b05">
「え……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆扉、蹴り破られる
	SetVolume("@mbgm*", 0, 0, null);
	OnSE("se日常_物_木箱壊れる01",750);
	CreateSE("SE01","se日常_建物_扉開く02");
	MusicStart("SE01",0,750,0,1000,null,false);

	Wait(1000);

	StR(1000, @-30, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120560b35">
「夜分に失礼。
　少々お邪魔致し申す。何、用を済ませたら
すぐに退散しますでの」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-30, @0,"cg/st/stふき_通常_私服.png");
	Move("@StL*", 300, @30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fwふき_怯え.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120570b05">
「な、なっ、なんですかっ、あなたたち……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	StCR(1000, @150, @0,"cg/st/st長坂_通常_制服.png");
	Move("@StML*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,true);
	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120580b45">
「……」

{	FwC("cg/fw/fwふき_怯え.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120590b05">
「！　お、お代官様!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　戸を蹴り開ける非礼と慇懃な挨拶とを一緒にやって
のけた若い女――注釈、外見上。
　そして、その後ろからのっそりと現れる初老の男。

　来るべくして来た二人だった。

　しかし――予想より遥かに早い！　向こうとて無傷
ではなし、よもやこの夜の内に来ることはなかろうと
見込んでいた。
　乱破者の実力を甘く見たか……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120600a00">
（村正）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120610a01">
《戦闘は不可能！
　<RUBY text="あなた">仕手</RUBY>の肉体、<RUBY text="わたし">騎体</RUBY>の甲鉄、共に騎航に耐え
られる状態に無し！》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120620a00">
（諒解した。
　太刀だけ寄越せ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120630a01">
《……本気!?》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120640a00">
（限られた手段のうちから最善手を選択して
いるだけの事。格別、冗談じみてはおるまい）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0120650a01">
《けれど……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　二人の背後と、物音を確認する。
　……<RUBY text="・・・・・">もうひとり</RUBY>、どこかに潜んでいるということは
無さそうだ。巧妙に隠れていないとは限らないが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120660b35">
「ほっほ。おったおった、ほれおった。
　さぁて……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120670a00">
「待て。
　話は外で聞く。この家の人々を巻き込むに
は及ばん」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120680b35">
「そうしてくれれば、こちらも助かるがの」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_抱きつき02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　温かだった寝床から身を起こす。
　苦痛が走る――包帯に血が滲む。少し傷口が開いた
か。

　しかし、動けなくはない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120690b05">
「お武家様！　いけません！」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120700a00">
「大変お世話になりました。
　少々つまらぬ用事が出来たようなのでこれ
にて失礼を。後日、改めて御礼に参上させて
頂きます」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120710b05">
「そ、そんな」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120720b35">
「はっは！　後日、後日か！」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120730a00">
「今のは別に笑う所ではないが」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120740b35">
「笑う所だよ、湊斗景明。
　まあ良いわえ……後日の御礼とやらは儂が
代わりに済ませてやろうぞ」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0120750b05">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120760a00">
「そうか。なら手土産は友島屋の鳩サブレー、
一二枚セットで頼む。あと山倉醸造の『公暁』
を一瓶。
　おそらく造作を掛けることはなかろうが」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120770b35">
「心得た。
　必ず、そのようにしてくれよう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　風魔小太郎の歯を見せた笑いに応えて、足腰を立た
せる。
　……わずかに揺らいだ。血が足りないのか、<RUBY text="ふくらはぎ">脹脛</RUBY>が
萎えている。

　だが動く。動けば、戦える。
　戦うためには、他に何も必須ではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120780a00">
「……待たせた」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120790b35">
「ほっ。なに、構わぬよ。爺は気が長いでな。
　では参ろうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeStA(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　促されるまま、土間に降りる。

　否、降りようとした――が。
　ついと伸びた腕に、行く手を遮られた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw弥源太_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120800b55">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120810a00">
「御老」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120820b55">
「下がられい」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120830a00">
「しかし、これは自分の」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120840b55">
「ここはうての家。
　誰を客として迎え、誰を迎えぬかはうてが
決めること」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120850a00">
「……」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120860b55">
「客人を狼藉者に引き渡すなどという作法を
蝦夷は持たん。かような真似こそ最大の恥辱。
　御堂、この爺に恥知らずの汚名を着せたく
思うのでなくば、まずは任せてもらおう」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0120870a00">
「…………御意に」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　恥辱と告げられては是非もなし。
　やむなく、ひとまず引き下がる。

　しかし事あらば即座に割り込まねばならない。
　村正は手元に引き寄せておいた。瞳を見開いて押し
黙っている小さな娘を慎重に部屋の奥へ移した後で。

　異様な雰囲気を感じ取ってだろう、ふなという娘の
目元は潤んでいた。
　……舌の裏側に苦渋が湧く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st小太郎_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120880b35">
「ほぅ、ほぅ。これは勇ましき御老人かな。
　しかし、歳食えば骨朽ちると申す。無理は
慎まれたが宜しかろう」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120890b55">
「……年寄っておるのは事実ゆえ、言われて
怒る筋はないがな。
　それでも貴様の如き<RUBY text="けしょう">化生</RUBY>に毒舌を叩かれる
のは心外というもの。その口こそ慎まれたい」


{	FwC("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120900b35">
「はっは！　これはしたり、これはしたり。
　人よりいささか<RUBY text="・・">遊び</RUBY>を知っておる程度の儂、
化生呼ばわりはちと心外なる申されよう」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120910b35">
「だが家主殿。
　儂を化生と見られるならば、折角のこと、
そのように振舞わぬではないが……？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120920b45">
「無用だ。
　控えておれ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStL(300,true);

	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStL(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　唇を舐めた、外法者の背後から。
　それまでは黙りこくっていた男が踏み出し、弥源太
老人との間に立ち塞がった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0120930b35">
「代官殿」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120940b45">
「こやつの相手は俺がする。
　……不満はなかろう？　弥源太」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120950b55">
「不満か。今となっては、なれとうてが<RUBY text="うつしよ">現世</RUBY>
にいつまでもしがみついておる事こそ不満で
ならぬよ。
　長坂右京……」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120960b45">
「は。抜かすわ。
　けりをつける機会ならいくらでもあったに、
逃げ続けてきたのは何処の誰ぞ？」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120970b55">
「言われるまでもない。
　だから不満と言うておる。なぜもっと早く、
決断ができなんだか……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0120980b45">
「その後悔さえ、三十年遅いわ！
　あの時に貴様が逃げなければ、我らの一方
は人生に実りを得、もう一方とて少なくとも
老廃を晒さずには済んだであろうよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　二人の老いた男の視線が正面から相撃つ。
　沈黙の帳が下りた。

　誰も、何も口にしない。身動きもしない。
　あの二人が不動なら、他には誰も動けない。

　代官の口にした三十年という言葉が、固形と化して
空間の隅々まで詰まったかのようだった。
　――立ち入れない。手足が縛られている。息苦しさ
さえ覚える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0120990b55">
「……うてはこの一命に実りがなかったとは
思うておらぬ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121000b45">
「俺は思っておるよ。
　何も得られなんだわ……何もな」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121010b55">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121020b45">
「貴様とて本心ではそうであろう。
　それともその孫娘どもを得て満足だとでも
言い張るつもりか？」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121030b55">
「そう言ってはならぬ理由があるか？」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121040b45">
「貴様が求めたのは<RUBY text="・・">それ</RUBY>ではなかろう」


{	FwC("cg/fw/fw弥源太_警戒.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121050b55">
「求めたものを得られるとは限らぬし、そう
でないものの価値がそれより劣るとも言えぬ。
　うての命はこやつらを世に送り出すために
あったと、そう言うても一向に構わぬ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121060b45">
「……そうか。貴様がそう言うならそれでも
良かろうさ。
　ならば貴様は何故、今になって俺に挑む？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121070b55">
「冥途へ悔いを引き摺らぬ為よ。
　なれの馬鹿はうてか<RUBY text="いちひめ">一媛</RUBY>が止めねばならな
かった。一媛亡き今はうてしかおらぬ」


//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121080b55">
「己の責務を残して逝けば黄泉路に迷うわ。
　右京、なれの墓碑銘を刻むことが、うての
最後の仕事となろうよ」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121090b45">
「では俺の仕事は貴様の墓碑を刻むことか？
　ふん、厄介な」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121100b45">
「犬に食わせて済ます。構うまい？」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121110b55">
「良かろうよ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DeleteStA(300,true);

	OnSE("se日常_衣類_落ちる01",1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　老人は、壁の素朴な神棚の上から何かをもぎ取った。
　代官は背負っていた鎧櫃を土間へ落とす。

　弥源太老人が手にしたのは短い棒状の物。
　あれは――何かの牙か？

　鎧櫃の蓋を乱暴に蹴り開け、代官が両拳を胸の前で
構える。
　――海軍礼則に<RUBY text="のっと">法</RUBY>る<RUBY text="ソウコウノカマエ">装甲ノ構</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StC(1000, @30, @0,"cg/st/st長坂_通常_制服.png");
	Move("@StC*", 300, @-30, @0, DxlAuto, false);
	FadeStC(300,true);

	SetFwR("cg/fw/fw長坂_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121120b45">
「弥源太……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStC(300,true);

	Wait(300);

	StC(1000, @-30, @0,"cg/st/st弥源太_通常_私服.png");
	Move("@StC*", 300, @30, @0, DxlAuto, false);
	FadeStC(300,true);

	SetFwL("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0281]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121130b55">
「右京……！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	Wait(300);

	PrintGO("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	StL(1000, @-30, @0,"cg/st/st長坂_通常_制服.png");
	StR(1000, @30, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	FadeDelete("上背景", 600, true);

//◆両者、動く
//◆ブラックアウト
//◆銃声
//◆戻り
	OnSE("se戦闘_動作_刀構え01",1000);

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,700,null,false);

	Wait(3000);

	OnSE("se人体_動作_跳躍01",1000);

	Move("@StL*", 250, @180, @0, Dxl2, false);
	Move("@StR*", 250, @-180, @0, Dxl2, false);

	Wait(220);

	CreateColorSP("絵暗転", 5000, "#000000");
	DrawTransition("絵暗転", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	PrintGO("上背景", 15000);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStA(0,true);

	SetVolume("SE*", 0, 0, null);
	SetVolume("OnSE*", 0, 0, null);
	SetVolume("@mbgm*", 0, 0, null);

	OnSE("se戦闘_攻撃_ライフル撃つ01",1000);
	Delete("上背景");

	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw長坂_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121140b45">
「…………」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121150b55">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0292]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121160a03">
「良かった。
　もしスタートの合図と勘違いされたらどう
しようかと思ってました」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121170a04">
「大丈夫ですよ、お嬢さま。
『位置について用意』とは誰も言っておりま
せんでしたから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　……やにわの銃声。
　続けて聞こえてきたのは、そんな話し声だった。

　特に警戒した様子もなく、人影が二つ、開き放しの
戸口から入り込んでくる。
　いずれも女性。一方は若く長身、もう一方は老いて
小柄。

　長髪をなびかせる令嬢風の女性にぴたりと付き従う
白髪の侍従は、室内を見回すや、ふと眉をひそめた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310a]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121180a04">
「……なんですか、この年寄り臭い空間は」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310b]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121190a03">
「ばあや、あなたが言わないの」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121200b45">
「貴様は……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121210a00">
「巡察官殿」


{	SoundPlay("@mbgm21",0,1000,true);
	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121220a03">
「良かった、湊斗さま。こちらにいらしたの
ですね。心配しておりましたのよ？
　捜査に行くと出ていかれたきり、日が暮れ
ても戻られないし、連絡一つないのですもの」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121230a00">
「これは……とんだ不手際を。
　いささか難儀しておりまして、ご連絡する
<RUBY text="いとま">暇</RUBY>がありませんでした。いらぬ心労をお掛け
した事、深くお詫び致します」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121240a04">
「や、や、そのお怪我は……
　これはいらぬどころか妥当な心配であった
ご様子！　お加減はいかがなものでございま
しょう？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121250a00">
「お恥ずかしい。不覚傷です。
　浅からぬ負傷ではありましたが、こちらの
方々のお陰をもって大事なく済んでおります。
　どうかお気遣いなさいませぬよう」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121260a04">
「さようでございますか。
　よろしゅうございましたね、お嬢さま」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121270a03">
「ええ。本当に、ご無事で何より。
　湊斗さまは大事な恩人ですもの。この方を
お助け下さったのなら、わたくしからも御礼
を申し上げないといけません」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121280a03">
「ありがとうございます」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0121290b05">
「え？　はい……い、いえ、そんなっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　これぞ礼法の見本と言わんばかりに丁寧な仕草で腰
を折る大鳥中尉。
　一瞬ぽかんとした後で、一礼を受けたふきは慌てて
何度も頭を下げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0121300b05">
「はぅ……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121310a03">
「くす。
　可愛らしい方」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0121320b05">
「……」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121330a03">
「それはそれとして、湊斗さま。
　いかがされます？　村へお戻りになられる
のなら一緒に参りましょう。すぐそこまで車
で来ていますの」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121340a00">
「……は。
　いや、しかし」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121350a04">
「お嬢さま」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121360a03">
「あら。わたくしったら、迂闊。
　そうですね……怪我をされている方に車で
山道はきついかもしれません」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121370a03">
「ここは一晩、この家の方々にお願いして」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121380b45">
「おい」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121390a03">
「はい？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

	StL(1000, @0, @0,"cg/st/st長坂_通常_制服.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　ＧＨＱの軍服がくるりと向きを変える。
　そちらには依然、対峙したままの老人が二人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121400a03">
「なにか？」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121410b45">
「貴様、この場に割り込んでおいて、並べる
御託がそんなものしかないのか」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121420a03">
「……ええっと……」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121430b45">
「…………」


{	SetVolume("@mbgm*", 1, 1, null);
	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121440a03">
「……………………どなた？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆屋内
	CreateTextureEX("絵背景500", 5000, Center, Middle, "cg/bg/bg022_山林a_03.jpg");
	Fade("絵背景500", 2000, 1000, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0358]
　…………。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夜空
//◆ＳＥ夜烏。シャギャー。
	CreateTextureSP("絵背景510", 4990, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	FadeDelete("絵背景500", 2000, true);

	OnSE("se背景_動物_夜鳥鳴く01",1000);//ダミー注意

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0359]
　……………………………………………………。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 1000, null);
	FadeDelete("絵背景510", 2000, true);

	SetFwC("cg/fw/fw香奈枝_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//◆悲しそう
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121450a03">
「…………。
　ギャグが通じません、ばあや」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121460a04">
「遺憾ながら、私めから見ましてもいまのは
弁護の余地なく……いささかベタベタ過ぎで
はありますまいかと」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121470a03">
「頑張りましたのに」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121480a04">
「努力は成果を挙げてこそ努力と認められる
ものでございますよ、お嬢さま」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121490b45">
「……茶番はその辺で良いか？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121500a03">
「ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立ち絵？　香奈枝ライフルマン
	OnSE("se戦闘_銃器_構える01",1000);
	StR(1000, @0, @0,"cg/st/st香奈枝_射撃_制服.png");
	FadeStR(300,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0368]
　一息――その四半分にも満たぬ時間。
　ライフルの銃口が代官を指していた。

　最初から彼女が手に提げていた――
　未だ硝煙をまとう銃口が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw長坂_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121510b45">
「……ッ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121520a03">
「この場であなたを殺すのは容易いこと。
　けれど、そちらの腰巾着には多少の余命を
許さねばなりませんね。その間に、お子さま
方が危害を受けないとも限りません」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121530a03">
「あなたも同じ考えでいらっしゃるかしら？
　わたくしを殺すのは容易い……けれど、殺
すわけにはいかないお立場。違いまして？
　長坂大尉」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121540b45">
「……何が言いたい」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121550a03">
「あら、こんな駆け引きも通じませんの？
　困ったお方。脳細胞はあまり甘やかさない
方がよろしくってよ」


{	FwC("cg/fw/fw長坂_怒り.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121560b45">
「ッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StCL(900, @-180, @0,"cg/st/st小太郎_通常_私服.png");
	Move("@StML*", 300, @30, @0, DxlAuto, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw小太郎_警戒.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121570b35">
「代官殿！　この場は……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121580a03">
「<RUBY text="・・・">おまけ</RUBY>の方が察しは宜しいのね。頭のいい
腰巾着とは重宝なこと。
　類は友を呼ぶというけれど、割れ鍋に綴じ
蓋とも言いますもの。良いのではなくて？」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121590b35">
「……巡察官殿。
　話は呑み込み申した。この上は無用の挑発
を避けて下さらんかな」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121600a03">
「あら？」


{	FwC("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121610b35">
「主がどのように口舌を垂れ、儂どもの耳を
楽しませてくれようとも……
　この翁、<RUBY text="・・・・・・・・・・・・・・・">いま幾人の敵から狙われているか</RUBY>、
うっかり忘れるほど呆けてはおりませぬでな」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121620a00">
「……」


{	FwC("cg/fw/fw弥源太_通常.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121630b55">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0121640a01">
《……》

{	FwC("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121650b35">
「欲はかかれぬが宜しかろう。
　そちらのお申し出の通りにされるが最上と
存ずる」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121660a03">
「……異存はありません。
　そういうことで、宜しいですかしら。長坂
大尉？　互いにここで争うのは望ましくない。
お預けにしておくのが賢明と思いますけれど」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121670b45">
「……」


{	FwC("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121680b35">
「代官殿」


{	FwC("cg/fw/fw長坂_不快.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121690b45">
「……わかっておる。
　だが小娘。貴様は一度ならず二度までも俺
を妨げた。誓ってこのままでは済ませぬぞ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0121700a03">
「済ませておいて下さいまし。
　あなたのような殿方に執心されても嬉しく
ありませんもの。マイストライクゾーンから
インコースに大きく外れてデッドボールです」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0121710a04">
「残念でございましたな、大尉殿。
　これにめげず、男を磨いて出直して来られ
ませ。まずは細かいところから、ネイルケア
などお勧めでございますよ」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121720b45">
「…………。
　弥源太」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);

	StR(1000, @0, @0,"cg/st/st弥源太_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw弥源太_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121730b55">
「なんだ」


{	FwC("cg/fw/fw長坂_嘲笑.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121740b45">
「良かったな。
　今度もうまく逃げられたではないか」


{	FwC("cg/fw/fw弥源太_沈思.png");}
//【弥源太】
<voice name="弥源太" class="弥源太" src="voice/ma02/0121750b55">
「……」


{	FwC("cg/fw/fw長坂_通常.png");}
//【長坂】
<voice name="長坂" class="長坂" src="voice/ma02/0121760b45">
「……そのまま腐るがいい。
　さらばだ」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_歩く09");
	MusicStart("SE01",0,800,0,1200,null,true);

	DeleteStL(300,true);
	SetFwC("cg/fw/fw小太郎_冷静.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/0121770b35">
「……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1600, 0, null);
	CreateSE("SE01a","se人体_足音_歩く09");
	MusicStart("SE01a",0,800,0,1000,null,true);
	DeleteStCL(300,true);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0121780a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01a", 1600, 0, null);

	Wait(500);

	ClearWaitAll(2000, 2000);


//◆アナザー好感度＋
//$Another_Flag = $Another_Flag++;
	$ma02_012_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();


..//ジャンプ指定
//次ファイル　"ma02_013.nss"

}


