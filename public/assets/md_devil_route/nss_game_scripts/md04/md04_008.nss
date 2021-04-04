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

scene md04_008.nss_MAIN
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
	#bg007_若宮大路a_01=true;
	#bg032_八幡宮奥舞殿内b_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_009.nss";

}

scene md04_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_007.nss"


//◆鎌倉市街

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	OnBG(100, "bg009_鎌倉住宅街a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);


	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	Wait(500);
	SetNwC("cg/fw/nwＧＨＱ広報官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆女性
//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080010e001">
《鎌倉市民の皆様。
　我々進駐軍は、皆様に危害を加える意図は
一切ありません》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080020e001">
《我々はあなた方を解放します》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080030e001">
《六波羅幕府は、国際統和共栄連盟の承認を
受けた正当な政府ではありません。
　軍事力を背景にあなた方を支配し苦しめて
いる、不当な収奪集団です》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080040e001">
《我々大和進駐軍は六波羅を排除し、あなた
方の正当な権利を回復します……》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080050e001">
《市民の皆様、巡回中の兵士の指示に従って
下さい。
　外出を控え、自宅、勤務地、最寄の店舗等
で待機して下さい》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080060e001">
《外出されますと、戦闘に巻き込まれる恐れ
があります。
　外出は控えて下さい》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080070e001">
《市民の皆様のご協力を頂ければ、進駐軍は
鎌倉市の安全を間違いなく確保いたします。
　六波羅との戦闘は普陀楽城の周辺のみで、
ごく短期間の内に終結するでしょう》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080080e001">
《皆様、しばらくのご辛抱をお願いします。
　市民の皆様、ご協力をお願いします》

//【ｅｔｃ／ＧＨＱ広報】
<voice name="ｅｔｃ／ＧＨＱ広報" class="その他女声" src="voice/md04/0080090e001">
《食料等、生活必需品が不足している場合は、
巡回の兵士にお申し付け下さい。
　必要分を配給いたします……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆建朝寺

	CreateColorEX("黒幕１", 3000, "#000000");
	Fade("黒幕１", 1500, 1000, null, true);

	Delete("@text0010");

	OnBG(100, "bg032_八幡宮奥舞殿内b_01.jpg");
	FadeBG(0, true);
	Wait(500);
	FadeDelete("黒幕１", 1500, true);

	Wait(500);
	StL(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStL(500, true);

	SoundPlay("@mbgm19",0,1000,true);

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080100a11">
「あれは海岸から上がって来た軍集団とは別
ですね」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080110a10">
「横浜から、陸路で直接来た連中かな？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080120a11">
「おそらく」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080130a10">
「数は少ないようやけど。
　装備も軽そうな感じやね」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080140a11">
「市民の動揺を鎮めるための宣撫班だけ先に
寄越したのでしょう。
　後から本隊が来るのでは」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080150a10">
「鎌倉は占領されるか……」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080160a11">
「大した手際ですよ。
　余程に綿密な計画を立て、何処かで訓練も
積んでいたに違いありません」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080170a11">
「市民との衝突は巧妙に避けられているよう
です」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080180a10">
「そうか。ま、それは何よりや。
　けど……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080190a10">
「えらいことになったねえ」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080200a11">
「全くです。
　お陰で救われもしましたが……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080210a10">
「喜んでもいられんなァ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080220a11">
「はい」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080230a10">
「署の方はええんか？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080240a11">
「先程、使いをやりました。
　進駐軍の指示に従うよう」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080250a11">
「何か厄介な協力を求められた場合は、私の
不在を盾にしてうまく返事を引き延ばせとも
言ってあります」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080260a10">
「そらええな」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080270a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080280a10">
「菊池ぃ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080290a11">
「はい」

{	FwC("cg/fw/fw親王_凹む.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080300a10">
「始まってもうたね……」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080310a11">
「……ええ。残念ながら」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080320a10">
「開戦だけは避けたかったんやけど」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080330a11">
「今はもう、仕方ありません。
　状況は状況として受け入れましょう」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080340a11">
「その上で、最善を尽くすのみです」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080350a10">
「そやな。
　昔、戦場でもそうしとったもんな」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080360a11">
「はい」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080370a10">
「連中、わしんとこにも来るかな」

{	FwC("cg/fw/fw署長_通常.png");}
//嶋：修正（予想）【090930】
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080380a11">
「来るでしょう。
　向こうの要望を予測し、対応を考えておか
なくてはなりません」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080390a10">
「うん……。
　ところで」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080400a10">
「黒瀬童子と、一条さんはどうしてる？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080410a11">
「奥で治療を受けています。
　二人とも武者ですから、そう時間は掛けず
回復するでしょう」

{	FwC("cg/fw/fw親王_笑い.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080420a10">
「そか、ならええ。
　で」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080430a11">
「はい？」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/md04/0080440a10">
「……村正の姉ちゃんは？」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/md04/0080450a11">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md04_009.nss"