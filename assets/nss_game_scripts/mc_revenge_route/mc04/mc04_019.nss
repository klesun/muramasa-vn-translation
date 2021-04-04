//<continuation number="410">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_019.nss_MAIN
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
	#bg089_大鳥邸貴人の間_02=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_020.nss";

}

scene mc04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_018.nss"

//◆奥の間
//◆慌しい様子
	PrintBG("上背景", 30000);
	CreateSE("SEメラメラ", "se人体_動作_放火");
	MusicStart("SEメラメラ", 0, 1000, 0, 1000, null,true);

	SoundPlay("@mbgm08",0,1000,true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景20", 100, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_02.jpg");

	CreatePlainEX("絵板写", 110);
	Fade("絵板写", 0, 500, null, true);
	MoveFRP1("@絵板写",1000,1,10);
	DrawEffect("絵板写", 0, "HighWave", 20, 20, null);

	CreateColorEX("絵演黒煙", 900, "#000000");
	Fade("絵演黒煙", 0, 800, null, true);
	DrawTransition("絵演黒煙", 0, 0, 200, 1000, null, "cg/data/circle_13_00_1.png", true);

	CreateTextureSPmul("絵演炎上効果", 1000, Center, Middle, "cg/data/effect_01_00_0.png");
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	CreateTextureEXadd("火だー", 1050, -190, 0, "cg/ef/ef046_炎a.jpg");
	Zoom("火だー", 0, 1100, 1100, null, true);
	Fade("火だー", 0, 800, null, false);

	CreateTextureEXadd("火前だー", 5000, -480, 50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	Zoom("火前だー", 0, 1100, 1100, null, true);
	Fade("火前だー", 0, 300, null, false);
	DrawTransition("火前だー", 0, 0, 180, 1000, null, "cg/data/circle_13_00_0.png", true);
	DrawEffect("火前だー", 0, "HighWave", 20, 20, null);


	Delete("上背景");
	DrawDelete("黒幕１", 150, 100, "slide_01_01_1", true);

	SetNwC("cg/fw/nw大鳥軍兵士Ｔ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／大鳥兵士Ｔ】
<voice name="ｅｔｃ／大鳥兵士Ｔ" class="その他男声" src="voice/mc04/0190010e190">
「火だッ!!
　ち、地下から――」


{	NwC("cg/fw/nw大鳥軍兵士Ｕ.png");}
//【ｅｔｃ／大鳥兵士Ｕ】
<voice name="ｅｔｃ／大鳥兵士Ｕ" class="その他男声" src="voice/mc04/0190020e191">
「香奈枝様がなされたのか!?」


{	NwC("cg/fw/nw大鳥軍兵士Ｖ.png");}
//【ｅｔｃ／大鳥兵士Ｖ】
<voice name="ｅｔｃ／大鳥兵士Ｖ" class="その他男声" src="voice/mc04/0190030e192">
「家ごと焼き尽くしてしまうおつもりだ……」


{	NwC("cg/fw/nw大鳥軍将校Ｄ.png");}
//【ｅｔｃ／大鳥将校Ｄ】
<voice name="ｅｔｃ／大鳥将校Ｄ" class="その他男声" src="voice/mc04/0190040e170">
「駄目だ、消火できない！
　退避しろォ!!」


{	NwC("cg/fw/nw大鳥軍兵士Ｗ.png");}
//【ｅｔｃ／大鳥兵士Ｗ】
<voice name="ｅｔｃ／大鳥兵士Ｗ" class="その他男声" src="voice/mc04/0190050e193">
「中将閣下はいかがされたのだ!?」


{	NwC("cg/fw/nw大鳥軍将校Ｃ.png");}
//【ｅｔｃ／大鳥将校Ｃ】
<voice name="ｅｔｃ／大鳥将校Ｃ" class="その他男声" src="voice/mc04/0190060e169">
「外縁警備の竜騎兵隊はどうした！
　なぜ救援に来ない！」


{	NwC("cg/fw/nw大鳥軍兵士Ｘ.png");}
//【ｅｔｃ／大鳥兵士Ｘ】
<voice name="ｅｔｃ／大鳥兵士Ｘ" class="その他男声" src="voice/mc04/0190070e194">
「……これが天罰ってやつか……」


{	NwC("cg/fw/nw大鳥軍兵士Ｖ.png");}
//【ｅｔｃ／大鳥兵士Ｖ】
<voice name="ｅｔｃ／大鳥兵士Ｖ" class="その他男声" src="voice/mc04/0190080e192">
「も、もう嫌だ！
　俺はごめんだ。俺はもう逃げるっ!!」


{	NwC("cg/fw/nw大鳥軍将校Ｃ.png");}
//【ｅｔｃ／大鳥将校Ｃ】
<voice name="ｅｔｃ／大鳥将校Ｃ" class="その他男声" src="voice/mc04/0190090e169">
「おい待て！　勝手に持ち場を離れるな！」


{	NwC("cg/fw/nw大鳥軍兵士Ｔ.png");}
//【ｅｔｃ／大鳥兵士Ｔ】
<voice name="ｅｔｃ／大鳥兵士Ｔ" class="その他男声" src="voice/mc04/0190100e190">
「ひ、火の手がこっちに――！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆兵士と花枝
	SetVolume("SEメラメラ", 2000, 500, null);

	StL(1100,@0,@20,"cg/st/st花枝_通常_私服.png");
	FadeStL(300,true);


	SetNwC("cg/fw/nw大鳥軍兵士Ｇ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0190110e177">
「お……御館様……
　如何いたしましょう……」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190120e178">
「た、退避した方が宜しいのでは？」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190130b18">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ばたん。ドア開く
//◆獅子吼・負傷
	OnSE("se日常_建物_扉開く02", 1000);
	StR(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(300,false);

	SetNwC("cg/fw/nw大鳥軍兵士Ｈ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190140e178">
「……閣下!!」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0190150e177">
「そ、そのお怪我は!?」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190160a06">
「構うな」


{	NwC("cg/fw/nw大鳥軍兵士Ｇ.png");}
//【ｅｔｃ／大鳥兵士Ｇ】
<voice name="ｅｔｃ／大鳥兵士Ｇ" class="その他男声" src="voice/mc04/0190170e177">
「し……しかし。
　早急に手当てをなさいませぬと、」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190180a06">
「構うな」


{	FwC("cg/fw/fw花枝_疲れ.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190190b18">
「…………」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190200a06">
「花枝様――」


{	FwC("cg/fw/fw花枝_微笑.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190210b18">
「終わりの日だよ。
　獅子吼」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190220a06">
「………………」


{	FwC("cg/fw/fw花枝_失意.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190230b18">
「お前が必死こいて支えた大鳥は今日で最後。
　<RUBY text="・・・">これで</RUBY>おしまい」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190240b18">
「だから採点してあげる。
　――大鳥獅子吼。お前の忠義と誠心、献身
と苦闘は、<?>
{Wait(1000);}
ぜんぶ無駄だった」

//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190250b18">
「お前の名は単なる反逆者、単なる圧制者、
単なる虐殺者として歴史に残る」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190260a06">
「――――――――」


{	FwC("cg/fw/fw花枝_罵倒.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190270b18">
「……そうして欲しいなら、わたしがここで
お前を殺してやる。
　それとも、お前がわたしを殺す？」


{	FwC("cg/fw/fw花枝_野心.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190280b18">
「最後くらい、希望を聞いてやったっていい」


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190290a06">
「……されば。
　いずれも」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190300a06">
「花枝様の御慈悲、いまだ、この身には過ぎ
たる栄誉と心得まする」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw花枝_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190310b18">
「……」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190320a06">
「まだ終わってはおらぬ。
　<RUBY text="・・">まだ</RUBY>――」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190330a06">
「邦氏殿下は脱出なされたな？」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190340e178">
「は……はッ！
　先程、確かに。楽翁陣の者が知らせて参り
ました」


{	NwC("cg/fw/nw大鳥軍兵士Ｈ.png");}
//【ｅｔｃ／大鳥兵士Ｈ】
<voice name="ｅｔｃ／大鳥兵士Ｈ" class="その他男声" src="voice/mc04/0190350e178">
「御館様にご避難頂く手筈も整っているとの
ことです。
　車と護衛の者の用意が、裏手に」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190360a06">
「……そうか。
　ならば良し」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190370a06">
「花枝様、お聞きの通り。
　心苦しき次第ながら、ご足労をお掛け致し
ます」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/0190380b18">
「……獅子吼」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190390a06">
「終わりではございませぬ。
　大鳥の――大和の未来は決して、潰えなど
致しませぬ」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0190400a06">
「この獅子吼ある限り!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆シーン転換。ウェイト
	SetVolume("SE*", 2000, 1, null);
	SetVolume("@mbgm*", 2000, 0, null);
	CreateColorEX("絵色黒", 20000, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(1500);

//◆ばたーん。ドア開くＳＥ
//◆奥の間
//◆香奈枝がずさーっと
	DeleteStA(0, false);

	SetVolume("SE*", 2000, 500, null);
	CreateSE("SE03","se日常_建物_扉開く02");
	MusicStart("SE03",0,1000,0,1000,null,false);

	DrawDelete("絵色黒", 300, 100, "slide_06_00_0", true);

	CreateTextureEX("絵演空立絵かな", 1200, @700,InBottom, "cg/st/st香奈枝_射撃_私服b.png");
	CreateSE("SE02","se人体_動作_スライディング");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Move("絵演空立絵かな", 300, @-100, @0, Dxl2, false);
	Fade("絵演空立絵かな",300,1000,null,true);

	OnSE("se戦闘_銃器_構える01", 1000);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/0190410a03">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_020.nss"