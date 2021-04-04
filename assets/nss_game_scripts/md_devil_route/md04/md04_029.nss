//<continuation number="1760">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_029.nss_MAIN
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
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_サシュアント=true;

	$PreGameName = $GameName;

	$GameName = "md04_030.nss";

}

scene md04_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_028.nss"


	PrintBG("上背景", 30000);
	OnBG(100, "bg018_知事執務室_03.jpg");
	FadeBG(0, true);

	StL(1000, @140, @0, "cg/st/stウィロー_通常_制服.png");
	StCL(1000, @-80, @0, "cg/st/stキャノン_通常_制服.png");
	StR(1000, @0, @0, "cg/st/stウォルフ_通常_私服.png");
	FadeStR(0, false);
	FadeStCL(0, false);
	FadeStL(0, false);

	Delete("上背景");

	DeleteStA(300,false);

	SetNwH("cg/fw/nyその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290010a03">
「……部下を困らせてはいけませんことよ、
ウィロー少将。
　上位命令には逆らえない。それが組織人の
宿命なんですもの」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ
//◆香奈枝、さよ

	OnSE("se日常_建物_扉開く09", 1000);

	Wait(1000);
	StL(1000, @100, @0, "cg/st/st香奈枝_通常_制服b.png");
	StC(1000, @-350, @0, "cg/st/stさよ_通常_私服.png");
//	Move("@StC*", 400, @50, @0, null, false);
//	Move("@StL*", 300, @50, @0, null, false);
	FadeStL(500, false);
	FadeStC(500, true);

	Wait(1000);

	SoundPlay("@mbgm18", 0, 1000, true);


	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290020b00">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290030b03">
「…………」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290040b00">
「……キャノン中佐。
　彼女らは」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290050b03">
「ええ。
　大鳥香奈枝大尉と、永倉さよ軍属です」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290060b00">
「大尉に軍属。
　しかも頭に<RUBY text="・">元</RUBY>が付くな？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290070b03">
「はい」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290080b00">
「……何が上位命令だと？」

{	NwH("cg/fw/ny司令部付兵士.png");}
//【ｅｔｃ／司令部兵】
<voice name="ｅｔｃ／司令部兵" class="その他男声" src="voice/md04/0290090e087">
「…………」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290100a03">
「あら。階級、取り上げられてましたの？
　せっかくご厚遇頂いたのに」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290110b03">
「……確かに俺は君を厚遇した、元大尉。
　大きな期待を寄せていた……」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290120b03">
「しかし、君は期待に背いた。
　無断で軍を離れ――つまりは脱走した」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290130b03">
「……ぶっちゃけて訊くがな。
　今更、どの面下げて戻って来たんだ？」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290140a03">
「お怒りはごもっとも。
　本当にご迷惑をおかけしてしまって」

{	FwH("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290150a04">
「せめてものお詫びに、これをどうぞ。
　旅先で買い求めた銘菓でございます」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290160b03">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290170b00">
「……何なんだ、一体」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290180a04">
「心ばかりの土産物でございますが」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290190b00">
「そんなことは訊いとらん！
　お前らは何をしに来たのかと――」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290200b00">
「いや、いい！　付き合っていられるか！
　中佐、さっさとこの二人を逮捕して、私の
前から追い払ってくれ。処分は任せる」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290210b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290220b00">
「キャノン！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290230b03">
「……<RUBY text="マーミット">鉄鍋型</RUBY>……チョコレート……」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290240b03">
「<RUBY text="・・・・・・・・">ジュネーヴの名物</RUBY>、か……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290250b00">
「……何？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290260b03">
「やってくれたな。
　大鳥香奈枝」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290270a03">
「…………」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290280b03">
「全て、君か」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290290b03">
「鍛造雷弾が使えなかったのも……」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290300a03">
「はい」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290310b03">
「……愚痴だが、言わずにはいられないな。
　江ノ島でジョージを失ったのが痛かった。
彼のサポートがあれば、俺はもう少し周りに
目を配れた」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290320b03">
「君の失踪に関する調査を人任せにすること
はなかった……」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290330a03">
「そうでしょうね。
　本当にこの世の中、何が災いして何が幸い
するかわからないものです」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290340b03">
「……ああ。本当に」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290350b00">
「中佐？
　ど、どういうことだ？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290360b00">
「どういうことなんだっ!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290370b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――


	DeleteStA(300,true);
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se人体_足音_木床ゆっくり歩く01_L", 1000);

	WaitKey(1500);

	SetVolume("@OnSE*", 1000, 0, null);


//◆サシュアント
	StC(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStC(500, true);

	Wait(500);

	SetFwH("cg/fw/fwサシュアント_通常.png");

	#voice_on_サシュアント=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290380b25">
「理解する努力をしてから訊きたまえ。
　人の話に良く耳を傾けるのは君の美点だが、
時として頼り過ぎるきらいがある」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290390b25">
「長所も度を越せば欠点なのだよ」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290400b00">
「――――」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290410b00">
「あ、あなたは」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290420b00">
「なぜ……どうして……」

{	SoundPlay("@mbgm34", 0, 1000, true);
	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290430b25">
「まずは名乗ろう」

{	FwH("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290440a03">
「いえいえ伯爵。
　皆さん、知己の方々ばかりですから」

{	FwH("cg/fw/fwサシュアント_叫び.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290450b25">
「だが、名乗ろう！」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290460a03">
「はぁ」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290470b25">
「ルービィ・サシュアントだ」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290480a03">
「はい。
　では――」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290490b25">
「もう一度名乗ろう」

{	FwH("cg/fw/fwサシュアント_叫び.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290500b25">
「ルゥゥゥビィィィィ・サシュアントだ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290510b25">
「そして最後にもう一回！」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆アップ
	DeleteStC(150,true);


	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);


	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290520b25">
「ルゥゥゥゥゥゥゥッッビィィィィィィィ・
サッッシュアァァァァァァァァンンンンン!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆引き
	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);

	StC(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStC(150, false);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290530b25">
「トだ」

{	FwH("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290540a03">
「…………」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290550a04">
「お嬢さま、どうかご自重を。
　右手の形がツッコミチョップ寸前でござい
ますぞ」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290560a03">
「こほん。
　……よろしいでしょうか、伯爵？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290570b25">
「うむ。
　始めてくれたまえ」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290580a03">
「そういうわけで、ＧＨＱのお三方。
　こちらは国際連盟事務局次長、ルービィ・
サシュアント卿――」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290590a03">
「国連本部の全権代理として、ただいま大和
に着任なさいました」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290600b00">
「……全権、代理……!?」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290610a03">
「はい。
　……意味の説明は不要ですね？　少将閣下」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290620b00">
「ふ――ふざけるな！
　そんなものを突然寄越されてたまるか！」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290630a03">
「そう申されましても。
　納得いかないなら、伯爵にお願いなさって
は？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290640b00">
「お願い？」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290650a03">
「サシュアント卿、女王陛下の信任状をいま
お持ちでしょう？」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290660b25">
「もちろんだ。
　確認したいのかね、ウィロー少将？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290670b00">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290680b00">
「し、しかし。不自然ではありませんか。
　現地の我々に何の話も通さず、不意に全権
代理など！」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290690b00">
「軍の指揮が乱れます！」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0290700a04">
「正論でございますなァ」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0290710a03">
「ほんとねー」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290720b00">
「……当面は、横浜にてお待ち頂きたい！
　我々の方で国連本部に確認し、その上で」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290730b25">
「そうはいかないのだよ。ウィロー少将」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290740b00">
「な、何故です」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290750b25">
「わからないかね？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290760b00">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290770b25">
「わからないのかね……？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290780b00">
「……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆アップ

	DeleteStC(150,true);

	CreateTextureEX("サシュアント", 1000, -40, -70, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 900, 900, null, true);

	SetVertex("サシュアント", 520, 288);
	Zoom("サシュアント", 150, 1000, 1000, Dxl1, false);
	Move("サシュアント", 150, @0, @13, Dxl1, false);
	Fade("サシュアント", 150, 1000, null, true);

	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290790b25">
「わッッからなぁぁいのかァァァァァァァ!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(150,150);//―――――――――――――――――――――――――――――

//◆引き
	Zoom("サシュアント", 150, 900, 900, Axl1, false);
	FadeDelete("サシュアント", 150, true);
	StC(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStC(150, false);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290800b25">
「ね？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290810b00">
「――――」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290820b25">
「わかってくれたまえよ。
　<RUBY text="アメリカン">新大陸人</RUBY>」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290830b25">
「私は必ずしも君達を憎んではいないのだ。
　できることなら……騒がず、争わず、静か
に全てを終わらせたい」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290840b25">
「察してくれたまえ……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290850b00">
「……………………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290860b00">
「わ、わかりません。
　あなたの仰ることは謎めいている」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290870b00">
「私にはさっぱりだ！」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290880b25">
「…………」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290890b00">
「横浜にてお待ち下さい！
　我々は女王陛下より与えられた使命を遂行
します」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290900b00">
「あと三日、いえ二日で充分！
　六波羅幕府を滅ぼし、この国を女王陛下の
保護下に収めましょう！」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290910b25">
「もう良いのだ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290920b25">
「もう良いのだよ、ウィロー」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290930b00">
「……ッ……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290940b25">
「どうして彼女が――
　大鳥大尉が私と一緒にいると思うのだね？」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290950b00">
「……何ですと？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0290960b03">
「…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290970b25">
「彼女は私の依頼を受けて<RUBY text="・・">内偵</RUBY>を進めていた
のだ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0290980b25">
「そのために、ＧＨＱにいたのだよ。
　最初からね」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0290990b00">
「――――――――」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291000a13">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291010b25">
「無論、彼女だけではない……」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291020b25">
「他にも数人の配下を各所に派遣した。
　そして彼らが拾い集めた細かな情報を――
その小さな断片を私は整理し、結合した」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291030b25">
「丁度ジグソーパズルを組むように。
　出来上がった絵を見て……私は結論せざる
を得なかった」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291040b25">
「君達は、<RUBY text="アメリカン・ドリーマー">新大陸独立派</RUBY>だと」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291050b00">
「……あ……
　…………ぉ…………」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291060b25">
「ウィロー。
　過去、四度に渡り君の同志は新大陸を大英
連邦から独立させるための戦争を起こした」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291070b25">
「その悉くが失敗した。
　それは、天命なのだと――神が女王の支配
を良しとしているのだと、君達が学んでくれ
れば良かったのだが」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291080b25">
「君達は、より低いレベルで理解したのだね。
　負けたのは力が足りなかったから……劒冑
が足りなかったから……」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291090b25">
「<RUBY text="・・・・・・・・・・・・・・・・・・・">新大陸に劒冑の生産地が存在しないからだ</RUBY>。
　……君達はそう考えた」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291100b03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291110b25">
「だから大和を欲した。
　世界でも屈指の劒冑生産国を……」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291120b25">
「君達はこの国を、女王陛下に献上するふり
をして掠め取るつもりだった。
　そして……蜂起。<RUBY text="・・・">第五次</RUBY>新大陸独立戦争を」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291130b25">
「……愚かな野望だ……」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291140b25">
「しかし……同情はする。
　君達は確かに苦しみ、追い詰められていた
のだろうから」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291150b25">
「我らが女王の深き愛も、あの広大な大陸を
満たすには不足していたのかもしれない……」

{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291160b00">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291170b25">
「だがね、ウィロー。
　それでも反逆は許されないのだよ」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291180b00">
「こ……ここまで来て」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291190b00">
「ここまで来て……！」

{	FwH("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291200a04">
「……」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291210b00">
「認め――られるかぁッッ!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

//◆かちゃ。銃構え

//	StR(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
//	FadeStR(300, false);


	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg018_知事執務室_03.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -200, -350, "cg/st/resize/stウィロー_通常_制服ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 500, @0, @300, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);

	SetFwH("cg/fw/fwキャノン_戦慄.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291220b03">
「閣下!?」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291230b25">
「……ウィロー……。
　君が最後に縋るのは女王の慈悲ではなく、
そのちっぽけな拳銃なのか？」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291240b25">
「それが君の選択なのか？」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291250b00">
「黙れ……女王の犬め！
　我々の苦痛が貴様などにわかるものか」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291260b00">
「苦痛とは、こういうものだ!!
　味わってみろッ!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆発砲
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);

	CreateColorSP("白", 15000, "White");

	Delete("絵色100");
	Delete("絵演窓上*");

	FadeDelete("白", 300, false);

	DeleteStC(300,false);

//◆横から割って入るバロウズ

	StR(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	StC(1000, @-100, @0, "cg/st/3dバロウズ_立ち_通常.png");
	Move("@StC*", 300, @120, @0, DxlAuto, false);
	FadeStR(300, false);
	FadeStC(300, true);
	Move("@StC*", 300, @-30, @0, AxlAuto, false);



//◆かちーん。弾かれる銃弾

	OnSE("se戦闘_銃器_跳弾02", 1000);

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291270b00">
「なッ――」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291280b25">
「すまないね、大鳥大尉」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291290a03">
「いえ、サシュアント卿。
　では……よろしいですか？」

{	FwH("cg/fw/fwサシュアント_慨嘆.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291300b25">
「いや。私がやろう。
　彼は私の友人なんだ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291310b25">
「例え彼がそう思っていなかったとしても」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291320a03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆バロウズ、下がる
	OnSE("se特殊_鎧_装着05", 1000);

	Move("@StC*", 300, @100, @0, null, false);
	DeleteStC(300,true);

	WaitKey(1000);

//◆サシュアントとウィロー

	StL(1000, @0, @0, "cg/st/stウィロー_通常_制服.png");
	FadeStL(300, false);

	SetVolume("@mbgm*", 1000, 0, null);


//◆かちゃ。銃を構える音

	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0291330b25">
「さらばだ。
　友よ」

{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291340b00">
「……サシュアントォ!!」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ばーん。
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);
	SetVolume("ウィロー", 300, 0, null);
	CreateColorSPadd("絵色100", 1500, "WHITE");

//◆ウィロー、倒れる

	FadeDelete("絵色100", 100, false);
	Shake("@StL*", 300, 8, 0, 0, 0, 1000, Dxl2, false);
	Move("@StL*", 300, @0, @20, Dxl2, true);

	Wait(1000);


	OnSE("se人体_衝撃_転倒03", 1000);
	Shake("@StL*", 300, 8, 0, 0, 0, 1000, Axl2, false);
	Move("@StL*", 300, @0, @50, AxlAuto, false);
	DeleteStL(300,true);

	SetFwH("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291350a04">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291360a13">
「……」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291370b03">
「――――」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,false);

//◆小ウェイト
	SoundPlay("@mbgm33", 0, 1000, true);

	WaitKey(800);

	SetFwH("cg/fw/fwウィロー_死.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291380b00">
「……キャノン……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291390b00">
「クライブ……」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291400b03">
「閣下……」

{	FwH("cg/fw/fwウィロー_死.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291410b00">
「た……頼む……
　我々の……悲願を…………」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291420b00">
「新大陸の……我が同胞に……
　自由と、誇りと……平安を……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291430b00">
「取り戻してくれ……！」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291440b03">
「閣下」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291450b03">
「ウィロー!!」

{	FwH("cg/fw/fwウィロー_死.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291460b00">
「……<RUBY text="アウァ・アメリカ">偉大なる故郷</RUBY>のために……」

//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/md04/0291470b00">
「……頼む……
　相棒……クライブ…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ボックス消して小ウェイト
	WaitKey(800);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291480b03">
「…………」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291490a04">
「……心中はお察しいたします。
　ですが、キャノン中佐。身柄を拘束させて
頂かねばなりませぬ」

//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291500a04">
「お持ちの銃を――失礼」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ。

	Wait(500);
	OnSE("se日常_金属落ちる", 1000);
	Wait(1000);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291510b03">
「……」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291520a03">
「ウォルフ教授。
　申し訳ないのですけれど、あなたもです」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291530a03">
「複数の重大な嫌疑が掛かっていますの」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291540a13">
「ほう……」

{	FwH("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291550a03">
「身に覚えがおありでしょう？」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291560a13">
「まあね。
　いつかはこんな日が来ると思っていたよ」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291570a03">
「……」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291580a13">
「この強権的パンツ絶対主義者どもめ!!
　どうあってもパンツ脱ぐのを許さんと言う
のだな!?」

{	FwH("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291590a03">
「ちゃうわッッ!!」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291600a04">
「お嬢さま自重！
　劒冑でツッコミ入れたら死にますから！」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291610a13">
「何、違うだと!?
　では君は今パンツを脱いでいるのか！」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291620a13">
「見せてみろッ!!」

{	FwH("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291630a03">
「変態やめてから出直してくださいまし!!」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291640a13">
「ぼ――僕に死ねと言うのか!?」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291650a04">
「死ぬのかよ。
　あと変態の自覚あるのかよ」

{	FwH("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291660a04">
「いえ、もーいいですからお嬢さま。
　こういう面倒な人はさっさと連行いたしま
しょう」

{	FwH("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291670a03">
「そーね……」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291680a13">
「ぬぅぅぅぅぅ！
　これで終わったと思うなよ！」

{	FwH("cg/fw/fwウォルフ_怒り.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291690a13">
「僕は必ず帰ってくる！
　そして全人類のパンツを脱がすであろう!!」

{	FwH("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291700a04">
「これほどイヤな野望って人類史上にかつて
存在しましたかな」

{	FwH("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0291710a03">
「たぶんなかったと思うから、国連理事会に
掛け合って世界人類反逆罪とか創設して頂き
ましょう」

{	FwH("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0291720a04">
「それならきっと百回くらい処刑できますぞ。
　……まぁ変態は得てしてゴキブリチックな
生命力を誇るものなので、まだ足りないかも
しれませんが」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291730a13">
「僕は諦めない。
　諦めないからなぁ」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291740a13">
「しばらくは雌伏の時だ！
　待っていてくれたまえ、キャノン中佐！」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0291750a13">
「絶望するんじゃないぞ!!」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0291760b03">
「…………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//おがみ：↓次スクリプト冒頭に移動
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　　　　　　一二月四日

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

*/
	ClearWaitAll(2000, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_030.nss"