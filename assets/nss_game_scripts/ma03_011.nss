//<continuation number="1880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011.nss_MAIN
{


	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute))
	{
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg035_鎌倉サーキット俯瞰a_01=true;
	#bg039_競技場客席a_01=true;
	#bg037_競技場ガレージa_01=true;
	#bg036_競技場通路_01=true;

	#ev113_サーキット貴賓席_a=true;
	#ev101_プロローグ_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_皇路操=true;
	#voice_on_皇路卓=true;

//嶋：フラグ調整【090923】
//	if($ma03_011_routeFlag==true){$ma03_011_routeFlag = false;}
//	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_010.nss"

//◆鎌倉サーキット・俯瞰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110010a00">
「調査方針を説明します」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110020a02">
「はいっ」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110030a03">
「おうっ」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0110040a04">
「お嬢さま。無理に個性を演出すると何だか
とても痛々しいですよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　予備予選終了後、競技場内広場。
　客の大半と敗退したチームが去った頃合を見計らい、
俺達は行動を開始しようとしていた。

　村正が感じる<RUBY text="・・">匂い</RUBY>は依然としてサーキット場周辺に
ある。
　去っていったチームの<RUBY text="クルス">騎体</RUBY>を気に掛ける必要はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110050a00">
「主眼に据える調査対象は、今日のレースに
参加しなかったチーム。
　多くはパドック内の各ガレージで明日の本
予選の為に騎体点検を行っている筈です」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110060a00">
「コースに出て練習騎航を行うチームもある
でしょうが、そちらは村正に任せて下さい。
　我々はレース関係者を装ってガレージ内の
チームに接触を試み、情報収集を行います」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110070a00">
「レース中ほど警戒は厳しくない筈ですので、
殊更に不審な行動を取らねば問題は起きない
でしょう。もし怪しまれた場合は迅速に撤収
して下さい。無理押しは禁物です」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110080a03">
「質問っ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110090a00">
「はい、大尉殿」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110100a03">
「聞き込みの方向性はどのように？
『あなた、銀星号を知りませんか』といった
感じでよろしいのでしょうか」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110110a02">
「捻り無さ過ぎだろ、おい」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110120a00">
「あやしまれては元も子もありません。ひと
まずは当たり障りのない会話で情報を集める
に留めましょう。何気ない雑談の中に意外な
収穫が見つかるというのは良くある話です」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110130a00">
「ただ、それでも一応の方向を示すなら……
　力に飢えている人間を探して下さい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110140a03">
「それはどういう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110150a00">
「銀星号によって寄生体に選ばれる人間の、
言うなれば――傾向です」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想。客席
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg039_競技場客席a_01.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_通常a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110160a00">
「村正、お前は引き続きコントロールタワー
から監視を頼む。
　これからいくつかのチームがコースに出て
来る筈だ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110170a01">
《諒解》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110180a01">
《…………。
　ねぇ、御堂》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110190a00">
「何か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110200a01">
《考えたのだけど。
　今回、銀星号がつくった七つの〝卵〟》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――

//◆ＯＰ、卵を産む銀星号のカット
	CreateTextureEX("絵ＥＶ20",9000, -833,-80, "cg/ev/resize/ev101_プロローグ_cl.jpg");
	Move("絵ＥＶ20", 5000, @-100, @0, DxlAuto, false);
	Fade("絵ＥＶ20",300,1000,AxlAuto,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110210a01">
《それを与えられた武者のうち、三人を私達
は既に見ている。……三人、をね。
　彼らには共通項があった。そう思わない？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110220a00">
「……共通項」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110230a01">
《彼らは<RUBY text="・">力</RUBY>を求めていた。渇望していた。
　他人を屈服させて、自分の望みをかなえる
ために》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110240a01">
《鈴川令法、長坂右京、風魔小太郎……
　皆、そうじゃない？　程度と性質の違いは
あったかもしれないけれど》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110250a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110260a01">
《前回、銀星号が〝卵〟をばら撒いた時には
そんなことはなかった。
　寄生体はただ無作為に選ばれたようにしか
見えなかったし、実際そうだったんでしょう》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110270a01">
《でも今回は明らかに違う。
　おそらくそれは、今回の〝卵〟が寄生体に
私の能力を分け与えるという付加価値を持つ
からよ》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110280a00">
「……折角の力。
　必要としている者にくれてやろう、という
ところか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110290a01">
《ええ。
　寄生体は<RUBY text="・・・・・・">選ばれている</RUBY>》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110300a00">
「ならば――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110310a01">
《力を求めている者を探せばいいのよ。
　この競技場で誰よりも力に飢えている人間
を……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――

//◆復帰
	EfRecoOut1(300);

	Delete("絵回想*");
	Delete("絵ＥＶ20");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @-60, @0,"cg/st/st香奈枝_通常_私服a.png");
	StCR(1000, @60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110320a02">
「力に飢えている人間……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110330a00">
「……尤も、ここはレース場。
　多かれ少なかれ、誰しもがそうした欲求は
持っているようにも思えるのですが」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110340a03">
「ですねぇ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0110350a04">
「それでも異常なほどの執念を燃やしている
御仁がいれば目立ちましょう。
　注意を払ってみる価値は有ると存じます」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110360a00">
「はい。
　では以上のような方針で開始します。効率
化のため、手分けしてあたって下さい」

{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0110370a02">
「はいっ！　頑張ります！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//――――――――――――――――――――――――

//◆一条、去る
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	SetVolume("SE01", 3000, 0, null);
	DeleteStL(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0110380a03">
「じゃあ行きましょうか、ばあや」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0110390a04">
「は。
　まぁ私どもは大体一緒くたでございますし」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝＆さよ、去る
	CreateSE("SE02","se人体_足音_複数歩く01_L");
	MusicStart("SE02",0,1000,0,1000,null,true);

	DeleteStA(300,true);

	SetVolume("SE02", 8000, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110400a00">
「……さて。
　では、俺も行動を開始する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110410a01">
《気をつけなさいね。
　ただでさえ貴方は人を警戒させやすいんだ
から》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110420a00">
「無用の心配だ。
　俺とてそうしようと思えば友好的に接する
くらいの事は造作もない」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガレージ
//◆ＳＥ：カツーン。冷たい足音一つ

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	SetVolume("SE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	CreateSE("SE01a","se人体_足音_歩く06");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01a");
	WaitKey($残時間);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110430a00">
「――チーム・サワダの門倉直哉」

{	NwC("cg/fw/nw門倉直哉.png");}
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110440e280">
「はい？」

{	SoundPlay("@mbgm04",0,1000,true);
	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110450a00">
「四国大会のチャンピオン。
　しかし、全国から猛者が集まるこの大会で
勝つ見込みはあるまいと、専らの下馬評」

{	NwC("cg/fw/nw門倉直哉.png");}
//「な、なんだよいきなり……」
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110460e280">
「なんだよいきなり……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110470a00">
「力が欲しくはありませんか？」

{	NwC("cg/fw/nw門倉直哉.png");}
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110480e280">
「え……えぇ？
　あんた、一体……」

{//◆景明、笑う。ニヤ。超恐い感じ。
	FwC("cg/fw/fw景明_笑顔c.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110490a00">
「欲しいなら、差し上げる……
　そう言われたら、貴方はどうします？」

{	NwC("cg/fw/nw門倉直哉.png");}
//【ｅｔｃ／門倉】
<voice name="ｅｔｃ／門倉" class="その他男声" src="voice/ma03/0110500e280">
「……ひ、ひっ、ひぃーーーーっ!!
　悪魔が、悪魔がオレを誘いにーーーー!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたばたばた。
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1250,null,true);
	WaitKey(2000);
	SetVolume("SE*", 1500, 0, null);

//◆通路
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("SE*", null);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110510a00">
「果たして何が悪かったのだろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110520a01">
《何もかもよ》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110530a00">
「他の三人は大丈夫だろうか……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0110540a01">
《貴方よりはずっとね》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
//◆ガレージ
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	SetVolume("@mbgm*", 1500, 0, null);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitPlay("@mbgm*", null);
	Wait(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　手法を改めることにして、調査を再開。
　手近なガレージを覗いてみると、雑誌や街角でしば
しば見かけるシンプルなロゴがまず目についた。

　田村甲業を意味するデザイン。
　戦前からの名チーム、タムラワークスのガレージの
ようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwスタッフ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110550e010">
「どなた？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110560a00">
「失礼。
　敵情視察といったところです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　出入口近くにいたスタッフが声を掛けてくるのへ、
言葉少なに答える。
　嘘をつく者はとかく多弁なもの。こういう際は多少
素っ気ないくらいの方が要らぬ疑念を招かずに済む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwスタッフ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110570e010">
「あぁ、ポリスチームの人？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110580a00">
「――は。そうです」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110590a00">
「自分が参加するのは今回が初めてなのです
が……一目でわかってしまいますか」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110600e010">
「そりゃね。あなたみたいな強面で、参加者
っていったら、ポリスチームくらいしかない
でしょ？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110610a00">
「…………成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　いささか忸怩とさせる部分を含む説明であったが、
胸中にはひとつ頷いておく。
　彼の言は良いアドバイスになった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110620a00">
（そうか。
　そういうことにして貰えばいい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　今日のうちにも手を打っておこう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwスタッフ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110630e010">
「ホットボルトの調子はどうです？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110640a00">
「良好です。
　やはりあの騎体は素晴らしい」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110650a00">
「シャフト式<RUBY text="４ＷＤ">四翼駆動</RUBY>の先駆けでありながら、
あの完成度は見事というほかありません。
　<RUBY text="メンテ">整備</RUBY>に手を焼かされるのが難点ですが」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110660e010">
「よく言われます。あの時点ではとてもそこ
まで手が回らなかったみたいで。
　でも、警察さんは大事に使ってくださって、
うちとしても嬉しいですよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　好意的な笑みを見せるスタッフ。
　会話が聴こえているだろう周囲の人間も、部外者で
ある俺を嫌がる気配は覗かせなかった。

　ポリスチームの使うホットボルトはタムラの作品だ。
　それだけに、敵とは言ってもなかばは身内のような
意識が働くのか。情報を仕入れたいこちらとしては、
好都合な事だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110670a00">
「今日はもう<RUBY text="はし">騎航</RUBY>らないのですか」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110680e010">
「ええ。練習は朝のうちに済ませました。
　……本番まで騎体を見せたくないんですよ。
今回は」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110690a00">
「つまり、新型ですか」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110700e010">
「口チャックで」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110710a00">
「心得ました」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110720e010">
「ま、明日を楽しみにしていてください」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　含み笑うスタッフに頷き、視線を巡らす。
　彼はサブメカニックのようだ。それはそれで面白い
話が聞けそうだが――いま俺が話を聞かねばならない
人物は他にいる。

　……見当たらない。<k>
　
　不在なのかと思いつつもう一度首を巡らせて、よう
やく発見した。

　それほど目当ての人物は小柄だった。

　いかにも力仕事向きな周囲のスタッフ達より二回り、
三回りも小さい。
　チームの中核ともいうべき立場とは対照的だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110730a00">
「……あの人は」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110740e010">
「ええ、うちのトップレーサーです。
　ご存知でしょう？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110750a00">
「勿論。雑誌で幾度も。
　では、少し挨拶をしてきましょうか」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0110760e010">
「どうぞ。
　あ、ナーバスな子なんで、あまり恐がらせ
ないであげてくださいね」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110770a00">
「……はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　悪意の無さがかえって耳に痛い言葉を聞きながら、
その方角へ足を向ける。
　トップレーサーは壁際に座り、何かの手作業をして
いるようだった。

　小さな金属を磨いている。<RUBY text="クルス">劔冑</RUBY>の<RUBY text="パーツ">部品</RUBY>だろう。
　その手付きはひどく丁寧だった。そこにあるものが
宝石であるかのように繰り返し繰り返し磨き、状態を
確かめてなお満足せず、更に磨く。

　自分の愛騎を土足で踏むような騎手はいない。
　それにしても、タムラのレーサーが劔冑へ注ぐ愛情
は一頭地を抜けていた。そもそもがそういう性格なの
かもしれない。

　集中して、俺の接近にも気付いていないようだ。
　驚かせて手元を狂わせでもしてはばつの悪いことに
なる。俺は慎重に声を掛けた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110780a00">
「……失礼」

{	#voice_on_皇路操=true;
	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110790b42">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　ゆっくりと、手作業に没頭していた頭が上を向く。
　良く知っている顔だ。こちらが、一方的に。姓名も
当然記憶している。

　双眸が俺を捉えた。
　その希少な職種に特有の、握力を感じるまでに精確
な視線。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110800a00">
「<RUBY text="おうじみさお">皇路操</RUBY>さん。
　初めて御目に掛かります」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110810b42">
「……あなたは？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110820a00">
「ポリスチームの関係者、湊斗景明です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　微妙な表現を用いる。
　このように言えば、全くの嘘とはならない。

　そんなせせこましい小細工を咄嗟に使ってしまった
のは、彼女の眼がこちらの心の奥底まで覗いているか
のような錯覚を抱いたからだった。
　深い瞳をしている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110830a00">
「宜しければどうかお見知り置き下さい」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110840b42">
「……はい」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110850a00">
「お噂はかねがね伺っております。
　昨年は各地のレースに参戦し、通算一〇勝
を達成されたとか」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110860b42">
「……ええ……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110870a00">
「御愛騎<RUBY text="サンダーボルト">雷箭</RUBY>のポテンシャルもあるでしょう
が、やはり記録樹立の肝は貴方のテクニック
――中でも際立つのはインの取り方」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110880b42">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110890a00">
「最短のルート選択と最少の減速幅。
　陳腐な表現で恐縮しますが、芸術的としか
言いようが見つかりません」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110900b42">
「……ありがとうございます……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110910a00">
「……そういえばこの夏、練習中に接触事故
で負傷されたと聞きましたが。
　大事はありませんでしたか」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110920b42">
「……大丈夫です……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110930a00">
「……そうですか。
　それは何よりの事…………」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110940b42">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　こちらが口を噤むと、もういいの？と言いたげな色
を瞳に浮かべて、彼女――皇路操は作業に戻った。
　俺の存在を気に掛けている様子はない。<RUBY text="ナーバス">繊細</RUBY>という
割りに――<k>いや、これも一つの繊細さの表れか。

　取り付く島がなかった。
　有名人ならばさもありなんと思わせるような、一般
人など洟も引っ掛けないという態度とはまた違う。

　別世界、という表現が一番適切だと思われた。
　彼女と俺、いやほかの人間すべては、異なる世界に
住んでいるのだと。

　鏡の向こうの世界とこの世界との間に何かの間違い
で通信回線が開いたから、対話ができているだけなの
だと。
　そんな風に思わせるものがあった。

　別世界の住人。
　<RUBY text="レディ・ザ・ソニック">音速領域の姫</RUBY>。

　言葉が通じても心が通じ合わないのは、仕方がない
のかもしれない。

　……とはいえどうしたものか。
〝卵〟の寄生先に選ばれた人間がもしこのガレージの
中にいるとすれば、それは劔冑を操る者、つまり彼女
以外にいない。

　世界が違うから駄目だ、とあっさり背を向けられる
ものではなかった。
　もう少し踏み込んで話を聞かねばならない。

　……露骨に尋ねてしまうのが、一番簡単ではあるの
だが。
　先刻、既にそれで失敗している。

　当たり障りのない会話で情報を引き出さなくてはな
らない……。
　忙しげに立ち働くスタッフらの姿を眺めつつ、話の
種を探す。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110950a00">
「……このサーキットは設備が整っています
ね。完全に舗装されたコースは勿論、充分な
スペースが確保されているピット、パドック、
選手用宿舎に食事処、更には公園まである」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110960a00">
「自分が学生の頃には考えられなかったこと
です。
　あの時分からレースが好きでしばしば観戦
しておりましたが、当時の競技場は実に<RUBY text="シンプル">単純</RUBY>」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110970a00">
「<RUBY text="スタンド">観客席</RUBY>など無くて当然、芝生の上に<RUBY text="ござ">茣蓙</RUBY>を
敷いての見物が一般的でした。
　ガレージなどもありませんでしたね。参加
チームは自前でテントを建てていたものです」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0110980b42">
「…………」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0110990a00">
「それでもレースは素晴らしかった」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111000a00">
「中山昇、亜久田進次郎、広中兄弟……そう、
それに貴方の父君、皇路卓。
　彼らは悪環境を物ともせず、見事に<RUBY text="かけ">騎航</RUBY>た」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111010b42">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111020a00">
「近在の競技場に皇路卓がやって来た時の事
はよく覚えています。
　その時の大会はごく小さなものでしたが、
世界挑戦間近の英雄は本気の<RUBY text="はしり">騎航</RUBY>を見せた」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111030a00">
「彼が常にそうであったように。
　ほかのありとあらゆる選手を突き放し、最
先端を孤独に駆けるあの姿は今でも目蓋の裏
に焼きついて離れません」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111040a00">
「思い出すたび、あの時の興奮が甦って心臓
の鼓動が早まります。
　同時に無念も湧きます。戦争さえ無かった
ら、と……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111050a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　言葉を切る。
　自分が単なる独白をしていることに気付いたからだ。

　反応する声は全くない。
　
　……何をしているのだ、俺は。

　鼻の付け根を指先でつまみ、軽く眼を閉ざす。
　気分を切り替える。

　――単刀直入に訊いてしまおうか。
　埒が明かないのだから、仕方がない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0324]
　そう思って、改めて皇路操へ目を向ける。
　そして驚いた。

　彼女はこちらを見ていた。
　その瞳に<RUBY text="たゆた">揺蕩</RUBY>う色彩は、先程までとは違う。

　別の世界ではなく、同じ世界の人間として俺の姿を
捉えていた。
　
　――誤解に気付く。

　彼女は話を<RUBY text="・・・・・・・">聞いていたのだ</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw操_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【操】
<voice name="操" class="操" src="voice/ma03/0111060b42">
「続けてください。
　……よかったら……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111070a00">
「…………はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　瞳に引き込まれかける己を連れ戻し、頷く。
　戸惑いは肝臓の辺りへ押し込めておいて、俺は再び
話し始めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111080a00">
「皇路卓の騎航技術は当時の世界の一線級と
比べてもそう遜色なかったものと思います。
　殊にあのコーナーリング……」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111090a00">
「草間を抜ける蛇にも似た独特の旋回技法は
大和の騎手の中では異彩を放っていました。
　あの技術を模倣できた者は嘗ても今も存在
しません」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111100a00">
「……実娘の貴方を除いては。
　貴方の騎航は時を追う毎に、父君のそれへ
近付いてゆくように自分には思われます」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111110b42">
「……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111120a00">
「あれはやはり、父君に手ずから教えられた
ものなのですか？」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111130b42">
「……うん」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111140a00">
「そうですか。
　嬉しく思います。皇路卓は夢を断ち切られ
ましたが、貴方がその夢を受け継ぐならば、
無念も報われましょう」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111150b42">
「……そう思う？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111160a00">
「はい」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111170b42">
「……うん。
　わたしも、そう思ってる」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111180a00">
「世界を目指されますか」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111190b42">
「……うん。
　まずは国内で勝って……それから」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111200a00">
「では、この大会は重要ですね」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111210b42">
「……勝ちます。
　必ず……最初の全国王者になる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　速度の世界の頂点を目指す少女が、小さな拳を握り
締める。
　そこに込められた力の強さは外見とは裏腹だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111220a00">
（…………）

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111230a00">
（力を求める理由はある、か……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　……そんな事を考えている自分に少し、嫌気が差す。
　彼女はただ、孝心から言っているだけなのに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111240a00">
「強敵と思われる相手はいますか？」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111250b42">
「……やっぱり、翔京かな。
　それに、ヨコタン……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　翔京兵商はタムラにとって長年の宿敵。
　ヨコタン――横森鍛造は国内評価こそタムラと翔京
に劣るが、本場欧州でアジアへの伝統的偏見を覆して
声価を確立した点で、他社とは一線を画している。

　どちらも最強と言い得る騎体を用意する筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111260a00">
「確かに、その両者でしょうね。
　特に翔京はおそらく、噂だけは聞いている
アプティマ系列の最終完成型を投入してくる
でしょうから……」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111270b42">
「…………ごめんなさい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111280a00">
「はい？」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111290b42">
「……ポリスチームは……その……
　………わたしはホットボルト、好きだから」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111300a00">
「……ああ、いえ。
　有難うございます。自分も好きです」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　不器用な気の遣い方だった。
　だが、不快は全く覚えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111310a00">
「仕方がありません。
　レースに勝つためには金が必要です。いか
に優れたスタッフがいても、資金が不足して
いてはどうにもならない部分があります」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111320b42">
「……うん。
　お金のことは、とても大変」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111330a00">
「ポリスチームの運営は局内外の有志の寄付
に頼っています。潤沢な資金は望めません。
　警察の予算から費用を取れれば少しは楽に
なるのでしょうが……まさか、ですし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　そんなことをすれば暴動が起きかねない。
　警察予算とは即ち国民の血税なのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");


//嶋：修正（使う）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111340a00">
「今回は貴方を応援させて頂きます。
　同じタムラの劔冑を扱う者として」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111350b42">
「……ありがとう」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111360a00">
「先程、スタッフの方から伺いました。
　タムラも新型騎を投入するそうですね」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111370b42">
「……うん。最新型。
　タムラの技術を、全部集めた……結晶」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111380a00">
「興味をそそられます。
　公表は明日とのことですから、詮索は控え
ますが――」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111390b42">
「……これ……」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111400a00">
「はっ？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　ずっと手にしていた物体を、彼女が差し出す。
　金属の塊――駆動翼用のベアリングか。

　……成程。
　考えてみれば当然。彼女は明日の本予選で使用する
虎の子の整備をしているところだったのだ。

　劔冑の整備は<RUBY text="メカニック">技師</RUBY>の仕事だが、何もかも専門知識が
なくてはできない職人芸というわけでもない。
　簡単な作業は素人でも手伝える。<RUBY text="レーサー">騎手</RUBY>がやっていけ
ないという法はない。

　そういう作業をするかどうかはレーサーの性格次第。
全くしない、それが騎手の矜持、という者も多い。
　彼女は<RUBY text="・・">する</RUBY>方なのだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111410a00">
「これが新型騎ですか。
　道理で、大切に扱っていると思いました」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111420b42">
「……うん。大切。
　わたしの命よりも……大切」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111430a00">
「……そうですか。
　きっと、大変な労力を費やして造られたの
でしょうね」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111440b42">
「……うん。
　これは、お父さんの血と汗」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111450a00">
「……？」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111460b42">
「身体の一部。
　だから……大切にするの」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111470a00">
「失礼。
　まさか新型騎というのは、父君――皇路卓
氏が設計されたものなのですか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　皇路卓は引退以降、一度たりともマスコミの前には
姿を見せていない。
　娘のコーチをしているという噂はあったが――それ
は事実らしい――娘のレースに現れることはなかった。

　彼は今、何処で何をしているのか。憶測は様々ある。
　しかしその中に、タムラで騎体開発をしているなど
というものは無かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【操】
<voice name="操" class="操" src="voice/ma03/0111480b42">
「……お父さんに、会いたい？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111490a00">
「え……ええ。
　ここにいらっしゃるのですか？」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111500b42">
「……うん。
　ちょっと、待ってて」

//【操】
<voice name="操" class="操" src="voice/ma03/0111510b42">
「……お父さん……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　少女が声を張り上げる。
　しかしそれは、ガレージの喧騒の只中では到底通ら
ない。

　だが、付近にいたスタッフが気を利かせた。
　奥に走っていき、そこにいた誰かに対してこちらを
示して見せる。

　――痩せた姿が、近付いてきた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw皇路_通常a.png");

	#voice_on_皇路卓=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111520b24">
「どうした？　操」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111530b42">
「……この人……ポリスチームの、ひと。
　昔、お父さんのレースを見たことがあるん
だって」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111540b24">
「ああ、それは――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　線の細い顔がこちらを向く。
　一見、その容貌は記憶を刺激しなかった。余りにも
違う。嘗ての大和最強騎手皇路卓は眼鏡などかけてい
なかったし、このように柔和な表情もしていなかった。

　だが、無礼一歩手前までよくよく見て、思い直す。
　眼鏡を外し、時間を逆行させれば確かにあの騎手は
ここにいる。表情は――過去にも雑誌記事で読んだ事
はあった。私生活では別人のように温和だと。

　柔弱とさえ感じる微笑の中に、敵手の内懐へ獰猛に
喰らいつく餓狼の面影を見て取ることはできない。
　それでも間違いなく、彼は皇路卓だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111550a00">
「湊斗景明と申します。
　お会いできて光栄です。嘗て、貴方に夢中
で声援を送った人間の一人として」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111560b24">
「いや、恐縮です。
　皇路卓です――しかしどうか、僕がここに
いることはご内密に」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111570a00">
「と言われますと……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111580b24">
「もう表舞台には立たないと決めていまして。
　自分なりに、『皇路卓』には決着をつけて
いるんですよ。それをまた掘り返されるのも、
ちょっとね……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111590a00">
「……成程」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　数瞬かけて、俺は彼の言わんとするところを察した。
　挫折した皇路卓、娘と共に復活――などと無責任に
囃されるのは嫌だということか。

　その気持ちはわかるような気がする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111600a00">
「申し訳ありません。
　そういう事なら、自分のような者もご不快
でしょう」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111610b24">
「あ、いや、そういう意味で言ったんでは。
　こちらこそ申し訳ない。しまった、皮肉の
ようなことを言ってしまいましたね」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111620b24">
「あなたのような方とお会いするのは嬉しい
んですよ。昔の自分がプロとして、お客さん
を喜ばせてあげられていたと知ることが、不
愉快なわけはありません」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111630b24">
「……くすぐったくもありますけどね。
　嫌ではないです、決して」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111640a00">
「そうですか。
　なら、良かった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　本心から言うことができた。
　彼の言葉は嘘ではないとわかったからだ。

　皇路操は座ったまま、こちらを見上げている。
　その顔はどこか誇らしげだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111650a00">
「しかし、驚きました。
　貴方が開発側の立場で<RUBY text="アーマーレース">装甲競技</RUBY>に携わって
おられたとは、夢だに」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111660b24">
「ああ、操に聞きましたか。
　ええ。いま言った事と矛盾するみたいです
が、やっぱり世界の夢は諦められなくて……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111670a00">
「無理からぬ事と思います。
　貴方は世界へ指先をかけておられた。何事
もなければ、そのまま登っていたでしょう」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111680a00">
「戦争さえなければ……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111690b24">
「……ええ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　曖昧な表情で頷く。
　その時、彼の顔面を駆け巡った感情の渦はあまりに
複雑だった。

　――そう。戦争。
　彼は世界の夢を戦争に奪われていた。

　皇路卓が国内制覇を遂げ、いざ欧州へ乗り出そうと
した、まさにその年。
　大戦は勃発したのだ。

　……六年前、終戦を迎えた時には既に、彼の肉体の
全盛期は遠い彼方へ過ぎ去っていた。
　自分の努力や才能とは全く関係ない処で潰えた夢に、
彼がどれほどの痛憤を抱いたか。察するに余りある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111700a00">
「失礼。
　無神経な事を口にしました」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111710b24">
「ああ、いや。お気になさらず。
　済んだことですし。気持ちの整理はついて
いますよ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　……今度のそれは、嘘だった。
　そう見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111720a00">
「……」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111730b24">
「それに、僕の代わりに娘が飛んでくれます
からね……。
　僕の開発した騎体で」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111740a00">
「俄かには信じ難い思いです。
　騎手を引退後、一から勉強を始められたの
ですか？」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111750b24">
「ハハ、それはさすがに。
　僕は元々メカの方だったんですよ。試作品
のテストをするうちに<RUBY text="とびかた">騎航法</RUBY>を覚えて、いつ
の間にかそちらが本業に……という運びで」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111760a00">
「そうでしたか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　初めて知る事実だ。
　いや、昔そんな話を小耳に挟んだことはある、か？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111770b24">
「あなたが言った通り、僕は一度騎手として
世界に指をかけて、そして転げ落ちました。
　しかし今、戻って来たんですよ。かつての
場所へ。今度は開発者として」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111780a00">
「タムラの技術の結晶とか」

{	FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111790b24">
「そんなことを言ったのか？　操」

{	FwC("cg/fw/fw操_通常b.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111800b42">
「……うん。
　だって……そうだもの」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111810b24">
「山崎さんが聞いたら怒るぞ。
　あれの開発ではだいぶ対立したからな」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0111820b42">
「……でも」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111830a00">
「相当な作品を仕上げられたようですね」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111840b24">
「どうでしょう？
　タムラ始まって以来の駄作になるかもしれ
ません。その可能性はあります。すでにそう
声高に言っている者も社内にはいますよ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111850a00">
「貴方自身は？」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111860b24">
「……さて。
　明日の一戦を御覧あれ、というところです
かね」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0111870a00">
「……自信は充分、と」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0111880b24">
「はっはっはっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　はぐらかすように笑う皇路氏。
　しかしその笑いの中に、俺の言葉を否定するような
響きは込められていなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆アナザー好感度＋
//嶋：フラグ調整【090923】
//$Another_Flag = $Another_Flag++;
//	$ma03_011_routeFlag = true;
//	$Others_Flag++;

//	judgment_of_count();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　――さて。
　そろそろ頃合いだろうか。

　あまり長居しても迷惑になりそうだ。
　それに、一条や大鳥大尉の様子も気になる。

　彼女らを探しに行くべきか……それとも。
　どうする？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


//◆選択：一条の様子を見に行く／香奈枝の様子を見に行く／この場に留まる


..//ジャンプ指定
//◆この場に留まる　"ma03_011a.nss"
//◆一条の様子を見に行く　"ma03_011b.nss"
//◆香奈枝の様子を見に行く　"ma03_011c.nss"


//★選択肢シーン
scene ma03_011.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm16",0,1000,true);

	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice03("この場に留まる","一条の様子を見に行く","香奈枝の様子を見に行く");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA03();
//この場に留まる　"ma03_011a.nss"
				$GameName = "ma03_011a.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//一条の様子を見に行く　"ma03_011b.nss"
				$GameName = "ma03_011b.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//香奈枝の様子を見に行く　"ma03_011c.nss"
				$GameName = "ma03_011c.nss";
		}
	}
}