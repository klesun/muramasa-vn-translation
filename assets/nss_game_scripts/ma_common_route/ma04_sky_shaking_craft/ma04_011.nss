//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_011.nss_MAIN
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
	#bg041_片瀬海岸_01=true;
	#bg044_研究施設内_01a=true;
	#bg044_研究施設内_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_義清=true;

	$PreGameName = $GameName;

	$GameName = "ma04_012.nss";

}

scene ma04_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_010.nss"

//◆転換
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　来た道を戻るその途上。
　ふと、地元民の囁き合いを耳にした。

　――また人がいなくなった。<k>
　
　今度は、芳養の家の餓鬼どもだ――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0110010a00">
「……ッ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆江ノ島
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	WaitKey(500);

//◆黒。もしくはサーキット場通路を使い回し
//◆どかーん。戸を蹴り破る音。
	CreateSE("SE01a","se日常_物_木箱壊れる01");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,false);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	CreatePlainSP("絵振", 100);
	FadeFR2("絵振",0,1000,600,0,0,30,Dxl2, true);
	Delete("絵振");

//◆わらわらわら。集団が踏み込んでゆく音
//◆立ち絵：ガーゲット少佐・アスカロン（鞘付）所持
	CreateSE("SE01b","se人体_足音_走る01_L");//ダミー注意
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StR(1000, @60, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, true);
	SoundPlay("@mbgm21",0,1000,true);

	SetNwC("cg/fw/nw警備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／警備員】
<voice name="ｅｔｃ／警備員" class="その他男声" src="voice/ma04/0110020e061">
「お待ち下さい！
　ここは幕府直轄の施設です！　進駐軍の方
であっても無許可での立ち入りは認められて
おりません！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0110030b02">
「……」

{	NwC("cg/fw/nw警備員.png");}
//【ｅｔｃ／警備員】
<voice name="ｅｔｃ／警備員" class="その他男声" src="voice/ma04/0110040e061">
「ちょっ……
　だから、待てって――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。どきゃ。
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_08_00_1", true);



	SetNwC("cg/fw/nw警備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／警備員】
<voice name="ｅｔｃ／警備員" class="その他男声" src="voice/ma04/0110050e061">
「ぐべッッ!?」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0110060b02">
「触れるな、劣等！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかどか。
	CreateSE("SE01","se人体_足音_複数兵士散開");
	MusicStart("SE01",0,1000,0,750,null,true);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	SetVolume("SE*", 1500, 0, null);
	FadeDelete("上背景", 1000, true);
	WaitPlay("SE**", null);

//◆研究室
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg044_研究施設内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nw研究員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110070e068">
「所長！」

{	StL(1000, @-60, @0,"cg/st/st所長_通常_私服.png");
	Move("@StL*", 300, @60, @0, Dxl2, false);
	FadeStL(300,false);
	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110080b22">
「なんだぁこの騒ぎは!?
　どいつもこいつもお味噌が腐って手当たり
次第にファックし始めたのかぁっ!?」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110090b22">
「俺も入れろ!!」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110100e068">
「違いますっ！
　ＧＨＱの将校が押し込んできました。研究
を開示せよと……！」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110110b22">
「な――にィィィィィ!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg042_沿岸_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

//◆灯台付近？の雪車町
	StL(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0110120a12">
「……へっへぇ。
　こいつぁいい。話がいきなり簡単になっち
まった」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0110130a12">
「お気の短い少佐殿が、こう動いてくださる
んなら……
　あたしはやりたいことだけやってりゃいい
ってことだぁねぇ？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0110140a12">
「へ、へ、へ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆普陀楽城内・童心の間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	#voice_on_義清=true;

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110150b21">
「入道様。
　江ノ島より連絡です」

{	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,false);
	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110160a09">
「おう。
　来たか、来たか……」

//◆がちゃ。
{	OnSE("se日常_機械_電話02",1000);
	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110170b22">
《もーしもしもし!?
　遊佐中将!?》

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110180a09">
「や、や。これは所長殿。
　いつもながら元気が良いのう」

//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110190a09">
「どうだな、研究の方は――」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110200b22">
《それどころじゃねえっすよぉぉぉーーー!!
　ＧＨＱのファッキンタコどもがなんか群れ
なしてこっち来てんですけどぉーー!!》

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110210b22">
《これ一体どういうことぉぉーーーーーー!?》

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110220a09">
「ほうほう……」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110230b22">
《俺の研究よこせって！　ざけろボケ殺すぞ
糞が。俺の大事な大事なハニーにてめーらの
フニャチン突っ込む気かよ！　白人はでけぇ
だけでパウァァが足りねえよ！　でしょー!?》

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110240b22">
《そんなんでハニーがオルガするわけねーだ
ろーがぁ！　イかねえよ！　身のほど知れよ
白豚野郎！　せめて黒人連れて来いっつーの！
だから閣下ぁ、そこんとこひとつよろしく！》

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110250a09">
「うむ？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110260b22">
《軍隊連れてこっち来てー！　あいつら俺の
言うこと全然聞かねーの。脳天どつかねーと
駄目だわこれ。しばらくは警備隊で持ち堪え
とくから、その間にヘルプ。超ヘルプミーッ》

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110270a09">
「ふむ……ま。
　そういうわけにも、いくまいなぁ……」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110280b22">
《……へっ？
　あんですと？》

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110290a09">
「進駐軍と揉め事を起こすわけにはゆかぬよ、
所長。
　おぬしの苦境は察するが……事には軽重と
いうものがあるでのう？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110300b22">
《おい。
　いや、ちょっと待てよハゲ》

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110310a09">
「ここは耐え難きを耐え、忍び難きを忍び、
ＧＨＱの要望に従うほかあるまいて。
　臥薪嘗胆。石の上にも三年の意気ぞ。所長、
ここは我慢の一手で参ろうよ」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110320b22">
《ざけんなおいこら腐れ坊主。
　てめームケ過ぎた亀頭みてえなアタマして
やがるくせに、そんなんアリか？　俺の研究
取られちまってもいーのかよっ!?》

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110330a09">
「惜しい、惜しいのう！
　だが仕方あるまいのう」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110340b22">
《あるまくねぇよぉぉぉーーーーーっ!!》

//◆がちゃ。
{	OnSE("se日常_機械_電話02",1000);//ダミー注意
	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110350a09">
「ふゥ」

{	StR(1000, @0, @0,"cg/st/st義清_通常_私服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110360b21">
「入道様。
　お茶でも、お淹れ致しましょうか」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110370a09">
「貰おうかの。
　しかし、<RUBY text="よしきよ">義清</RUBY>……」

{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110380b21">
「はい？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110390a09">
「今日は、良い日和だのう」

{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110400b21">
「……はっ。
　気持ちよく晴れておりまする」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆研究室
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DeleteStA(0,true);

	OnBG(100,"bg044_研究施設内_01a.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	FadeStL(0,true);
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nw研究員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110410e068">
「……所長……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110420b22">
「……切りやがった……。
　あの禿公方、俺を切り捨てやがった……」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110430e068">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかん
	OnSE("se戦闘_破壊_金属",1000);//ダミー注意

//◆ガーゲット
	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0110440b02">
「――貴様が、ここの責任者か」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110450b22">
「…………豚野郎ォ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_012.nss"