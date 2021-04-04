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

scene ma03_029.nss_MAIN
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
	$Others_Flag = 0;
	$OthersFav_After = 0;

	if($その他死亡){$その他復活=true;$Others_Flag = 0;$OthersFav_After = 0;SetHex();}

	$PreGameName = $GameName;
	$GameName = "ma04_001.nss";

}

scene ma03_029.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_028.nss"

//◆黒画面
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma03/0290010a12">
「……………………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(0, 1500);

//◆サーキット場前・昼
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_03.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	WaitKey(1000);

	CreateTextureEX("絵背景200", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");

	CreateSE("SE01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SE01",4000,1000,0,1000,null,true);

	Fade("絵背景200", 3000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
『鎌倉サーキット場整備員の手記』

一〇月三一日　第一回大和ＧＰ決勝戦
　優勝　タムラ／アベンジ
　二位　ヨコタン／スーパーハウンド
　三位　アソシエイブル／ＲＧ-一〇ＣＸ

※終盤までレースをリードしていたのは翔京ワークス
のウルティマ・シュールであったが、一九周目の第一
コーナーでクラッシュ。リタイヤした。
　尚、騎手は死亡。

※レース終了後の晩、タムラ・アベンジは謎の騎航を
行い、クラッシュ。全壊した。
　騎手は皇路操であったと思われるが、この日以降、
彼女の消息は不明。

　またほぼ同時刻、タムラのガレージでメカニックの
一人が死亡している。
　しかしこれについて警察からもタムラからも公的な
発表はなく、彼の氏名ほかの素性は明らかでない。

※上記の事件については様々な憶測が飛び交い、一々
記す事もできない。また大半は荒唐無稽なものである。
　だが、大和ＧＰの背後に装甲競技賭博化を巡る抗争
があったことはほぼ事実とみられ、

　翔京がこれを進め、タムラがこれに反対していた事
も、複数の関係者が私的な発言で明らかにしている。

　賭博化について愛好者の間では賛否両論だが、大和
ＧＰにおける皇路操とアベンジの騎航は既に半ば伝説
的であり、あの騎影に想いを寄せ再来を願う風潮は党
派の枠を超えて強く――

　彼らはタムラの姿勢に協調、結集して賭博化反対の
宣言を行い、徹底抗戦の構えを見せている。
　大和ＧＰで敗れた翔京が賭博化をいまだ断念してい
ないとしても、実現は困難を極めるであろう…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Wait(2000);

	ClearWaitAll(2000, 0);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ２", 100, Center, Middle, "cg/sys/Telop/lg_第三編.png");

	WaitKey(4000);

	FadeDelete("上背景", 2000, true);

	Wait(1000);

	PrintGO("上背景", 25000);
	CreateColorSP("絵黒地", 10, "#000000");
	CreateTextureSP("絵テロ３", 100, Center, Middle, "cg/sys/Telop/lg_第三編了.png");
	FadeDelete("上背景", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);

//◆第三編・了


}

..//ジャンプ指定
//次ファイル　"ma04_001.nss"

//◆２３４５６７８９０１２３４５６７８９０１２３４

//保留
/*============================================
※第四話用ボイス

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ex/0010090b24">
「悪鬼！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ex/0010100b24">
「殺した！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

============================================*/