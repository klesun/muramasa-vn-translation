//<continuation number="400">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_014.nss_MAIN
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
	#bg023_弥源太の家_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_013a.nss"
//前ファイル　"ma02_013b.nss"
//前ファイル　"ma02_013c.nss"

//◆合流

	PrintBG("上背景", 15000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……好きにしてもらうしかなさそうだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140010a03">
「わたくしのことも、名前で呼んでください
ましね。景明さま」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140020a00">
「有難うございます。中尉」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140030a03">
「……いけず……」


{	FwC("cg/fw/fwふな_通常.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140040b06">
「ちゅうい？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　隣のふなが真似をする。
　興味津々なのか、食事の前からずっと、じーっと目
を凝らして新たな来訪者を見つめていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fwふな_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140050b06">
「ちゅーい」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140060a03">
「はい？
　なんでしょう」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140070b06">
「おっきいねぇ……」


{	FwC("cg/fw/fw香奈枝_ショック.png");
	OnSE("se擬音_コミカル_ガーン01",1000);
	SetComic(@0,@0,8);}
//◆ガーン
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140080a03">
「がはァッ!?」


{	DeleteComic();
	FwC("cg/fw/fwさよ_驚き.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140090a04">
「ああっ、お嬢さまが急性肺結核に!?」


{	FwC("cg/fw/fwふき_衝撃.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140100b05">
「ふっ、ふふ、ふなーっ！
　女の人になんてこと言うのーっ！」


{	FwC("cg/fw/fw香奈枝_ショックb.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140110a03">
「けほっ、こほっ、げほげほっ……！」


{	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140120a04">
「あああお嬢さま、佳人薄命とは申しますが、
かくもあっけなく……せめて安らかに逝かれ
ませ。菩提はこのさよめが弔いますゆえ」


{	FwC("cg/fw/fw香奈枝_怒り.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140130a03">
「し、し、死にませんっ。死ぬもんですかっ。
　こっ、この程度の打撃で、大鳥香奈枝とも
あろうものがっ……」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140140a04">
「さすがでございます。どうかお気になさい
ませぬよう。
　たかだか純真な子供に素直な気持ちで単純
な事実を指摘された程度のこと」


{	FwC("cg/fw/fw香奈枝_ショック.png");
	OnSE("se擬音_コミカル_ガーン02",1000);
	SetComic(@0,@0,8);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140150a03">
「ぎゃふッッ!?」


{	DeleteComic();
	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140160a04">
「お嬢さま!?　心臓病を併発されましたか!?」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140170a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　香奈枝嬢の身長は見当で一七〇センチをやや凌ぐ。
　確かに女性としてはなかなかの長身だ。ふなが感心
するのも無理はない。

　……それを言われて彼女が虚心坦懐でいられぬのも
また、無理はないことだが。
　通俗的価値観として、女性は小柄な方が愛らしいと
される。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140180a01">
《大惨事ね》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140190a00">
（若干一名、煽っている人間がいるような気
もするが）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140200a01">
《けど正直、私も同感。
　私が生きていた頃だと、男でもあれくらい
の背丈はそうそうなかったもの》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140210a00">
（最近ではそこそこ見掛けるのだがな）

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140220a01">
《食べているものが違うからでしょう》

{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140230b05">
「すみません、すみませんっ。
　この子、本当に悪気はないんですっ。ただ
その、気が利かなくて……」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140240a03">
「ふ、ふふ。
　いいんですのよ。わたくし、ちっとも気に
していませんから」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140250a04">
「ええ、ええ、お気遣いなく。
　正直で嘘のつけない良いお子さまではあり
ませんか。ねえお嬢さま」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140260a03">
「この銃の引き金の軽さを知っていて!?」


{	FwC("cg/fw/fwふき_困惑.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140270b05">
「ごっごっごめんなさい!!」


{	FwC("cg/fw/fw香奈枝_怒笑.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140280a03">
「い、いぃえ。何でもありませんのよ。
　うふふふふ」


{	FwC("cg/fw/fwふな_笑い.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140290b06">
「ちゅーい、おっきー」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140300a04">
「そうでございますねえ、おおきゅうござい
ますねえ」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140310a03">
「ふ、ふふふふ…………うぅぅ……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0140320a01">
《……むごい》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　本当にな。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwふき_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140330b05">
「で、でも、ほら。
　お武家様と並ぶと丁度いいですよねっ」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140340a00">
「？」


{	FwC("cg/fw/fwふき_通常.png");}
//【ふき】
<voice name="ふき" class="ふき" src="voice/ma02/0140350b05">
「お武家様も立派なお体をしてますから。
　お二人が並ぶと本当、絵になります」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140360a03">
「あら？」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma02/0140370a04">
「ほほ。
　これは良いところに気付かれましたな」


{	FwC("cg/fw/fwふな_不思議.png");}
//【ふな】
<voice name="ふな" class="ふな" src="voice/ma02/0140380b06">
「おーっ。
　おにあい？」


{	CreateSE("SE01","se擬音_コミカル_ぷに");
	FwC("cg/fw/fw香奈枝_照れ.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetComic(@0,@0,13);}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma02/0140390a03">
「ぽっ」


{	DeleteComic();
	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0140400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　俺と大鳥中尉？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//◆選択：なるほど／むしろ綾弥の方が……／俺には村正だろう
//◆奈：090323変更。村正選択肢は２ルートクリア後のみ


.//ジャンプ指定
//◆なるほど　"ma02_014a.nss"
//◆むしろ綾弥の方が……　"ma02_014b.nss"
//◆俺には村正だろう　"ma02_014c.nss"

//★選択肢シーン
scene ma02_014.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

	SoundPlay("@mbgm30",0,1000,true);

//■選択肢
//なるほど　"ma02_014a.nss"
//むしろ綾弥の方が……　"ma02_014b.nss"
//俺には村正だろう　"ma02_014c.nss"

	if(#魔王編解放==true){SetChoice03("なるほど","むしろ綾弥の方が……","俺には村正だろう");}
	else{SetChoice02("なるほど","むしろ綾弥の方が……");}
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

		if(#魔王編解放==true){
		case @選択肢１{ChoiceA03();$GameName = "ma02_014a.nss";}
		case @選択肢２{ChoiceB03();$GameName = "ma02_014b.nss";}
		case @選択肢３{ChoiceC03();$GameName = "ma02_014c.nss";}
		}else{
		case @選択肢１{ChoiceA02();$GameName = "ma02_014a.nss";}
		case @選択肢２{ChoiceB02();$GameName = "ma02_014b.nss";}
		}
	}
}

