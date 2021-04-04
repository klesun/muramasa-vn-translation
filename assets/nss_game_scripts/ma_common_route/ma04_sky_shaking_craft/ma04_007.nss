//<continuation number="280">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_007.nss_MAIN
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
	$PreGameName = $GameName;

	$GameName = "ma04_008.nss";

}

scene ma04_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_006.nss"

//◆夜の海岸？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070010a12">
「……ええ、はい。
　一通りは様子を見てみたんですがねぇ……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070020a12">
「動きがありません。
　慌てて引き上げにかかるなんて気配もない
かわり、警備体制を強化する気配もないって
按配でして」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070030a12">
「はい……。
　ちょいとばかし、あてが外れちまった格好
です」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070040a12">
「これじゃあ村正の始末は期待できませんね
……ああ、はい。そりゃもう。
　わかってます。あたしの責任です……」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070050a12">
「……どうにかしますよ。
　なに、高見の見物を決め込もうなんて欲を
かかなきゃ、まだ手はありますんで……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070060a12">
「へ、へ、へ。
　ま、そうご心配なく……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆プツッ。
	OnSE("se特殊_コックピット_ロックオン",1000);

	StR(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070070a12">
「……」

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070080a12">
「そうそううまくはいかねぇか。
　へっへぇ……」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070090a12">
「まぁ……
　それならそれで、腹を括るだけのことだぁ
な？」

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0070100a12">
「……村正ァ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1000, 1000);

//◆ＧＨＱ・ガーゲット執務室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg029_ガーゲット少佐執務室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm21",0,1000,true);

	StL(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStL(300,true);

	SetFwH("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070110b02">
「…………」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070120e004">
「Ｄ８号からの連絡ですか？」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070130b02">
「ああ。
　どうも、事は奴の思い通りに進んでいない
ようだな」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070140e004">
「所詮は黄色い猿です。
　口で言うことの半分も何かができるわけで
はありません」

//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070150e004">
「中佐殿も何をお考えなのか……。
　あのような奴らに頼らずとも」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070160b02">
「私は、貴官の意見を求めたか？」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070170e004">
「……失礼致しました」

{	FwH("cg/fw/fwガーゲット_沈思.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070180b02">
「……」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070190b02">
（雪車町が失敗するなら、それはそれで構わ
ない。それで別に何を失うわけでもない。
　だが……）

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070200b02">
（六波羅の兵器。
　赤い武者……）

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――
..//香奈枝生存時のみ通過
//◆香奈枝生存の場合のみ次台詞。死亡の場合は飛ばす

if(!$Kanae_Dead){
	SetFwH("cg/fw/fwガーゲット_侮蔑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070210b02">
（……大鳥大尉）

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

}else{SetFwH("cg/fw/fwガーゲット_侮蔑.png");}

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070220b02">
（邪魔者は早めに始末するに限る。
　<RUBY text="アウァ・アメリカ">偉大なる故郷</RUBY>のためにも）

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070230b02">
（……雪車町に……
　任せておくべきでは、ないな）

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070240b02">
「キャノン中佐に連絡。
　至急お会いしたいと伝えろ」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070250e004">
「は」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070260b02">
「もう一つ。
　資料情報<RUBY text="・・">整理</RUBY>班に発令」

{	FwH("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0070270b02">
「<RUBY text="セットアップ">出撃準備</RUBY>」

{	NwH("cg/fw/nyＧＨＱ兵士Ａ.png");}
//【ｅｔｃ／ＧＨＱ兵士Ａ】
<voice name="ｅｔｃ／ＧＨＱ兵士Ａ" class="その他男声" src="voice/ma04/0070280e004">
「……はっ！」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_008.nss"