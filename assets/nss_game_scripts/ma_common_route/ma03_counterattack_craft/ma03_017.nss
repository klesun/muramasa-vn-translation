//<continuation number="300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_017.nss_MAIN
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

	$GameName = "ma03_018.nss";

}

scene ma03_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_016.nss"

//◆貴賓席

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw雷蝶_不興.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170010a08">
「なによ、あのみっともない騎体。
　あんなモノを麿のレースで走らせるつもり
なの、タムラは！」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170020a08">
「許せないわね……。
　美意識には反するけど、捻り潰してやろう
かしら」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170030e284">
「はっ。是非にもそうなさるべきです。
　中将閣下――」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170040a08">
「雷蝶夫人とお呼びなさい！」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170050e284">
「も、申し訳ありません。雷蝶夫人。
　実は小官、かねてより翔京兵商に比べ報国
の志が薄く、自社の利益追求ばかりに熱心な
田村甲業のことを苦々しく思っておりました」

//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170060e284">
「そこへ来て、中じょ……雷蝶夫人を侮るが
ごときこの振る舞い。
　もはや断固たる処置の他は無しと存じます」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170070a08">
「そうね。
　あなたの義弟の願いを聞き入れてやること
にしましょうか？　大久保」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170080e284">
「はっ――」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170090a07">
「まーまーまー。
　落ち着けよカニカマ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170100a08">
「誰がどうして、カニカマよッ!?」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170110a07">
「つまんねーことはやめとけって。
　ただでさえ下品な顔がもっと下品になっち
まうから」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170120a07">
「なあ……イヤだろ？
　今以上に品が下がるなんてさ……」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170130a08">
「真剣に心配してるツラでなに言うのよこの
ガキはぁーーーーッ!!
　麿の顔の、どこがっ、下品なのッ!?　もう
一度よく見てから言ってみなさい!!」

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170140a07">
「…………」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170150a07">
「プッ」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170160a08">
「ウキーーーー!!」

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170170a07">
「かんらからから。
　傍で見てるぶんには愉快だよなーこいつー。
間違っても友達にはなりたくないけどねっ」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170180a08">
「こっちで願い下げよっ！」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170190a07">
「そーお？」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170200e284">
「……恐れながら、堀越公。
　我が主君に対し、あまりに礼を欠く言動は
……加えて、指図するかのごときなされよう
もどうか、お控え頂きたく」

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//◆冷たい侮蔑
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170210a07">
「あ？
　んだよ、おめー」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170220a07">
「死んどく？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ＳＥ：抜刀音。ジャキン。
	OnSE("se戦闘_動作_刀構え02",1000);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170230e284">
「…………ごっ、ご無礼致しました……！
　平にご容赦を」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170240a08">
「大久保、下がっていなさい」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0170250e284">
「は――ははっ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆人が引き下がるＳＥ？
	OnSE("se人体_動作_後ずさり01",1000);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170260a08">
「……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170270a07">
「タムラのあれ、なかなか面白い騎体じゃん。
　あてはイイと思うよ？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170280a08">
「ふん。どこが」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0170290a07">
「いやいや。
　あれは本当に<RUBY text="・・・">面白い</RUBY>って……」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0170300a08">
「？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 150, "#000000");
	FadeDelete("上背景", 1000, true);

	Wait(1000);

}

..//ジャンプ指定
//次ファイル　"ma03_018.nss"