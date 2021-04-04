//<continuation number="570">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_005.nss_MAIN
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

	$GameName = "mc03_006.nss";

}

scene mc03_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_004.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("白", 10000, "WHITE");

	OnBG(100,"bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0,true);
	SoundPlay("@mbgm18", 0, 1000, true);

	Delete("上背景");
	FadeDelete("白",1500,true);


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050010a00">
「大尉殿。
　あのような事をなされては困ります」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050020a03">
「……お困りに、なる？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050030a00">
「はい」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050040a03">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050050a00">
「御命を無価値に扱われてはなりません。
　今後はどうか、ご自重を願います」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050060a03">
「……無価値」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050070a00">
「はい」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050080a03">
「……わたくしの振舞いは……
　価値のないこと？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050090a00">
「ありません」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050100a03">
「…………」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050110a00">
「ご自重を」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050120a03">
「……逆、だったら……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050130a00">
「は」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050140a03">
「立場が逆だったら、景明さまはどうなさい
ました？
　わたくしを、お見捨てになった？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050150a00">
「いいえ」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050160a03">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050170a00">
「我が力の及ぶ限り、大尉殿をお救いすべく
働いたかと」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050180a03">
「――――」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050190a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　どうも、食い違っていた。

　理解の不充足からくる惑いが大尉の顔貌にある。
　彼女を見る俺も、同じ表情をしていると思われた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050200a03">
「……それは、
　理に合わないのではなくて？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050210a00">
「お言葉ですが、全くの合理と心得ます」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050220a03">
「……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050230a03">
「どうして」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050240a00">
「ご承知の通り、自分は大尉殿の御手で裁か
れるべき者です。
　自分が大尉殿をお救いするならば筋は通り
ます」


//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050250a00">
「しかし逆では通る筋が有りません」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050260a03">
「それは……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050270a03">
「……」


//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050280a03">
「けれど……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050290a00">
「は」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050300a03">
「わたくしは聖人でも、神の御使いでもなく
てよ、景明さま」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050310a00">
「存じております」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050320a03">
「軍人として働き、多くの命を奪いました」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050330a00">
「左様でありましょう」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050340a03">
「軍以外の場所でも。
　殺めた人の数は、景明さまよりも多いかも
しれません」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050350a00">
「あるいは」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050360a03">
「……そんなわたくしが、景明さまに比べて
上等だなんてことがありますかしら？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050370a00">
「上等下等はともかく。
　大尉もまた、罪業深き方とお見受けします」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050380a03">
「ええ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050390a00">
「いずれ、罪の報いを受けられましょう。
　――既に御覚悟の通り」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050400a03">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050410a00">
「しかしそれは、自分などを庇ってのことで
あってはなりません。
　決して」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050420a03">
「なぜ？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050430a00">
「大尉殿は……
　己の手で冥府へ落とした人々が、今ここに
立ち現れたとして」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050440a00">
「彼らの顔を正面から見返す事ができますか」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050450a03">
「ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　事も無げに、香奈枝嬢は即答した。
　首肯して、問いを重ねる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32", 0, 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050460a00">
「無力な老人を殺した事はお有りですか」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050470a03">
「いいえ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050480a00">
「<RUBY text="いたいけ">幼気</RUBY>な子供を殺した事は」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050490a03">
「……いえ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050500a00">
「身体に障害を負い、歩くもままならぬ者を
殺した事は」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050510a03">
「…………」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050520a00">
「有りますまい。
　しかし」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050530a00">
「自分は、全て経験が有ります」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　傲然と、俺は告げた。
　大鳥大尉と湊斗景明の間に在る隔絶を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050540a00">
「ですから――
　宜しいか。大尉」

//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050550a00">
「貴方は武人として相応の死をお迎え下さい。
　自分は卑劣漢として相応の死を遂げます」

//【景明】
<voice name="景明" class="景明" src="voice/mc03/0050560a00">
「間違っても、今後は自分などの為に御命を
危うくされませぬよう。
　このこと確と、お願い致します」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0050570a03">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc03_006.nss"