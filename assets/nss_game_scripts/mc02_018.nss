//<continuation number="80">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_018.nss_MAIN
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

	$GameName = "mc02_019.nss";

}

scene mc02_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc02_017.nss"


//◆基地内
//◆横書き

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/bg/bg028_横浜ＧＨＱ基地_01.jpg");
	FadeDelete("上背景", 0, true);
	FadeDelete("黒幕１", 1000, true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180010b03">
（…………）


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180020b03">
（ちと、面の皮が薄かったかな……）


{	NwH("cg/fw/ny兵士.png");}
//【ｅｔｃ／基地兵士】
<voice name="ｅｔｃ／基地兵士" class="その他男声" src="voice/mc02/0180030e042">
「キャノン中佐」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180040b03">
「ん？　何だ」


{	NwH("cg/fw/ny兵士.png");}
//【ｅｔｃ／基地兵士】
<voice name="ｅｔｃ／基地兵士" class="その他男声" src="voice/mc02/0180050e042">
「Ｄ８号が面会を求めておりますが」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180060b03">
「……そういや先送りにしちまってたな。
　後に取っといて楽しい客でもないし、手の
空いてるうちに済ますか」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0180070b03">
「俺の部屋に寄越してくれ」


{	NwH("cg/fw/ny兵士.png");}
//【ｅｔｃ／基地兵士】
<voice name="ｅｔｃ／基地兵士" class="その他男声" src="voice/mc02/0180080e042">
「はっ」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mc02_019.nss"