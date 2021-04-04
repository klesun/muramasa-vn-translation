//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_022vs.nss_MAIN
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

	$GameName = "mc03_023vs.nss";

}

scene mc03_022vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsbba.nss"

//●クリア
//◆青空。剣撃と騎航の音
//◆青空→夕空へ
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 10000, "#000000");

	CreateSE("SE01","se戦闘_特殊_空中戦風景_L");
	MusicStart("SE01",2000,1000,0,900,null,true);

	CreateTextureSP("絵背景110", 110, Center, Middle, "cg/bg/bg001_空a_01.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_02.jpg");

	Delete("上背景");
	FadeDelete("絵色黒", 1000, true);

	WaitKey(1500);

	FadeDelete("絵背景110", 1000, true);

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　対敵はやはり、どうにも素人であった。

　武者の生命線である熱量の運用について、余りにも
配慮がない。
　終始、<RUBY text="フルスロットル">全開</RUBY>。

　絵に描いたような猪突猛進ぶりは、無論、油断すべ
からざる暴威ではある。
　が、こちらがそれに慣れてしまえば、ただの見切り
易く<RUBY text="さば">捌</RUBY>き易い単調な突撃でしかなかった。

　態勢を立て直した<RUBY text="おれ">村正</RUBY>は、敵騎の猛進に付き合う愚
を戒め、勢いを受け流し、凌ぎ切る戦いに徹した。
　その戦術の効果が顕れるまで、大して長い時間では
なかったろう。

　四倍の熱量とて、無分別に放出すれば<RUBY text="たちま">忽</RUBY>ち尽く。
　累代の財産がたった一人の浪費家に使い潰されるの
と同じ事だ。

{	SetVolume("SE*", 1000, 0, null);}
　そうして、敵騎の<RUBY text="・・">破産</RUBY>は今や目前。
　
　勝負はついていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("SE*", null);


..//ジャンプ指定
//次ファイル　"mc03_023vs.nss"

}