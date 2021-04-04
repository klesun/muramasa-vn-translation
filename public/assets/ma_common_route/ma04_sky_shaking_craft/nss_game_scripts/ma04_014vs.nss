//<continuation number="6050">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
//		$GameDebugSelect = 1;

		Reset();
	}

}

scene ma04_014vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_014vs.nss","MeimetuAction",true);
	Conquest("nss/ma04_014vs.nss","MeimetuSET",true);

//あきゅん「演出：ここで読み込ませると流れが悪すぎるので前ファイルで読ませます」
	//CP_AllSet("村正");

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//	$Ichizyou_Dead = true;

	//▼イベントＣＧ
	#イベントファイル名=true;

	if($Ichizyou_Dead == true){
		#ev004_香奈枝の凶眼_b=true;
		#bg005_山中_03=true;
	}else if($Kanae_Dead == true){
		#ev910_荒覇吐胸元アップ=true;
		#bg005_山中_03=true;
	}else{
		#ev004_香奈枝の凶眼_b=true;
		#bg005_山中_03=true;
	}


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

		//■未読既読判定３
		$GameName = $BasGameName + "_01";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定４
		$GameName = $BasGameName + "_01ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定５
		$GameName = $BasGameName + "_02";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定５
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定６
		$GameName = $BasGameName + "_02ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定６
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定７
		$GameName = $BasGameName + "_03";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定７
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

		call_scene @->ma04_014vs_ic_Select.nss;

	}else{

		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $BasGameName + "_all";
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

		//■未読既読判定３
		$GameName = $BasGameName + "_01";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定４
		$GameName = $BasGameName + "_01all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定５
		$GameName = $BasGameName + "_02";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定５
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定６
		$GameName = $BasGameName + "_02all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定６
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定７
		$GameName = $BasGameName + "_03";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定７
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

//おがみ：定義位置調整　次ファイルゲームネーム確定付近で定義しないとヤバス
	Cockpit_AllFade0();

	$PreGameName = $GameName;

	if($一条を守る == true){
		$GameName = "ma04_014vsa.nss";
		$一条を守る = false;
	}else if($役割に徹する == true){
		$GameName = "ma04_014vsb.nss";
		$役割に徹する = false;
	}else{
		$GameName = "ma04_015vs.nss";
	}

}

scene ma04_014vs.nss
{

}

scene ma04_014vs.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_013vs.nss"

//◆分岐
//◆香奈枝死亡なら１３Ｂ
//◆ヒロイン全員生存なら１３Ａ
//◆一条死亡なら１３Ｃ

//――――――――――――――――――――――――――――――
.//●１３Ｂ
//●１３Ｂ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StL(1000, @30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StL*", 300, @-30, @0, Dxl2, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0010a02">
「湊斗さん！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0020a00">
「……一条!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　現れたのは良く見知った顔。
　まだこの辺りにいたのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm17",0,1000,true);

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0030a02">
「だっ、大丈夫ですか!?」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0040a00">
「見ての通り完全に無事だ」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0050a02">
「見ての通りなら全然無事じゃないですっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　なら聞くな。
　そう一言返すのも今は億劫だった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0060a00">
「……この場は危険だ。
　まだ敵騎を沈黙させるには至っていない。
早急に島から退避し、指示を待て」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0070a02">
「そんなの……嫌です！
　湊斗さん一人残して……！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0080a00">
「何を暢気な――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　思わず声を荒げかけ、しかし思い留まる。
　……そうだ。今、この状況は罠の中。

　であれば、敵が俺達の使用した船を見逃していると
期待するのは甘過ぎる。
　伏兵が待っていて当然。そんな所へ、一条一人では
送り出せない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0090a00">
「ではこの場を離れ、適切な地点にて潜伏、
待機せよ。
　敵騎制圧後、俺も合流する」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0100a02">
「せ……制圧、って言っても。
　そんな状態で」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0110a00">
「問題ない」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0120a02">
「……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0130a02">
「この匂い……
　何ですか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0140a00">
「匂い？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0150a02">
「焼けたような匂いがします……
　湊斗さんから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　――<RUBY text="しまった">不覚</RUBY>。

　確かに匂う。
　つい、失念していた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0160a00">
「構うな」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0170a02">
「戦う以前に、動けるんですかっ？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0180a00">
「問答の暇が惜しい。
　既に指示は下した。動け」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0190a02">
「納得できないです！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0200a00">
「お前の同意は必要ない」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0210a02">
「……っ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0220a00">
「お前が納得しようとすまいと……
　俺は敵騎を撃墜する」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0230a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0240a02">
「……死んじゃいますよっ……！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0250a00">
「笑えるような事を言うな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　一蹴する。
　実際に出たのは、笑いではなく鉄錆臭い唾だったが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0260a00">
「何処の誰が、こんな所で<RUBY text="・・・">安穏と</RUBY>死ぬか。
　俺は死なんし、<RUBY text="あれ">怪物</RUBY>は倒す」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0270a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0280a02">
「それは……
　正しいからですか？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0290a00">
「違う。もっと、ずっと下らない話だ。
　死を<RUBY text="・・・・・">許されない</RUBY>なら、敵を潰して生き残る
しか道はない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0300a00">
「ただそれだけの事」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0310a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0320a02">
「……わかりました。
　けど、それならあたしも――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0330a01">
《御堂。
　敵騎周辺に動きあり》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆視点転換
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　突如脳裏を打った村正の声に、視線を転ずる。
　着陸中の巨躯――こちらより低地に降りたため視界
が通り、状況の把握が可能だった。

　車両だ。
　大型の輸送車両が一台、<RUBY text="うずくま">蹲</RUBY>る怪物に近付いてゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0340a00">
「……不味い」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0350a01">
《どういうこと？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0360a00">
「弾薬の補給、あるいは搭乗する武者の交代
を行うものと思われる。
　村正、現時点を以ての行動再開は可能か!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0370a01">
《……まだ！
　現状態で飛び出しても、あそこまでたどり
着けるかどうかさえ怪しい》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0380a00">
「……く」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　弾薬補充はまだしもだが、体調万全の新たな仕手の
獲得を許せば彼我の優劣は絶望的なまでに隔絶する。
　それを見過ごす以外にないのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0390a02">
「湊斗さん？
　どうしたんですか」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0400a00">
「……大型車両が一台、敵騎に近付いている。
　推測するに、おそらくは補給活動のため」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0410a02">
「…………それは」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　一条が息を呑む。
　専門的な軍事知識を持ち合わせなくとも、その意味
は容易に知れたのだろう。

　思わず悪態をつきたくなる。
　だがそれは取り止めて、俺は思考の<RUBY text="へさき">舳先</RUBY>を建設的な
方向へ向けた。――物は考えようと云う。

　敵の武者が交代するならそれは大いに不利ではある
が、同時にこちらが知りたかった敵騎体内の人間存在
位置を看破する好機にもなる。
　それさえ掴めば、敵騎に対する<RUBY text="レールガン">蒐窮</RUBY>の行使も可能だ。

　熱量が底を突きかけた状態から、どの程度の威力を
達成できるかという問題はあるが……
　ともあれそこは唯一の勝機。

　俺は視覚に意識を集中させた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0420a00">
「……やはり補給だな。
　弾倉を交換している……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0430a02">
「……んっ……
　よく見えないです」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0440a00">
「視界の中央ではなく端で見ろ。
　中央は光源へ向ける」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0450a02">
「何ですか？　それ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0460a00">
「<RUBY text="うち">吉野御流</RUBY>に伝わる暗視法だ」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0470a02">
「……なんか、一媛ばあさんにも聞いたこと
あるような……？
　えぇっと、確か……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0480a00">
「む――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　怪物から出る人影を確認する。
　続いて、新たに登る影。

　巨騎の甲鉄に開いた孔の位置を掌握。
　脳裏に刻む。

　しかし――降りた者も新たに搭乗した者も、遠目に
形式までは明らかでないが、六波羅の制式竜甲を身に
つけた武者だった。
　あの怪物は武者を更に強化するための兵装なのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0490a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0500a02">
「あの……箱？
　あれは何でしょう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0510a00">
「箱……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　一条の示したものに視野の焦点を移す。
　箱――いや、籠か。

　格子の面で構成された立方体。

　それは怪物の腹を割って取り出されたものだった。
　重要な部品ではないのだろうか？　無造作と言って
良い扱いで空き地に転がされ、それきり見向きもされ
ていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0520a00">
「中に……何かがあるな」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0530a02">
「……はい。
　何か……積み重なってますね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0540a00">
「村正。
　視覚強化」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0550a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズームイン？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("絵板写", 4900);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 600, 1000, null, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　焦点が合わされ、視覚情報が鮮明になる。
　あの籠は――鉄製。一辺はおよそ三メートル。

　中身は――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs0560a01">
《!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0570a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　――――巨大なる劔冑

　よほどの名工が造ったのだとしても
　桁違いの熱量を仕手から奪ってゆく代物に

　
　　　　　　　　桁違いの熱量を

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……車両からまた、何かが降ろされる。
　それも籠。同じ籠。

　ただ一つ違う点は。
　中身。

　籠の中身は、動いている。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆芳養家の子供達
//◆芳養少年
	EfRecoIn1(18000,50);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(16100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("絵回想*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreatePlainSP("絵板写", 4900);
	SetShade("絵板写", HEAVY);
	EfRecoOut2(50,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　籠――
　籠ではない。

　あれは檻だ。
　檻なのだ。

　怪物の<RUBY text="・・">熱源</RUBY>を閉じ込めておくための！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0580a02">
「……あれ……
　動いて……る？」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0590a02">
「湊斗さん、あれ……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0600a00">
「<RUBY text="ひと">人間</RUBY>だ」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0610a02">
「…………」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0620a02">
「ひと……？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0630a00">
「子供だ。
　餌だ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0640a00">
「あの怪物を動かすための、燃料だ」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//◆鬼相
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0650a02">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　至近の距離に、鬼気がゆらめいた。
　肌を裂くような低温の波長。

　それは怒りとか、憎悪とか、殺意とかいう類のもの
ではなかった。
　そんなものよりも遥かに純粋で迷いのない意思だ。

　それは、例えば。
　<RUBY text="・・･・・・・・・・・・・・・・・・">金槌が釘に対して抱くような感情なのだ</RUBY>。

　――打ち潰す、と。
　一条は、それだけの<RUBY text="カタマリ">塊</RUBY>になっていた。

　だが、その意思は……
　あの敵騎にのみ向けられるべきものでは、ない。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　捨てられた檻の中の――
　枯れた骸。

　あれを殺したのは誰だ。
　あの怪物か。

　本当にそうか。

　怪物を引き回し、
　熱量を消耗させ、

　彼らの命を削り取ったのは誰だ？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01a","se人体_体_心臓の音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//◆ざっ。
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　俺は立ち上がった。
　素晴らしい。憎悪こそは力だ。

　こんなにも憎いから立てる。
　こんなにも憎いから動ける。

　脚の火傷が猛痛を放った。
　……足りない。

　身動きする都度、よろう甲鉄が俺の命を吸い、内臓
を絞られるが如き苦痛を呼ぶ。
　……足りない。

　足りぬ、
　足りぬ、
　まるで足りぬ。

　もっと傷が必要だ。
　もっと呪いが必要だ。
　奴にはもっと。もっと。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("絵色赤", 5000, "#CC0000");
	CreatePlainEX("絵板写弐", 4910);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 500, null, false);}
　
　　　　　　　　　　　苦しめ。

　一歩進むと、膝が折れた。
　かくかくと笑っている。

　惨めがましい。
　まだお前には、動く手足があるくせに。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 700, null, false);}
　
　　　　　　　　　　　苦しめ。

　一歩進むと、目が眩んだ。
　意識が霞み、感覚が曖昧になる。

　憐れがましい。
　お前はまだ、物を見て音を聞くことができるくせに。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 1000, null, false);}
　
　　　　　　　　　　ひとごろし。

　それを失くした人々のことを想え。
　想え。

　それをお前に奪われた人々のことを想え。
　想え。

　ああ。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色赤弐", 10000, "#CC0000");
	Fade("絵色赤弐", 300, 1000, Axl2, false);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);}
　　　湊斗景明。
　　　どうかこの苦悶が未来永劫お前を苛み、
　　　決して解放せぬように。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正立ち絵？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#CC0000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0660a02">
「湊斗さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0670a02">
「どうするつもりですか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//◆一条立ち絵
	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0680a00">
「邪魔だ」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0690a02">
「どうするんです」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0700a00">
「ゆく。
　あの怪物を斬り、子供達を助け出す」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0710a02">
「その体では無理です」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0720a00">
「ならその無理を通す」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0730a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0740a02">
「わかりました。
　あたしは何をすればいいですか」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0750a00">
「俺ひとりでいい」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0760a02">
「……そうですか。
　わかりました」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	Move("@StL*", 300, @30, @0, null, false);
	DeleteStL(300,false);

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//◆隣に一条
	WaitAction("@StL*", null);

	StCR(1000, @90, @0,"cg/st/st一条_通常_制服.png");
	Move("@StMR*", 300, @-60, @0, DxlAuto, false);
	FadeStCR(300,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0770a00">
「何をしている」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0780a02">
「あのバケモノを殴り倒して子供を助けます」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0790a00">
「お前には無理だ」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0800a02">
「その無理を通します」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0810a00">
「…………」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0820a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　一条を睨み据える。殺意に近いものが混ざり込んだ
かもしれない。
　だが、一条は真っ向から視線を打ち返してきた。

　殺意の含有は、一条の視線も同じことだった。
　――邪魔をすれば殺すと言っている。

　ほんの数瞬。
　俺と一条は、互いを怨敵のように見据え合った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0830a00">
「……。
　何があっても、俺はお前を助けない」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0840a02">
「頼みません」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0850a00">
「足手纏いになれば、踏み潰してゆく」

{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0860a02">
「はい。
　そうして下さい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0870a00">
「勝手にしろ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　俺は吐き捨てた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0880a00">
「馬鹿<RUBY text="め">奴</RUBY>が」

//◆笑い。不敵な？
{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0890a02">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆一度ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　簡単な策を立てた。
　手が二人分あるのならば、闇雲に突っ掛ける以外に
もやりようというものがあるからだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStA(0,true);
	FadeDelete("絵色黒", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0900a00">
「時間を稼げ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0910a02">
「……時間を」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0920a00">
「敵は無能ではない。もう間もなくこちらの
所在は知れる。
　だが<RUBY text="おれ">村正</RUBY>が戦闘態勢を整えるには今暫くの
時が要る」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0930a02">
「はい」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0940a00">
「その間、お前が奴の相手をしろ。
　やり方は任せる。どうにでもして、あれの
注意を引け」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　山に等しい巨躯を指差して言う。
　<RUBY text="コント">漫才</RUBY>であれば突っ込みが入る場面だ。

　しかし一条は事も無げに首肯した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0950a02">
「わかりました」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0960a00">
「その間に俺は回復を図り、同時に敵の弱点
を探る」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs0970a02">
「弱点、ですか。
　何か見込みが？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0980a00">
「ある。
　先刻の補給作業中、電池らしき<RUBY text="パーツ">部品</RUBY>の交換
をしている様子がなかった……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs0990a00">
「敵の主兵装が電力式であることはほぼ疑い
ない。電池が無いのならば、何か別の方法で
電気を調達しているのだ。
　その方法を見極める」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1000a02">
「それができれば……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1010a00">
「あれを攻略する筋道が立つ。
　今、俺に考え得る内ではこれが最短、最善
の方策だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　口調が誇るというより開き直りのそれになったのは
仕方がない。
　自分の考えのお粗末さに自分自身で呆れている。

　不確定要素ばかりの策だ。
　まともな神経を持つ人間なら、到底承服できないだ
ろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1020a02">
「諒解です！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条立ち絵消去
	DeleteStA(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1030a00">
「待て」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1040a02">
「はい？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1050a00">
「どこへ行く」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1060a02">
「早速……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　この少女は既に狂っているのではないか。
　俺はそう思った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1070a01">
《貴方と同じよ。この<RUBY text="こ">娘</RUBY>のこういうところ。
　本当、良く似てる》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1080a00">
「……。
　やり方を任せるとは言ったが、そのままで
放り出すとは言っていない」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1090a00">
「最低限の武装くらいはしてゆけ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1100a02">
「武装？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆荒覇吐
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	FadeDelete("上背景", 500, true);
	WaitPlay("@mbgm*", null);
	FadeDelete("絵暗転", 500, true);

	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　彼は戦意に猛っていた――とは言えない。

　戦いは任務だ。仕事なのだ。常にそうだ。
　彼にとって、己の存在意義を問う情熱的行為などで
はなく、課せられた役割に過ぎない。

　先刻までこの荒覇吐を駆っていた彼の同僚は違った。
　戦いを楽しみ、味わう嗜好の持ち主だった。

　彼には理解し難い。こんなことの何が楽しいのか？
　どれほど堅牢な装甲に守られていても矢弾を浴びる
体験は怖気をふるうものだし、逆に標的へ銃弾を打ち
込む行為も嫌悪感と無縁では有り得ない。

　僚友が深紅色の武者と繰り広げた戦闘を彼は見届け
ている。滅多にない好敵と諒解もしている。
　だがそれとて、生来の戦士ならぬ彼を喜ばせるよう
な事柄ではなかった。

　早く<RUBY text="あいつら">妻子</RUBY>のもとへ帰りたい。
　彼が戦場で願うのはそれだけだ。

　そんな彼が敵の姿を遂に見出す時、胸中を襲うのは
恐怖の寒気と安堵の暖気の入り混じった風である。
　肌が粟立つと同時に鼓動は落ち着く。

　……ああ。
　嫌な事が、ようやく始まってくれた。

　……これが終われば、家へ帰れる……

　<RUBY text="モニター">視界</RUBY>の端に赤い<RUBY text="・・・・">ちらつき</RUBY>を認め。
　彼は嘆息をひとつ洩らしてから、巨兵を動かす作業
に取り掛かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆動き出す荒覇吐
	CreateSE("SEL01","se戦闘_荒覇吐_移動02_L");
	MusicStart("SEL01",0,1000,0,500,null,true);
	SetFrequency("SE01", 2000, 1000, Dxl2);
	CreateTextureEX("絵ＥＶ２", 4010, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵ＥＶ２", 2000, 1000, null, true);

//◆砲門群
	CreateSE("SE01a","se特殊_鎧_駆動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 4030, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	CreateTextureSP("絵演", 4020, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	WaitPlay("SE01a", null);
	WaitKey(1000);

//◆発射
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01b","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 3000, 1000, Axl2, true);

	$残時間=RemainTime("SE01b");
	WaitKey($残時間);

	WaitKey(500);

	WaitPlay("SE01b", null);

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　この夜、この局面――
　湊斗景明と綾弥一条は、こういう男と対峙している。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆林の中
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1110a01">
《……始まったようね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1120a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　巨大かつ奇形の武者が回頭し、地表へ向けて射撃を
開始する。
　危うい<RUBY text="タイミング">時機</RUBY>ではあった。

　敵影は指呼の距離にあると言っていい。
　あと十秒もあれば、敵騎の探査機能はろくに身動き
のとれないこちらを発見していた可能性がある。

　おそらくはそれを承知して、<RUBY text="・・・・">仕掛けた</RUBY>のだろう。
　あいつは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1130a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1140a01">
《悔いているの？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1150a00">
「……いや。
　悔いてはいない」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1160a00">
「一条は危険を理解していた。
　その助力が必要でもあった。より確実に敵
を倒し、より速やかに囚われた人を救助する
為には」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1170a00">
「そう思えば、唯一の選択だったのだ。
　この道の他には、自分一人の意地を通して
成算の低い作戦を強行し、敵騎の中の人々を
余計に苦しめる道しかない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1180a01">
《ええ……
　でも？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1190a00">
「……悔いてはいないが。
　恥じてはいる」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1200a00">
「一条の手を借りざるを得ない状況に陥った
のは、つまり、俺の力が足りないからだ。
　恥じねばならない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1210a01">
《……一人で何もかも背負い込むな。
　気の利いた人なら、貴方にそう言うかもね》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1220a00">
「云うか？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1230a01">
《いいえ。
　私たちにとっては、<RUBY text="・・・・">そんな話</RUBY>ではないもの》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1240a00">
「ああ。そうだ。
　そんな話ではない……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1250a00">
「俺達は、この程度の危難で力不足を訴えて
いてはならないのだ。
　俺達が打ち破るべき<RUBY text="もの">存在</RUBY>のことを思えば」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1260a01">
《ええ》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1270a00">
「だから恥じる。恥を刻んで記憶する。
　こんな<RUBY text="ざま">醜態</RUBY>では到底、届かぬ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1280a01">
《ええ……。
　私たちには、力が足りない》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1290a01">
《……まずは野太刀を取り戻しましょう。
　残り三つの〝卵〟を破壊して》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1300a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　……だが、それでも足りないのだ。
　以前に、完全な武装状態で挑んで、鎧袖一触に敗れ
去っているのだから。

　あるいは天文学的なまでの、力量の格差。
　……これは、何に起因するのか。

　<RUBY text="あれ">銀星号</RUBY>と<RUBY text="おれ">村正</RUBY>を比較して……
　何が、そんなにも<RUBY text="・・・・・">欠けている</RUBY>のか――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1310a01">
《御堂》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1320a00">
「わかっている」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　今は、そんな迷妄に耽っていられる時間ではない。
　やや離れつつある戦闘状況に注意を傾ける。

　看破しなくてはならない。
　狙い撃つべき敵の急所を。

　一条が稼ぎ出す時間を使って。

　……大体、<RUBY text="・・・">あたり</RUBY>をつけてはいる。
　だが確認するには、もう少し……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1330a01">
《答えてくれなくてもいいけれど……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1340a00">
「何か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1350a01">
《あの娘が生還する可能性はあるのかしら》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1360a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1370a00">
「低かろう」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1380a01">
《あの娘が追い詰められたとき……
　貴方はどうするの？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1390a00">
「どうとは」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1400a01">
《助ける？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1410a00">
「いや。
　そんな事をすれば、作戦は頓挫する」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1420a00">
「だから、黙過する」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1430a01">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1440a00">
「本人にもそう云った。
　<RUBY text="あいつ">彼女</RUBY>は納得した」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1450a01">
《そうね。
　……それでいいのね？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1460a00">
「それで良いかどうかは、あいつが判断<RUBY text="・・">した</RUBY>」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1470a00">
「俺はその前提に立って策を講じ、その通り
に行動する。それだけだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1480a01">
《……そう。
　わかった……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 700, 0, null);

//◆一条サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, "slide_01_03_0", true);
	WaitPlay("@mbgm*", null);
	DrawDelete("絵暗転", 200, 100, "slide_01_03_0", true);

//◆銃撃
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateTextureEXadd("絵演荒覇上", 3011, -280, -270, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	CreateTextureSP("絵演荒覇", 3010, -280, -270, "cg/ev/resize/ev909_荒覇吐_bl.jpg");
	SetVertex("絵演荒覇*", 450, middle);
	Fade("絵演荒覇上", 0, 500, null, true);
	Zoom("絵演荒覇上", 1500, 1200, 1200, null, false);
	Shake("絵演荒覇", 2160000, 4, 0, 0, 0, 1000, null, false);
	FadeDelete("絵色白", 150, true);
	MFlash(5,20);
	FadeDelete("絵演荒覇上", 1000, false);

	Wait(800);

//◆近くで木々が薙ぎ倒される
	CreateSE("SE01a","se自然_森_木々倒れる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Delete("絵演荒覇*");

	CreateSE("SE01a","se戦闘_衝撃_衝突01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 0, 20, 0, 0, 1000, Dxl2, false);

	SoundPlay("@mbgm10",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1490a02">
「……っ。
　こっ……のぉ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE02","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆装甲が弾く。かんかんかん。
	CreateSE("SE02a","se戦闘_銃器_跳弾04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1500a02">
「はあっ――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE03","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆装甲が弾く。かんかんかん。
	CreateSE("SE03a","se戦闘_銃器_跳弾04");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//◆木の陰へ逃げ込む。ざーっ。
	SetVolume("SE01", 600, 0, null);
	SetVolume("SE02", 600, 0, null);
	SetVolume("SE03", 600, 0, null);

	CreateSE("SE04","se人体_動作_跳躍02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	WaitPlay("SE03", null);
	Delete("@MF*");

	DrawDelete("絵黒幕", 200, 100, "slide_01_03_1", true);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 300, 10, 0, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1510a02">
「くっ……
　ふぅ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条。部分装甲
	StL(1000, @30, @0,"cg/st/st一条_戦闘_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　骨に響く。
　敵の弾群はいまだ一度たりと肉にまで食い込んでい
ないが、それでも被害は及ぼしている。

　<RUBY text="・・">これ</RUBY>を貰った時の言葉を思い出す。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	EfRecoIn1(18000,600);
	OnBG(16000,"bg043_江ノ島山林_03.jpg");
	StR(16120, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeBG(0,true);
	FadeStA(0,true);
	EfRecoIn2(300);

	SetFwC("cg/fw/fw景明_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1520a00">
「それは村正の<RUBY text="いと">鋼糸</RUBY>を巻きつけて、擬似的に
甲鉄化したものだ」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1530a00">
「劔冑のように身体能力を引き上げることは
ないが、邪魔になることもない……と思うが。
　どうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵窓", 17000, 48, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateTextureSP("絵窓/絵背景", 17000, Center, Middle, "cg/bg/bg043_江ノ島山林_03.jpg");
	Move("絵窓/絵背景", 0, @0, @-288, null, true);
	Rotate("絵窓/絵背景", 0, @0, @180, @0, null,true);
	Zoom("絵窓/絵背景", 0, 2000, 2000, null, true);
	SetShade("絵窓/絵背景", SEMIHEAVY);

	CreateTextureSP("絵窓/絵演立絵装甲", 17100, -490, -340, "cg/st/resize/st一条_戦闘_制服lm.png");

	Move("絵窓/絵演立絵装甲", 3000, -550, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	Wait(300);

	SetFwC("cg/fw/fw一条_笑顔a.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0621]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1540a02">
「……軽いです。
　これなら普通に動けます」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1550a02">
「その分、余り頑丈な気もしませんけど……」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 0, 1000, Dxl2, true);
	Delete("絵窓");

	StL(16110, @30, @0,"cg/st/st一条_戦闘_制服.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw景明_黙考.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0622]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1560a00">
「実際、強度は知れている。
　武者の太刀など浴びれば一溜まりもないだ
ろう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1570a00">
「機銃弾程度は防げる筈だが……
　それもいつまで保つか」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1580a00">
「早い話が気休めだ。
　過信するな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1590a00">
「……こんなものしかやれない。
　最低限と言ったが、最低限ですらなかろう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	EfRecoOut1(300);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DeleteStA(0,true);
	CreatePlainEX("絵板写", 1100);
	SetShade("絵板写", MEDIUM);
	EfRecoOut2(600,true);
	SetVolume("@mbgm*", 2000, 1000, null);

	CreateTextureEX("絵演効果一条", 4100, -90, -330, "cg/st/resize/st一条_戦闘_制服lm.png");
	Move("絵演効果一条", 10000, @0, -90, DxlAuto, false);

	Fade("絵板写", 1000, 1000, null, false);
	Fade("絵演効果一条", 1000, 750, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　こんなものを――
　綾弥一条は、欲していたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵板写", 500, false);
	FadeDelete("絵演効果一条", 500, true);

	CreateSE("SE01a","se人体_動作_後ずさり01");
	StL(1000, @-30, @0,"cg/st/st一条_戦闘_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeStA(300,true);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1600a02">
「っ、らぁ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @200, @0, Dxl2, false);

	WaitKey(50);

	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateTextureSP("絵演背景", 2000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawDelete("絵色黒", 200, 100, "circle_01_00_1", false);

//◆銃撃
//◆かきんかきーん。
	CreateSE("SE02a","se戦闘_銃器_機関銃乱射02");
	CreateSE("SE02b","se戦闘_銃器_跳弾04");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	MusicStart("SE02b",0,1000,0,1000,null,false);

	CreateTextureEX("絵演", 6000, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　戦えている。
　湊斗景明の敵と、綾弥一条は戦えている。

　鼠のように逃げ回り、急拵えの盾で身を守り。
　今の綾弥一条は湊斗景明の力になれている。

　これが欲しかったのだ。
　最低限であろうがそれ以下であろうが構わない。

　彼の力になる。
　その<RUBY text="すべ">術</RUBY>が欲しかったのだ。

　それこそが、綾弥一条にとって、<k>
{//◆第二話、一条を助ける村正カット挿入
	SetVolume("SE*", 500, 300, null);
	Fade("絵演", 500, 1000, null, false);}
　最も望ましき正義の形であったから。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1,0,1000,null,false);
	CreateColorEXadd("絵色白", 6500, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

//◆銃撃
	Delete("絵演");
	Delete("絵演背景");
	DeleteStA(0,true);

	SetVolume("SE*", 3000, 1000, null);
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1610a02">
「――は！
　来やがれ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆かきんかきん
	CreateSE("SE03a","se戦闘_銃器_跳弾04");
	MusicStart("SE03a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　擬似甲鉄が殺しきれない着弾の衝撃力は、体内深く
浸透して、骨格の髄に<RUBY text="わだかま">蟠</RUBY>る。
　時々聞こえる、めちりという音は、何かにひび割れ
の入る音か。そうであろう。

　その音が時を追う毎、弾を浴びる都度、重いものに
なってゆくのは……次第に装甲が削られ薄くなりつつ
あるからか。
　そうなのだろう。

　だが綾弥一条は構わない。
　逃げ隠れながら逃げきらず隠れきらず、敵の注意を
引き付ける己の役目に没頭する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE04","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきかき
	CreateSE("SE04a","se戦闘_銃器_跳弾04");
	MusicStart("SE04a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　……今の彼女は、甲冑の上からひたすら金槌で殴ら
れ続ける拷問を受けているにも等しい。
　およそ、常人に耐え得る難苦の中にいない。

　しかし――
　耐え抜く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1620a02">
「――は――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　何故か。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE05","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきかきん
	CreateSE("SE05a","se戦闘_銃器_跳弾04");
	MusicStart("SE05a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1630a02">
「はっ、は――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　その理由は。
　
　先刻、湊斗景明がふと察したように。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃銃撃
	CreateSE("SE06","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきんかきんかきんかきん
	CreateSE("SE06a","se戦闘_銃器_跳弾04");
	MusicStart("SE06a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1640a02">
「は、は、はァ――！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　
　　　　　　綾弥一条は既に狂っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE07","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE07",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆その辺に着弾
	CreateSE("SE07a","se戦闘_銃器_弾かする02");
	MusicStart("SE07a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1650a02">
「どこ撃ってる！
　あたしはここだ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE08","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE08",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきんかきん
	CreateSE("SE08a","se戦闘_銃器_跳弾04");
	MusicStart("SE08a",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
〝正義〟は人の大道であろう。
　しかし、人間本来の精神性とは必ずしも合致<RUBY text="・・・">しない</RUBY>。

〝正義〟を、単に利己主義の変装としてのみ用いる者
は、むしろ健全である。
　そんなものを服飾ではなく骨肉とし、本能にも等し
く自己の根幹へ刻んだ者こそ、精神の奇形児であろう。

　古人曰く。
　――正気にては大業成らず。

　また、別の人曰く。
　――狂愚愛すべし。狂夫たれ。

　彼らは知っていた。
　利己を失った真実の正義というものが、狂気の上に
のみ立脚し得るのだと解悟していた。

　彼らと綾弥一条は違う。
　綾弥一条は、<RUBY text="・・・・・・・・・・・・">知る前に既にそうであった</RUBY>。

　あるいは彼女は、彼らよりも純粋に、
　真っ直ぐに狂っている。

　誰よりも正しく、狂っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE09","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE09",0,1000,0,1000,null,false);
	MFlash(5,20);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1660a02">
「そうだ……
　撃って来い……！」

{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1670a02">
「撃てェ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE09a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE09a",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆かきんかきん
	CreateSE("SE09aa","se戦闘_銃器_跳弾04");
	MusicStart("SE09aa",0,1000,0,1000,null,false);
	CreatePlainEX("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 2000, 20, 0, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
〝狂〟の正義は三要素によって完成する。
　その精神／その道筋／その方法。

　精神はある。
　綾弥一条自身が、己へ刻んだものがある。

　道筋もある。
　湊斗景明との出会いがそれを示した。

　最後の一つ。
　それで完成する。

　これまで、辛うじて綾弥一条を正気の世界に、只人
の枠に留めていたものが失われ。
　<RUBY text="・・・・">開始する</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃撃
	CreateSE("SE10","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE10",0,1000,0,1000,null,false);
	MFlash(5,20);

//◆走る
	CreateSE("SE11","se人体_足音_走る01_L");
	MusicStart("SE11",0,1000,0,1000,null,true);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("@MF*");
	Delete("絵板*");
	CreateTextureSP("絵演背景", 1000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	DrawDelete("絵黒幕", 300, 100, "circle_01_00_1", true);

	CreateTextureEX("絵演一条", 1100, -240, -30, "cg/st/resize/st一条_戦闘_制服l.png");
	Move("絵演一条", 3000, -340, @0, DxlAuto, false);
	Fade("絵演一条", 1000, 650, null, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1680a02">
（もっとだ）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　苦しみの中で戦う充足に浸り。
　綾弥一条はその反面、更に望む。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1690a02">
（あたしはもっと戦わないといけない）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　敵たる悪と、真っ向から。
　より激しく。より苛烈に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1700a02">
（これだけじゃ足りない。
　もっと戦える、何かが欲しい）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　そう。
　それを手に入れた時にこそ。

　綾弥一条は真の意味で、始めることが叶う。

　正義を。
　狂気を。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2500, 0, null);
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);
	WaitPlay("@mbgm*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　
　　　　　――この世の悪を打ち砕く。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_02_1", true);

	SoundPlay("@mbgm12",0,1000,true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1710a00">
「――見えた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1720a01">
《……あれ？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1730a00">
「ああ。
　<RUBY text="・・・・・・">電源ケーブル</RUBY>だ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　その細さ、保護色塗装、怪物の低空騎航とが、村正
の視力をしてかくも確認に手間取らせた。
　騎体の下部から垂直下に延びるその、線。

　あれが電力を供給する経路に違いない。
　巨騎がどう移動しても伸縮しないのは不思議である
が――<k>そうか。この辺りの地下に通電盤があり、電線
はその上を<RUBY text="・・・・・">滑っている</RUBY>のだとすれば納得がゆく。

　あれを切断すれば良い。
　それで戦局は傾く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1740a01">
《どうするの？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1750a00">
「まともに襲えばあの障壁で阻止されよう。
　だが、幸いにもケーブルのある位置は敵の
死角」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1760a00">
「奇襲が可能だ。
　まずは背後に回り、」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カロリードレインＳＥ
	CreateSE("SE01","se特殊_陰義_荒覇吐01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1000);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1770a01">
《――あ――っ》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1780a00">
「――!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆荒覇吐
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵ＥＶ", 3000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	DrawDelete("絵黒幕", 200, 100, "slide_01_01_1", true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　木々の狭間を逃げ回る敵に弾を撃ち、撃ち――
　既に十数分。

　敵騎は反撃はおろか騎航さえ試みない。
　先の一戦でもはや精根尽き果てていたのだろう。

　それでいながら、この粘り。
　彼は苛立ち、焦り、嘔吐感さえ催した。

　
　　　　　　　　……ああ。
　　　　　　　　早く終わってくれ。

{	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",2000,900,0,900,null,false);}
　心の底から願いつつ、彼は機銃を掃射する。
　縦に一条。赤い影はわずかに被弾したのみで逃れた。

　
　　　　　　　　俺は帰りたいんだ。

{	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,850,0,800,null,false);}
　灼けるような嫌悪と焦燥に苛まれながら、敵の逃走
方向へ掃射。
　命中弾はない。木々のみ打ち払って、森林に縦線を
描く。

　
　　　　　　　　　早く、早く――

{	CreateSE("SE01b","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01b",0,750,0,700,null,false);}
　ストレスに胃液が逆流する。
　苦過ぎるそれを無理に飲み込む。

　そうしながら騎体を回し、また掃射。
　二本の縦線と垂直に一本、地肌の横線。

　
　　　　　　　嫌だ、嫌だ、嫌だ――

{	CreateSE("SE01c","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01c",0,700,0,600,null,false);}
　敵騎は見えない。
　森林に描かれたコの字形、視界を塞ぐものが何一つ
ない線上に、赤い姿は現れていない。

　再び回航して機銃を撃つ。
　最後の一線。

　前方を塞がれて、慌てて駆け戻る影をちらりと見た。
　四角の中へ。

　<RUBY text="・・">四角</RUBY>。

　機銃が木々を薙ぎ倒して出来た地肌の<RUBY text="ライン">線</RUBY>。
　それが描く<RUBY text="スクエア">四角形</RUBY>。

　敵はその中にいる。

　
　　　　　　　　　……ああ。
　　　　　　　　　……ようやく……

{	SetVolume("SE*", 2000, 0, null);}
　この巨騎をもって地上の一兵を追う事がいかに困難
か理解してから、耐えに耐え、待ちに待っていた機会
をようやく掴んで。
　彼はぶり返した胃液を足元に吐き散らした。

　
　　　　　　　　……ようやく終わる。

{	CreateSE("SE02","se特殊_鎧_駆動音02");
	MusicStart("SE02",0,1000,0,750,null,false);}
　気力を奮い起こして<RUBY text="アウトロウ">陰義</RUBY>を発動する。
　甲鉄で守られし武者には効果の薄い、荒覇吐の陰義。

{	CreateSE("SE02a","se特殊_陰義_荒覇吐01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreatePlainSPadd("絵板写", 4999);
	Zoom("絵板写", 600, 1300, 1300, Dxl2, false);
	FadeDelete("絵板写", 800, false);}
　熱量奪取。

　それは――
　<RUBY text="スクエア">四角</RUBY>の中の木々を一瞬にして枯死させた。

　もはや身を隠す何物もない空き地のなか。
　赤い姿が呆けた様子で、立ち尽くしている。

　
　　　　　　　　……これで、帰れる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆竜気砲
	CreateSE("SE01a","se特殊_鎧_駆動音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆発振準備
	CreateSEEX("SE01b","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01b",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　戦闘を嫌悪し、故に戦闘に酔わず。
　ままならぬ戦況に焦り苛立ち、しかし思考力は平静
に維持する。

　彼はそういう男だった。
　戦場において彼は常に己の不幸を嘆いたが、彼より
も不幸な者が身近にいることを知ってはいない。

　彼の敵がそれだ。
　彼こそは敵にとって最悪の<RUBY text="ウォーリア">軍事職能者</RUBY>だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆一条
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("プロセス*");
	Delete("絵演*");
	Delete("絵ＥＶ*");
	OnBG(100,"bg003_荒れ野_03.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st一条_戦闘_制服.png");
	FadeStL(0,true);

	DrawDelete("絵黒幕", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1790a02">
「――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正サイド
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStA(0,true);

	Delete("絵ＥＶ*");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs1800a01">
《御堂!?》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1810a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択。一条を守る／役割に徹する
..//選択。一条を守る／役割に徹する

//◆一条を守る "ma04_014vsa.nss"
//◆役割に徹する "ma04_014vsb.nss"

}


scene ma04_014vs.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//――――――――――――――――――――――――――――――
.//●１３Ａ
//●１３Ａ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @90, @0,"cg/st/st香奈枝_通常_私服c.png");
	StCR(1000, @-30, @0,"cg/st/stさよ_通常_私服.png");
	StL(1000, @-30, @0,"cg/st/st一条_通常_制服.png");

	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300,false);

	Wait(50);

	Move("@StMR*", 300, @-30, @0, Dxl2, false);
	FadeStCR(300,false);

	Wait(50);

	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1820a03">
「やっぱり。景明さま！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1830a00">
「……大尉!?」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1840a02">
「湊斗さんっ！」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1850a04">
「これは、これは。よくぞご無事で。
　………と申し上げるには少々、無理のある
お姿でございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　現れたのは良く見知った顔。
　まだこの辺りにいたのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm16",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1860a03">
「まぁ、一体どうされたのです!?
　このような所で、そのように膝を突いたり
なさって……！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1870a03">
「小銭を落としてしまわれたのですか？」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1880a02">
「この状況見て言うことがそれかてめぇは！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1890a04">
「これは一大事……！
　そのような落ち武者感溢れる落ち武者スタ
イルをなさっておられますと、土民達の落ち
武者狩りに遭ってしまいますよ！　湊斗さま」

{	FwC("cg/fw/fw一条_憎悪b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1900a02">
「ねえよ！　どこの明智光秀だよ！
　つーかそんなのよりはるかに切羽詰ってる
一大事があるだろどう見ても！」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1910a00">
「……墜落したも同然ですので、<RUBY text="・・・・">落ち武者</RUBY>と
いう表現は適切であると言えます」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1920a04">
「なるほど！」

{	FwC("cg/fw/fw一条_涙.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1930a02">
「うまいこと言ってる場合でもないですっ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　確かにそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1940a00">
「このような所に留まっていては危険です。
まだ戦闘は終了しておりません。
　お早く、島から退避して下さい」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs1950a03">
「そういうわけにも、参りませんでしょう」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs1960a00">
「<RUBY text="なにゆえ">何故</RUBY>」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs1970a02">
「のんきに帰ってられませんよっ！
　湊斗さん一人残して！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1980a04">
「と、いうこともございますが。
　この状況は明らかに罠」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs1990a04">
「容易く逃がして貰えるとも思えませず。
　船に戻るのは控えていた次第でございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　……成程。
　確かに、そうか。

　これが仕組まれた罠であるなら、仕掛人が俺たちの
用いた船を見逃していると考えるのはいかにも甘い。
　周辺に伏兵を配されている可能性が大いに有り得る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2000a00">
「ではこの場を離れ、適切な地点にて潜伏、
待機していて下さい。
　敵騎を制圧した後、自分も合流します」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2010a03">
「簡単に仰いますけれど。
　……戦況はおおむね観ておりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　観ていた？
　……夜間の騎航戦闘を？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2020a03">
「あれを実際に黙らせるのはもう少し難しい
ことなのではありませんか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2030a00">
「……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2040a02">
「何だよ……
　そこまで厄介なのかあれ。いや、そんなの
見りゃわかるっちゃわかるけどさ」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2050a03">
「見掛け倒しではありませんでした。
　弾を用いない砲、強力な磁場によるものと
思しい防壁、追ってくる弾丸――あれは遠隔
操作か熱源追跡か……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2060a03">
「完成度はともかくとして、あの怪獣は最新
技術の塊です。
　正直なところ、一騎で立ち向かうには無理
のある相手ではないかと……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2070a02">
「……いや、何だよそれ。
　弾を使わない砲って何のことだ？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2080a03">
「わかりません。
　でも、弾の代わりに何かを飛ばしていたの
は確か」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2090a03">
「景明さま。左腕と右脚、そして左脚をあの
砲で撃たれていましたでしょう？
　どのような被害をお受けになりました？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2100a00">
「格別の事は」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2110a03">
「左の手と足がもう動かないのはわかってい
ます」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2120a00">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2130a04">
「……得心ゆきました。
　<RUBY text="・・・・">焼かれた</RUBY>のでございますね、湊斗さま」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2140a04">
「先程から妙に鼻をくすぐるこの匂いが気に
なってはいたのです」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2150a00">
「……些か」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2160a04">
「この匂いは骨の髄まで瞬時にして焼き尽く
された時のものと記憶しておりますが……。
　確かにこれでは動かせますまい」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2170a02">
「……!!」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2180a00">
「大事はありません。
　劔冑の治癒能力をもってすればいずれ回復
します」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2190a03">
「けれど、その前にまたあれと戦うおつもり
なのでしょう？
　勝算があるとお思いですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2200a00">
「一応は」

{//◆からかい
	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2210a03">
「それは何割くらいの勝算ですの？」

{//◆険悪
	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2220a02">
「おい……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2230a00">
「十割ほど」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2240a03">
「……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2250a00">
「自分はあのような玩具に容易く殺される事
など許されぬ身です。
　現在、肉体的に幾らかの不自由があるよう
ですが」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2260a00">
「関係ありません。
　自分はあの敵騎を撃墜します」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2270a04">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2280a02">
「それは……
　正しいからですか？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2290a00">
「違う。もっと、ずっと下らない話だ。
　死を<RUBY text="・・・・・">許されない</RUBY>なら、敵を潰して生き残る
しか道はない」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2300a00">
「ただそれだけの事」

{	FwC("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2310a02">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2320a03">
「……わかりました。
　けれど、景明さま」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2330a03">
「そうまであの怪物との戦闘に固執されるの
は――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2340a01">
《御堂。
　敵騎周辺に動きあり》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆視点転換
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　突如脳裏を打った村正の声に、視線を転ずる。
　着陸中の巨躯――こちらより低地に降りたため視界
が通り、状況の把握が可能だった。

　車両だ。
　大型の輸送車両が一台、<RUBY text="うずくま">蹲</RUBY>る怪物に近付いてゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2350a00">
「……不味い」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2360a01">
《どういうこと？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2370a00">
「弾薬の補給、あるいは搭乗する武者の交代
を行うものと思われる。
　村正、現時点を以ての行動再開は可能か!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2380a01">
《……まだ！
　現状態で飛び出しても、あそこまでたどり
着けるかどうかさえ怪しい》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2390a00">
「……く」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　弾薬補充はまだしもだが、体調万全の新たな仕手の
獲得を許せば彼我の優劣は絶望的なまでに隔絶する。
　それを見過ごす以外にないのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2400a02">
「湊斗さん？
　どうしたんですか」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2410a00">
「……大型車両が一台、敵騎に近付いている。
　推測するに、おそらくは補給活動のため」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2420a04">
「それは……
　いけませぬな」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2430a03">
「……阻止したくても、間に合いませんわね。
　せめてもう少し距離が近ければ……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2440a02">
「おまえの銃！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2450a03">
「風を読んでいる時間がありません。
　加えて、あの近辺の木々が微妙に邪魔」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2460a03">
「こちらの位置を教えるだけで終わってしま
います」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2470a02">
「くそ……！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2480a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　悪態をつきたい気持は俺も同じだった。
　しかし、気を取り直す。

　敵の武者が交代するならそれは大いに不利ではある
が、同時にこちらが知りたかった敵騎体内の人間存在
位置を看破する好機でもある。
　それさえ掴めば、敵騎に対する<RUBY text="レールガン">蒐窮</RUBY>の行使も可能だ。

　熱量が底を突きかけた状態から、どの程度の威力を
達成できるかという問題はあるが……
　ともあれそこは唯一の勝機。

　俺は視覚に意識を集中させた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2490a03">
「……やはり、補給ですね。
　今、荷台から下ろされたのは弾倉でしょう。
随分な大きさだこと」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2500a02">
「そいつを撃ったら爆発とかしないか？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2510a04">
「生憎でございますが。
　歩兵銃の一弾ばかりでは、到底」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2520a02">
「……だよなぁ」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2530a03">
「怪物から人が降ります！
　頭部の少し下のあたり……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2540a00">
「……確かに！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　記憶する。

　しかし――降りた者も新たに搭乗した者も、遠目に
形式までは明らかでないが、六波羅の制式竜甲を身に
つけた武者だった。
　あの怪物は武者を更に強化するための兵装なのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2550a02">
「それにしても……
　あんた、この暗いのによく見えるよな」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2560a03">
「ウナギとニンジンは欠かしませんから♪」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2570a02">
「なんだそれ？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2580a04">
「暗視能力を高めるビタミンＡの確保でござ
います。
　兵士として当然の心得と申せましょう」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2590a03">
「あと、眼の中心で見ないことがコツです。
　中心には明るいものを……今の場合なら月
を置いて、見たい所は端を使って見るのです」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2600a02">
「へぇ……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2610a03">
「やってごらんなさいまし」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2620a02">
「えーと、端を使って……」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2630a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2640a02">
「なんだ？　あの箱みたいの」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2650a03">
「……箱……？
　といいますか……あれは、籠？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
　籠に見えた。
　格子の面で構成された立方体。

　それは怪物の腹を割って取り出されたものだった。
　重要な部品ではないのだろうか？　無造作と言って
良い扱いで空き地に転がされ、それきり見向きもされ
ていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2660a03">
「中に何かあるようですが……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2670a00">
「は……
　何かが積み重ねられている様子」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2680a04">
「気になりますねぇ……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2690a03">
「ええ……
　何なのかしら。あれも何かの武器なのかも」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2700a04">
「このさよめが思いますに……
　歳末大売出し用買い溜め装備ではないかと」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2710a03">
「恐ろしいこと……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2720a02">
「あたしはおまえらが色々と恐ろしい」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2730a00">
「村正。
　視覚強化」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2740a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズームイン？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("絵板写", 4900);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 600, 1000, null, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
　焦点が合わされ、視覚情報が鮮明になる。
　あの籠は――鉄製。一辺はおよそ三メートル。

　中身は――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs2750a01">
《!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs2760a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
　――――巨大なる劔冑

　よほどの名工が造ったのだとしても
　桁違いの熱量を仕手から奪ってゆく代物に

　
　　　　　　　　桁違いの熱量を

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　……車両からまた、何かが降ろされる。
　それも籠。同じ籠。

　ただ一つ違う点は。
　中身。

　籠の中身は、動いている。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆芳養家の子供達
//◆芳養少年
	EfRecoIn1(18000,50);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(16100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("絵回想*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreatePlainSP("絵板写", 4900);
	SetShade("絵板写", HEAVY);
	EfRecoOut2(50,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　籠――
　籠ではない。

　あれは檻だ。
　檻なのだ。

　怪物の<RUBY text="・・">熱源</RUBY>を閉じ込めておくための！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2770a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2780a04">
「……お嬢さま？
　如何なさいましたか？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2790a03">
「人間です」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2800a04">
「……………………」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2810a02">
「……何が、だ？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2820a03">
「あの箱の中身は人間です。
　捨てられた方には、<RUBY text="・・・・・">枯れ果てた</RUBY>骸が」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2830a03">
「いま新たに化物の腹へ収まった方には、
　……泣き喚く子供達が」

{//◆鬼相
	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2840a02">
「――――――――」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2850a04">
「……は、は！
　なるほどなるほど」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2860a04">
「餌でございますか。
　あの育ち過ぎた豚を空に飛ばすための！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2870a03">
「考えてみれば、当たり前の発想ですね。
　劔冑は装甲者の熱量を消費して稼動する」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2880a03">
「その熱量が足りないのなら、人間を補って
やればいい。
　……素晴らしい発想ですこと！　卵の立て
方にも匹敵する叡智じゃありませんか！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2890a04">
「あれの製作者は天才でございますな」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs2900a02">
「…………。
　楽しそうだな？　おまえら」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2910a04">
「楽しゅうございますよ？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2920a03">
「それはもう、とてもとても――」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2930a04">
「愛情が人の心を陶酔させるように」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2940a03">
「憎悪に浸ることもまた、この上ない愉悦で
あれば」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2950a04">
「この殺意こそは至福でございます」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2960a03">
「この悪意こそは魂の甘露」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2970a04">
「楽しくてたまりませぬ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs2980a03">
「愉しくてたまりません」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs2990a04">
「くく」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3000a03">
「ふふ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　捨てられた檻の中の――
　枯れた骸。

　あれを殺したのは誰だ。
　あの怪物か。

　本当にそうか。

　怪物を引き回し、
　熱量を消耗させ、

　彼らの命を削り取ったのは誰だ？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01a","se人体_体_心臓の音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//◆ざっ。
	CreateSE("SE02","se特殊_鎧_駆動音02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
　俺は立ち上がった。
　素晴らしい。憎悪こそは力だ。

　こんなにも憎いから立てる。
　こんなにも憎いから動ける。

　脚の火傷が猛痛を放った。
　……足りない。

　身動きする都度、よろう甲鉄が俺の命を吸い、内臓
を絞られるが如き苦痛を呼ぶ。
　……足りない。

　足りぬ、
　足りぬ、
　まるで足りぬ。

　もっと傷が必要だ。
　もっと呪いが必要だ。
　奴にはもっと。もっと。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("絵色赤", 5000, "#990000");
	CreatePlainEX("絵板写弐", 4910);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 500, null, false);}
　
　　　　　　　　　　　苦しめ。

　一歩進むと、膝が折れた。
　かくかくと笑っている。

　惨めがましい。
　まだお前には、動く手足があるくせに。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 700, null, false);}
　
　　　　　　　　　　　苦しめ。

　一歩進むと、目が眩んだ。
　意識が霞み、感覚が曖昧になる。

　憐れがましい。
　お前はまだ、物を見て音を聞くことができるくせに。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 1000, null, false);}
　
　　　　　　　　　　ひとごろし。

　それを失くした人々のことを想え。
　想え。

　それをお前に奪われた人々のことを想え。
　想え。

　ああ。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色赤弐", 10000, "#990000");
	Fade("絵色赤弐", 300, 1000, Axl2, false);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);}
　　　湊斗景明。
　　　どうかこの苦悶が未来永劫お前を苛み、
　　　決して解放せぬように。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正立ち絵？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#990000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3010a02">
「湊斗さん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3020a02">
「どうするつもりですか」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

//◆一条立ち絵
	CreateSE("SE01b","se人体_動作_後ずさり01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/st一条_通常_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3030a00">
「邪魔だ」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3040a02">
「どうするんです」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3050a00">
「ゆく。
　あの怪物を斬り、子供達を助け出す」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3060a02">
「その体では無理です」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3070a00">
「ならその無理を通す」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3080a02">
「……」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3090a02">
「わかりました。
　あたしは何をすればいいですか」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3100a00">
「俺ひとりでいい」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3110a02">
「湊斗さん――」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3120a03">
「過信も妄信も個人の趣味でやる分には結構
ですけれど。
　この場合、どなたがその負債を背負うので
しょうか？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3130a04">
「湊斗さまだけで済まないことは確かでござ
いますね」

{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3140a02">
「黙れよ。
　おまえらに手を貸して欲しいとは思わない」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3150a03">
「ご案じなく。
　相手があんな愉快痛快なシロモノとあれば、
こちらもあなたがたと暢気に助け合いなどし
ながら臨むつもりはありません」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3160a03">
「勝手にやらせて頂きます。
　けれど、まぁ………互いに何をどうするか
くらいは知っておくと、あれと戦うにも効率
が良いでしょうから」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3170a03">
「その程度はしておきましょうか。
　今あの怪物に食い潰されている方々の苦痛
を、わたくしたちの勝手で引き伸ばしたくは
ありませんものね？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3180a00">
「……」

{//◆やや吐き捨てるように
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3190a00">
「どうぞ、お好きに」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3200a03">
「ええ♪」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3210a02">
「あたしも好きにさせてもらいます」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3220a04">
「いやはや……何と申しますやら。
　ここに至って、表面上チームワークのよう
なものを偽装していた我々の心が見事にバラ
バラになりましたな」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3230a04">
「まぁ元々このチーム編成には無理があった
のですが」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3240a03">
「そうねぇ。でも仕方ありませんし。
　ここはみんなの力を一つにまとめず、てん
で勝手に強大な敵へ向かってぶつけることに
致しましょう！」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3250a02">
「……勝てる気しねぇよ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs3260a01">
《同感ね……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆一度ブラックアウト
	CreateColorEX("絵色黒", 15000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
　作戦はおおよそ、このようなものになった。

　一。
　景明＝村正はひとまず潜伏し待機。
　体力を回復する。

　二。
　その間、香奈枝が敵騎の相手をしつつ電源ケーブル
を断つ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・作戦会議
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @60, @0,"cg/st/st香奈枝_通常_私服c.png");
	StCR(1000, @-60, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3270a00">
「電源ケーブル……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3280a03">
「細い上に迷彩が施されているようでひどく
見辛いですけど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
　言って、長身の進駐軍士官は指差した。
　離陸を開始しようとしている巨兵の下部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3290a03">
「騎体と直下の地表との間にいつも<RUBY text="・">筋</RUBY>があり
ます。あの大怪獣に満載されたおもしろ兵器
シリーズはおそらく、電力で稼動するもので
しょうから……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3300a00">
「成程。
　それは電力を供給する電線だと考えるのが
確かに妥当です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
　大鳥大尉の視線を追う。
　指示を受け、武者の視力を凝らしてみれば――辛う
じて線状の影が一筋あるのを見て取ることができた。

　意図されたことに違いないが、目視は難を極める。
　定石に則り、低空飛行する敵を主に上空から襲って
いた先刻の交戦時にはまるで気づかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3310a00">
「内蔵電池の存在は疑っていましたが……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3320a04">
「充分な容量を持つ電池を開発できなかった
か、それとも特定範囲内での運用という前提
におけるメリットデメリットを考慮した結果
か……ま、そんなところでございましょう」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3330a02">
「でもよ、木に絡まったりとかしないのか？
そんなの」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3340a03">
「あの電線、伸びたり縮んだりはしてません。
騎体がどう動いても。
　いつも真下に延びたままです」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3350a03">
「おそらく……
　あの電線は強靭な鍛鉄繊維で出来ていて、
騎体の動きに合わせて地表を切り裂きながら
移動しているのでしょう」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3360a03">
「地下で電源が一緒に移動しているとは考え
にくいですから、多分この辺りの地下一帯に
は通電盤のようなものがあって、あの電線は
それと繋がっているのではないかしら？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3370a00">
「そう考えれば納得ができます。
　あの奇妙な<RUBY text="・">轍</RUBY>のことも」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3380a04">
「ケーブルが走り回った跡というわけでござ
いますね」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3390a02">
「そういうことか……。
　じゃあとにかくあれをぶった斬れば、変な
大砲とかは使えなくなるわけだな？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3400a03">
「ええ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3410a00">
「ですが、大尉。
　如何にして電線を断つおつもりか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
　彼女の推測が正しく鍛鉄繊維製であるならば、劔冑
の甲鉄に近い材質で出来ているという事。
　生半可な方法では傷もつけられまい。

　チェーンソーを使っても数分は掛かるだろう。
　無論、そんな暢気なやり方が許される状況とも思え
ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3420a03">
「そうですね……。
　まぁ、どうにかなりますでしょう」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3430a03">
「ご心配なく♪」

{	FwC("cg/fw/fw一条_怒りb.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3440a02">
「……作戦の大前提だろ、そこは。
　心配するよ！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3450a03">
「あらあら」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
　柳に風と笑い流して、大尉は結局ろくに答えを寄越
さぬまま、さっさと陣取りに向かってしまった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
　三。
　一条及び永倉は海岸の灯台へ登り、全般状況を把握、
随時景明・香奈枝に連絡する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3460a02">
「どうやって連絡するんだ？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3470a04">
「この小型無線機で。
　お嬢さまも同じものを持っておられます。
有効範囲は狭いですが、この島の中なら充分
でございましょう」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3480a04">
「湊斗さまには……
　御劒冑と波長を合わせている時間がござい
ませんので」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3490a00">
「はい」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3500a04">
「危急の際には無差別発信を用いましょう。
　無論これは全ての武者、無線機に傍受され
てしまいますから、機密もへったくれもござ
いません。使用はよほどの時に限りましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
　当然だ。
　些か不便もあろうが、やむを得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3510a02">
「灯台か。
　見晴らしは良さそうだけど……夜だからな。
どのくらい見えるもんなんだろ」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3520a04">
「さて、怪しいところでございますね。
　しかし綾弥さま、そのような懸念は捨てて
おかれませ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3530a02">
「なんで？」

{	CreateSE("SE01","se戦闘_銃器_構える01");
	MusicStart("SE01",0,1000,0,700,null,false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3540a04">
「ここに<RUBY text="ナイトビジョン">暗視鏡</RUBY>がございますから」

{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3550a02">
「そんなもんがあるならさっき出せよ!?」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3560a04">
「お嬢さまがいらっしゃるときは無用の長物
ですので。電池に限りもございますし。
　ま、ここは使い時」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3570a04">
「性能は程々といったところでございますが、
それなりの距離まで赤外線照射が可能です。
　過信は禁物にせよ、使い方を誤らねば役に
立ちましょう」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3580a02">
「……まぁ、いいや。
　任せた」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3590a04">
「任されましてございます」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs3600a02">
「じゃ、湊斗さん。
　行ってきます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);
	Wait(50);
	DeleteStR(300,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
　そう言って、一条は灯台へ向かった。
　永倉侍従がその後についた。

　十数秒後、位置は逆になっていた。
　一歩あたり一度の割合で一条の進行方向が偏移して
いくことに、永倉侍従が気付いたからだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　四。
　景明＝村正は機を見て進突。
　敵騎を制圧する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//嶋：●１３＿１に合流

}


scene ma04_014vs.nss_ka
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//――――――――――――――――――――――――――――――
.//●１３Ｃ
//●１３Ｃ
	PrintBG("上背景", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	CreateSE("SE01","se人体_動作_後ずさり01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @90, @0,"cg/st/st香奈枝_通常_私服c.png");
	StCR(1000, @-30, @0,"cg/st/stさよ_通常_私服.png");

	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300,false);

	Wait(100);

	Move("@StMR*", 300, @-30, @0, Dxl2, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3610a03">
「やっぱり。景明さま！」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3620a00">
「……大尉!?」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3630a04">
「これは、これは。よくぞご無事で。
　………と申し上げるには少々、無理のある
格好でございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　現れたのは良く見知った顔。
　まだこの辺りにいたのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1400]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3640a03">
「か、景明さま……
　そのお姿は……っ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3650a03">
「落ち武者ごっこですか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3660a00">
「そう見えますか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3670a03">
「はい」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3680a00">
「その通りです」

{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3690a03">
「嘘を仰らないで！」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3700a04">
「あんた無茶苦茶ですよお嬢さま」

{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3710a03">
「そんな虚勢を張ってもわかります！
　相当に、痛めつけられたご様子……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3720a00">
「お気になさらず」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3730a04">
「あんたも無茶言いますね」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3740a00">
「それより、このような所に留まっていては
危険です。まだ戦闘は終了しておりません。
　お早く、島から退避して下さい」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3750a03">
「いま誰よりも危なっかしい方にそんなこと
言われたくありませんけど……
　それはそれとしておいても、そういうわけ
には参りませず」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3760a00">
「<RUBY text="なにゆえ">何故</RUBY>」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3770a03">
「景明さまをお助けするのがわたくしの任務
ですもの」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3780a00">
「……」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3790a04">
「付け加えますに。
　この状況は明らかに罠……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3800a04">
「容易く逃がして貰えるとも思えませず。
　船に戻るのは控えていた次第でございます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1410]
　……成程。
　確かに、そうか。

　これが仕組まれた罠であるなら、仕掛人が俺たちの
用いた船を見逃していると考えるのはいかにも甘い。
　周辺に伏兵を配されている可能性が大いに有り得る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3810a00">
「ではこの場を離れ、適切な地点にて潜伏、
待機していて下さい。
　敵騎を制圧した後、自分も合流します」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3820a03">
「簡単に仰いますけれど。
　……戦況はおおむね観ておりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
　観ていた？
　……夜間の騎航戦闘を？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3830a03">
「あれを実際に黙らせるのはもう少し難しい
ことなのではありませんか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3840a00">
「……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3850a03">
「弾を用いない砲、強力な磁場によるものと
思しい防壁、追ってくる弾丸――あれは遠隔
操作か熱源追跡か……」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3860a03">
「完成度はともかくとして、あの怪獣は最新
技術の塊です。
　正直なところ、一騎で立ち向かうには無理
のある相手ではないかと……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3870a04">
「……弾を使わない砲でございますか。
　また面妖な」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3880a03">
「弾の代わりに何かを飛ばしていたのは確か」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3890a03">
「景明さま。左腕と右脚、そして左脚をあの
砲で撃たれていましたでしょう？
　どのような被害をお受けになりました？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3900a00">
「格別の事は」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3910a03">
「左の手と足がもう動かないのはわかってい
ます」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3920a00">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3930a04">
「……得心ゆきました。
　<RUBY text="・・・・">焼かれた</RUBY>のでございますね、湊斗さま」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3940a04">
「先程から妙に鼻をくすぐるこの匂いが気に
なってはいたのです」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3950a00">
「……些か」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs3960a04">
「この匂いは骨の髄まで瞬時にして焼き尽く
された時のものと記憶しておりますが……。
　確かにこれでは動かせますまい」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3970a03">
「……あらまぁ」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs3980a00">
「大事はありません。
　劔冑の治癒能力をもってすればいずれ回復
します」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs3990a03">
「けれど、その前にまたあれと戦うおつもり
なのでしょう？
　勝算があるとお思いですか？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4000a00">
「一応は」

//◆からかい
{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4010a03">
「それは何割くらいの勝算ですの？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4020a04">
「お嬢さま」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4030a00">
「十割ほど」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4040a03">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4050a00">
「自分はあのような玩具に容易く殺される事
など許されぬ身です。
　現在、肉体的に幾らかの不自由があるよう
ですが」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4060a00">
「関係ありません。
　自分はあの敵騎を撃墜します」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4070a04">
「……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4080a03">
「……わかりました。
　けれど、景明さま」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4090a03">
「そうまであの怪物との戦闘に固執されるの
は――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4100a01">
《御堂。
　敵騎周辺に動きあり》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆視点転換
	CreateSE("SE01","se人体_動作_跳躍03");
	MusicStart("SE01",0,750,0,1750,null,false);
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	CreateTextureEX("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	SoundPlay("@mbgm16",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
　突如脳裏を打った村正の声に、視線を転ずる。
　着陸中の巨躯――こちらより低地に降りたため視界
が通り、状況の把握が可能だった。

　車両だ。
　大型の輸送車両が一台、<RUBY text="うずくま">蹲</RUBY>る怪物に近付いてゆく。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4110a00">
「……不味い」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4120a01">
《どういうこと？》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4130a00">
「弾薬の補給、あるいは搭乗する武者の交代
を行うものと思われる。
　村正、現時点を以ての行動再開は可能か!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4140a01">
《……まだ！
　現状態で飛び出しても、あそこまでたどり
着けるかどうかさえ怪しい》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4150a00">
「……く」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
　弾薬補充はまだしもだが、体調万全の新たな仕手の
獲得を許せば彼我の優劣は絶望的なまでに隔絶する。
　それを見過ごす以外にないのか……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1480]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4160a04">
「湊斗さま？　いかがなさいましたか」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4170a00">
「……大型車両が一台、敵騎に近付いており
ます。
　推測するに、おそらくは補給活動のため」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4180a04">
「それは……
　いけませぬな」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4190a03">
「……阻止したくても、間に合いませんわね。
　せめてもう少し距離が近ければ……」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4200a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1490]
　愚痴を吐きたい気持は俺も同じだった。
　しかし、気を取り直す。

　敵の武者が交代するならそれは大いに不利ではある
が、同時にこちらが知りたかった敵騎体内の人間存在
位置を看破する好機でもある。
　それさえ掴めば、敵騎に対する<RUBY text="レールガン">蒐窮</RUBY>の行使も可能だ。

　熱量が底を突きかけた状態から、どの程度の威力を
達成できるかという問題はあるが……
　ともあれそこは唯一の勝機。

　俺は視覚に意識を集中させた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1500]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4210a00">
「……あれは、弾倉を交換しているのか。
　まさしく<RUBY text="・">倉</RUBY>も同然」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4220a04">
「あれだけの数の大小砲を養わねばならない
わけでございますから。
　それは相当の量になりましょう」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4230a00">
「<RUBY text="まこと">真</RUBY>に」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4240a03">
「！
　あれを！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4250a03">
「怪物から人が降ります！
　頭部の少し下のあたり……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4260a00">
「……確かに！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1510]
　記憶する。

　しかし――降りた者も新たに搭乗した者も、遠目に
形式までは明らかでないが、六波羅の制式竜甲を身に
つけた武者だった。
　あの怪物は武者を更に強化するための兵装なのか？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1520]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4270a04">
「……？
　はて」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4280a04">
「何でございましょう……
　あの<RUBY text="・">箱</RUBY>は」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4290a03">
「……箱……？
　といいますか……あれは、籠？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4300a00">
「……籠でしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
　籠に見えた。
　格子の面で構成された立方体。

　それは怪物の腹を割って取り出されたものだった。
　重要な部品ではないのだろうか？　無造作と言って
良い扱いで空き地に転がされ、それきり見向きもされ
ていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4310a03">
「中に何かあるようですが……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4320a00">
「は……
　何かが積み重ねられている様子」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4330a04">
「気になりますねぇ……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4340a03">
「ええ……
　何なのかしら。あれも何かの武器なのかも」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4350a04">
「このさよめが思いますに……
　歳末大売出し用買い溜め装備ではないかと」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4360a03">
「恐ろしいこと……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4370a00">
「村正。
　視覚強化」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4380a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズームイン？
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, Axl2, true);
	WaitKey(100);

	CreatePlainEX("絵板写", 4900);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 600, 1000, null, false);
	FadeDelete("絵フラ", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1550]
　焦点が合わされ、視覚情報が鮮明になる。
　あの籠は――鉄製。一辺はおよそ三メートル。

　中身は――

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("@mbgm*", 2000, 0, null);
	PulseFlash(10000, 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4390a01">
《!!》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1570]
　――――巨大なる劔冑

　よほどの名工が造ったのだとしても
　桁違いの熱量を仕手から奪ってゆく代物に

　
　　　　　　　　桁違いの熱量を

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1580]
　……車両からまた、何かが降ろされる。
　それも籠。同じ籠。

　ただ一つ違う点は。
　中身。

　籠の中身は、動いている。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆芳養家の子供達
//◆芳養少年
	EfRecoIn1(18000,50);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StC(16100, @0,@0,"cg/st/st芳養_通常_私服.png");
	FadeStC(0,true);
	EfRecoIn2(50);

	WaitKey(50);

	EfRecoOut1(50);
	DeleteStA(0,true);
	Delete("絵回想*");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreatePlainSP("絵板写", 4900);
	SetShade("絵板写", HEAVY);
	EfRecoOut2(50,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1590]
　籠――
　籠ではない。

　あれは檻だ。
　檻なのだ。

　怪物の<RUBY text="・・">熱源</RUBY>を閉じ込めておくための！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1600]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4410a03">
「…………」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4420a04">
「……お嬢さま？
　如何なさいましたか？」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4430a03">
「人間です」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4440a04">
「……………………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4450a04">
「何ですと」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4460a03">
「あの箱の中身は人間です。
　捨てられた方には、<RUBY text="・・・・・">枯れ果てた</RUBY>骸が」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4470a03">
「いま新たに化物の腹へ収まった方には、
　……泣き喚く子供達が」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4480a04">
「…………」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4490a04">
「は――は！
　なるほど、なるほど！」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4500a04">
「餌でございますか。
　あの育ち過ぎた豚を空に飛ばすための！」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4510a03">
「考えてみれば、当たり前の発想ですね。
　劔冑は装甲者の熱量を消費して稼動する」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4520a03">
「その熱量が足りないのなら、人間を補って
やればいい。
　……素晴らしい発想ですこと！　卵の立て
方にも匹敵する叡智じゃありませんか！」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4530a04">
「あれの製作者は天才でございますな」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4540a03">
「本当に。
　……何だかわたくし、とても楽しくなって
まいりました」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4550a04">
「このさよめもでございますよ、お嬢さま」

{	FwC("cg/fw/fw香奈枝_冷笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4560a03">
「ふふ」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4570a04">
「ふふ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1610]
　捨てられた檻の中の――
　枯れた骸。

　あれを殺したのは誰だ。
　あの怪物か。

　本当にそうか。

　怪物を引き回し、
　熱量を消耗させ、

　彼らの命を削り取ったのは誰だ？

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ドクン。心臓の鼓動＋レッドアウトレッドイン
	CreateSE("SE01a","se人体_体_心臓の音02");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	PulseFlash(10000, 300, true);

//◆ざっ。
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SoundPlay("@mbgm04",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1620]
　俺は立ち上がった。
　素晴らしい。憎悪こそは力だ。

　こんなにも憎いから立てる。
　こんなにも憎いから動ける。

　脚の火傷が猛痛を放った。
　……足りない。

　身動きする都度、よろう甲鉄が俺の命を吸い、内臓
を絞られるが如き苦痛を呼ぶ。
　……足りない。

　足りぬ、
　足りぬ、
　まるで足りぬ。

　もっと傷が必要だ。
　もっと呪いが必要だ。
　奴にはもっと。もっと。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPmul("絵色赤", 5000, "#990000");
	CreatePlainEX("絵板写弐", 4910);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 500, null, false);}
　
　　　　　　　　　　　苦しめ。

　一歩進むと、膝が折れた。
　かくかくと笑っている。

　惨めがましい。
　まだお前には、動く手足があるくせに。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 700, null, false);}
　
　　　　　　　　　　　苦しめ。

　一歩進むと、目が眩んだ。
　意識が霞み、感覚が曖昧になる。

　憐れがましい。
　お前はまだ、物を見て音を聞くことができるくせに。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色赤", 0, 1000, null, true);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);
	Fade("絵色赤", 300, 1000, null, false);}
　
　　　　　　　　　　ひとごろし。

　それを失くした人々のことを想え。
　想え。

　それをお前に奪われた人々のことを想え。
　想え。

　ああ。

{	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵色赤弐", 10000, "#990000");
	Fade("絵色赤弐", 300, 1000, Axl2, false);
	FadeFR2("絵板写弐",0,850,300,0,0,50,Dxl3, false);}
　　　湊斗景明。
　　　どうかこの苦悶が未来永劫お前を苛み、
　　　決して解放せぬように。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正立ち絵？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#990000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1630]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4580a03">
「景明さま？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1640]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4590a03">
「どうされるおつもり？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――

//◆武者足音一回
	CreateSE("SE01","se人体_足音_鎧歩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	Shake("@StR*", 300, 4, 0, 0, 0, 1000, Dxl2, false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1650]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4600a00">
「邪魔だ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4610a03">
「あら、恐い。
　でも質問の答えにはなってませんことね？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4620a00">
「知れた事です。
　あの怪物を斬り、子供達を助け出します」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4630a03">
「そのお体でどうやって？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4640a00">
「どうとでもして」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4650a03">
「ふふふ……」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4660a00">
「笑われるのはご勝手ですが、そこをどいて
からにして頂きたい」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4670a03">
「過信も妄信も個人の趣味でやる分には結構
ですけれどね、景明さま。
　この場合、どなたがその負債を背負うので
しょうか？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4680a04">
「湊斗さまだけで済まないことは確かでござ
います」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4690a00">
「…………」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4700a03">
「<RUBY text="プリーズ">お願いします</RUBY>と、仰ってはいかが？」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4710a00">
「<RUBY text="ゴー・ホーム">お帰りはあちらだ</RUBY>。
　<RUBY text="ミリタリビッチ">軍用犬の牝</RUBY>」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4720a03">
「ま、つれない。
　冗談の通じない御方ですこと」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4730a04">
「いけませんよ、湊斗さま。
　もう少し余裕を持って生きられませんと」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4740a00">
「余裕……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆ぎりり。歯軋り
	CreateSE("SE01","se人体_体_歯軋り");
	MusicStart("SE01",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1660]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4750a03">
「ふふふ……
　じゃあどうしましょうか、ばあや？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4760a04">
「こちらはこちらで好きにやるのがよろしか
ろうと存じます。
　前の見えていない<RUBY text="バーサーカー">狂戦士</RUBY>などと組むより、
むしろその方が好都合でございましょう」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4770a03">
「そうねぇ。
　けれど、まぁ………互いに何をどうするか
くらいは知っておくと、あれと戦うにも効率
が良いでしょうから」

{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4780a03">
「その程度はしておきましょうか。
　今あの怪物に食い潰されている方々の苦痛
を、わたくしたちの勝手で引き伸ばしたくは
ありませんものね？　景明さま」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4790a00">
「……」

{//◆やや吐き捨てるように
	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4800a00">
「どうぞ、お好きに」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4810a03">
「ええ♪」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4820a04">
「いやはや……
　何と申しますか、我々の間に芽生えかけて
いた温かい繋がりとかそういった感じのもの
がなんか一瞬にして雲散霧消したようですな」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4830a04">
「まぁ元々そんなもの錯覚なのですが」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs4840a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);

//◆一度ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1670]
　作戦はおおよそ、このようなものになった。

　一。
　景明＝村正はひとまず潜伏し待機。
　体力を回復する。

　二。
　その間、香奈枝が敵騎の相手をしつつ電源ケーブル
を断つ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・作戦会議
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1680]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4850a00">
「電源ケーブル……？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4860a03">
「細い上に迷彩が施されているようでひどく
見辛いですけど」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1690]
　言って、長身の進駐軍士官は指差した。
　離陸を開始しようとしている巨兵の下部。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1700]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4870a03">
「騎体と直下の地表との間にいつも<RUBY text="・">筋</RUBY>があり
ます。あの大怪獣に満載されたおもしろ兵器
シリーズはおそらく、電力で稼動するもので
しょうから……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4880a00">
「成程。
　それは電力を供給する電線だと考えるのが
確かに妥当です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1710]
　大鳥大尉の視線を追う。
　指示を受け、武者の視力を凝らしてみれば――辛う
じて線状の影が一筋あるのを見て取ることができた。

　意図されたことに違いないが、目視は難を極める。
　定石に則り、低空飛行する敵を主に上空から襲って
いた先刻の交戦時にはまるで気づかなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1720]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4890a00">
「内蔵電池の存在は疑っていましたが……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4900a04">
「充分な容量を持つ電池を開発できなかった
か、それとも特定範囲内での運用という前提
におけるメリットデメリットを考慮した結果
か……ま、そんなところでございましょう」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4910a00">
「しかし、そんなものがあるのに行動の自由
を阻害された様子がないのは」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4920a03">
「あの電線、伸びたり縮んだりはしてません。
騎体がどう動いても。
　いつも真下に延びたままです」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4930a03">
「おそらく……
　あの電線は強靭な鍛鉄繊維で出来ていて、
騎体の動きに合わせて地表を切り裂きながら
移動しているのでしょう」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4940a03">
「地下で電源が一緒に移動しているとは考え
にくいですから、多分この辺りの地下一帯に
は通電盤のようなものがあって、あの電線は
それと繋がっているのではないかしら？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4950a00">
「……そう考えれば納得ができます。
　あの奇妙な<RUBY text="・">轍</RUBY>のことも」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs4960a04">
「ケーブルが走り回った跡というわけでござ
いますね」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4970a00">
「ですが、大尉。
　確かにその電線を断てば敵の戦力が大幅に
減退するとはいうものの」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs4980a00">
「問題は手段です。
　如何にして断つおつもりか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1730]
　彼女の推測が正しく鍛鉄繊維製であるならば、劔冑
の甲鉄に近い材質で出来ているという事。
　生半可な方法では傷もつけられまい。

　チェーンソーを使っても数分は掛かるだろう。
　無論、そんな暢気なやり方が許される状況とも思え
ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1740]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs4990a03">
「そうですね……。
　まぁ、どうにかなりますでしょう」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5000a03">
「ご心配なく♪」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5010a00">
「ご心配なくと言われましても」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5020a03">
「のー・ぷろぶれむ」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5030a00">
「それは、国際社会において最も信用に値し
ないとされている言葉ではありますまいか」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5040a03">
「まぁまぁ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1750]
　柳に風と笑い流して、大尉は結局ろくに答えを寄越
さぬまま、さっさと陣取りに向かってしまった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1760]
　三。
　永倉老は海岸の灯台へ登り、全般状況を把握、随時
景明・香奈枝に連絡する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5050a00">
「連絡の方法は」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5060a04">
「この小型無線機で。
　お嬢さまも同じものを持っておられます。
有効範囲は狭いですが、この島の中なら充分
でございましょう」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5070a04">
「湊斗さまには……
　御劒冑と波長を合わせている時間がござい
ませんので」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5080a00">
「はい」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5090a04">
「危急の際には無差別発信を用いましょう。
　無論これは全ての武者、無線機に傍受され
てしまいますから、機密もへったくれもござ
いません。使用はよほどの時に限りましょう」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1780]
　当然だ。
　些か不便もあろうが、やむを得ない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1790]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5100a00">
「しかし灯台に登っても、この夜闇。
　どの程度情勢を把握できるものかは、正直
疑わしいかと」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5110a04">
「ご案じなく。
　こういう時に役立つアイツ・<RUBY text="ナイトビジョン">暗視鏡</RUBY>がござ
いますので」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5120a00">
「…………。
　もっと早く出して下さい。そういうものは」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5130a04">
「お嬢さまがいらっしゃる間は無用でござい
ますからな。電池に限りもありますし。
　では、ご武運を」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1800]
　そう言って、永倉侍従も去った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト

	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1810]
　四。
　景明＝村正は機を見て進突。
　敵騎を制圧する。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


..//ジャンプ指定
//嶋：●１３＿１に合流

}


.//●１３＿１
//●１３＿１
//嶋：合流地点（13A,13C）
scene ma04_014vs.nss_01
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆現在。森に潜伏中
	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1820]
　……そうして、今。
　木々の中に身を伏せ、一切動かず、俺は機を待って
いる。

　こちらに比べれば格段に<RUBY text="・・・">効率的</RUBY>な方法で熱量を回復
した敵騎は、既に行動を再開している。
　低空域を鈍重に飛び、<RUBY text="くび">兜</RUBY>を巡らし。その挙措は獲物
を探す肉食恐竜を思わせた。

　狙われる側は怯える小動物そのものだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1830]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5140a00">
「村正。
　回復状況は」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5150a01">
《焦らないで。
　もうしばらく時間が要る》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5160a01">
《左腕と左脚は今はどうにもできないけれど
……右脚は動かせる程度にはしてみせる。
　それだけでも騎航能力がだいぶ変わるはず》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5170a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5180a01">
《地表で、まわりを障害物に囲まれていれば
<RUBY text="みみ">信号探査</RUBY>で発見される危険はまず無い。
　静止して発熱も抑えているから、<RUBY text="はだ">熱源探査</RUBY>
もよほど近付かれるまでは大丈夫》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5190a01">
《今は時間の稼ぎ時よ。
　それだけこちらが有利になる》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5200a00">
「……承知している。
　だが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1840]
　こうしている間にも。
　あの化物の中では――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1850]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5210a01">
《……わかってる。
　でも今、あのでかぶつはただ巡航している
だけ。熱量消費も相応でしかない》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5220a01">
《だから……焦らないで》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5230a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1860]
　その通りだ。
　いま焦燥に任せて飛び出せば、それこそ誰も救われ
なくなる。大鳥大尉の言い草ではないが、俺の無謀の
代価は無辜の子供達が支払うのだ。

　確実な勝機を待たねばならない。
　わかっていながら、しかしもどかしい。

　今、この瞬間。刻一刻と過ぎ去る時間の中で――
　<RUBY text="・・・・・・・・">食い潰されている</RUBY>命があることは事実なのだ！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぶち。
	CreateSE("SE01","se人体_血_たれる01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 5000, "#990000");
	FadeDelete("絵色血", 200, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1870]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5240a01">
《……御堂……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5250a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5260a01">
《鼻血が》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5270a00">
「気にするな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5280a01">
《熱量が減るでしょう》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5290a00">
「そうか。
　気をつける」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ぴちゅーん。銃弾が装甲に弾かれる音
	CreateSE("SE01","se戦闘_銃器_跳弾02");
	MusicStart("SE01",0,750,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1880]
　……今のは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1890]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5300a00">
「大尉が始めたようだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5310a01">
《みたいね。
　全く通じていないけれど》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1900]
　通じる筈がない。
　単発で武者の甲鉄を撃ち抜くなど、最新の高速徹甲
弾でもなければ成し得ぬ所業だ。増してあの重装甲。

　ライフルが列車砲にまで進化せねば無理だろう。

　空中城塞――そう称して何の誇張もない――が鈍い
動作で向きを変えてゆく。
　銃撃が来た、つまりは大鳥大尉がいる方角へ。無数
の凶悪な銃口と共に。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ぴちゅんぴちゅん
	CreateSE("SE02","se戦闘_銃器_跳弾02");
	CreateSE("SE02a","se戦闘_銃器_跳弾01");
	MusicStart("SE02",0,750,0,800,null,false);
	Wait(50);
	MusicStart("SE02a",0,750,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1910]
　その鼻先へ更に数発、叩き込まれるライフル弾。
　ほぼ同一のポイントへ集中させているのは流石だが、
しかし零はいくら加えても零でしかない。蚊が刺した
程にさえ、巨騎は痛痒を覚えていないように見えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1920]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5320a01">
《<RUBY text="けーぶる">電線</RUBY>を狙うんじゃなかったの？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5330a00">
「適当な地点へ誘い込んで確実に仕留める、
というような事を言っていたが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1930]
　今はその誘い込みの最中なのだろう。

　しかし、絶好の狙撃点に引き込んだところで、銃弾
の相対的威力が飛躍的に増すとも考えられない。
　弾かれるものはどこで撃ってもまず弾かれる筈だ。

　鍛鉄繊維の電源ケーブルは甲鉄に比べればまだしも
脆弱だろうが、ライフル狙撃程度で屈するかといえば、
それは大いに疑問だった。
　加えて、不利な条件は他にもある。

　通常の武者に比べればはるかに鈍足とはいえ、あの
巨兵も騎航しているのだ。ケーブルはそれに合わせて、
同じ速度で飛遊している。
　……そんなものを狙撃できるのか？

　大尉の視力がいかに卓抜していようと、それで済む
問題ではない。
　予知能力でも持ち合わせていなくては不可能な事と
思える。

　現実と必要条件との隔たりに、あの女性将校はどう
整合をつけるつもりなのか。
　できもしない事を安請け合いする人間とは思えない
が……この状況では信用すべき要素が無さ過ぎた。

　あてにせず、こちらで方策を練った方が良いだろう。
　村正の太刀でなら、鍛鉄繊維であろうと切れる。

　障害となるのは、あの磁気の防壁だ。
　あれごと斬り破るには電磁抜刀を用いる以外にない。

　しかしその後、敵騎の甲鉄を裂いて<RUBY text="ユーザー">仕手</RUBY>を引き摺り
出すのにも蒐窮の太刀は要る。
　多大な熱量を消費する電磁抜刀、その二撃目は果た
して、あの重甲を貫徹するだけの威力に達するか――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1940]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5340a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1950]
　あてにしてはならないと思いつつ。
　胸中に期待が蠢く。

　大鳥大尉が宣言を果たし、電線を断ち切ってくれる
ならば――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆灯台
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 1000, "slide_01_03_0", true);
	DrawDelete("絵暗転", 200, 1000, "slide_01_03_0", true);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1960]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5350a04">
「現時点ではかの<RUBY text="ゴリアテ">巨人</RUBY>のほかに敵兵力は確認
できませぬ。
　しかし存在は確実でございます。発見次第
お知らせ致しまするが……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5360a04">
「機械化歩兵なら格別、練度の高い山岳歩兵
でも繰り出されようものなら、暗夜下でこれ
を発見することはまず叶いますまい。
　くれぐれもお気をつけ下さいませ」

{	NwC("cg/fw/nw香奈枝.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5370a03">
《了解です。
　ではまた後程》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//分岐
//◆分岐
//◆ヒロイン全員生存なら１３＿２Ａ
//◆香奈枝のみなら１３＿２Ｃ

}


//――――――――――――――――――――――――――――――
...//●１３＿２Ａ
//●１３＿２Ａ
//嶋：全員生存
scene ma04_014vs.nss_01all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆かち。
	CreateSE("SE01","se日常_機械_無線通信01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StR(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1970]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5380a02">
「他にも敵がいるのは確実、って……
　そうなのか？」

{	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5390a04">
「無論でございます。
　先刻も補給部隊を見たではありませんか」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5400a02">
「ああいうのとは別に、戦闘部隊もいるって
んだろ？　今のは」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5410a04">
「あのような弩級兵器を単独で運用しても、
戦果は挙げられませぬ。ああも小回りが利か
ないのでは……時代遅れの攻城兵器が関の山。
　乃木将軍なら重宝したかもしれませんが」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5420a04">
「このような野戦で運用する以上、作戦目的
が何処にあるにせよ、痒い所に手を伸ばして
くれる部隊との併用は必須でございましょう。
　現に今、敵騎は索敵に難儀しておる様子」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5430a02">
「……それって、そういう部隊がいないって
ことなんじゃないのか？」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5440a04">
「であれば苦労はございませんが、楽観的に
過ぎましょうなぁ。
　何らかの理由で投入を控えているとみるの
が正しかろうと存じます」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5450a04">
「新兵器の試験を兼ねているのか、もっと他
に事情があるのか……
　それはさて、まだわかりませぬが」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


....//ジャンプ指定
//次scene　"13_3"

}


//――――――――――――――――――――――――――――――
...//●１３＿２Ｃ
//●１３＿２Ｃ
//嶋：香奈枝のみ生存
scene ma04_014vs.nss_01ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//◆かち。
	CreateSE("SE01","se日常_機械_無線通信01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1980]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5460a04">
「さて……
　増援がいつ出てくるか」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5470a04">
「<RUBY text="・・・・・・・・">いつまで出ないか</RUBY>。
　勝負の帰趨はその一点で定まりましょうか
……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――



....//ジャンプ指定
//次scene　"13_3"

//――――――――――――――――――――――――――――――

}


//――――――――――――――――――――――――――――――
.//●１３＿３
//●１３＿３
//嶋：13_2A,13_2C合流地点
scene ma04_014vs.nss_02
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//◆山中の香奈枝
	SoundPlay("@mbgm34",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg005_山中_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 1000, "slide_01_02_1", true);
	DrawDelete("絵暗転", 200, 1000, "slide_01_02_1", true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1990]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5480a03">
「何にしても気は抜けないということで」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	CreateSE("SE01","se人体_足音_走る01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2000]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5490a03">
「周囲を警戒いたしましょう。
　右よし左よし後ろよーし」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆割と近くにズガガッと着弾
	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 300, 0, null);

	MFlash(50,3);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5500a03">
「なぁんてやってられる場合じゃありません
ことよー！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆走る
	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("SE01","se人体_足音_走る01_L");
	SetVolume("SE01a", 2000, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,true);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	DrawDelete("絵黒幕", 200, 100, "slide_01_03_1", true);
	SetVolume("SE*", 20000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2020]
■作戦行動
　あのでかいのを適当に撃つ。

■期待戦果
　敵装甲表面に深さ約一ミリの陥没を増産し、敵兵の
精神にストレスを与え便秘・脱毛等を促す。

■敵脅威度
　最も弱小な銃砲一門の直撃で此方を沈黙させ得る。

■戦力比
　一〇対一
　
※（注１）

（注１）先の大戦直前、東条英機首相が英国と大和の
国力比を試算させたところ、一〇〇対一という回答で
あったが、これでは戦う前から士気が崩壊するので、
一〇対一として発表したという故事に倣っている。

■行動方針
　現実はあまり見ない。

■行動思想
「世界で一番強い動物はライフルを持った狙撃兵だ」

■結論
　頑張る。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(500);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5510a03">
「お粗末過ぎるー！
　でも人生に一度や二度くらいシュテファン
大聖堂から飛び降りることも必要かしらー!?」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ズガガッと着弾
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(50,3);

//◆走る
	CreateSE("SE01a","se人体_足音_走る01_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	Delete("絵演背景");
	DrawDelete("絵黒幕", 200, 100, "slide_01_03_1", true);
	SetVolume("SE01a", 1000, 0, null);

//◆撃ち返す。ずきゅんずきゅん。
	CreateSE("SE02","se戦闘_攻撃_ライフル撃つ4回");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, false);

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5520a03">
「あァっははははハハハハハハハハ!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆撃たれる。
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MFlash(50,3);

//◆撃ち返す。
	CreateSE("SE02","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSP("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 100, false);

//◆走る。
	CreateSE("SE02a","se人体_動作_跳躍03");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	DrawDelete("絵黒幕", 200, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2050]
　大鳥香奈枝はこの世の悪を憎悪する。

　何か格別の契機があったわけではない。
　貴種に生まれついた人間として、それは当然の素養
だった。

　人を支配すべく血統に命じられた者は、世を正しき
方へ導くため、衆の模範となるよう振る舞い、また世
を乱す悪を率先して撲滅せねばならない。
　かくあればこそ高貴の地位は保証される。

　財権を浪費し遊蕩奢侈に耽るばかりの者も、正義の
戦争を謳い兵を戦地へ送りながら自らは安全な宮殿に
留まる者も、民の畏敬と奉仕を受けるにはあたらない。

　世界に吹き荒れた『革命』の嵐が彼らの多くを滅ぼ
し去ったのは、何の不思議も理不尽もない事だった。
　言うなれば家の中に巣食っていた白蟻の群れが駆除
されただけの話なのだから。

　責務を疎かにし権利のみ貪る貴族など、社会の寄生
虫以外の何物でもない。
　だから――

　釈天御由緒家<RUBY text="おおとり">鵬</RUBY>氏の血に連なる者として。
　<RUBY text="おおとりうこのえのたいしょうじゅさんみたいまのまひとときつぐ">大鳥右近衛大将従三位当麻真人時継</RUBY>が長女香奈枝は
世の悪害を憎み撲滅する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5530a03">
「……ククッ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆撃つ
//◆撃ち返される
	CreateSE("SE01","se戦闘_攻撃_ライフル撃つ01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(10);
	Delete("絵演背景");
	Delete("絵色白");

	MFlash(50,3);

	CreateSE("SE01b","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2070]
　己の使命を貫徹する。
　血の責任を全うする。

　この世の正義を担い。
　世の正理を乱した悪に復讐する。

　復讐する。

　復讐！
　復讐！
　嘆きの血にかけて同量の血の<RUBY text="あがな">贖</RUBY>いを!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5540a03">
「キ――キキキ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆至近距離に着弾
	CreateSE("SE01a","se戦闘_破壊_爆発04");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreatePlainEX("絵板写", 900);
	Zoom("絵板写", 0, 1100, 1100, null, true);
	Fade("絵板写", 0, 500, null, true);

	FadeDelete("絵板写", 1000, false);
	Shake("絵板写", 1000, 20, 30, 0, 0, 1000, Dxl2, true);

//◆走る
//◆少し見晴らしの良い場所。山頂？
	CreateSE("SE01a","se人体_足音_走る01_L");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);
	CreateTextureSP("絵演背景", 4000, Center, Middle, "cg/bg/bg003_荒れ野_03.jpg");
	DrawDelete("絵黒幕", 200, 100, "slide_01_02_0", true);
	SetVolume("@m*", 2000, 0, null);
	SetVolume("SE*", 600, 0, null);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/014vs5550a03">
「……さぁーって、と。
　この辺りでよろしいかしら？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆灯台
//◆ウィリアム・テル序曲のコントラバス独奏アレンジ
//◆可能か？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 200, 1000, "slide_01_03_0", true);
	WaitPlay("@m*", null);
	DrawDelete("絵暗転", 200, 1000, "slide_01_03_0", true);


...//分岐
//◆分岐
//◆ヒロイン全員生存なら１３＿４Ａ
//◆香奈枝のみなら１３＿４Ｃ


}


//――――――――――――――――――――――――――――――
..//●１３＿４Ａ
//●１３＿４Ａ
//嶋：全員生存
scene ma04_014vs.nss_02all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm07",0,1000,false);

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2100]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5560a02">
「この音……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5570a04">
「お嬢さまが<RUBY text="・・・">始める</RUBY>ようでございます。
　なかなかの観物になりましょう。よくご覧
になっていてくださいませ」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5580a02">
「……けどよ。
　本当にやれるのか？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5590a04">
「心配ですか？　綾弥さま」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5600a02">
「あたしは銃のこと詳しくないけどさ。
　あの飛んでるコードをライフルで撃ち抜く
ってのが無茶苦茶だってことくらい、想像は
つく」

{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5610a04">
「無茶ではございません。無理でございます。
　どのように検討いたしましても」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5620a02">
「おい。婆さん」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5630a04">
「ご案じなきよう。
　……視線さえ通るなら。お嬢さまのボルト
は決して標的を逃しませぬゆえ」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/014vs5640a02">
「ぼると？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 700, 0, null);
	CreateColorSP("絵色黒", 10000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	WaitPlay("@mbgm*", null);


//◆●１３＿４Ｃに継続？　●１３＿５にジャンプ？　奈良原要確認
//嶋：※こちらですが、13_5に移動になります。

....//ジャンプ指定
//次scene　"１３＿５"

}



//――――――――――――――――――――――――――――――
..//●１３＿４Ｃ
//●１３＿４Ｃ
//嶋：香奈枝のみ生存
scene ma04_014vs.nss_02ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	PrintBG("上背景", 30000);
	OnBG(100,"bg046_江ノ島灯台_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

	SoundPlay("@mbgm07",0,1000,false);

	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2110]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5650a04">
「始められますか。
　お嬢さま……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5660a04">
「どうぞ、ご存分に<RUBY text="アート">芸術</RUBY>を描かれませ。
　お嬢さまだけの芸術を……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2120]
　――宙空を移動する、保護色の、極細の線を一弾に
よって撃ち抜く。
　それがどれほどの難事が、永倉さよは知っている。

　不可能事であると知っている。

　だが、もう一つ知っている。
　彼女は――主人の事を知っているのだ。

　永倉さよは<RUBY text="・・・・・">大鳥香奈枝</RUBY>を知っている。
　誰よりも。あるいは本人よりも深く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/014vs5670a04">
「――ゼノンの空論が事実となるとき。
　そこに<RUBY text="・・">魔法</RUBY>が現れる……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 700, 0, null);
	CreateColorSP("絵色黒", 10000, "#000000");
	DrawTransition("絵色黒", 200, 0, 1000, 100, Axl2, "cg/data/slide_01_03_0.png", true);

	WaitPlay("@mbgm*", null);

....//ジャンプ指定
//次scene　"１３＿５"
//嶋：●１３＿５に移動

}



//――――――――――――――――――――――――――――――
.//●１３＿５
//●１３＿５
//嶋：13_5A,13_5C合流
scene ma04_014vs.nss_03
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆荒覇吐
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Delete("上背景");
	DrawDelete("絵暗転", 200, 100, "slide_01_03_1", true);

	SoundPlay("@mbgm36",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2140]
　短い攻防を経て、彼は事態をほぼ把握した。

　幕軍・進駐軍、いずれの<RUBY text="コード">認識信号</RUBY>も発信しないあの
深紅色の武者には友軍がいたようだ。
　まるでそれが魔法の剣だと言わんばかりに、銃一挺
を<RUBY text="たの">恃</RUBY>んでこの<RUBY text="アラハバキ">荒覇吐</RUBY>に無謀な挑戦をする何者か。

　姿はいまだ確認できずにいるが、武者自身ではない
だろう。僚友が乗る荒覇吐と敵武者が戦う様子を彼は
終始遠望していたが、あれは旧代の真打劔冑だった。
　武装は腰に<RUBY text="は">佩</RUBY>いた大小のみで、銃砲は持たない。

　<RUBY text="リフト">昇降機</RUBY>の前で遭遇した時、劔冑を装甲して向かって
きた男の他にも人影があった――と、彼と交代する際
に僚友が告げたことを思い出す。
　おそらくは、それだ。

　武者が荒覇吐の甲鉄を前に四苦八苦している間は影
も見せなかったその仲間が、なぜ今になって現れて、
無謀な真似を始めたのか。
　推測を立てるにさしたる苦労は要らない。

　赤色の敵騎が先の交戦で甚大な被害を蒙ったことは
確認している。墜死しても不思議ではない程の。
　数度に渡って竜気砲を浴びているのだから、むしろ
そうならぬ事にこそ首を傾げなくてはならないだろう。

　異常な堅固さと云うべきだが、しかしこちらの熱量
枯渇と時を合わせて敵騎も急降下して山裾に消えたの
は、限界を示すものだったとみてまず間違いない。
　補給中に襲撃を受けなかった事からも確実だ。

　その後、敵騎はどうしたか……
　逃げた、のであれば彼にできる事は何もない。この
竜騎兵用強化外装は一歩兵を探し出して踏み潰すよう
には出来ていない。

　だがそれは無いだろうと彼はみていた。
　逃げるならば荒覇吐と遭遇した瞬間にそうしていれ
ばいい。蛮勇の<RUBY text="さが">性</RUBY>が邪魔したとしても、竜気砲の洗礼
を受けた後ならば尻尾を巻くだろう。

　こちらの足の鈍さは敵にも見え透いている。
　逃走は容易だと知れていた筈だ。にも拘わらず、彼
は交戦を継続した。

　そもそも敵は何者で、何を求めて、江ノ島へやって
来たのか。
　そう。目的が無い筈はない。

　突如現れるや研究所を掌握し、彼らに命令を下した
進駐軍将校――そのあたりの異変について、職業軍人
たる彼はさして興味を抱いていなかった――は無論、
知っているのだろう。だがこの際それは重要ではない。

　敵は目的の為、この荒覇吐と戦わねばならないのだ。
　<RUBY text="・・・">だから</RUBY>、友軍が現れて豆鉄砲を撃ち始めたのだ。

　なぜ？
　武者が回復する時間を稼ぐためだ、無論！

　なぜ、<RUBY text="・・">稼ぐ</RUBY>必要がある？
　黙って潜伏していられなかった理由は？

　敵は<RUBY text="・・">先制</RUBY>してきた。その銃が一切通用しないと知り
ながら。
　それはなぜか？

　――この荒覇吐と休息中の動けない敵騎が近距離に
あったからだ。
　至急引き離す必要があったのだ！

　ならば。
　敵は何処にいる？

　狙撃兵はどうでもいい。
　武者は何処に潜んでいる？

　最初に銃撃を浴びた場所の付近――

　そして、そう。銃一挺でこの荒覇吐を相手取ろうと
するほどの兵士ならば、常に最善、より最善を求めて
行動することができるはず。
　時間稼ぎを担う兵士の、この状況における最善とは？

　回復を終えた武者が出撃する時のため、武者に有利
な態勢を整えておくことだ――荒覇吐が武者に対して
弱点を見せるような位置関係に持ち込むことだ！

　敵が狙う弱点――先刻のように竜気砲か？
　否。それでは正面特攻も同じ事。<k>
　
　……電源ケーブル！

　保護色塗装はされているが、これだけの長時間交戦
したのだ。既に見つけられていても不思議ではない。
　陽動の兵士は武者が<RUBY text="そこ">其処</RUBY>を衝きやすいようにこちら
を誘う！

　敵兵の一見無意味なゲリラ戦術には確かに指向性が
ある。荒覇吐はある方向に導かれている。
　なら。ならば――

　以上を勘案せよ！
　敵軍の決定力たる武者はいま何処にいる!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1500, 0, null);
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);
	WaitPlay("@mbgm*", null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2149]
　……恐ろしい事に、若干の誤解を含みながらも彼の
推測は的を外していなかった。
　出撃回数二五回、幾多の空で<RUBY text="エース">撃墜王</RUBY>の名を<RUBY text="ほしいまま">恣</RUBY>にし、
<RUBY text="テストパイロット">試験操手</RUBY>へ栄転した熟練兵ならではの嗅覚であろうか。

　いずれにせよ。
　彼は<RUBY text="・・・">そちら</RUBY>へ砲口を向けたのだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	OnBG(100,"bg022_山林a_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeBG(0,true);
	FadeStR(0,true);
	Delete("絵ＥＶ");
	DrawDelete("絵色黒", 150, 100, "circle_01_00_0", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2150]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5680a00">
「――なっ……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5690a01">
《御堂！　逃げ――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆ぶぉーん。発振準備
	CreateSEEX("SE01a","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01a",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	MeimetuAction();
	Wait(2000);
	WaitKey(3000);


//◆ブラックアウト
	SetVolume("SE*", 3000, 0, null);
	CreateColorEX("絵色暗転", 10000, "#000000");
	Fade("絵色暗転", 3000, 1000, null, true);
	Delete("プロセス*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2160]
//◆テキスト横書き表示
　
　　　　<PRE>The paradox of "Tell and apple".</PRE>

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒下", 10000, "#000000");
	Delete("絵色暗転");

//◆中点パラドックス射撃
//◆香奈枝凶眼カットを挿入しつつ
//◆※ここでは眼とわからないように

	CreateSE("SE021","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE021a","se戦闘_動作_空上昇01");
	MusicStart("SE021",0,1000,0,1000,null,false);
	MusicStart("SE021a",0,1000,0,1000,null,false);
	CreateTextureSP("絵演元", 5100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @180, @0, @0, null,true);
	Zoom("絵演元", 0, 1010, 1010, null, true);
	CreatePlainEXadd("絵演", 5110);
	SetBlur("絵演", true, 2, 500, 60, false);
	SetVertex("絵演", right, bottom);
	Zoom("絵演", 0, 3000, 3000, null, true);
	Fade("絵演", 0, 700, null, true);
	Delete("絵色黒下");
	Zoom("絵演", 300, 1000, 1000, null, false);
	Shake("絵演", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("絵演", 200, true);

	Wait(300);

	CreateWindow("絵窓", 5000, 0, 96, 1024, 384, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateSE("SE01","se特殊_陰義_発動03");
	CreateColorSP("絵窓/絵演色", 10010, "#990000");
	CreateTextureSPmul("絵窓/絵演背景", 10020, -145, -200, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	CreateTextureEXover("絵窓/絵演ＥＶ覆", 10110, -203, -217, "cg/ev/resize/ev004_香奈枝の凶眼_bm.jpg");
	CreateTextureSPover("絵窓/絵演ＥＶ", 10100, -203, -217, "cg/ev/resize/ev004_香奈枝の凶眼_bm.jpg");
	Fade("絵窓/絵演ＥＶ覆", 0, 500, null, true);
	MoveFFP1("@絵窓/絵演ＥＶ",1000);
	MoveFFP2("@絵窓/絵演ＥＶ覆",5000);

	CreateColorSPadd("絵窓/絵演色白", 10200, "#FFFFFF");
	MusicStart("SE01",0,1000,0,1500,null,false);
	Zoom("絵窓", 200, 1000, 1000, Dxl2, true);
	FadeDelete("絵窓/絵演色白", 100, true);

	WaitKey(500);

	$SEパラドックス_ma04_014vs=se特殊_陰義_バロウズ_パラドックス01;
	$SE矢飛翔_ma04_014vs=se戦闘_バロウズ_ボーガン射撃01;

	CreateSE("SE022","$SEパラドックス_ma04_014vs");
	CreateSE("SE022a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE022",0,800,0,1200,null,false);
	MusicStart("SE022a",0,800,0,1200,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @180, @0, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 3000, 3000, null, true);
	Fade("絵演弐", 0, 700, null, true);
	MoveFFP1stop();
	MoveFFP2stop();
	Delete("絵窓");
	Delete("絵板写");
	Zoom("絵演弐", 300, 1000, 1000, null, false);
	Shake("絵演弐", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("絵演弐", 200, true);

	Wait(300);

	CreateSE("SE023","$SEパラドックス_ma04_014vs");
	CreateSE("SE023a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE023",0,700,0,1300,null,false);
	MusicStart("SE023a",0,700,0,1300,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティングb.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 3000, 1500, null, true);
	Fade("絵演弐", 0, 700, null, true);
	Delete("絵板写");
	Zoom("絵演弐", 150, 1000, 1000, null, false);
	Shake("絵演弐", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("絵演弐", 100, true);

	CreateSE("SE024","$SEパラドックス_ma04_014vs");
	CreateSE("SE024a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE024",0,800,0,1200,null,false);
	MusicStart("SE024a",0,800,0,1200,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティングa.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 1500, 3000, null, true);
	Fade("絵演弐", 0, 700, null, true);
	Delete("絵板写");
	Zoom("絵演弐", 150, 1000, 1000, null, false);
	Shake("絵演弐", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("絵演弐", 100, true);

	CreateSE("SE025","$SEパラドックス_ma04_014vs");
	CreateSE("SE025a","$SE矢飛翔_ma04_014vs");
	CreatePlainSP("絵板写", 20000);
	MusicStart("SE025",0,900,0,1100,null,false);
	MusicStart("SE025a",0,900,0,1100,null,false);
	CreateTextureSP("絵演元", 11100, Center, Middle, "cg/ef/ef025_パラドックスシューティング.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 1, @0, @180, @0, null,true);
	CreatePlainEXadd("絵演弐",11100);
	SetBlur("絵演弐", true, 2, 500, 60, false);
	Zoom("絵演弐", 0, 3000, 3000, null, true);
	Fade("絵演弐", 0, 700, null, true);
	Delete("絵板写");
	Zoom("絵演弐", 150, 1000, 1000, null, false);
	Shake("絵演弐", 150, 20, 0, 0, 0, 1000, null, false);
	Wait(50);
	FadeDelete("絵演弐", 100, true);

	CreateSE("SE026","se戦闘_バロウズ_ボーガン射撃02");
	CreateSE("SE026a","se戦闘_動作_空上昇01");
	CreateSE("SE026b","se戦闘_攻撃_鎧攻撃命中03");

	MusicStart("SE026",0,1000,0,1000,null,false);
	MusicStart("SE026a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演効果", 6000, 8, -614, "cg/ef/ef044_火花c.png");
	CreateTextureEX("絵演荒覇", 5500, -90, -540, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵演元", 5100, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	Zoom("絵演元", 0, 1010, 1010, null, true);
	Request("絵演元", Smoothing);
	CreatePlainEXadd("絵演", 5110);
	SetBlur("絵演", true, 2, 500, 60, false);
	SetVertex("絵演", right, top);
	Zoom("絵演", 0, 3000, 3000, null, true);
	Fade("絵演", 0, 700, null, true);
	Delete("絵色黒下");
	MusicStart("SE026b",0,1000,0,1000,null,false);
	Fade("絵演荒覇", 0, 500, null, true);
	Shake("絵演荒覇", 300, 20, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演効果", 300, 3000, 3000, Dxl2, false);
	Rotate("絵演効果", 300, @0, @0, @3600, Dxl2,false);
	Zoom("絵演", 300, 1000, 1000, null, false);
	Shake("絵演", 300, 20, 0, 0, 0, 1000, null, false);
	Wait(100);
	FadeDelete("絵演効果", 200, false);
	FadeDelete("絵演", 200, true);

//◆ケーブル断線
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 2000, "#FFFFFF");
	CreateTextureSP("絵演", 300, -46, -1260, "cg/ef/resize/ef026_汎用爆撃extl.jpg");
	Zoom("絵演", 0, 1010, 1010, null, true);
	CreatePlainEXadd("絵板写", 1000);
	Fade("絵板写", 0, 1000, null, true);
	SetBlur("絵板写", true, 2, 500, 60, false);
	Delete("上背景");
	CreateSE("SE031a","se戦闘_破壊_爆発05");
	CreateSE("SE031b","se特殊_陰義_発動03");
	MusicStart("SE031a",0,1000,0,700,null,false);
	MusicStart("SE031b",0,1000,0,1000,null,false);
	Zoom("絵板写", 800, 2000, 2000, Dxl2, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	FadeDelete("絵板写", 1000, false);
	FadeDelete("絵暗転", 1400, true);

//◆荒覇吐
	CreateSE("SE041","se戦闘_荒覇吐_転倒01");
	MusicStart("SE041",0,1000,0,1250,null,false);
	CreateTextureSP("絵演弐", 3000, -175, -30, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	CreatePlainSPadd("絵板写", 3100);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 200, false);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, Dxl2, true);
	Fade("絵板写", 300, 0, null, false);
	DrawDelete("絵板写", 300, 1000, "effect_01_00_0", true);

	SoundPlay("@mbgm12",0,1000,true);

//◆まあボイスも顔グラもいらんか。
//嶋：顔ウィンドウかネームプレート希望（その他との統一が必要なため）
//ムー：下のタグつけました。
	SetNwC("cg/fw/nw六波羅武者.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2170]
//【ｅｔｃ／六波羅武者】
<voice name="六波羅武者" class="その他男" src="voice/ma04/014vs5691z00">
「――――!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg022_山林a_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeBG(0,true);
	DrawDelete("上背景", 200, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 200, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2180]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5700a01">
《……斬った!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2190]
　あの禍々しき砲門が雄叫びを上げる寸前。
　蒼闇を裂いた疾光が、電源ケーブルをも薙ぎ払って
いた。

　香奈枝嬢の<RUBY text="アクション">攻撃</RUBY>だろう。
　何を為したのか、如何なるものだったのかはわから
ないが――とまれこれは待ちに待った好機！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5710a00">
「<RUBY text="で">出撃す</RUBY>る」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/014vs5720a01">
《諒解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆合当理稼動。出撃ー。
	CreateSE("SE01","se戦闘_動作_鎧_合当理吹かし01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 6000, "#FFFFFF");
	CreatePlainEXadd("絵板写", 5000);
	Fade("絵色白", 250, 1000, null, false);
	Fade("絵板写", 100, 1000, Dxl2, false);

	SetVertex("絵板写", 750, 90);
	Zoom("絵板写", 100, 1250, 1250, null, true);

	WaitAction("絵色白", null);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色黒", 5100, "#000000");
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	Wait(1000);

//◆モニター展開
//あきゅん「演出：荒覇吐戦で負傷しているのでパラ下げてます、この後の雪車町戦要注意」

	Cockpit_AllFade(300,432,0);

	CreateSE("SE01","se特殊_コックピット_起動音04");
	$残時間=RemainTime("SE01")-1000;
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵色黒", 500, 1000, "slide_05_00_0", true);

	CP_IHPChange(300,5,null,false);
	CP_PowerChange(30,500,null,false);
	CP_AziChange(1000,100,AxlDxl,false);

	Wait(1000);

	FadeDelete("絵色白", 1000, true);

	Wait(1000);

	CreateSE("SE02","se戦闘_動作_鎧_合当理吹かし01");
	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);
	CreateColorEX("絵色白", 11000, "#FFFFFF");

	FrameShakeSt(150);

	CP_SpeedChange(300,513,Dxl2,false);
	MyTr_Count(100,445);

	CP_HighChange(1000,982,Dxl2,false);
	CP_AltChange(300,70,Axl2,false);

	Fade("絵色白", 150, 1000, null, true);

	Wait(800);

	CreateTextureSP("絵演空中背景", 5010, Center, -4930, "cg/bg/bg202_旋回演出背景山a_03.jpg");
	CreateSurfaceEX("絵効果サフ", 5000,1000,"@絵演空中背景");
	Fade("絵効果サフ", 0, 1000, null, true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	Move("絵演空中背景", 1300, @0, -4780, Dxl2, false);

	Delete("@OnBg*");
	FadeDelete("絵色白", 1000, true);

	WaitAction("絵演空中背景", null);

	CP_AltChange(4000,0,DxlAuto,false);
	Move("絵演空中背景", 3000, @0, -5080, AxlDxl, false);

	Wait(3000);

	MoveFFP1("@絵演空中背景",7500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2210]
　体内の熱を背面の合当理に落とし込み、推力に変換
せしめて離陸する。
　万全とは言い難い加速、反面普段以上に強い<RUBY text="Ｇ">荷重</RUBY>の
もたらす失調感――<RUBY text="バッドコンディション">体調不良</RUBY>の影響は未だ大きい。

　しかしそれでも戦うには足る。
　村正は言った通りの事を果たしていた。治癒の力が
重点的に注がれたのだろう、右脚はやや回復し動かぬ
左の分も補って騎航姿勢の保持に働いている。

　腕も問題はなかった。左は動かないが、右が健在だ。
尋常の武者と尋常の勝負に臨むのであれば不利は否め
ないが、そんな状況でもない。
　ただ電磁の一刀を揮うのみ。片腕だけで事足りる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒覇吐、ロックオン
	Move("絵演空中背景", 2000, @0, @-288, DxlAuto, false);
	Wait(2000);

	CreateWindow("絵窓", 8000, 347, 173, 410, 230, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 0, null, true);
	CreateEffect("絵窓/絵画面効果", 9000, 0, 0, 1030, 580, "KitanoBlue");
	SetAlias("絵窓/絵画面効果","絵窓/絵画面効果");
	CreateTextureEX("絵窓/絵演効果画面", 8000, Center, Middle, "cg/data/noize_01_00_0.png");
	CreateTextureEX("絵窓/絵演立絵装甲", 8100, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	Zoom("絵窓/絵演立絵装甲", 0, 500, 500, null, true);
	Fade("絵窓/絵演立絵装甲", 0, 500, null, true);
	Fade("絵窓/絵演効果画面", 0, 250, null, true);

	CreateSE("SE01","se特殊_コックピット_ロックオン");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2220]
　敵騎の挙措からは混乱が窺えた。閃光の一射が飛来
した方角を向き、おそらくは探査機能を働かせながら、
銃砲群の狙いを定めようとしている――<k>馬鹿げていた。
もう遅い。今更大尉を仕留めても状況は覆らない。

　本来、それがわからぬ兵士でもないのだろう。
　あの鉄塊の乗り手は――しかし、ケーブルと諸共に
心の緒まで断ち切られていたか。

　一瞬前、死の瀬戸際に立たされていた筈の俺が今、
駆け抜けるのは敵騎の致命的な隙へ直進する一線。
　見えている。先刻確認した、仕手の搭乗位置！

　にも拘わらず迎撃はない。
　異形の巨人は<RUBY text="おの">己</RUBY>がアキレス腱を切り裂いた何者かに
意識を奪われている。危急の状勢を看過している。

　最大の好機。
　ここで、決めねば――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_ロック解除01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵窓", 300, 0, 0, Dxl2, true);
	Delete("絵窓");

//◆突進
//◆もーちょっとってとこで
	SetVolume("SEL*", 300, 0, null);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1100,null,false);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 3100, -590, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -590, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);

	Delete("絵演ＳＴ");
	Delete("絵色黒");
	Delete("絵演空中*");
	Delete("絵効果サフ*");
	MoveFFP1stop();

//あきゅん「ＣＰ：すぐ先のファイルでもＣＰあるので消すだけにします」
	Cockpit_AllFade0();
	FadeDelete("絵色白", 100, false);

	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateColorSP("絵色黒", 10000, "#000000");

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2230]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5730a12">
《秋の夜長を待ちかねて菊見がてらに<RUBY text="さと">廓</RUBY>の露、
　濡れてみたさに来てみれば案に相違の愛想
尽かし》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆九〇式竜騎兵（雪車町仕様）が割り込んできまーす。
//あきゅん「素材確認：え、そんなの無いけどどうすんの？　とりあえず九〇式竜で対応」
	PrintGO("上背景", 30000);
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	Cockpit_AllFade0();
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2240]
　――――!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵演ＳＴ", 100, Center, Middle, "cg2/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Move("絵演ＳＴ", 0, @0, @-72, null, true);
	Zoom("絵演ＳＴ", 0, 200, 200, null, true);
	SetBlur("絵演ＳＴ", true, 3, 500, 50, false);
	Request("絵演ＳＴ", Smoothing);
	Move("絵演ＳＴ", 600, @0, @-20, DxlAuto, false);
	Fade("絵演ＳＴ", 600, 1000, null, true);

	SetFwL("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2250a]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/014vs5740a12">
《花魁、そりゃァあんまり袖なかろうぜぇ！
　村正ァァァァァァァッ!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text2250b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/014vs5750a00">
《お前は……!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆激突
//◆一合打ち合い。がきがきーん。
	CreateColorEX("絵色黒", 10000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE01a","se戦闘_攻撃_野太刀振る02");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵演ＳＴ", 400, 1500, 1500, Axl2, false);
	Move("絵演ＳＴ", 100, @0, @-20, null, true);
	Move("絵演ＳＴ", 300, @0, @180, Axl2, false);
	Wait(100);
	Fade("絵色黒", 200, 1000, null, true);

	MusicStart("SE01a",0,1000,0,1500,null,false);
	SL_rightdown2(10010,@0, @0,2000);
	SL_rightdownfade2(10);

	CreateSE("SE02","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureSP("絵演元", 10020, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵演元", Smoothing);
	Rotate("絵演元", 0, @0, @180, @0, null,true);
	CreatePlainSPadd("絵演", 10030);
	Zoom("絵演", 0, 1250, 1250, null, true);
	SetBlur("絵演", true, 3, 500, 200, false);
	FadeDelete("絵演", 800, false);
	Shake("絵演", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演", 200, 1000, 1000, null, false);

	ClearWaitAll(2000, 0);

..//ジャンプ指定
//次ファイル　"ma04_015vs.nss"


}

//★選択肢シーン
scene ma04_014vs_ic_Select.nss
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm12",0,1000,true);

	Cockpit_AllFade0();

	OnBG(100,"bg022_山林a_03.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 1000, true);

//■選択肢
	SetChoice02("一条を守る","役割に徹する");
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
			ChoiceA02();
//一条を守る　"ma04_014vsa.nss"
			$一条を守る = true;
		}
		case @選択肢２
		{
			ChoiceB02();
//役割に徹する　"ma04_014vsb.nss"
			$GameName = "ma04_014vsb.nss";
			$役割に徹する = true;
		}
	}
}

.//プロセス用======================================================

..//明滅な光
function MeimetuAction()
{
	CreateProcess("プロセス明暗", 5000, 0, 0, "MeimetuSET");
	SetAlias("プロセス明暗","プロセス明暗");
	Request("プロセス明暗", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@絵演上", 800, 1000, null, true);
	Wait(200);
	Fade("@絵演上", 800, 0, null, true);
	Wait(200);
	}

}