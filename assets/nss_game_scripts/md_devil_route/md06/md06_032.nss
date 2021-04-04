//<continuation number="590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_032.nss_MAIN
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
	#bg003_荒れ野_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_033.nss";

}

scene md06_032.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_031.nss"

//◆bg003
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 15000, "BLACK");

	CreateTextureSP("背景", 3000, @-600, @-500, "cg/bg/resize/bg003_荒れ野_01.jpg");
	Move("背景", 50000, @-400, @0, null, false);

	Delete("上背景");
	FadeDelete("黒",1500,true);

	SoundPlay("@mbgm33", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　雪車町一蔵。そういう名だった。
　青白い風貌のその男を、奇妙な箱に押し込められた
格好から見上げる。

　岩の上に腰掛けて、男は表情なく物思う様子だった。
　こちらには視線も、言葉も投げない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320010a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　損傷は、致命的なものとはならず済んだ。
　すぐ本来の<RUBY text="すがた">蜘蛛形</RUBY>に戻ったのが功を奏したのだろう、
再生が迅速に進み、今はもう半ば快復している。

　もっとも機能停止に陥っている間に拘束され、今も
動けないのだから、やはり致命的な状態と考えるべき
なのかもしれない。
　男が破壊する気になれば、それまでだ。

　しかし……どういうつもりなのか。
　こちらから口を利いてやる義理はなく、意地のよう
に黙っていたが。向こうも口を開かないのでは事情が
まるで理解できない。

　仕方もなかった。
　男に向かって、<RUBY text="きんちょうじょう">金打声</RUBY>を送る――<k>この箱が如何なる
仕組みでか信号を妨害するため、景明との連絡は取れ
ないのだが、この至近距離なら届くだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100, "bg003_荒れ野_01.jpg");
	FadeBG(0, true);

	FadeDelete("背景",1500,true);

	StR(1000, @0, @0, "cg/st/st雪車町_通常_私服.png");
	FadeStR(300, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320020a01">
《ねえ、貴方》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320030a12">
「……はァい。
　花摘みですか……？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320040a12">
「申し訳ありゃァせんが、そいつは我慢して
くんなさい」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320050a01">
《……違います。
　そんなのするわけないでしょう、劒冑が》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320060a12">
「へ、へ、ヘェ……！
　そうでしたかね。失礼しました」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320070a12">
「なんせ、<RUBY text="・・・・">いけてる</RUBY>お姿の方が頭に残ってる
もんでしてねェ。
　村正の姐さん……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320080a01">
《――――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……そういえば、この男。
　私が蝦夷から蜘蛛の形に戻った時、全く動じる様子
がなかった。

　つまり最初から私を劒冑の村正と知って襲ってきた
……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320090a01">
《貴方の前に蝦夷の姿で出たことはなかった
と思うけれど……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320100a12">
「前にいましたさァ。
　姐さんからは後ろでしたが、ねェ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320110a01">
《…………。
　それ、<RUBY text="つけ">尾行し</RUBY>てたってことよね》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320120a12">
「へッ、へへ……！
　まぁ、ここ一週間ばかり」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320130a12">
「奉刀参拝からの<RUBY text="・・・・">ごたごた</RUBY>のせいであんたと
野郎を長いこと見失っちまってましたが……
　ようやく探し出せたもんで」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320140a01">
《……》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320150a12">
「驚きましたねェ。野郎のそばに蝦夷のいい
女がついてると思えば、そいつが村正、村正
って呼ばれてる。
　まさかこんな芸達者な劒冑があるたァ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320160a01">
《何を考えているの？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320170a12">
「はァい？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320180a01">
《江ノ島で負けたのにも懲りず私達を探して、
付け回して、私を襲って攫って……。
　貴方は何が望みなの》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320190a12">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320200a01">
《……復讐？
　ふきと、ふなの》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320210a12">
「……？
　誰ですか、そりゃあ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320220a01">
《蝦夷の姉妹よ。
　あの村にいた――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　江ノ島で太刀打したおり、確かにこの男は彼女らの
ことを口にしていたはず……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320230a12">
「あぁ……。
　そんな名前でしたかァ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320240a01">
《……？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320250a12">
「復讐……。
　へ、へ、復讐ねえ？」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320260a12">
「どんな復讐ですかねえ。
　獲物をかっさらわれたんで、その仕返し、
ってことになりますかねえ！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320270a01">
《獲物？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320280a12">
「はい。
　どう見てもちんぴらって<RUBY text="なり">風体</RUBY>の男を拾って、
家に上げちまうお人好しの姉妹です……絵に
描いたような<RUBY text="・・">カモ</RUBY>ってやつで」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320290a12">
「食い放題、<RUBY text="むし">毟</RUBY>り放題でさァ。
　どうしてやろうかって夢を膨らませていた
ところにあんたらが現れて、ぜぇんぶ御破算
にされちまいましたがねェ……！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320300a01">
《……何よそれ。
　そんなの、復讐なんて言える筋でもないで
しょう！》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320310a12">
「仰る通りで……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320320a01">
《ふざけているの？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320330a12">
「いぃえぇ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320340a01">
《…………。
　理由らしい理由が無いのなら、御堂を――
景明を苦しめるのはやめて》

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320350a01">
《何をする気か知らないけれど、貴方があの
人に悪意を抱いているのはわかる》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320360a12">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320370a01">
《貴方は何も知らない。
　あの人はもう充分に苦しんだ……今も苦し
んでいる》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320380a01">
《村正の<RUBY text="な">銘</RUBY>が背負う罪を貴方が問いたいなら、
私になさい。
　御堂には手出ししないで……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320390a01">
《私はもう……あの人を解放したい……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320400a12">
「…………。
　ご説の通り、あたしはあんたと野郎が何を
してきたかなんて詳しくは知りません……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320410a12">
「知ったこっちゃないんでねェ。
　あたしにとって大事なのは、いっこだけで」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320420a01">
《なに……？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//嶋：修正（変わちゃ）【090930】
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320430a12">
「どんなことがあったにしろ、正味のところ、
野郎は<RUBY text="・・・・">ちぃとも</RUBY>変わっちゃいねえってことです
よ……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320440a12">
「あいつは……あの時のまんまだァ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320450a01">
《……あの時……？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320460a12">
「姐さん、あんたも見ていたはずです。
　あの山で、蝦夷の餓鬼を殺した時――」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320470a12">
「野郎は……泣いてやがった」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320480a01">
《――――》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320490a12">
「そいつがね……」

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320500a12">
「そいつが……どうしても、ねェ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320510a01">
《……貴方は……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320520a12">
「へ、へ。
　さぁて」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　急に、男は口調を変えた。
　爬虫類じみた笑みを広げて、見下ろしてくる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320530a12">
「村正の姐さん。
　あんたは、あの野郎を解放したいんですか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320540a01">
《……ええ》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320550a12">
「そうですかァ。
　だったら、話は簡単だァ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320560a01">
《えっ？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320570a12">
「あんたが、<RUBY text="・・・">いなく</RUBY>なりゃあいい。
　そうでしょう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0320580a01">
《――――》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/md06/0320590a12">
「ねェ？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 3000, "BLACK");
	Fade("黒", 500, 1000, null, true);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se擬音_雰囲気_抜刀01", 1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　言って。
　男は無造作に仕込みの刃を抜き放ち――

　振り下ろした。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬。鉄を断つ音
	OnSE("se戦闘_攻撃_刀振る01",1000);
	SL_down(@0, @0,1000);
	SL_downfade2(10);
	WaitKey(500);

	CreateSE("SE01","se特殊_鎧_装着03");
	OnSE("se戦闘_攻撃_鉄切断",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(500);

	CreateColorEX("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 200, 1000, null, true);
	Wait(2000);
	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_033.nss"