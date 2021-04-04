//<continuation number="2110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_008.nss_MAIN
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

//	$Kanae_Dead = true;
//	$Ichizyou_Dead = true;

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else if($Kanae_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}else{
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	}

	$PreGameName = $GameName;

	$GameName = "ma04_009.nss";

}

scene ma04_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　江ノ島の土を踏んだ時には既に夜も深更を回りかけ
ていた。小船を調達するのに手間取った事、船の扱い
に慣れていなかった事、などがその理由だ。
　明け方までもう数刻もないだろう。

　ひとまず今日のところは、様子見に留めておくほか
ないようだ。
　島を一巡りする余裕はおろか、幕府の研究所を観察
する時間もありそうにない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}


..//分岐
//◆分岐。一条、香奈枝共に生存なら０７Ａ、香奈枝死亡なら０７Ｂ、一条死亡なら０７Ｃ
scene ma04_008.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――
.//●０７Ａ

	StL(1000, @-60, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080010a03">
「手分けしてあたります？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080020a00">
「やめておきましょう。
　効率をいえばその方が望ましいのは確かで
すが、夜明けまでには撤収せねばならぬ以上、
残り時間はせいぜいがあと一、二時間」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080030a00">
「これではどのみちさしたる成果は期待でき
ません。また警邏の武者、存在不確定ながら
〝怪物〟等の危険と遭遇した場合に対処可能
な者が自分のみという点も、問題となります」

{	StCL(1000, @60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStCL(300,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080040a04">
「左様でございますねぇ……」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080050a02">
「……すみません。
　戦えればこういう所で足を引っ張らなくて
済むのに」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080060a00">
「心得違いをするな。
　戦闘は元より俺の役割だ。お前や大尉殿に
期待するのは捜査の面における協力であって、
それ以外の何かではない」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080070a00">
「その期待には充分に応えられている。
　お前が気に病むことは何もない」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080080a02">
「……はい」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080090a02">
「…………でも、あたしは…………
　もっと役に立ちたいです…………」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080100a02">
「もっと……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080110a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　かぼそい呟きは、聞かなかったことにしておく。
　その方が良いだろうと、思ったからだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080120a03">
「ふふふ聞きましたよ一条さん！」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080130a04">
「駄目だ空気読めてねーよこの人」

{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080140a03">
「つまりこう仰るのですね！
　もっと身体を張って、景明さまにご奉仕が
したいと！　まあなんて大胆な」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080150a02">
「誰がそんなエロいこと言ったか！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080160a03">
「あら？　あらあら？　エロいだなんてあら
そんな。
　一体なにがエロかったのかしら。どういう
解釈をなさったの？　教えてくださいなっ♪」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080170a00">
「行動を開始します」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080180a02">
「はい」

{	Move("@StR*", 200, @30, @0, DxlAuto, false);
	DeleteStR(200,false);
	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080190a04">
「参りましょう」

{	Move("@StML*", 200, @-30, @0, DxlAuto, false);
	DeleteStCL(300,false);
	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080200a03">
「……最近のわたくし、なんかやたら粗末に
されていませんかしら……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080210a04">
「うるさいですよお嬢さま」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆島・森林
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　正直なところ、今回の調査には何の進展も期待して
いなかった。
　雰囲気を掴めれば、明日以降の捜査を円滑に進める
のに役立とう。その程度の腹だ。

　しかし。
　島の異常の、少なくともその一端は、ものの数分で
俺たちの前に姿を現していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080220a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080230a03">
「……」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080240a02">
「……あの。
　湊斗さん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080250a00">
「どうした」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080260a02">
「何か……変じゃありませんか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080270a00">
「とは」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080280a02">
「……どう言えばいいんでしょう」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080290a02">
「…………」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080300a02">
「ビニールハウスの中を歩いてるみたい……
な？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080310a00">
「適切な評だと思う」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080320a04">
「まことに」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080330a02">
「……どういうことですか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080340a03">
「動物がいませんの」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080350a02">
「……あっ」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080360a02">
「そうか……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080370a00">
「元々、野生動物が人間のような鈍い相手の
前にそう姿を見せるものではないが。
　それにしても、気配さえ全くないとなれば
これは異常」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080380a04">
「ビニールハウスとは上手い表現でございま
したな。まるで動物という動物が駆除されて
しまったかのようで……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080390a03">
「上陸した辺りは、そのようなことありませ
んでしたのに。
　むしろ獣も虫も豊富にいたかと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080400a00">
「海にも魚が多く見られました。情報通り。
　しかし一方、この辺りはあたかも死の世界」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080410a02">
「植物は普通なのに、なんで……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080420a03">
「いいえ。
　木々の様子も、上陸地点とは異なってきて
います」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080430a04">
「なんと、お嬢さま？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080440a03">
「月明りだけでは分かり辛いでしょうけれど。
　……枯れています。進むにつれて少しずつ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080450a00">
「……入り江の辺りでは？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080460a03">
「よく生い茂っていましたね。
　時節を思えば、おかしなほど……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080470a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　生物の成長が異様に促進された地域と、
　反して生命の枯渇した地域。

　――何なのか。
　この<RUBY text="バランス">均衡</RUBY>の無さは、一体。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆島・荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　大鳥大尉の識別は誤っていなかった。

　今、目前に広がる光景。
　枯渇の根源を求めて至ったものが、これだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);


	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080480a00">
「……何たる」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080490a02">
「…………」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080500a03">
「江ノ島といえば豊かな自然が売り物でした
のに」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080510a04">
「これでは……
　見る影もございませんねぇ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


...//以下のテキストは各ルート共通
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　枯れ果てている。
　何もかも。

　コンクリートの隙間にさえ根を張るであろう雑草が、
ここでは黄色く惨めに変色している。
　虫などは影も形もない。いわんや他の動物をや。

　土までもが、枯れていた。
　指先で摘み取ったそれがたちまちぼろぼろと崩れ、
砂となって地面へ還る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080520a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080530a03">
「幕府はここで何をやっているのでしょう？」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080540a02">
「ロクなことじゃねえだろ。
　奴らのやることにロクなことなんていっこ
もなかったが、こいつはとびっきりロクでも
なさそうだ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080550a04">
「遺憾ながら全く同感でございます。
　実にくだらなく……迷惑な何事かが行われ
ている様子」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　後方の呟きを背に聞きながら、少し方向の違う事を
考える。
　幕府――幕府のみが引き起こした事であるなら良い。
いや、良くは無いが……。

　問題は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080560a00">
（どう思う？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　村正に問う。
　今は陰に潜んで辺りを窺っている筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080570a01">
《そうね……。
　はっきりしたことは、まだなにも言えない
けれど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080580a00">
（ああ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080590a01">
《<RUBY text="・・・・">重力異常</RUBY>がこれを引き起こしたのだとして
も……不思議ではない、かしら。
　<RUBY text="かかさま">銀星号</RUBY>の能力の幅は私にも計り知れない所
があるから……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080600a00">
（気配の方はどうだ？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080610a01">
《少なくとも、今のところは》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080620a00">
（無しか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0080630a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　無論、まだ島内全域を回ったわけではない。
　ほんの一部だ。

　村正の言う通り、現段階では何事も明言し得ない。
　不吉の足音は――耳に痛いほど聞こえるにせよ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080640a00">
「大尉殿……」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080650a03">
「はい？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080660a00">
「この中では最も眼が利く筈。
　あそこに……何があるか、おわかりですか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080670a03">
「あの……開けているあたりですか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080680a00">
「はい。
　地面に、何か……ありませんか」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080690a03">
「…………」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080700a02">
「あたし、見てきましょうか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080710a00">
「少し待て。あそこは視界が良過ぎる。
　あまり近寄りたくない」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080720a04">
「たまたま警邏の方が通り掛かりでもしたら
一発でございます」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080730a04">
「どうぞお嬢さまにお任せください。
　こんな時しか出番のないお人ですし」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080740a03">
「…………」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080750a04">
「……突っ込み無しというのは、いと寂しい
ものでございますねぇ……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080760a02">
「あんたら実は主従じゃなくて、主従ネタの
漫才コンビなのか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080770a00">
「大尉。
　如何です？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080780a03">
「……確かに。
　何か……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080790a03">
「轍のような」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080800a00">
「轍？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080810a03">
「深い溝があります。
　巨大な大八車を曳きでもすれば、あのよう
な跡ができるでしょうか……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080820a00">
「巨大な……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080830a03">
「それも、相当に。
　あれが何かの目的で掘ったものではなく、
本当に何かが動いた痕跡だとすると、とんで
もない怪物でしょうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　そう言って、大尉が口を噤む。
　自分自身の言葉に、想起するものがあったに違いな
かった。

　怪物――<k>
『銀色の怪物を見た』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0080840a04">
「……なんと言いますやら。
　クーパー監督の映画の中に紛れ込んでしま
ったような心地がいたします」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0080850a03">
「本当に、そうね」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080860a02">
「……何がいるんだよ。
　この島には……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080870a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　まだ何もわからない。
　何者の影も見えない。

　銀星号はここにいるのか。
　はたまた寄生体は――

　六波羅はここで何をしているのか。
　兵器とやらは実在するのか？

　――何も分からない。
　だが。

　<RUBY text="・・">何か</RUBY>があるということだけは、もはや明らかだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//ここまで


..//ジャンプ指定
//次ファイル　"ma04_009.nss"

}



//――――――――――――――――――――――――――――――
.//●０７Ｂ
scene ma04_008.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080880a00">
「今回は無理をせぬことにする。
　これより一時間ほど情報収集を行い、然る
後に撤収。次の機会に備える」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080890a02">
「片付けてしまわないんですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080900a00">
「<RUBY text="・・">何を</RUBY>片付けるべきなのかもわかっていない。
　夜明け前までに状況を把握して必要行動を
決定し完遂するのはまず不可能」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080910a00">
「夜明け以降も島に踏み留まって調査を続行
すれば、幕府側の人間との敵対的接触は必然
となる。こちらが地の利を欠く以上、それを
避けられるとみるのはあまりに夢想的だ」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080920a00">
「必要とあれば幕府との交戦も止むを得ない
が、まだ状況もわからぬ内から鉄火場に踏み
込む軽挙は慎まねばならぬ。
　諒解したか」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080930a02">
「……はい。
　わかりました」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080940a00">
「では行動する」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080950a02">
「はいっ……あ、手分けしなくていいんです
か？　時間が少ないなら、そうした方が効率
的だと思うんですけど」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080960a00">
「確かにそうだが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　少し考える。
　だが俺は結局、首を左右した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080970a00">
「警邏の武者、存在不確定ながら〝怪物〟等
の危険と遭遇した場合、俺がいなくては対処
ができない。
　最低限、情況が明らかになるまでは不許可」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0080980a02">
「……すみません。
　あたしが戦えれば、こういう所で足を引っ
張らなくて済むのに」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0080990a00">
「心得違いをするな。
　戦闘は元より俺の役割だ。お前に期待する
のは捜査における協力であって、それ以外の
何かではない」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081000a00">
「その期待には充分に応えられている。
　お前が気に病むことは何もない」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081010a02">
「……はい」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081020a02">
「…………でも、あたしは…………
　もっと役に立ちたいです…………」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081030a02">
「もっと……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081040a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　かぼそい呟きは、聞かなかったことにしておく。
　その方が良いだろうと、思ったからだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081050a00">
「行く」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081060a02">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆島・森林
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　正直なところ、今回の調査には何の進展も期待して
いなかった。
　雰囲気を掴めれば、明日以降の捜査を円滑に進める
のに役立とう。その程度の腹だ。

　しかし。
　島の異常の、少なくともその一端は、ものの数分で
俺たちの前に姿を現していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081070a00">
「……」

{	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081080a02">
「……あの。
　湊斗さん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081090a00">
「どうした」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081100a02">
「何か……変じゃありませんか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081110a00">
「とは」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081120a02">
「……どう言えばいいんでしょう」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081130a02">
「…………」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081140a02">
「ビニールハウスの中を歩いてるみたい……
な？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081150a00">
「適切な評だと思う」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081160a02">
「……どういうことですか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081170a00">
「動物がいない」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081180a02">
「……あっ」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081190a02">
「そうか……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081200a00">
「元々、野生動物が人間のような鈍い相手の
前にそう姿を見せるものではないが。
　それにしても、気配さえ全くないとなれば
これは異常」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　上陸地点周辺は、むしろ逆だった。
　人の気配に驚いて忙しく動き回る小さな物音を幾つ
も耳にしたし、芳養少年の情報を裏付ける形で、海に
は多くの魚が見られた。

　そこからまだ、何里も歩いたわけではない。
　にも拘わらぬ、この変容。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081210a02">
「植物は普通なのに、なんで……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081220a00">
「わからん。
　あるいは植物にも夜闇では見え難い異常が
表れているのかもしれない」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081230a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　生物の成長が異様に促進された地域と、
　反して生命の枯渇した地域。

　――何なのか。
　この<RUBY text="バランス">均衡</RUBY>の無さは、一体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆島・荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　……そうして行き着く。

　今、目前に広がる光景。
　枯渇の根源を求めて至ったものが、これだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081240a00">
「……何たる」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081250a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);


...//以下のテキストは各ルート共通
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　枯れ果てている。
　何もかも。

　コンクリートの隙間にさえ根を張るであろう雑草が、
ここでは黄色く惨めに変色している。
　虫などは影も形もない。いわんや他の動物をや。

　土までもが、枯れていた。
　指先で摘み取ったそれがたちまちぼろぼろと崩れ、
砂となって地面へ還る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081260a00">
「……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081270a02">
「湊斗さん」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081280a00">
「ああ……」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081290a02">
「六波羅が何をやっているのかはわかんない
ですけど。でも何かやってます。
　間違いなく」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081300a02">
「<RUBY text="・・・・・・">ロクでもない</RUBY>何かをやってるんです」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081310a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　後方の呻きを背に聞きながら、少し方向の違う事を
考える。
　幕府――幕府のみが引き起こした事であるなら良い。
いや、良くは無いが……。

　問題は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081320a00">
（どう思う？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　村正に問う。
　今は陰に潜んで辺りを窺っている筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081330a01">
《そうね……。
　はっきりしたことは、まだなにも言えない
けれど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081340a00">
（ああ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081350a01">
《<RUBY text="・・・・">重力異常</RUBY>がこれを引き起こしたのだとして
も……不思議ではない、かしら。
　<RUBY text="かかさま">銀星号</RUBY>の能力の幅は私にも計り知れない所
があるから……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081360a00">
（気配の方はどうだ？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081370a01">
《少なくとも、今のところは》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081380a00">
（無しか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081390a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　無論、まだ島内全域を回ったわけではない。
　ほんの一部だ。

　村正の言う通り、現段階では何事も明言し得ない。
　不吉の足音は――耳に痛いほど聞こえるにせよ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081400a00">
「一条」

{	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);
	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081410a02">
「はい」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081420a00">
「あそこに何があるか見えるか。
　あの、開けている辺りだ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081430a02">
「……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081440a00">
「地面に……何か、ないか」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081450a02">
「……何でしょう。
　ちょっと見てきます」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081460a00">
「待て。あそこは遮蔽物が何もない。
　警備兵が通り掛かりでもしたら事だ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081470a00">
「ここからでは見えないか？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081480a02">
「……ちょっと。
　なんか、地面が<RUBY text="・・・・・・">えぐれている</RUBY>のはわかるん
ですけど」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081490a00">
「俺もそこまでしかわからない。
　どうも……気になる」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081500a02">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081510a00">
「俺には何か……
　重く巨大なものが落ちた跡に見える」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0081520a02">
「……〝怪物〟……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081530a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410a]
　――怪物。<k>
『銀色の怪物を見た』

　伝奇小説の語り口のような、そもそもの発端。
　陳腐な浮説と思えたそれが、不気味な事実の匂いを
孕んで迫りつつあるこの現状。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410b]
　まだ何もわからない。
　何者の影も見えない。

　銀星号はここにいるのか。
　はたまた寄生体は――

　六波羅はここで何をしているのか。
　兵器とやらは実在するのか？

　――何も分からない。
　だが。

　<RUBY text="・・">何か</RUBY>があるということだけは、もはや明らかだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//ここまで


..//ジャンプ指定
//次ファイル　"ma04_009.nss"


}


//――――――――――――――――――――――――――――――
.//●０７Ｃ
scene ma04_008.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_007.nss"

//◆江ノ島南部沿岸
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	StL(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//嶋：voice/ma04/0080010a03
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081540a03">
「手分けしてあたります？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081550a00">
「やめておきましょう。
　効率をいえばその方が望ましいのは確かで
すが、夜明けまでには撤収せねばならぬ以上、
残り時間はせいぜいがあと一、二時間」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081560a00">
「これではどのみちさしたる成果は期待でき
ません。また警邏の武者、存在不確定ながら
〝怪物〟等の危険と遭遇した場合に対処可能
な者が自分のみという点も、問題となります」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081570a03">
「確かにそうですね……。
　ああ、景明さまにお守り頂かなくては立ち
ゆかない、蒲柳の質たるこの身のなんと恨め
しいこと」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081580a04">
「プッ」

{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081590a03">
「…………ばあぁやぁ？
　今のは何かしら。咳き込みでもしたの？」

{	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081600a04">
「や、そのようでございます。
　このさよめも良い加減、トシでございます
からなぁ……」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081610a03">
「うふふ、そう。
　身体は大事にしてね、ばあや？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081620a04">
「はい、ありがとうございます。
　ところで湊斗さま」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081630a00">
「はい」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081640a04">
「蒲柳の質とは儚くひ弱という意味でござい
ますよ。
　けっして図太いとか、図々しいとか、ふて
ぶてしいとかいう意味ではございません」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081650a00">
「存じておりますが」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081660a04">
「文脈的にみてなんかおかしいとか思っても
納得しておいてくださいませ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081670a00">
「は」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガチャ。コッキングレバー引き込み
	CreateSE("SE01","se戦闘_銃器_構える01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//嶋：チェック45
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081680a03">
「パパは勇敢な戦士だった〜。
　けして逃げない男だった〜。
　でも致命傷は背中だった〜。
　なんで、どうして、何があったのパパ〜♪」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆島・森林
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　正直なところ、今回の調査には何の進展も期待して
いなかった。
　雰囲気を掴めれば、明日以降の捜査を円滑に進める
のに役立とう。その程度の腹だ。

　しかし。
　島の異常の、少なくともその一端は、ものの数分で
俺たちの前に姿を現していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081690a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081700a03">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081710a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　誰もが口数を少なくしているのは無論、隠密行動を
心がけているからだ。が。
　たとえピクニックの最中であったとしても、会話が
弾んだかどうか。

　口に出さずとも、既に誰もが気付いている事は疑い
なかった。
　この<RUBY text="・">無</RUBY>の感触。看過するには余りにも、肌に
寒い。

　生命の気配がなかった。
　<RUBY text="・・・・・・・・">動物がいなかった</RUBY>。

　元々、感覚の鋭敏な野生動物はそうそう人間の前に
姿を見せたりしないものではあるが。
　遠くを駆ける物音も、かすかな息遣いも、侵入者に
対する警戒の眼差しさえ――一切ないとは、果たして。

　環境が手厚く保護されていた筈の江ノ島にあって、
この体たらく。
　何事であろうか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081720a03">
「……上陸した辺りは、そのようなことあり
ませんでしたのに。
　むしろ獣も虫も豊富にいたかと」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081730a00">
「海にも魚が多く見られました。情報通り。
　しかし一方、この辺りはあたかも死の世界」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081740a04">
「植物は<RUBY text="まとも">正常</RUBY>に見えますが……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081750a03">
「いいえ。
　木々の様子も、上陸地点とは異なってきて
います」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081760a04">
「なんと、お嬢さま？」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081770a03">
「月明りだけでは分かり辛いでしょうけれど。
　……枯れています。進むにつれて少しずつ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081780a00">
「……入り江の辺りでは」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081790a03">
「よく生い茂っていましたね。
　時節を思えば、おかしなほど……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081800a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　生物の成長が異様に促進された地域と、
　反して生命の枯渇した地域。

　――何なのか。
　この<RUBY text="バランス">均衡</RUBY>の無さは、一体。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆島・荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　大鳥大尉の識別は誤っていなかった。

　今、目前に広がる光景。
　枯渇の根源を求めて至ったものが、これだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm35",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081810a00">
「……何たる」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081820a03">
「……江ノ島といえば、豊かな自然が売り物
でしたのに」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081830a04">
「これでは……
　見る影もございませんねぇ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


...//以下のテキストは各ルート共通
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　枯れ果てている。
　何もかも。

　コンクリートの隙間にさえ根を張るであろう雑草が、
ここでは黄色く惨めに変色している。
　虫などは影も形もない。いわんや他の動物をや。

　土までもが、枯れていた。
　指先で摘み取ったそれがたちまちぼろぼろと崩れ、
砂となって地面へ還る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081840a00">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081850a03">
「幕府はここで何をやっているのでしょう？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0081860a04">
「さて……
　実にくだらない、迷惑な何事かであろうと
は、想像がつくのですが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　後方の呟きを背に聞きながら、少し方向の違う事を
考える。
　幕府――幕府のみが引き起こした事であるなら良い。
いや、良くは無いが……。

　問題は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081870a00">
（どう思う？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　村正に問う。
　今は陰に潜んで辺りを窺っている筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081880a01">
《そうね……。
　はっきりしたことは、まだなにも言えない
けれど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081890a00">
（ああ）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081900a01">
《<RUBY text="・・・・">重力異常</RUBY>がこれを引き起こしたのだとして
も……不思議ではない、かしら。
　<RUBY text="かかさま">銀星号</RUBY>の能力の幅は私にも計り知れない所
があるから……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081910a00">
（気配の方はどうだ？）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081920a01">
《少なくとも、今のところは》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081930a00">
（無しか）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0081940a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　無論、まだ島内全域を回ったわけではない。
　ほんの一部だ。

　村正の言う通り、現段階では何事も明言し得ない。
　不吉の足音は――耳に痛いほど聞こえるにせよ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081950a00">
「大尉殿……」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081960a03">
「はい？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081970a00">
「この中では最も眼が利く筈。
　あそこに……何があるか、おわかりですか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0081980a03">
「あの……開けているあたりですか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0081990a00">
「はい。
　地面に、何か……ありませんか」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082000a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0082010a04">
「近寄って確かめたいところですが……
　少々、視界が良過ぎますなぁ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082020a00">
「は。巡回警備の者がいない筈もないことを
思うと、迂闊には出られません。
　……如何ですか。大尉」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082030a03">
「……確かに。
　何か……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082040a03">
「轍のような」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082050a00">
「轍？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082060a03">
「深い溝があります。
　巨大な大八車を曳きでもすれば、あのよう
な跡ができるでしょうか……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082070a00">
「巨大な……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082080a03">
「それも、相当に。
　あれが何かの目的で掘ったものではなく、
本当に何かが動いた痕跡だとすると、とんで
もない怪物でしょうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　そう言って、大尉が口を噤む。
　自分自身の言葉に、想起するものがあったに違いな
かった。

　怪物――<k>
『銀色の怪物を見た』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0082090a04">
「……なんと言いますやら。
　クーパー監督の映画の中に紛れ込んでしま
ったような心地がいたします」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0082100a03">
「本当に、そうね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0082110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

...//以下のテキストは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　まだ何もわからない。
　何者の影も見えない。

　銀星号はここにいるのか。
　はたまた寄生体は――

　六波羅はここで何をしているのか。
　兵器とやらは実在するのか？

　――何も分からない。
　だが。

　<RUBY text="・・">何か</RUBY>があるということだけは、もはや明らかだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//ここまで

}

..//ジャンプ指定
//次ファイル　"ma04_009.nss"