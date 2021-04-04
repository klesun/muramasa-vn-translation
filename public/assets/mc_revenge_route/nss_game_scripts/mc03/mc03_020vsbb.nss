
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_020vsbb.nss_MAIN
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

	//◆フラグ分岐：仮入れ
	if($mc03_018vsb_R2Flag=="西"){$GameName = "mc03_020vsbba.nss";}
	else{$GameName = "mc03_020vsbbb.nss";}


}

scene mc03_020vsbb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_020vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//あきゅん「デバッグ：演出確認用」
	//$mc03_018vsb_R2Flag="東";
	//$mc03_018vsb_R2Flag="西";
	//$mc03_018vsb_R2Flag="南";
	//$mc03_018vsb_R2Flag="北";

//●離脱成功
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 20000, "#000000");

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1100,null,false);

	CreateTextureSP("絵演背景", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義b.png");
	Move("絵演立絵", 0, @316, @-10, null, true);
	Shake("絵演立絵", 600000, 2, 0, 0, 0, 1000, null, false);

	Request("絵演立絵", Smoothing);
	Rotate("絵演立絵", 0, @0, @0, @-20, null,true);

	Move("絵演立絵", 6000, @-60, @10, DxlAuto, false);
	Move("絵演背景", 600000, -100, @0, null, false);

	Wait(200);

	SetFrequency("SE01", 400, 600, null);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, "slide_01_02_1", true);

//◆※方角が南なら、まず以下二文
//◆$離南_Flagがある場合

if($mc03_018vsb_R2Flag=="南"){

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　針路は南へ。
　列車事故の現場が北にある。だから南なのだ。

　どうせ敵騎は追い縋って来る。
　なら南へ向かっておけば、大鳥主従から引き離す事
になり、一石二鳥というもの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}else{
}//else_end

//◆※南以外ならここから
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　<RUBY text="ウィング">翼甲</RUBY>で風を切り、虚空を疾駆する。
　村正の<RUBY text="あしこし">機動性能</RUBY>に問題はない。敵騎との間に距離を
確保することは、どうにかできそうだ。

　これでひとまず、攻撃される心配はない。
　後は、このまま逃げ切れるかどうかだが……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(500, true);


//◆フラグ分岐
//◆方角が西→●方角正解
//◆方角が西以外→●方角ミス

..//ジャンプ指定
//◆$離西_Flagがある場合
//次ファイル　"mc03_020vsbba.nss"

//◆$離西_Flagが無い場合
//次ファイル　"mc03_020vsbbb.nss"

}