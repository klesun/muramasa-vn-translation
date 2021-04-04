//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_036.nss_MAIN
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
	#bg113_駅のホームa_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc03_001.nss";

}

scene mc02_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_035.nss"

//◆爆発遠景
//◆キノコ雲
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 19900, "#FFFFFF");

	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/ev/ev174_鍛造雷弾投下.jpg");
	CreateSE("SE01","se戦闘_破壊_爆発09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("上背景");
	Fade("絵色白",2000,0,null,true);

	WaitKey(1500);

	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",1000,1000,0,900,null,true);

	WaitKey(2500);

	SoundPlay("@mbgm36", 0, 1000, true);

	SetNwC("cg/fw/nw六波羅兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／幕兵Ａ】
<voice name="ｅｔｃ／幕兵Ａ" class="その他男声" src="voice/mc02/0360010e270">
「あ……あぁぁ……」


{	NwC("cg/fw/nw六波羅兵士Ｂ.png");}
//【ｅｔｃ／幕兵Ｂ】
<voice name="ｅｔｃ／幕兵Ｂ" class="その他男声" src="voice/mc02/0360020e271">
「な、何なんだよ！
　何だってんだよぉ、あれは!!」


{	NwC("cg/fw/nw六波羅兵士Ｃ.png");}
//【ｅｔｃ／幕兵Ｃ】
<voice name="ｅｔｃ／幕兵Ｃ" class="その他男声" src="voice/mc02/0360030e272">
「南無阿弥陀仏南無阿弥陀仏」


{	NwC("cg/fw/nw六波羅兵士Ｄ.png");}
//【ｅｔｃ／幕兵Ｄ】
<voice name="ｅｔｃ／幕兵Ｄ" class="その他男声" src="voice/mc02/0360040e273">
「し……城がねえ……
　普陀楽城が<RUBY text="ね">無</RUBY>えぞ……」


{	NwC("cg/fw/nw六波羅兵士Ｅ.png");}
//【ｅｔｃ／幕兵Ｅ】
<voice name="ｅｔｃ／幕兵Ｅ" class="その他男声" src="voice/mc02/0360050e274">
「かっ――閣下！　大鳥中将ッ！
　こっこっこれは如何なる………これは如何
なる……!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360060a06">
「……………………」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360070a06">
（永倉の翁がやにわに連絡を寄越してきた時
は、まさか……と思ったが）


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360080a06">
（……やってくれたな。
　この大和の大地に――白豚めら!!）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 10000, 0, null);

//◆邦氏
	PrintGO("上背景", 20000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg113_駅のホームa_01.jpg");
	StR(1000, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStR(0,true);

	FadeDelete("上背景", 1000, true);

	CreateSE("SE02","se人体_動作_後ずさり01");
	StL(1000, @-60, @0,"cg/st/st邦氏_通常_私服.png");

	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("@StL*", 300, @60, @0, Dxl1, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360090b49">
「し……獅子吼！
　説明をせよ！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360100a06">
「……邦氏殿下」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360110b49">
「そなたは余を<RUBY text="さら">攫</RUBY>い、城より連れ出した。
　そして――この仕儀！」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360120b49">
「あれもそなたの仕業なのか!?
　普陀楽を……幕府を滅ぼさんとしてか!!」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360130a06">
「<RUBY text="まこと">真</RUBY>、そのような疑念をお持ちならば。
　殿下、今この場にて、我が首を刎ねられよ」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360140b49">
「…………」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360150b49">
「ならば……これは……」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360160a06">
「進駐軍どもの仕掛けし事にございます」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360170b49">
「何だと!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360180a06">
「<RUBY text="フォージド・ボム">鍛造雷弾</RUBY>と申す新型兵器の由。
　奴等はこれにて六波羅を一掃し、この国を
奪わんと企てたのでありましょう」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360190b49">
「――――」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360200b49">
「で、では……最早。
　……我らは……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360210a06">
「しかし、奴等は仕損じました」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360220b49">
「なに？」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360230a06">
「我ら六波羅の主。
　足利四郎邦氏殿下はここに<RUBY text="おは">御座</RUBY>します」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360240a06">
「殿下の将、獅子吼はこれに在ります。
　六波羅百万騎が最精鋭、奉公衆並びに厩衆
も付き従っております」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360250a06">
「更に我が麾下、篠川軍が健在でございます。
　――六波羅は滅びておりませぬ！」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360260b49">
「……」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360270a06">
「殿下！
　この獅子吼、必ずや御身を戴き、捲土重来
致しまする」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360280a06">
「故に、どうか！
　一時の恥辱を耐え忍び、我がもとに御身を
預けられませ！」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mc02/0360290b49">
「……そなたの領国へ落ちよと申すのだな」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360300a06">
「はッ！」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc02/0360310a06">
「今は――会津へ！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆Ｂパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);

/*
//あきゅん「演出：外注部分退避」
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("上背景");

	CreateColorSP("絵色黒", 1, "#000000");

	FadeDelete("上背景",1500,true);

	WaitKey(1000);

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mc03_001.nss"