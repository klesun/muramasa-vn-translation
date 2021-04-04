//<continuation number="70">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_045.nss_MAIN
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
	#bg051_皆斗家居間_01=true;
	#ev005_斬り割られた兜=true;
	#ev139_統を殺害_a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_046.nss";

}

scene md02_045.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md02_044.nss"


//◆過去フラッシュ

	PrintBG("上背景", 30000);
	CreateColorEX("ホワイト", 5000, "WHITE");
	Fade("ホワイト", 0, 1000, null, true);



	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg051_皆斗家居間_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st署長_通常_制服.png");
	CreateTextureSP("絵回想300", 2200, 150, InBottom, "cg/st/st本家_通常_私服.png");
	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	EfRecoIn1(18000,100);
	FadeDelete("ホワイト",0,true);

	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw本家_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【本家】
<voice name="本家" class="本家" src="voice/md02/0450010b52">
『貴様が事の決着をつけよ』

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/md02/0450020b52">
『この能無し――明堯と湊斗家との縁を、
　貴様の手で断ち切るのだ』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md02/0450030a11">
『……許せ。景明』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoIn1(18000,300);
//◆兜割り

	Delete("絵回想*");
	CreateTextureSP("絵回想400", 3000, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");

	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw本家_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【本家】
<voice name="本家" class="本家" src="voice/md02/0450040b52">
『去れ、明堯。
　今後二度と、湊斗を名乗ることも、儂の前
に現れることも許さぬ』

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md02/0450050a11">
『……景明……』

//【署長】
<voice name="署長" class="署長" src="voice/md02/0450060a11">
『湊斗の家を……
　光のことを、頼む』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去フラッシュ。統の死

	EfRecoIn1(18000,300);

	Delete("絵回想*");

	CreateTextureSP("絵回想500", 3000, Center, Middle, "cg/ev/ev139_統を殺害_a.jpg");


	EfRecoIn2(600);

	Wait(500);

	SetFwC("cg/fw/fw統_優しい.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【統】
<voice name="統" class="統" src="voice/md02/0450070b46">
「……光を頼むよ、景明。
　約束……忘れないで」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆戻り
	EfRecoOut1(300);
	Delete("絵回想*");
	CreateColorEX("ホワイトアウト１", 5000, "WHITE");
	Fade("ホワイトアウト１",0, 1000, null, true);
//	Delete("Memory_cover");

	EfRecoOut2(100,true);


}

..//ジャンプ指定
//次ファイル　"md02_046.nss"