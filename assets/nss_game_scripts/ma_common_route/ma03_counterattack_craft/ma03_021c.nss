//<continuation number="30">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021c.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	if($ma03_021c_routeFlag==true){$ma03_021c_routeFlag = false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_022.nss";

}

scene ma03_021c.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_021.nss"

//●ライガー
	SoundPlay("@mbgm13",0,1000,true);
	PrintBG("上背景", 30000);
	OnBG(100,"bg037_競技場ガレージa_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　少女は……いない。
　いや――

　皇路操に向かっていた三人目の男は、既に床を相手
に冷たい接吻をしている。
　彼をそこへ誘ったであろう少女の姿はない。

{	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1500,null,false);}
　ぱたんっ、と靴底が床を打つ軽い音。
　振り返る。

　三間余りも離れた距離に、男と少女が対峙していた。
　男の背はこちらへ向いている。

　……一瞬前まで――三人の男を同時に攻撃していた
間、少女は俺のすぐ傍にいた筈。
　然してこの位置関係。加えて、先程の<RUBY text="・・・">着地音</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/021c0010a00">
（まさか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="・・・・・・・・">あそこまで跳んだ</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw覆面Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／覆面Ｂ】
<voice name="ｅｔｃ／覆面Ｂ" class="その他男声" src="voice/ma03/021c0020e240">
「んなっ――」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/021c0030a07">
「いい夢見ろよ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆閃光
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 1000);
	Wait(1);

	CreateColorSP("絵白転", 5000, "#FFFFFF");
	WaitKey(10);

	DrawDelete("絵白転", 150, 100, "slide_05_00_1", false);
	FadeFR2("絵板写",0,1000,300,0,0,30,DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　唇と鼻の間に、少女の指先が突き刺さる。
　――<RUBY text="ジンチュウ">人中</RUBY>。

　糸を切られた操り人形よろしく、男は<RUBY text="くずお">頽</RUBY>れた。
　おそらく痛みを覚える間もなく、意識を飛ばしたの
ではなかろうか。

　……恐ろしいまでに鋭敏な体術。
　正道の武術に、邪道の混入したものと見えた。

　習い覚えた流儀に飽き足らず、我流の工夫を加えた
のか。
　いずれにせよ、単なる資産家の子供が手慰みに身に
付けたものとは到底思われなかった。

　あるいは、彼女は武門の出自。
　それは、即ち――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//嶋：フラグ調整アナザー追加【090923】
	$ma03_021c_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

..//ジャンプ指定
//次ファイル　"ma03_022.nss"

}

