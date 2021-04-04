
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_025gameoveraa.nss_MAIN
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
	$立方陣簡易フラグ = true;

	$PreGameName = $GameName;

	$GameName = "md05_025.nss";

}

scene md05_025gameoveraa.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md05_025.nss"

	PrintBG("上背景", 30000);
	CreateColorSP("黒", 100, "BLACK");

	CreateTextureEX("絵st100", 1200, -249, -364, "cg/st/resize/st茶々丸_通常_私服_l.png");

	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev926_野太刀全容.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 500, true);

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se特殊_雰囲気_発光03",1000);

	Fade("フラッシュ白",200,1000,null,true);

	Fade("絵背景100", 0, 500, null, true);
	Fade("絵st100", 0, 1000, null, true);

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//●下げる
//◆茶々丸（ライガー）

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0040a07">
「やっほー。
　いつでもどこでもあなたの味方、ダンガン
ライガーでーす」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0050a07">
「いや、今は<RUBY text="ブレード">野太刀</RUBY>ライガー！
　それともここはムラマサライガーと名乗る
べきなのか!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＳＥ：がおーん



	OnSE("se特殊_その他_茶々丸がおー", 1000);

	WaitKey(1500);

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0060a07">
「どっちでもいいですね。
　さっさとやることやれよというテレパシー
がちゃんと受信できるあては空気読める子」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0070a07">
「西暦２００３年に解明されたばかりの問題
を何故か１９４０年相当の世界で解かされて
いる、この理不尽にもう流す涙もない皆様方。
　微力ながらあてがお手伝いいたしましょう」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/025ga0080a07">
「……いや本当、なぁんでこんな変なことに
なってんだろね？
　ブラックホールから脱出するなら、屁でも
こいときゃいいだろーにさー……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆なんか力を使ったっぽいエフェクト
//◆難易度低下処置して→●問題開始

	OnSE("se擬音_雰囲気_超回復", 1000);
	CreateColorEX("力使いました。", 15000, "WHITE");
	Fade("力使いました。", 1500, 1000, null, true);

	WaitKey(1000);

	ClearFadeAll(2000, true);



..//ジャンプ指定
//次ファイル　"md05_025.nss"

}


