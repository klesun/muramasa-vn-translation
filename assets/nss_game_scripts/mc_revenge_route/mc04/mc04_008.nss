//<continuation number="1120">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_008.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_009.nss";

}

scene mc04_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_007vs.nss"

	PrintBG("上背景", 30000);

	SoundPlay("@mbgm28",0,1000,true);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	CreateTextureSP("Ｃ/絵背景20", 10, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	CreateTextureSP("Ｃ/絵背景30", 15, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	Zoom("Ｃ/絵背景20", 0, 990, 990, null, true);
	Zoom("Ｃ/絵背景30", 0, 985, 985, null, true);

	CreatePlainSP("絵板写", 20000);

	CreateTextureSP("Ｃ/絵立", 500, Center, InBottom, "cg/st/st花枝_通常_私服.png");
	Move("Ｃ/絵立", 0, @0, @-140, null, true);
	SetVertex("Ｃ/絵立", center, bottom);
	Zoom("Ｃ/絵立", 0, 500, 500, null, true);

	Request("Ｃ/*", Smoothing);
	Delete("上背景");

	FadeDelete("絵板写", 300, true);

	SetFwL("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080010a03">
「……」


{	FwL("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080020b18">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateSE("はやあるき","se人体_足音_木床ゆっくり歩く01_L");
	MusicStart("はやあるき",0,1000,0,2000,null,false);

	MoveCamera("Ｃ", 30000, @0, @0, @500, null, false);

	CreateColorEX("絵色黒", 19900, "#000000");


	SetFwL("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080030a03">
「<RUBY text="ろんたいむのーしー、まいしすたー">久しぶりね愛する妹</RUBY>。
　<RUBY text="はうあーゆ">元気だったかしら</RUBY>――」
{
	WaitKey(2800);
	SetVolume("はやあるき", 0, 0, null);
	SetVolume("@mbgm28", 0, 1, null);
	OnSE("se人体_衝撃_転倒05", 1000);

	CreatePlainSP("絵板写", 10000);
	Shake("絵板写", 100, 0, 20, 0, 0, 1000, null, false);
	Fade("絵色黒", 100, 1000, null, true);}

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(0,150);//―――――――――――――――――――――――――――――

//◆↑台詞途中で香奈枝転倒
	WaitKey(500);

	Delete("絵背景30");
	Delete("絵板写");
	Delete("Ｃ");

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	StL(1000, @0, @0,"cg/st/st花枝_通常_私服.png");
	FadeStL(0,true);

	CreatePlainEX("絵板写", 5000);
	FadeDelete("絵色黒", 1000, true);

	OnSE("se擬音_コミカル_頭ぶつける", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, false);

	SetFwC("cg/fw/fw花枝_微笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080040b18">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se擬音_コミカル_グリグリ", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, false);

	SetVolume("@mbgm*", 500, 1000, null);

	SetFwC("cg/fw/fw香奈枝_凹む.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
{SetComic(@0,@0,12);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080050a03">
「……あのぅ……。
　どうしてわたくし、血を分けた妹と感動の
再会を果たした瞬間にヒモですっ転ばされて
あまつさえ頭を踏まれてるのかしら……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw花枝_野心.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080060b18">
「弾が耳の横かすめた。
　火傷した。髪の毛も少しちぎれた。なんか
文句あるか、どちくしょう」


//◆ここのボイス、「正確に」と「狙います」の間に
//◆小声で「頭を」と入れる
{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080070a03">
「ごめんなさい。
　次はもう少し正確に狙います」


</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ぐりぐり
	OnSE("se擬音_コミカル_グリグリ", 1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, false);

	SetFwC("cg/fw/fw香奈枝_ショックb.png");

	SetComic(@0,@0,2);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080080a03">
「なんで捻り込むの!?　踵を！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	DeleteComic();

	SetFwC("cg/fw/fw花枝_罵倒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080090b18">
「今、『正確に』と『狙います』のあいだに
なんか聞こえた」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080100a03">
「空耳ではなくって？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080110b18">
「そうじゃないことは神さまが知ってる」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080120a03">
「ううっ、妹に信じてもらえない。悲しい」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080130b18">
「その嘘泣きで不信度五〇％アップだよ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080140a03">
「それはともかくそろそろ足どけてくださら
ない？
　何を隠そうこのわたくし、床板に顔を擦り
付けるのってあまり好きではなくて」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080150b18">
「その前に訊くことがある」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080160a03">
「後じゃだめなの？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080170b18">
「だめ。
　返答次第ではこのまま首を折るから」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080180a03">
「…………」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080190a03">
「なに？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080200b18">
「雄飛くんを殺したのはあんたか」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080210a03">
「――――」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080220a03">
「それ、本気で訊いてる？」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080230b18">
「…………<?>
{Wait(300);}
……<?>
{Wait(300);}
ごめん。
　言ってみただけ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝起き
	Delete("絵板写");

	SetVolume("@mbgm*", 2000, 0, null);

	StR(1000,@0,@30,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	Move("@StR*", 300, @0, @-30, Dxl1, true);
	OnSE("se人体_動作_手払う02", 1000);

	SetFwC("cg/fw/fw香奈枝_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080240a03">
「ふぅ。
　ひどい妹、髪にほこりがついちゃった」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080250b18">
「雄飛くんが死んだことは知ってるんだ」


{	SoundPlay("@mbgm18",0,1000,true);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080260a03">
「ええ」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080270b18">
「犯人は？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080280a03">
「……」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080290b18">
「知ってるらしい」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080300a03">
「そのことは、任せて頂けません？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080310b18">
「一人で片付けるつもり？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080320a03">
「…………ええ」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080330b18">
「わたしは彼の許嫁」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080340a03">
「それでも」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080350b18">
「…………。
　後で説明くらいはしてくれる？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080360a03">
「そうね……」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080370b18">
「……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080380b18">
「あいまいな言葉でお茶を濁しやがった」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080390a03">
「ごめんなさい」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆嘆息
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080400b18">
「…………」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080410b18">
「それで、何しに帰ってきたの」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080420a03">
「愛しの妹の窮地に華麗な参上をするために」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080430b18">
「……華麗な参上が目的なんだ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080440a03">
「ちゃんとついでに助けて差し上げましてよ」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080450b18">
「どういう風の吹きまわし？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080460a03">
「不思議？」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080470b18">
「不思議だよ。
　これまでは余計な手出ししないで、ほっと
いてくれたでしょうが」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080480a03">
「それが一番いいと思ってましたから。
　あなたがどんな風に<RUBY text="・・・">あの男</RUBY>を始末するのか、
興味もありましたし」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080490b18">
「なら、どうして今さら来たの」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080500a03">
「情勢を見て」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080510b18">
「情勢？
　――――あぁ。そういうこと」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080520b18">
「獅子吼を殺して、進駐軍との開戦を避ける
つもりなのね」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080530a03">
「ご明察」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080540b18">
「確かに有効な手だけど。
　……そういうつもりなら、わたしに任せて
おいて」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080550b18">
「獅子吼はあと三年生かす」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080560a03">
「あの<RUBY text="クォーター">異人の孫</RUBY>を生かしておくと、要らない
人死がざくざく増えましてよ？」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080570b18">
「でも三年後には、ぜんぶ取り戻せる」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080580a03">
「全部？」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080590b18">
「大鳥。
　幕府。
　関東。
　大和」


//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080600b18">
「大陸」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080610a03">
「…………」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080620b18">
「疑う？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080630a03">
「疑えたら、おねえちゃんこんなにビクビク
しなくて済むんだけど」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080640b18">
「今日は帰って。
　さっき獅子吼が外の武者を呼び戻していた
から、うまく行き違いになるように」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080650a03">
「そっちは大丈夫。
　さよに玄関を守らせてあるから。わたくし
が獅子吼を殺すまで、誰も通れません」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080660b18">
「……話、ちゃんと聞いてた？
　獅子吼の始末は、わたしに任せろっての」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080670a03">
「質問」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080680b18">
「なに？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080690a03">
「邦氏殿下と結婚させられてもいいの？」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080700b18">
「――――」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080710b18">
「……殿下は、悪い子じゃない」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080720a03">
「それ、交際の申し出を断る時の定番台詞」


{	FwC("cg/fw/fw花枝_罵倒.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080730b18">
「うるさいな。
　もともと、大鳥のような家に生まれついて、
好きな相手と結婚できる方がおかしいんだ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080740a03">
「政略結婚は貴族の義務ですものねー」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080750b18">
「そうだよ……」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080760a03">
「でも一度、夢を見てしまいました」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080770b18">
「夢？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080780a03">
「政略だけど。親の決めたことだけど。
　それでも妹の結婚は、好きな人と結ばれる、
幸福なものになる……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080790a03">
「そんな夢」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080800b18">
「…………」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080810a03">
「人間、手に入れたと思ったものを失った時
が、一番貪欲になるのよねぇ」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080820b18">
「……どうしろってのさ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080830a03">
「妥協しないで、いつか政略的にもオッケー
かつ愛のある結婚をしてくださらない？」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080840b18">
「無茶言いやがる」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080850a03">
「あなたの奸佞邪智をもってすればそんなの
簡単よ」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080860b18">
「保証されてる気にならんわ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080870a03">
「さー、妹の未来の恋路のために。
　邪魔する男を、馬に代わって蹴り殺してき
ましょうか」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080880b18">
「……あんたは、それでいいの？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080890a03">
「なにが？」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080900b18">
「だって。
　獅子吼は、あんたの――」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080910a03">
「ええ。
　<RUBY text="・・・">だから</RUBY>」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080920a03">
「わたくしの手で決着をつけたい。
　ごめんなさいね、花枝。ほんとうの理由は
こっち」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080930a03">
「あの男を、あなたに譲りたくないの」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080940b18">
「…………」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080950a03">
「大義名分が出来なければ、我慢するつもり
でいたのだけれど。
　出来ちゃったのよね、<RUBY text="これ">名分</RUBY>が」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080960a03">
「あの男をいま殺しておく事は、大和の多く
の人々の命を救う事になる。
　そして、あの男をいま殺せるのはわたくし
だけ。あなたにはできない」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0080970b18">
「……姉さん」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080980a03">
「だから、あなたに任せるのはやめ。
　いいこと花枝？」


{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0080990a03">
「姉さんの<RUBY text="・・・">楽しみ</RUBY>を邪魔してはだめよ」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081000b18">
「…………。
　これがほかの人間の台詞だったら、へたな
気遣いするなって言うとこだけど」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081010b18">
「なんも言えない。
　この姉は<RUBY text="・・">本気</RUBY>だ。ただ単に」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081020a03">
「ＹＥＳ」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081030b18">
「『精神状態が普通ではない人』という意味
の単語をわたしが今あんたに向かって言った
と思いなさい」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081040a03">
「あなたに言われるとへこむ単語ねー……」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081050b18">
「父さんの仇討ちまで独り占めする気？」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081060a03">
「妹のものは姉のもの。
　姉のものは姉のもの」


//◆長々と嘆息
{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081070b18">
「…………」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0081080b18">
「獅子吼はついさっき、あんたを迎え撃ちに
出ていった。
　たぶん、ホールに向かったんだと思う」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081090a03">
「あら……そちらから来ましたのに。
　どこで入れ違いになったのかしら」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081100a03">
「よっぽど縁が無いみたいね、あの男とは」


{	SetVolume("@mbgm*", 300, 0, null);
	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0081110a06">
「本当に縁が無ければ幸いだったがな。
　……生憎と、とっくに出会っている」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0081120a03">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"mc04_009.nss"