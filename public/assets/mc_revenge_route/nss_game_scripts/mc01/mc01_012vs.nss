//<continuation number="140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_012vs.nss_MAIN
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

	$GameName = "mc01_013.nss";

	CP_AllDelete();

}

scene mc01_012vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_011vsaba.nss"
//前ファイル　"mc01_011vsabb.nss"

//◆合流
	PrintBG("上背景", 30000);
	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Delete("上背景");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0010a01">
《……で、結局……
　今のはいったい何だったの？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0020a00">
「高速徹甲弾だ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0030a01">
《こーそくてっこーだん？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演徹甲弾", 18000, -360, -460, "cg/ev/resize/ev922_ガッタイダーボーディホーン準備_al.jpg");
	SetTone("絵演徹甲弾", Monochrome);
	Fade("絵演徹甲弾", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="ＡＤＨＶＡＰ">対竜騎兵用高速徹甲弾</RUBY>。

　タングステン製の弾芯を軽合金の外殻で包む二重の
構造によって、高い貫通力を得る砲弾である。
　着弾の瞬間に柔らかい外殻が潰れ、鋭い弾芯が突出
して甲鉄を貫く仕組みになっている。

　対竜騎兵用のものは重量を極めて軽くされている為
初速が非常に高く、近距離では武者の反射神経を以て
しても回避が難しい。
　距離が開くと、弾速は大きく落ちるのだが。

　軍事識者の間では最も実用的に完成された対竜騎兵
用火器だと評価されている。
　惜しむらくは――世界中の武者にとっては幸いにも
――材料のタングステンが貴重なため量産ができない。

　もし量産が可能だったなら……将来的にそうなった
なら、戦場の様相は大きく変わるに違いなかった。
　それほどの兵器だ。

　こんなものまで撃ち放ってきたとなれば、物好きな
武者が物好きにも襲ってきたなどという可能性は最早
万が一にも有り得ない。
　敵は歴とした組織に属する者である。

　それも高い技術力と経済力を兼ね備える――つまり
は大規模な。
　
　六波羅か。ＧＨＱか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演徹甲弾", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
　どちらであるにしても、親王を見舞うという危難に
関わるものとみて間違いはなかろう。
　俺が援護に向かう事を見越して、足止めに放たれた
のか。

　となれば尚更、ここで猶予は許されない。
　
　だがそう思う反面、俺の焦燥は幾分か治まっていた。

　今の一弾が脳天へ氷水を浴びせる効果をもたらして
くれたのか。
　精神に冷静さが戻っている。

　この一戦を、ふと顧みられる程度には。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0040a00">
「……どうも……奇妙だ。
　いや元より、見るからに奇妙なのだが」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0050a00">
「何処がどう、というのではなく……
　あの武者の戦い方は<RUBY text="・・・・">おかしい</RUBY>気がする」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　敵の挙措から匂う、妙な素人臭さのためか。
　それもあろう――とは思う。

　だが、その一言では片付け切れないような。
　別の要素が、まだ……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0060a01">
《それはきっと――
　熱量のことね》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0070a00">
「何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　問いを向けはしたものの、俺は返答など期待してい
なかった。
　しかし村正にとっては呼び水だったらしい。

　自分自身最確認するように、推測を話し出す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0080a01">
《おかしいのよ。どう考えてみても。
　私の見立て違いでないなら――あの武者は
<RUBY text="・・・・・・・・・・・">全速力で突っ込んできて</RUBY>、<RUBY text="・・・・">そのまま</RUBY>、<RUBY text="・・・">全力で</RUBY>
<RUBY text="・・・・・">殴ってくる</RUBY>》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0090a01">
《熱量が十あるとして、それを合当理の稼動
と筋力増強に五ずつ分配して<RUBY text="・・・">いない</RUBY>の。
　どちらも十なの。……そんなこと、絶対に
有り得ないのに》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 4000, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_a.jpg");
	Fade("絵演", 1500, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　村正の言う事を理解するのに、若干の時間を要した。

　通常、武者は太刀打に臨む時、間合に入る寸前まで
は合当理（つまりは騎航力）に熱量を費やし、間合に
入ったら即座、甲鉄（身体強化）に熱量を注ぐ。
　この絶妙な見切りも武者の技量の一つである。

　村正の表現を借りれば、斬り合うまでは合当理に十、
斬り合う時は合当理の分を零にして、筋力強化に十の
熱量を注ぐという事だ。
　これは太刀打における鉄則であり、まず例外はない。

　見切りの手間を厭って騎航と甲鉄に五ずつ分配した
まま漫然と戦うような武者は、決して太刀打の勝利を
得られないからだ。

　無論、有利不利を無視し、できるできないを問うの
なら――そうした熱量の使い方は、<RUBY text="・・・">できる</RUBY>。やろうと
思えば誰にでも。
　だが村正の云う敵の奇妙さは、そういう事ではない。

　どちらも十。
　合当理稼動も身体強化も全力で――全速力のままに
最大筋力を駆使して襲い来る。

　敵騎の異様な<RUBY text="パワー">勢威</RUBY>はそこに起因するものだったのか。
　
　しかし、有り得ない。

　分量でいえば、十の力を持つ者も八の力を持つ者も
いる。個人差はまちまちだ。
　通常の人間の倍の熱量を有する武者とて、この世の
何処かにはいるだろう。

　だが比率でいえば、どんな者も<RUBY text="・・">十割</RUBY>の力しか有して
いないのだ。平均値の二十割の力を持つ人間がいたと
しても、それは本人にとっては十割である。
　それはそういうものだ。当然、そうなのだ。

　その常識を覆している。
　<RUBY text="・・・・・・・・・">二〇〇％の力を使う</RUBY>という反則を、対峙する敵騎は
犯している。

　少なくとも村正はそう云う。
　
　……………………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演*", 500, false);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/012vs0110a00">
「奇矯な言動と兼ね合わせれば、何か薬物を
用いているとも考えられるが」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0120a01">
《そうね。
　熱量そのものも何だか異常だし……それは
有りそう》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/012vs0130a01">
《でも――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　それだけではやはり、説明がつかないか。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 125, 125, null, true);
	Move("絵演合体", 300, @0, @-30, DxlAuto, false);
	Fade("絵演合体", 300, 1000, null, true);

	SetFwR("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/012vs0140b33">
《知ってるぜーー！
　おまえの好きな物は母親と死体だあーー!!》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　だが、謎の答えを出す暇はなく。
　悪魔の騎体はまたしても、颶風を友とし襲い来る。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆前半戦終了
	ClearWaitAll(2000, 2000);


..//ジャンプ指定
//次ファイル　"mc01_013.nss"

}


