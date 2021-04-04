//<continuation number="1590">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_036.nss_MAIN
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
	#bg080_飛行船船室Ab_01a=true;
	#bg036_競技場通路_01=true;
	#bg018_知事執務室_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_037.nss";

}

scene md04_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md04_035.nss"


//◆監禁用の一室。bg080？
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg080_飛行船船室Ab_01a.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360010b03">
「……………………」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆斬殺音

	OnSE("se戦闘_攻撃_刀刺さる03", 500);
	Wait(1500);
	OnSE("se人体_衝撃_転倒02", 1000);
	Wait(500);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360020b03">
「……？」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ

	OnSE("se日常_建物_扉開く01", 1000);
	Wait(1500);

	StCR(1000, @-30, @0, "cg/st/stウォルフ_通常_私服.png");
	Move("@StMR*", 500, @-30, @0, Dxl2, false);
	FadeStCR(500, true);

	Wait(500);

	SoundPlay("@mbgm21", 0, 1000, true);

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360030a13">
「やぁ、キャノン君。
　元気かね」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360040a13">
「ちゃんと希望を捨てずにいただろうな？」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360050b03">
「ウォルフ教授!?」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360060a13">
「良かった。少なくとも生きてはいる。
　あっさり首でも括ってないか、不安で仕方
なかったよ」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360070b03">
「……まあ、椅子に縛られたまま首を吊れる
ほど器用じゃないので。
　しかし、どうやってここに？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360080a13">
「仲間に助けてもらった」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360090b03">
「仲間？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360100a13">
「彼だよ」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆常闇

	StR(900, @150, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(500, true);


	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360110b03">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360120a13">
「バルトロメオ、彼を自由にしてくれ」

{	FwH("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360130b37">
「はい。
　中佐殿、失礼致します」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆一閃。縄を切る
//	Move("@StR*", 300, @-200, @0, DxlAuto, false);
	DeleteStR(300,true);


	OnSE("se戦闘_攻撃_刀振る01", 1000);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景200", 300, 1000, null, true);
	Fade("絵背景200", 500, 0, null, true);
	Delete("絵背景200");
	OnSE("se日常_衣類_衣擦れ01", 1000);

	Wait(250);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360140b03">
「……教授。
　彼は大和人では？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360150a13">
「ああそうだ。大和人で、僕の友人だよ。
　今はそんなことどうだっていいだろう？」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360160a13">
「さ、中佐。再開するんだ」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360170b03">
「何をです」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360180a13">
「寝惚けてるんじゃない。
　僕らの勝負を、だ。もちろん」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360190b03">
「……今更。
　もう全ては終わっていますよ」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360200b03">
「今の私は処刑を待つ反逆者です。
　ここから脱出したところで、せいぜい逮捕
を待つ逃亡者にしかなれません」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360210a13">
「情けないことを言うな。
　君はウィロー少将から夢を託されたんじゃ
ないのか」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360220b03">
「……」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360230a13">
「君は表向き、まだ反逆者ではない」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360240b03">
「……何ですと？」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360250a13">
「ルービィ・サシュアントはＧＨＱ内に潜む
独立派の全貌を把握していないんだ。
　だから事件の公表によって彼らが暴走する
可能性を恐れている」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360260a13">
「そうだね、バルトロメオ？」

{	FwH("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360270b37">
「はい」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360280b03">
「…………」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360290a13">
「わかるだろう、中佐」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360300a13">
「サシュアント伯爵さえいなくなれば、ここ
からでもまだ何とかなる！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360310b03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360320b03">
「何か、武器はありませんか？」

{	FwH("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360330b37">
「見張りの兵士が持っていた銃ならあります。
　どうぞ、中佐殿」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360340b03">
「<RUBY text="ガーランド">歩兵銃</RUBY>はいい。
　拳銃だけ借りよう」

{	FwH("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360350b37">
「はっ」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360360a13">
「よし、よし！
　では行こうか、キャノン中佐」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360370b03">
「……ええ」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆通路。bg036？

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	
	DeleteStCR(0,true);

	OnBG(101, "bg036_競技場通路_01.jpg");
	FadeBG(0, true);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


	SetNwH("cg/fw/ny護衛官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／高官護衛】
<voice name="ｅｔｃ／高官護衛" class="その他男声" src="voice/md04/0360380e073">
「……止まれ！
　ここはサシュアント伯爵閣下の――」

//【ｅｔｃ／高官護衛】
<voice name="ｅｔｃ／高官護衛" class="その他男声" src="voice/md04/0360390e073">
「なっ、キャノン中佐!?」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360400b03">
「……」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆常闇。すーっと

	StR(900, @-150, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);
	Move("@StR*", 300, @-200, @0, DxlAuto, false);
	DeleteStR(300,true);
//◆剣閃、二回

	OnSE("se戦闘_攻撃_刀振る01", 1000);

	CreateTextureEX("絵背景200", 2000, Center, 0, "cg/ef/ef008_汎用上下軌道.jpg");
	Fade("絵背景200", 300, 1000, null, true);

	OnSE("se戦闘_攻撃_刀_ヒット01", 1000);
	OnSE("se戦闘_攻撃_刀振る02", 1000);
	CreateTextureEX("絵背景300", 2100, Center, 0, "cg/ef/ef015_汎用横軌道.jpg");
	Fade("絵背景300", 300, 1000, null, true);
	OnSE("se戦闘_攻撃_刀_ヒット02", 1000);
	Fade("絵背景200", 0, 0, null, false);
	Fade("絵背景300", 500, 0, null, true);


	Delete("絵背景*");
	Wait(300);

	OnSE("se人体_衝撃_転倒02", 1000);
	Wait(500);

	OnSE("se人体_衝撃_転倒03", 1000);


	SetFwH("cg/fw/fw常闇斎_敬意.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360410b37">
「さ――御二方」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360420a13">
「うん、ありがとう」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360430b03">
「……凄まじいな。
　武装した兵士を二人、一呼吸か」

{	FwH("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360440b37">
「些細な手妻でございます」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360450a13">
「頼もしい友だろう？
　さぁて――」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆がちゃ
//◆高官部屋

	CreateColorSP("黒幕１", 3000, "#000000");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	OnSE("se日常_建物_扉開く01", 1000);
	OnSE("se日常_建物_扉開く06", 1000);

	OnBG(100, "bg018_知事執務室_01.jpg");
	FadeBG(0, true);

	Wait(500);

	DrawTransition("黒幕１", 500, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");

	Wait(1000);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360460b25">
「大鳥大尉か？
　お帰り――だがもう少し静かに入ってきて
くれたまえ」

//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360470b25">
「いま読書中なのでね……」

{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360480b03">
「そうか。<RUBY text="マタ・ハリ">女狐</RUBY>は留守ですか。
　そいつは助かる」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

//◆かちゃ。銃を構える音
	OnSE("se戦闘_銃器_拳銃構え01", 1000);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360490b25">
「――――」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆キャノンとサシュアント

	StR(1000, @0, @0, "cg/st/stキャノン_射撃_制服.png");
	StL(1000, @0, @0, "cg/st/stサシュアント_通常_私服.png");
	FadeStL(500, false);
	FadeStR(500, true);

	Wait(500);

	SetFwH("cg/fw/fwサシュアント_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360500b25">
「クライブ・キャノン……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360510b03">
「ええ。
　ルービィ・サシュアント」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360520b25">
「……」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360530b03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360540b25">
「報復かね？」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360550b03">
「……」

{	FwH("cg/fw/fwサシュアント_通常.png");}
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360560b25">
「女王の代行者。
　世界平和維持組織の代表者たるこの私を」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆アップ


/*

	CreateTextureEX("サシュアント", 1000, @-100, @-100, "cg/st/resize/stサシュアント_通常_私服_l.png");
	Request("サシュアント", Smoothing);
	Zoom("サシュアント", 0, 1500, 1500, null, true);

	Fade("サシュアント", 150, 1000, null, true);

*/

	CreateWindow("絵演窓上", 6000, Center, -50, 1024, 388, true);
	SetAlias("絵演窓上","絵演窓上");
	CreateColorEX("絵色100", 16050, "BLACK");

	CreateTextureEX("絵演窓上/絵演背景", 16100, 100, -144, "cg/bg/bg018_知事執務室_01.jpg");
	Request("絵演窓上/絵演背景", Smoothing);
	Rotate("絵演窓上/絵演背景", 0, @0, @180, @0, null,true);
	Zoom("絵演窓上/絵演背景", 0, 2000, 2000, null, true);
	SetShade("絵演窓上/絵演背景", HEAVY);

	CreateTextureEX("絵演窓上/絵立絵", 16200, -200, -350, "cg/st/resize/stサシュアント_通常_私服ex.png");
	Move("絵演窓上", 0, @0, @128, null, true);


	Move("絵演窓上/絵演背景", 500, @0, @100, AxlDxl, false);
	Move("絵演窓上/絵立絵", 500, @0, @300, AxlDxl, false);

	Fade("絵色100", 300, 300, null, false);
	Fade("絵演窓上/絵演背景", 500, 1000, null, false);
	Fade("絵演窓上/絵立絵", 500, 1000, null, true);

	Wait(500);


	SetFwH("cg/fw/fwサシュアント_叫び.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【高官】
<voice name="高官" class="サシュアント" src="voice/md04/0360570b25">
「君はただの報復で殺すのかねッッ!?」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360580b03">
「いいえ。
　単に、あなたがいては邪魔なんですよ」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

//◆ばーん。射殺。
	OnSE("se戦闘_銃器_拳銃発砲01", 1000);

	CreateColorSPadd("白", 15000, "White");

	DeleteStA(0,true);
	Delete("絵色100");
	Delete("絵演窓上*");
	Wait(200);
	FadeDelete("白", 1000, true);

	Wait(500);

	OnSE("se人体_衝撃_転倒03", 1000);

	Wait(1000);

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360590b03">
「……その顔芸に付き合いたくもありません
しね」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360600a13">
「良くやった中佐。
　だが本番はこれからだ」

//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360610a13">
「ＧＨＱを再び掌握、兵を動かして鍛造雷弾
を奪い、普陀楽城へ投下するのだよ！」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360620b03">
「そこまで短絡的にはやれません。
　まず、地上の我が軍を城周辺から撤退させ
なくては……」

{	FwH("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360630b37">
「それはすぐに済みましょう。
　進駐軍は既に撤退の準備を始めている様子
ですから」

{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360640b03">
「何だって？」

{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360650b03">
「――――いや、そうか。
　サシュアントの奴、全て仕切り直すつもり
でいたんだな」

{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360660a13">
「お陰でこっちは助かるというわけだ。
　しかし中佐、のんびりはしていられん」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360670a13">
「進駐軍の撤退に付け込んで六波羅が城から
出撃でもしようものなら……雷弾で一掃とは
ゆかなくなる。
　急ごうじゃないか！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360680b03">
「……ええ、教授――」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//◆だだだ。駆け込んでくる足音

	OnSE("se人体_足音_走る07", 1000);


//◆香奈枝とさよ
	WaitKey(500);
	SetVolume("@OnSE*", 1000, 0, null);

	OnSE("se日常_建物_扉開く02", 1000);
	StL(1000, @-50, @0, "cg/st/st香奈枝_通常_私服d.png");
	StC(1000, @-400, @0, "cg/st/stさよ_通常_私服.png");
	Move("@StC*", 400, @50, @0, null, false);
	Move("@StL*", 300, @50, @0, null, false);
	FadeStL(300, false);
	FadeStC(300, true);

	Wait(200);

	SetFwH("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360690a03">
「……これは」

{	FwH("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360700a04">
「遅うございましたか！」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/md04/0360710b03">
「大鳥大尉か……」

{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360720a13">
「ふむ」

{	FwH("cg/fw/fwウォルフ_不快.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360730a13">
「一度は見事にしてやられた。
　二度は決してやらせたくないな……」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360740a03">
「……」

{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360750a13">
「一つ聞いておこう。
　ちゃんとパンツは脱いでいるかね？」

{	FwH("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360760a03">
「はいてます」

{	FwH("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360770a13">
「危険人物め!!
　バルトロメオーーー!!」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆常闇
//◆縦書き
	SetVolume("@mbgm*", 3000, 0, null);

	StR(1000, @0, @0, "cg/st/st常闇斎_通常_私服.png");
	FadeStR(300, false);
	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360780a04">
「――――」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360790b37">
「――――」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360800a04">
「何と。
　このようなところで……奇遇にも程があり
ますなァ」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360810b37">
「……永倉……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360820a03">
「ばあや？」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360830a04">
「お嬢さま、お下がりください。
　決して前へ出てはなりませぬ」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360840a03">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆小ウェイト

	WaitKey(800);
	Move("@StC*", 200, @50, @0, Dxl2, false);

	SetFwC("cg/fw/fwさよ_老兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360850a04">
「いけません！
　<RUBY text="バロウズ">贋作弓聖</RUBY>に手をつけては！」

//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360860a04">
「装甲する前に斬り殺されますぞ!!」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0360870a03">
「――――」

{	SoundPlay("@mbgm06",0,1000,true);
	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360880b37">
「やはり劒冑でしたか」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360890b37">
「忠告は……正しい。
　しかし万一の成功も有り得た。その可能性
に賭けさせるべきだったのでは？」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360900a04">
「……」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360910b37">
「装甲しようとすまいと、私は大鳥香奈枝を
殺すのですから」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360920a04">
「分の悪い賭けに主人の命は張れませぬよ。
　もう少しましな勝負にいたします」

{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360930b37">
「ほう？」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360940a04">
「常闇斎どの。
　貴方がお嬢さまを殺そうとするなら、この
老婆は主人を見捨てますぞ」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360950b37">
「……」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360960b37">
「何と？」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0360970a04">
「守れぬものを守ろうとあがいても詮方ござ
いませんからな。
　貴方がお嬢さまを狙った時、さよはそちら
のウォルフ教授を打ち殺します」

{	FwC("cg/fw/fwウォルフ_絶叫.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/md04/0360980a13">
「えっ、僕？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0360990b37">
「……！」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361000a04">
「もしくはキャノン中佐を。
　ま、どっちでもよろしい」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361010a04">
「さて。
　いかがなさる？」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361020b37">
「…………」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361030a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361040b37">
「……フフ……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361050a04">
「お嬢さま。
　お逃げくださいませ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361060a03">
「さよ」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361070a04">
「お早く。
　この男の力量がわからぬお嬢さまではあり
ますまい」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361080a03">
「……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361090a04">
「小便臭い小娘の出る幕ではございません。
　早く！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆香奈枝、走る

	DeleteStL(300,false);
//	DeleteStC(300,false);


	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361100a03">
「さよ！」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361110a04">
「…………」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361120a03">
「従者の一番大事な役目は知ってる!?
　主人の葬式をして、素敵な墓碑銘を読んで、
遺産の整理をすることよ！」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/md04/0361130a03">
「ちゃんとやってもらいますからね!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆たったったっ。
	OnSE("se人体_足音_走る03", 1000);

	SetFwC("cg/fw/fwさよ_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361140a04">
「……無茶をおっしゃる。
　この老婆にあと何年生きろというおつもり
なのやら」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361150b37">
「生きるでしょう、貴方は。
　何年でも、何十年でも、何百年でも」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361160b37">
「この世が続く限りは。
　そうでしょう？　<RUBY text="レディ・ザ・ブラッディ">血浴の貴婦人</RUBY>」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361170a04">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

//◆さよと常闇

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361180b37">
「貴方は変わっておられない。
　三十年前から……何も」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361190b37">
「お美しい」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361200a04">
「――――」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361210a04">
「小四郎どのは、随分と変わられましたな」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361220b37">
「ええ……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361230a04">
「……」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361240a04">
「なぜ、このような所に貴方がおられるのか
……お伺いしてもよろしいか？」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361250b37">
「信仰のため」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361260b37">
「他には、何もありません」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361270a04">
「……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361280b37">
「……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361290a04">
「変わられた……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361300b37">
「はい。
　私は、多くのものを失いました」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361310b37">
「貴方と共にあり……
　共に戦っていた頃の私とは、違います」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361320a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361330b37">
「誰も恨めません。
　私は己の意志で捨ててきたのです……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361340b37">
「信仰、ただ一つを残して。
　信仰を守り……高めるために、他の全てを
犠牲にした」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361350b37">
「ただ……神の存在を、より近くに感じる為
に……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361360a04">
「…………。
　神しか、貴方の魂を救えないのでしょうか」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361370b37">
「はい」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361380a04">
「このさよには救えませんでしたからな……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361390b37">
「……」

//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361400b37">
「ああ……しかし。
　そうだ。私はまだ一つ、捨てていない」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361410b37">
「貴方をまだ、捨てていない」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361420b37">
「貴方のことを……忘れたことはなかった」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361430a04">
「……小四郎……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361440b37">
「予感は正しかった」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361450b37">
「私の運命はここにある」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361460b37">
「私は……貴方を捨てなければ。
　……神を迎えるために……」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361470a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361480a04">
「遠い」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361490b37">
「……？」

{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361500a04">
「遠うございます、小四郎どの。
　三十年前、貴方と共に見た笠置の欠け月」

//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361510a04">
「もう……思い出せませぬ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361520b37">
「……ええ。
　遠い」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361530b37">
「もう……遠い……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361540a04">
「……」

{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361550b37">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	CreateTextureEX("上敷き", 10000, Center, Middle, "cg/bg/bg018_知事執務室_01.jpg");
	Fade("上敷き", 300, 1000, null, true);


	CreateWindow("絵演窓右", 4000, 512, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");

	CreateTextureSP("絵演窓右/背景", 4100, -361, -70, "cg/bg/bg018_知事執務室_01.jpg");
	SetShade("絵演窓右/背景", HEAVY);
	Zoom("絵演窓右/背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演窓右/立ち絵", 4200, Center, Middle, "cg/st/resize/st常闇斎_戦闘_私服ex.png");
	Request("絵演窓右/立ち絵", Smoothing);
	Zoom("絵演窓右/立ち絵", 0, 800, 800, null, true);
	Move("絵演窓右/立ち絵", 0, 318, -644, null, true);
//	SetBlur("絵演窓右/立ち絵", true, 1, 500, 70, false);

	CreateTextureSP("絵演出左背景", 3000, -597, -280, "cg/bg/bg018_知事執務室_01.jpg");
	SetShade("絵演出左背景", HEAVY);
	Zoom("絵演出左背景", 0, 2000, 2000, null, true);

	CreateTextureSP("絵演出左立ち絵", 3100, 500, 250, "cg/st/resize/stさよ_戦闘_私服ex.png");
	Request("絵演出左立ち絵", Smoothing);
	Zoom("絵演出左立ち絵", 0, 480, 480, null, true);
	Move("絵演出左立ち絵", 0, -617, -1090, null, true);
//	SetBlur("絵演出左立ち絵", true, 1, 500, 70, false);


	OnSE("se人体_動作_跳躍03",1000);
	OnSE("se戦闘_動作_刀構え03",1000);
	OnSE("se戦闘_動作_刀構え02",1000);


	Move("絵演出左立ち絵", 1500, -500, -740, Dxl2, false);
	Move("絵演出左背景", 1500, -520, -115, Dxl2, false);

	Move("絵演窓右/立ち絵", 1500, 100, -400, Dxl2, false);
	Move("絵演窓右/背景", 1500, -460, 40, Dxl2, false);

	FadeDelete("上敷き", 500, true);
	Wait(1500);
	DeleteStA(0,true);

//	StL(1000, @0, @0, "cg/st/stさよ_戦闘_私服.png");
//	FadeStL(300, true);
	SetFwC("cg/fw/fwさよ_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0221]
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361560a04">
「ここは通せませぬ」

{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361570b37">
「通らせて頂きます。
　貴方の主人は放置するには危険過ぎる」

{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/md04/0361580a04">
「柳生小四郎!!」

{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/md04/0361590b37">
「貴方を倒さねば――
　私は神に会う資格を得られない!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	Move("絵演窓右/立ち絵", 200, @0, @700, Axl1, false);
	Move("絵演出左立ち絵", 200, @0, @700, Axl1, false);
	Zoom("絵演窓右/立ち絵", 200, 2000, 2000, Axl1, false);
	Zoom("絵演出左立ち絵", 200, 2000, 2000, Axl1, false);



	CreateColorSPadd("黒幕１", 30000, "WHITE");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);
	Delete("黒幕１");


	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 100, 1000, null, true);
	DeleteStCL(0,true);
	CreateTextureSPadd("衝突", 15000, @0, @0, "cg/ef/ef040_汎用衝突.jpg");

	OnSE("se戦闘_攻撃_鎧_剣戟04", 1000);
	OnSE("se戦闘_攻撃_殴る05", 1000);

	Zoom("衝突", 0, 1200, 1200, null, false);
	Zoom("衝突", 500, 1500, 1500, Dxl2, false);
	Shake("衝突", 500, 50, 0, 0, 0, 1000, Dxl3, true);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);


	ClearWaitAll(1500, 1500);


}

..//ジャンプ指定
//次ファイル　"md04_037.nss"