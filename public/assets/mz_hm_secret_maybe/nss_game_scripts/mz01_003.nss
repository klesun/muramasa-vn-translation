//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mz01_003.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
$badEnd_Flag = true;
		if($badEnd_Flag == true){$その他死亡 = true;$一条死亡 = true;$香奈枝死亡 = true;SetHex();}
		else{}
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg007_若宮大路a_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mz00_000.nss";

}

scene mz01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　""


//●村正を殺す

//◆※ルート分岐条件を満たさなかった場合のバッドエ
//◆ンドとして流用する際は以下シーンを挿入

	if($badEnd_Flag == true){

	$badEnd_Flag = false;

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 10, "#000000");
	FadeDelete("上背景", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　殺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(25);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血", 20, Center, Middle, "cg/anime/Left/blood_C_6.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　殺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(20);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血２", 20, Center, Middle, "cg/anime/Right/blood_B_6.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　幾人も幾人も殺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(15);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血３", 20, Center, Middle, "cg/anime/Center/bloodA_7.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　銀星号を追い、〝卵〟に冒された者を追い――
　果てもなく続く狩りの日々。

　幾人もの敵を殺した。
　同じ数の<RUBY text="とも">朋</RUBY>を殺した。

　気付けば俺の傍には誰もいなかった。

　それでも敵を殺した。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆斬
//◆血
	CreateSE("SE01a","se戦闘_攻撃_刀振る01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1000);
	SL_leftdownfade2(10);

	CreateSE("SE01b","se戦闘_攻撃_刀刺さる04");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureSP("絵演血４", 20, Center, Middle, "cg/anime/Center/bloodA_14.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　だから、もう<RUBY text="おしまい">御仕舞</RUBY>だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆ここまで

	}else{

	}

//◆以下、ヒロインキルの場合と共有

//◆夜の街路
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(10,"bg007_若宮大路a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
　……何処とも知れぬ、路上に降り立つ。
　辺りは暗く、人影もない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//装甲まとめ
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorSPadd("絵フラ", 5000, "#FFFFFF");
	StC(50, @0, @150,"cg/st/3d村正蜘蛛_正面.png");
	FadeStC(0,true);
	FadeDelete("絵フラ", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
　一つ息をついて、俺は村正を解装した。
　全身を覆う甲鉄が剥離し、深紅色の蜘蛛を形造る。

　そうして向き合う。
　月<RUBY text="あかり">灯明</RUBY>の差す静寂の地平、己の半身とも<RUBY text="たの">恃</RUBY>んだ鉄騎
と対峙する。

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030010a01">
《……そう》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　説明は何もない。
　だが俺の蜘蛛は察した。

　俺がふと考える事があったように、蜘蛛も思う事が
あったのだ。
　このような時がいずれ、来るのではないかと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030020a01">
《もう貴方には、私しか残っていないのね。
　私に、貴方しか残っていないように》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030030a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　頷く――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030040a00">
「俺達は、失い過ぎた」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030050a01">
《……ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　頷き合う。
　事実を、受け入れる。

　――順番が来たのだ。
　俺達の、番が。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030060a01">
《なら、二つに一つよ。
　貴方が私を殺すか。
　私が貴方を殺すか》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　手の中に、慣れた重さ。
　太刀が転送されていた。

{	CreateSE("SE01b","se戦闘_動作_刀構え02");
	MusicStart("SE01b",0,1000,0,1500,null,false);}
　村正の口元には牙。
　太刀と、牙。最後の選択。

　――答えは出ている。

　それでも村正は俺に選択を与えた。
　それは誠意か――慈悲か――温情か。肉体を鋼鉄に
打ち上げた彼女には、およそ似つかわしくない何か。

　その甘さに縋り付きたいと、思う。
　命を拾いたいと、思う。

　死の恐怖――
　
　だが俺は知っている。

　この恐怖に敗れるというのが如何なる事か。
　己の命を拾い、代わりに何が喪われるのか。

　今の俺は知っている。
　あの日、村正と出会った時に知ったのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030070a00">
「答えは出ている」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030080a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　銀星号の振り撒く破壊を食い止める為に。
　俺と村正、より必要なのはいずれであるか。

　答えは、出ている――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030090a01">
《私、は》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030100a00">
「お前の意思など問うていない、劔冑。
　俺は<RUBY text="つかいて">仕手</RUBY>として命ずるだけだ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030110a01">
《――御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　<RUBY text="・・">俺達</RUBY>は知っている。
　為すべき事を知っている。

　重ねた罪の意味を知っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030120a00">
「責務を果たせ。
　村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030130a01">
《御堂》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　恐怖はある。悔いもある。
　残してゆくものの事を思う。

　だがこれは、俺の為した行為の結果。
　力不足がこの最期を決定付けたのなら、元より、俺
に逃れるべき道など無いのだ。

　逃れてはならなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mz01/0030140a00">
「<RUBY text="ひかる">銀星号</RUBY>の事を頼む」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mz01/0030150a01">
《……誓って、必ず。
　私の<RUBY text="あるじ">御堂</RUBY>》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆黒画面
//◆ずばしゅ。
	CreateColorSP("絵色黒", 100, "#000000");
	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1200);
	SL_centerdamfadeN2(10);

//◆デッドエンド
	ClearWaitAll(3000, 2000);

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　""