//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//フラグチェック用
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma05_021vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma05_021vs.nss","Debug_Select",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		if($Return_ma05_021vs == true){}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev925_野太刀断片_f=true;

	//▼ルートフラグ、選択肢、次のGameName
	#aw_村正=true;
	#aw_銀星号=true;


//	$英雄編終了 = true;
//	$復讐編終了 = true;
//	$魔王編解放 = true;
//	$一条死亡 = true;
//	$香奈枝死亡 = true;
//	$Ichizyou_Flag = 1;
//	$Ichizyou_Flag = 4;
//	$Kanae_Flag = 1;
//	$Kanae_Flag = 4;
//	$Muramasa_Flag = 1;
//	$Muramasa_Flag = 4;

//◆ヒロイン殺害判定
//◆アナザー好感度はシナリオクリア状況によって変動。
//◆一條と香奈枝の両方をクリア済みでないなら、両者
//◆のルート必要値以下に設定。つまりどちらかをここ
//◆で殺す、あるいはバッド行きの二択に。
//◆両ルートクリアしている場合はルート必要値以上に
//◆設定。

//嶋：上記の内容を下記に修正いたしました【090909】
//一条、香奈枝両者生存の上で一条の好感度が３以上だった場合→英雄編
//一条生存、香奈枝死亡の上で一条の好感度が３以上だった場合→英雄編
//香奈枝生存、一条生存の上で香奈枝の好感度が３以上だった場合→復讐編
//↑※ただし、一条は死亡。
//香奈枝生存、一条死亡の上で香奈枝の好感度が３以上だった場合→復讐編
//一条、香奈枝の両ルートをクリアし、両者が生存し、村正の好感度が３以上
//だった場合→魔王編
//それ以外→バッド

	RouteChicker();

	if($Ichizyou_Flag >= 3 || $Kanae_Flag >= 3 || $Muramasa_Flag >= 3){

		if($RC_N["一条"] < $RC_N["香奈枝"] && $RC_N["一条"] < $RC_N["村正"]){
//嶋：英雄編確定
			$その他死亡=true;
			judgment_of_count();
			$PreGameName = $GameName;
			$GameName = "ma05_022.nss";
		}else if($RC_N["香奈枝"] < $RC_N["一条"] && $RC_N["香奈枝"] < $RC_N["村正"]){
//嶋：復讐編確定
//嶋：一条生存確認
			if($一条死亡 == true){
				$その他死亡=true;
				judgment_of_count();
				$PreGameName = $GameName;
				$GameName = "ma05_022.nss";
			}else{
				$Next_deadGame = "ma05_023.nss";
				$GameName = "mz01_001.nss";
			}
		}else if($RC_N["村正"] < $RC_N["香奈枝"] && $RC_N["村正"] < $RC_N["一条"]){
//嶋：魔王編確定
			$その他死亡=true;
			judgment_of_count();
			$PreGameName = $GameName;
			$GameName = "ma05_022.nss";
		}
	}else{
//嶋：好感度が一定値以下の為、bad
//$badEnd_Flag = 殺害スクリプト内判定用
		$badEnd_Flag = true;
		$PreGameName = $GameName;
		$GameName = "mz01_003.nss";
	}

}

scene ma05_021vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//デバッグ選択肢用
//	Debug_Select();

..//ジャンプ指定
//前ファイル　"ma05_020.nss"
	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 5000, "#FFFFFF");

	CreateTextureSP("絵ＥＶ上効果", 3030, Center, InBottom, "cg/ev/resize/ev139_統を殺害_al.jpg");
	CreateTextureSPadd("絵ＥＶ上", 3020, Center, InBottom, "cg/ev/resize/ev139_統を殺害_al.jpg");
	CreateTextureSP("絵ＥＶ", 3010, Center, InBottom, "cg/ev/resize/ev139_統を殺害_cl.jpg");
	CreateTextureSP("絵効果", 3000, Center, Middle, "cg/ev/ev139_統を殺害_c.jpg");


	Delete("@絵フラ");
	Delete("上背景");

	Move("絵ＥＶ*", 5000, @0, -65, DxlAuto, false);
	FadeDelete("絵色白", 1000, true);
	Wait(300);
	Fade("絵ＥＶ上効果", 1500, 0, null, true);
	Fade("絵ＥＶ上", 1500, 0, null, true);
	WaitAction("絵ＥＶ*", null);
	Wait(500);
	FadeDelete("絵ＥＶ*", 1000, true);

	SetFwR("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0010b41">
《な……
　馬鹿なァァァァゥア!?》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0020b41">
《有り得なァァァいッ！
　安息に抗える者などいなァァァァい!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0030b41">
《何故だァァァァァァァァ!!
　貴様は、どォしてェェェェッ!?》

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0040a00">
《……貴様が見せた安らぎは……》

{	SoundPlay("@mbgm12",0,1000,true);
	FwR("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0050a00">
《俺がこの手で斬ったものだ！
　俺がこの手で殺したものだ!!》

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0060a00">
《安息に眠る権利など……
　最早、俺には無い!!》

{	FwR("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0070b41">
《ぬァッ――!?》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	CreateSE("SE01a","se特殊_電撃_放電01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "#FFFFFF");
	CreateTextureSPadd("絵演ＥＶ覆", 3110, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	CreateTextureSP("絵演ＥＶ", 3100, Center, Middle, "cg/ev/ev905_村正電磁撃刀_a.jpg");
	FadeDelete("絵色白", 500, false);
	FadeDelete("絵演ＥＶ覆", 1000, true);
	Delete("絵効果");

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014a]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0080a00">
《吉野御流合戦礼法〝<RUBY text="ナダレ">雪颪</RUBY>〟が崩し……》

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_装着04");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateSE("SE01L","se特殊_電撃_帯電02");
	MusicStart("SE01L",0,1000,0,800,null,true);
	CreateTextureSP("絵演", 3200, -250, -270, "cg/ev/resize/ev905_村正電磁撃刀_cm.jpg");
	CreatePlainEX("絵板写", 5000);
	SetBlur("絵板写", true, 2, 500, 30, false);
	Fade("絵板写", 0, 500, null, true);
	FadeDelete("絵板写", 2000, false);
	Zoom("絵板写", 2000, 1500, 1500, null, false);

	SetFwR("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014b]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0090a00">
《<RUBY text="レールガン">電磁撃刀</RUBY>――――〝<RUBY text="オドシ">威</RUBY>〟》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1600, 0, null);
	CreateColorEXadd("絵色白", 19000, "#FFFFFF");
	Fade("絵色白", 2000, 1000, null, true);

//◆レールキャノン一閃
//◆ぞがーん
	MovieSESet(20000,"mv威","se特殊_mv用_電磁抜刀_威");
	MovieSEStart(2000);

	PrintGO("上背景", 19000);
	CreateColorSPadd("絵色白", 18000, "#FFFFFF");

	CreateTextureSP("絵背景", 100, Center, -970, "cg/bg/bg201_旋回演出背景市街地_02.jpg");

	Delete("上背景");
	FadeDelete("絵色白", 1000, true);

	SetFwC("cg/fw/fw青江_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0100b41">
《がッ……ハ……》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0110b41">
《ハッ……ハハハァ！
　なんと……なんとなァ！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0120b41">
《村正ァ！
　やはり貴様こそが悪鬼であったか！》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0130b41">
《及ばぬ！　この青江にして及ばぬわ！
　認めようぞ……貴様こそは、最も呪わしき
武者であろうよ!!》

//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0140b41">
《呵呵呵！
　呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵呵ッ!!》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0150a00">
《……ならば、問いに答えろ。
　ニッカリ青江》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0160a00">
《光は――
　銀星号は何処にいる！》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0170b41">
《ハッハ……
　白銀の……星……》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0180a00">
《何処だ!?》

{	FwC("cg/fw/fw青江_通常.png");}
//【青江】
<voice name="青江" class="青江" src="voice/ma05/021vs0190b41">
《かの姫は……
　…………六波羅の…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼーん。散華
	SetVolume("@mbgm*", 3000, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 11100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 11000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	Zoom("絵演上", 0, 1100, 1100, Dxl1, false);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵黒幕");

	Zoom("絵演上", 300, 1250, 1250, Dxl1, false);
	Shake("絵演上", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, true);
	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0200a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0210a01">
《御堂……
　野太刀の、刀身の欠片よ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0220a00">
「ああ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆刀身断片その２。げっと。
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 2000, Center, Middle, "cg/ev/ev925_野太刀断片_f.jpg");
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0230a01">
《……あと、残り一つ》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0240a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0250a01">
《御堂？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0260a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0270a01">
《……御堂……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆回想
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町b_03.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……二年前。
　あの後――――

　俺は養母の遺言に操られるように、町へ向かった。
　光を探して。

　だが、そこで見たものは――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆滅びの町
	CreateSE("SEL01","se自然_火_火災倒壊");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　死に絶えた町だった。

　誰も彼もが死んでいた。
　そこら中で死んでいた。

　<RUBY text="まちびと">町人</RUBY>も。
　山賊も。

　皆、生きてはいなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0280a00">
「……どうして……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0290a01">
《…………》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0300a00">
「……光も……まさか。
　俺と同じ事を……」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0310a00">
「山賊を殺して……
　殺した数だけ、町の人々をも……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0320a01">
《山賊というのは、武装した連中のこと？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0330a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0340a01">
《だとすると、おかしい……。
　数が合わない》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0350a01">
《それ以外の人の方が、ずっと多い》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0360a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　確かに、そうだった。
　山賊と町の人が、同じ数だけ死んでいるなら理屈は
合う……だが、山賊よりずっと多かった筈の<RUBY text="まちびと">町人</RUBY>らが
全滅しているというのは。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0370a01">
《……狂ってしまったのかしらね》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0380a00">
「……狂った？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0390a01">
《ええ》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0400a00">
「光が……町の人を手に掛けてしまった衝撃
で、狂って……そのまま……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0410a01">
《いえ。
　それだけなら、全滅まではしないでしょう》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0420a01">
《見て。
　死骸の大半は……互いに殺し合ったように
見えない？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0430a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　そう見える。
　町の人間と山賊が……だけではなく。町の人々同士
でも殺し合ったように見える。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0440a00">
「つまり……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0450a01">
《……<RUBY text="かかさま">二世村正</RUBY>には、恐ろしい力があるの。
　周囲の人間の心を、汚染する力が》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0460a00">
「……汚染？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0470a01">
《ええ。
　おそらく、貴方の妹は狂い――》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0480a01">
《そしてその狂った思念を、二世村正の力で
町中に撒き散らした。
　だから……こうなった》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0490a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0500a01">
《……昔にも一度、あったことよ。
　だから、二世村正は封じられた……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0510a01">
《……<RUBY text="わたし">三世村正</RUBY>が一緒に封じられたのは……
　もしもまた同じ事が起きた時には、私の力
で二世村正を止めるため》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0520a01">
《御堂》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0530a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0540a01">
《貴方は、二世村正の仕手を追わないとなら
ないのでしょう？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0550a00">
「……ああ」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0560a00">
「そうだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	#aw_村正=true;
	#aw_銀星号=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　――光を頼む。
　養母は最期に、そう言ったのだから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0570a01">
《私も二世村正を追わなくてはならない。
　――行きましょう》

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0580a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0590a01">
《私の事は、憎んでいい。
　けど、今は貴方には私が必要よ。私に貴方
が必要なように》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0600a00">
「お前が……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　こんな……
　呪われた劒冑が必要？

　養母の死の責任を転嫁するつもりはない。
　いみじくも光が言ったように、どんな劒冑も所詮は
武器。呪われていようが何だろうが道具に過ぎないの
だ。罪は、それを用いた人間に帰する。

　この劒冑は災いのものと、百も承知の上で、使って
しまった湊斗景明の他に憎むべき相手はいない。
　しかしだからといって……今後もこの劒冑を伴わね
ばならぬ理由など――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0610a01">
《ええ。
　二世村正の汚染能力は、武者には及ばない
……けれど〝卵〟を使えば武者を自分の分身
にしてしまえる》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0620a00">
「……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0630a01">
《その力に冒されない劒冑は、この世に<RUBY text="わたし">三世</RUBY>
<RUBY text="ひとつ">一領</RUBY>きり。
　だから……貴方に選ぶ余地は無いの》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0640a01">
《……何もかも諦めるなら、別だけれど》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0650a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　諦めることが――
　できる筈もなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

//◆復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0660a00">
「……六波羅……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0670a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0680a00">
「そう言っていたな」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0690a01">
《ええ……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0700a00">
「追うぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0710a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1500, 1000, null, true);
	SoundPlay("@msong01_inst",0,1000,true);

	CreateColorSP("絵色黒弐", 2000, "#000000");
	CreateTextureSP("絵演出壱", 3000, Center, Middle, "cg/ev/ev139_統を殺害_b.jpg");
	SetTone("絵演出壱", Sepia);

	Wait(5000);

	FadeDelete("絵色黒", 1500, true);

	Wait(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180a]
　あれから、二年。
　俺達は光を追い――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演出弐", 2990, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	SetTone("絵演出弐", Sepia);
	FadeDelete("絵演出壱", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180b]
　光は各地で<RUBY text="・・・・">全滅事件</RUBY>を起こし。
　銀星号と呼ばれるようになり。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演出参", 2980, Center, Middle, "cg/ev/ev901_銀星号天座失墜小彗星_a.jpg");
	SetTone("絵演出参", Sepia);
	FadeDelete("絵演出弐", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180c]
　時に俺と光は出会い。
　時にすれ違い。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演出四", 2970, Center, Middle, "cg/ev/ev503_村正抜刀剣光.jpg");
	SetTone("絵演出四", Sepia);
	FadeDelete("絵演出参", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180d]
　光のばら撒く〝卵〟を潰し。
〝卵〟のちょうど<RUBY text="・・・・">倍の数の</RUBY>人間を殺し。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演出*", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180e]
　そうして……
　未だ、光は止められずにいる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,400);
	CloudZoomVertex(0,@512,@0,null,false);

	CreateTextureSP("絵演背", 500, InLeft, InBottom, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	CreateTextureSP("絵演立", 1000, -2251, -147, "cg/st/3d村正標準_騎航_通常3b.png");
	Shake("絵演立", 3600000, 2, 1, 0, 0, 1000, Dxl2, false);
	CreateSE("SEL01","se戦闘_動作_空走行02_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Move("絵演背", 150000, -487, -288, null, false);
	FadeDelete("絵色黒弐", 1000, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0720a00">
「……次こそは必ず。
　これ以上……災厄を広げさせてはならない」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0730a01">
《……そうね……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　誓うように呟いて。
　俺も劒冑も、その偽善を知っていた。

　<RUBY text="おれ">村正</RUBY>こそが災厄をもたらすのだ。
　これから――何処かの、一人の人間に。

　一つの悪を殺した罪に懸けて。
　一つの善を殺す罪を負う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/021vs0740a00">
「行こう……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma05/021vs0750a01">
《ええ……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se戦闘_動作_空突進03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	Zoom("絵演立", 2000, 500, 500, null, false);
	Move("絵演立", 300, @90, @0, Dxl1, false);
	WaitKey(500);
	Delete("絵演立");
	CreateColorEX("絵色黒", 5500, "#000000");
	FadeDelete("絵色白", 2000, false);
	Fade("絵色黒", 3000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　俺は村正。
　<RUBY text="わざわい">災禍</RUBY>の武者である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@m*", 2500, 0, null);

	ClearWaitAll(2000, 2000);

//◆ヒロイン殺害判定
//◆アナザー好感度はシナリオクリア状況によって変動。
//◆一條と香奈枝の両方をクリア済みでないなら、両者
//◆のルート必要値以下に設定。つまりどちらかをここ
//◆で殺す、あるいはバッド行きの二択に。
//◆両ルートクリアしている場合はルート必要値以上に
//◆設定。


}



function Debug_Select()
{

	Conquest("nss/"+ModuleFileName(),"debug_select",true);

//デバッグ選択肢用
	if($GameDebugSelect == 1)
	{
		SetChoice06(魔王編,英雄編・香奈枝生存,英雄編・香奈枝死亡,復讐編・一条生存,復讐編・一条死亡,バッドエンド);
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
				ChoiceA06();
				$魔王編解放 = true;
				$Muramasa_Flag = 3;
				$Kanae_Flag = 2;
				$Ichizyou_Flag = 2;
			}
			case @選択肢２
			{
				ChoiceB06();
				$Ichizyou_Flag = 3;
			}
			case @選択肢３
			{
				ChoiceC06();
				$香奈枝死亡 = true;
				$Ichizyou_Flag = 3;
			}
			case @選択肢４
			{
				ChoiceD06();
				$Kanae_Flag = 3;
			}
			case @選択肢５
			{
				ChoiceE06();
				$一条死亡 = true;
				$Kanae_Flag = 3;
			}
			case @選択肢６
			{
				ChoiceF06();
//				$Muramasa_Flag = 1;
				$Kanae_Flag = 5;
				$Ichizyou_Flag = 2;
			}
		}
	//デバッグモード解除
	$GameDebugSelect = 0;
	}


}



//◆２３４５６７８９０１２３４５６７８９０１２３４







