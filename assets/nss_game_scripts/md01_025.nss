//<continuation number="420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_025.nss_MAIN
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

	//▼背景ＣＧ
	#イベントファイル名=true;
	#ev214_足利護氏の行列=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_026.nss";

}

scene md01_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_024.nss"

//◆鎌倉、大路
//◆ざっ、ざっ、ざっ。行列が進む音

//◆ＥＶ：行列
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev214_足利護氏の行列.jpg");
	CreateSE("SEL01","se背景_ガヤ_大名行列_L");
	MusicStart("SEL01",1000,1000,0,750,null,true);

	Wait(2000);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm24",0,1000,true);

	WaitKey(1000);

	SetVolume("SEL*", 2000, 0, null);
	FadeDelete("絵ＥＶ", 1000, true);

	StL(1000, @60, @0,"cg/st/st茶々丸_通常_私服.png");
	Move("@StL*", 300, @-60, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250010a07">
「やほーぅ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250020a05">
「茶々丸……
　こんな所でどうした」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250030a07">
「お祭り見物」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250040a05">
「……そなたは東都守護の月番であろう。
　もしもこの鎌倉を襲う外敵ありし時、矢面
に立って防ぐのはそなたの役目なのだぞ」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250050a05">
「おろそかにするでない。
　和田館へ戻れ」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250060a07">
「まぁまぁ、おじじ。固いこと言うな。
　そんなんだと便秘になるよ？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250070a07">
「ちょっと眺めてすぐ帰るからさ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250080a05">
「しかしだな……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250090a07">
「守護番は退屈なんだよー。
　やることねぇし。館に詰めて定時報告聞く
だけだしさ。ただひたすらにそれだけだしさ」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250100a07">
「やってらんねぇー。
　せめてほんとにどっかの敵軍が攻めてきて
くれりゃいいけどさぁ。来ねえし。いやここ
は発想の転換で。いっそあてが敵になるとか」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250110a07">
「いいのかーおじじー？
　このままだと大和史上最もくだらない理由
で反乱が起きるよー？　止めるなら今のうち
だぞー？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250120a05">
「……茶々丸。
　そなたも若年とは申せ公方職を務める身で
あろう」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250130a05">
「もう少し自覚を持て」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250140a07">
「フッ……おじじこそ。
　現実を正しく見詰めるべきだな」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250150a07">
「所詮茶々丸だぞオイ。
　いったい何を期待してるんだ、ん？」

{//◆肩ぽんぽん
	CreateSE("SE01","se人体_動作_３回叩く");
	MusicStart("SE01",0,1000,0,1000,null,false);
//◆溜息
	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250160a05">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250170a07">
「ほんとすぐ帰るって」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250180a05">
「わかった。
　まったく……別に見て面白いものでもある
まいに」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250190a07">
「そりゃ、あてだってそう思うんだけどね。
　うちの御局様がお望みなんだから仕方ない」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250200a05">
「局？
　……ああ、<RUBY text="ゆうつづ">長庚</RUBY>とかいう女か」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250210a05">
「春先に堀越で見かけた時は、随分と病篤い
様子であったが。
　鎌倉まで出て来られるなら、いくらか快復
はしたようだな」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250220a07">
「そうでもない。
　だもんで、たってのお願いとなるとむげに
できなくてねー」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250230a07">
「今日は医師同伴でお出まし。
　ほれ、あっちの車」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250240a05">
「……ふむ。
　あの者にはとかくの噂があるが……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250250a07">
「あての母親なんじゃないかってアレ？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250260a05">
「そなたの世話焼きぶりを見ると、あるいは
真実かと思えるな」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250270a07">
「あてのおふくろがどーなって、<RUBY text="・・・・・">いまどこに</RUBY>
<RUBY text="・・・">いるか</RUBY>、他の連中はともかくとしてあんたは
ちゃんと知ってるだろーに」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250280a05">
「ああ。戯れ口だ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250290a07">
「あてが長庚局の面倒見るのは……
　まぁ、あれだ、その」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250300a07">
「惚れた弱みとか、そんなもん」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250310a05">
「…………」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250320a07">
「どした？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250330a05">
「……いずれそなたと四郎を娶わせることも
考えの内に入れていたのだが……
　……しかし……まさか」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250340a05">
「そなた、妙な趣味ではあるまいな……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250350a07">
「……おい、六衛大将領。
　大真面目な顔で何言ってる」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250360a05">
「あぁ、うむ。
　……済まん。今のは忘れよ」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250370a07">
「髭面親父に同性愛疑惑を掛けられたなんて、
頼まれても記憶に残さんわ」

{//◆必要に応じて伏字
//あきゅん「演出：要確認」
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250380a07">
「あてはちんちんとかちゃんと好きだ！
　見たことないけど！」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250390a05">
「叫ぶな！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆小ウェイト
	CreateSE("SEL02","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL02",0,1000,0,1000,null,true);

	WaitKey(1000);

	SetNwC("cg/fw/nw六波羅兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／幕兵Ａ】
<voice name="ｅｔｃ／幕兵Ａ" class="その他男声" src="voice/md01/0250400e270">
（……好きなのか……）

{	NwC("cg/fw/nw六波羅兵士Ｂ.png");}
//【ｅｔｃ／幕兵Ｂ】
<voice name="ｅｔｃ／幕兵Ｂ" class="その他男声" src="voice/md01/0250410e271">
（……見たことないのか……）

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250420a07">
「ん？
　なんか下郎どもの忠誠心が急に上がってる
気配？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_026.nss"