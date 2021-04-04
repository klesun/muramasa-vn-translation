//<continuation number="640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_028.nss_MAIN
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
	#bg018_知事執務室_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_029.nss";

}

scene md04_028.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_027.nss"


//◆鎌倉
//◆司令部
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");

//おがみ：ここ、夜背景必要な気がする・・・、ついでに夕方も他シーンで使用。
	OnBG(100, "bg018_知事執務室_03.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);


	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(300, true);

	Wait(500);

	SetFwH("cg/fw/fwウォルフ_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280010a13">
「我々のすべきことは一つだよ。
　そうではないかね？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280020a13">
「ウィロー少将。
　キャノン中佐……」

{	StL(1000, @140, @0, "cg/st/stウィロー_通常_制服.png");
	FadeStL(300, false);
	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280030b00">
「ええ、教授。
　わかっていますとも」

{	StCL(1000, @-80, @0, "cg/st/stキャノン_通常_制服.png");
	FadeStCL(300, false);
	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280040b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280050b00">
「鍛造雷弾使用の申請をもう一度、<RUBY text="ジュネーヴ">国連本部</RUBY>
へ出しましょう」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280060b03">
「あまりしつこいのも逆効果では？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280070b00">
「こちらが黙っておとなしくしていたからと
いって、気を利かせてくれるような連中では
ない」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280080a13">
「まったく、少将の言う通りだよ。
　肉食獣に博愛精神を期待する方がまだしも
見込みはあると思うね」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280090a13">
「彼らは年老いた牛に似ている。何度も鞭で
打たねば働こうとしない。
　……いや、違うな。鞭で動く間はまだまし
だった」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280100b03">
「どういうことです？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280110a13">
「僕は彼らにほとほと愛想を尽かしていると
いうことだよ、中佐。
　この期に及んで鍛造雷弾の使用許可を出し
渋るとは、状況を見る目が無いとしか思えん」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280120a13">
「わかっているのかな、彼らは？
　大和進駐軍は大和の完全支配を目的として
設けられた軍組織だった――その目的が成就
するか水泡に帰すか、今がまさに瀬戸際だと」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280130b00">
「理解しておりますまい！
　本当にあてにならない連中ですよ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280140b03">
「……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280150b03">
（俺達の立場で、言えた義理じゃないだろう
なぁ……）

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280160b00">
「何か言ったか、中佐？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280170b03">
「いえ、別に」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280180a13">
「ウィロー少将。
　我々は、決断するべきなのかもしれないよ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280190b00">
「教授、それは」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280200a13">
「いいかね。
　鍛造雷弾は、決戦兵器は存在するのだ……」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280210a13">
「我々の手が届く所に。
　ただ使用の許可が与えられていないだけで」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280220b00">
「……ええ」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280230a13">
「奪ってしまってはどうかな？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280240b00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_戦慄.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280250b03">
「ウォルフ教授。
　ここ最近のあなたはどうも、扇動家じみて
いますね」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280260b03">
「そちらがご本性ですか？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280270a13">
「さて、僕は何も変わっていないつもりだが。
　真実を探求し、真実を告示する……ただの
学徒だよ」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280280b03">
「その真実は誰が保証するのです？
　神ですか。それともあなたご自身が？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280290a13">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280300b00">
「クライブ、止せ！
　教授は忠告と助言を下さっただけだ」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280310b03">
「……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280320b00">
「それに……言われることは正しい。
　この際、強硬手段も視野に入れよう」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280330b03">
「本気ですか」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280340b00">
「我々は圧倒的な――驚異的な戦果をもって
大和国民を畏服させ、反抗心を奪い、完全な
支配下に置かなくてはならないのだ。
　……その機はもう既に失われつつある……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280350b00">
「我々は六波羅如きとほぼ<RUBY text="・・">互角</RUBY>の戦いを演じ、
その一部始終を大和国民に見られてしまった」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280360b03">
「……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280370b00">
「極めてまずい。
　猶予している場合ではない！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280380b00">
「一刻も早く、我が軍の実力を知らしめねば
ならん！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280390b03">
「しかし、閣下……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280400b00">
「ウォルフ教授。
　先日あなたが仰った通り、いささか乱暴な
手段でもためらう必要はない」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280410b00">
「我々は大和を占領したのちすぐ、新大陸の
同胞と共に蜂起するのですからね」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280420a13">
「うむ。そうだ。
　傲岸なる女王の時代に、終止符を打つべく
してね」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280430b00">
「その折には、教授のかつてのお仲間も」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280440a13">
「<RUBY text="ライヒ">統合独逸</RUBY>の同胞だね？
　もちろん、陰日向に君達を支援するさ」

{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280450b00">
「そうなれば……きっと世界各地で反女王の
火の手が上がる。
　時代が変わりますよ、教授！」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280460a13">
「ああ変わる。変わるとも。
　古き世界は葬られ、新たな世界が降誕する
だろう！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280470b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280480b03">
（駄目だな。
　もう俺より教授の方を信頼してるらしい）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280490b03">
（教授がやたら少将に近付いてると気付いた
時に、手を打っておくべきだった。
　後悔先に立たずってやつか。この国の諺で
言うところの……）

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280500b03">
（…………）

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280510b03">
（<RUBY text="・・・">見切り</RUBY>を……考えなきゃいかんか）

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280520b03">
（あんたとは最後まで一緒にやっていけると
思ってたんだけどな、ウィロー少将……）

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0280530a13">
「決意したなら、行動を急ぐべきだ。友よ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280540b00">
「ええ。早い方がいい……。
　キャノン中佐、手配を頼む」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0280550b03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆コンコン。ノック
	OnSE("se人体_動作_ドアノック01",1000);
	Wait(1000);

	SetNwH("cg/fw/ny司令部付兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280560e087">
「閣下！」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280570b00">
「……？　どうした。
　呼ぶまで近付くなと言っておいただろう」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280580e087">
「そ、それが……
　至急、ウィロー少将に会いたいという方が」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280590b00">
「こんな時間に？
　前線からの報告か？」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280600b00">
「敵がまた夜襲でも仕掛けてきたのか」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280610e087">
「違います。
　我が軍の者ではなく、その――」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280620b00">
「何だ、来客か？
　随分と非常識だな……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0280630b00">
「誰か知らんが、しばらく待たせておけ」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0280640e087">
「し、しかし」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);


}

..//ジャンプ指定
//次ファイル　"md04_029.nss"