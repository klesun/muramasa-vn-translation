//<continuation number="360">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_026.nss_MAIN
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
	#bg031_八幡宮境内_01=true;
	#bg005_山中_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_027.nss";

}

scene md01_026.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_025.nss"

//◆八幡宮
//◆ざっざっ。行列
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260010a00">
（来た）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260020a01">
（ええ……）

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260030a00">
（大将領は騎乗のまま乗り込んできたか。
　神官が制止しているようだが……聞き入れ
られまい）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260040a01">
（不敬な参拝もあったものね。
　ところで……あの馬）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260050a00">
（劒冑だな？）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260060a01">
（間違いなく）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260070a00">
（しかも格が高い……）

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260080a01">
（鎌倉初期……
　いえ、平安朝まで遡るかも）

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260090a00">
（挑む時は覚悟した方が良さそうだ）

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260100a01">
（不足のない相手ではあるでしょうね）

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260110a00">
（……良し。行くぞ）

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260120a01">
（ええ）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆源氏山のどこか？　bg005？
//◆署長
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg005_山中_01.jpg");
	StL(1000, @0, @0,"cg/st/st署長_通常_制服.png");
	FadeStL(0,true);
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw署長_冷厳.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260130a11">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260140a11">
（もう少し倍率のいい双眼鏡を用意するべき
だったな。
　まあいい……大まかな様子はわかる）

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260150a11">
「……」

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260160a11">
（上宮の儀式が終わるようだ。
　いよいよか……）

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260170a11">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ちゃっ。わずかな草擦り音
	CreateSE("SE01","se自然_草木_探る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260180a11">
「！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆周囲確認
	DeleteStA(300,true);

	SetFwC("cg/fw/fw署長_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【署長】
<voice name="署長" class="署長" src="voice/md01/0260190a11">
「…………」

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260200a11">
（気のせい……か？）

//【署長】
<voice name="署長" class="署長" src="voice/md01/0260210a11">
（今、人の気配が……）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆八幡宮
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0260220a05">
「その方らが今年の介添か」

{//◆神官偽装中。顔グラ無し、名札
	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260230a00">
「はッ」

{//◆神官偽装中。顔グラ無し、名札
	NwC("cg/fw/nw村正.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260240a01">
「…………」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260250a00">
「畏れながら殿下に申し上げます。
　これより先の立ち入りは大将領殿下<RUBY text="ごいちにん">御一人</RUBY>
のみ許される<RUBY text="しきたり">仕来</RUBY>でありますれば――」

//【景明】
<voice name="景明" class="景明" src="voice/md01/0260260a00">
「御供の方々は、こちらにてお待ち願いたく
存じます」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0260270a05">
「心得ておる。
　例年の事だ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0260280a05">
「さ、<RUBY text="あない">案内</RUBY>せい」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260290a00">
「ははっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆裏参道
//◆※黒画面、あるいは低明度のef001などで代用。
//◆かつ、かつ、かつ。足音ゆっくりめ。反響
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 5000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	CreateSE("SEL01","se人体_足音_歩く_地下_L");
	MusicStart("SEL01",1000,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　裏参道は螺旋を描き、下へ潜ってゆく。

　道幅はさして広いとはいえず、高さも同様だった。
　大将領とその騎馬、神官を装う俺と村正、動くもの
はこれだけであるのにやたらと<RUBY text="かしま">姦</RUBY>しいのは、この<RUBY text="きょうあい">狭隘</RUBY>
な空間で足音が反響するためである。

　もしもこの中で数十人からの人間が一斉に駆け回り
でもしたなら、相当耳に悪いことになりそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw村正.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0260300a01">
「…………」

{	NwC("cg/fw/nw景明.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260310a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村正がさりげなく投げてくる視線を、頬に感じる。
　待っているのだろう。

　俺の決断を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆護氏。出して消す？
	StL(5100, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStL(300,true);
	Wait(500);
	DeleteStA(300,true);

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260320a00">
（強い）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　六波羅総帥を初めて肉眼視しての感想は、ただその
一言に尽きた。

　この男は強いのだ。
　肉体的に。精神的に。<RUBY text="・・・・・・・・・・">ありとあらゆる意味で</RUBY>。

　太い背が強さの厚みを物語っている。

　善性……
　あるいは義性といったものは、見受けられない。

　その強さは傲岸である。
　おそらく、ごくごく単純な<RUBY text="・・">欲望</RUBY>に支えられているの
だろう。

　支配欲の権化か。

　しかし、それをもって彼に大和の統治者たるの資格
無しとは言えない。
　清く正しく道義に生きる者が上に立てば国は治まる
――と信じ込むほど俺も夢見がちではなかった。

　理想のみあって力足らぬ王は、むしろ国を乱す。
　東西の歴史を紐解けば、その種の前例は枚挙に暇が
ない。

　足利護氏は力に満ち溢れている。
　この背は大和全土全国民の命運も、重しとはしない
だろう。

　如何に彼が強欲極まる暴君であろうと――
　その両腕の抱え込む大和が、<RUBY text="・・・・">結果的に</RUBY>守られるので
あれば。

　果たして彼は、統治者として是か、非か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260330a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　六波羅体制下において、それ以前より、国民の負担
が大きく増しているのは確かな事実だ。
　反体制派に対する弾圧も、以前とは比較にならぬ程
露骨であり厳格である。

　が。
　よって六波羅の統治は悪政だ――と決め付けるのは
一概視が過ぎよう。

　情勢というものも併せて評価せねばならない。

　六年前、六波羅は途方もない裏切りを行い、国家を
売り、大戦に幕を引いた。そして大和の政権を得た。
　だがもし、六波羅が裏切らず、連盟軍と本土決戦を
繰り広げていたら？　国土は焦土と化さなかったか？

　六波羅幕府は手本のような軍国主義を敷いており、
国民一人一人の権利は全く軽視されている。
　だがこの軍国主義体制がなかったら？　大陸情勢の
混迷が大和にも波及する可能性はなかったろうか？

　世界的に見て調和の時代とは言い難いこの六年間を、
六波羅は曲がりなりにも平穏に――少なくとも他国と
交戦することだけはなく――乗り切っているのだ。
　過去の体制で同じことができたかはわからない。

　百年後の歴史家は、六波羅の統治を「最善の手法」
として評価するのかもしれなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260340a00">
（……そんな教科書を読みたくはないが……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　六波羅幕府の暴虐を目の当たりしている現代大和人
の多くは、俺と感想を同じくするだろう。
　しかし後世の視点に立てば、つまり客観視に徹すれ
ば、そのような評価もきっと下せるのだ。

　今、足利護氏を抹殺し。
　六波羅体制に終止符を打つ――<k>それが大和にとって
破滅への一途でないとは、誰にも言い得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw景明.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/md01/0260350a00">
（…………）

//【景明】
<voice name="景明" class="景明" src="voice/md01/0260360a00">
（……どうする？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　斬るか。
　斬らぬか。

　足利護氏は、取り除くべき災いの種か。
　銀星号と同列のものか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

}

..//ジャンプ指定
//次ファイル　"md01_027.nss"