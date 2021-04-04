//<continuation number="700">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_008.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;
	#ev218_茶々丸と同衾する景明_a=true;
	#ev218_茶々丸と同衾する景明_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_009.nss";

}

scene md02_008.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md02_007.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 5000, "BLACK");
	Fade("黒幕１", 0, 1000, null, true);
	StL(1000, @0, @0,"cg/st/st茶々丸_通常_私服.png");
	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(0,false);
	FadeStL(0,false);
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒幕１",0,true);

	OnSE("se特殊_鎧_駆動音02", 1000);

//◆村正、崩れ落ちる。

	Move("@StR*", 800, @0, @80, AxlAuto, false);
	WaitKey(500);

//◆うぃーん。蜘蛛に

	OnSE("se特殊_その他_自動休眠", 1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	DeleteStR(0,true);
	StR(1000, @0, @200,"cg/st/3d村正蜘蛛_俯瞰.png");
	FadeStR(0,true);
	Move("@StR*", 1500, @0, @100, Dxl2, false);
	Shake("@StR*", 1500, 20, 0, 0, 0, 1000, Dxl2, false);

	Fade("絵フラ", 1000, 0, null, true);

	Wait(500);
	DeleteStR(300,true);


	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080010a00">
「村正!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md02/0080020a01">
《――――》

{	SoundPlay("@mbgm19", 0, 1000, true);
	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080030a07">
「回復したてで無茶するからだ。
　<RUBY text="オートダウン">自動休眠</RUBY>しやがったな」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080040a00">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080050a00">
「分析がお早い」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　仕手の俺ですら、状態の把握に数秒は掛かった。
　思わず動揺したせいでもあるが……。

　何の縁もない劒冑の異変をほとんど一瞬で理解する
――些細な事のようで、中々に尋常な話ではない。
　普通、そんな真似ができるのは鍛冶師だけだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080060a07">
「ちょっとしたコツを知ってるからね。
　ま、こいつは大丈夫。心配いらん。明日の
朝には復旧するよ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080070a00">
「は……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080080a07">
「予定通り物置へうっちゃっておけばＯＫ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080090a00">
「うっちゃっておくわけにはいかないのです
が」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080100a07">
「じゃあそのへんに。
　さー、お兄さん」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：景明に乗っかる茶々丸
	SetVolume("@mbgm*", 1000, 0, null);

	OnSE("se人体_動作_抱く02", 1000);
//嶋：差分が変更されましたので、下記のように修正させていただきました。【09/07/21】
//	CreateTextureEX("ちゃちゃまる", 3000, @0, @0, "cg/ev/ev218_茶々丸と同衾する景明_b.jpg");
	CreateTextureEX("ちゃちゃまる", 3000, @0, -500, "cg/ev/ev218_茶々丸と同衾する景明_a.jpg");
	Fade("ちゃちゃまる", 1000, 1000, null, true);
	DeleteStA(0,true);
	Delete("@OnBG*");
	WaitKey(1000);

	Move("ちゃちゃまる", 1000, @0, -100, AxlDxl, true);

	SoundPlay("@mbgm26", 0, 1000, true);

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080110a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080120a07">
「寝ましょ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080130a00">
「<RUBY text="やす">寝</RUBY>むのには、同意しますが」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080140a07">
「うん」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080150a00">
「……」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080160a07">
「にゃー」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080170a00">
「……閣下。
　ご自分のお部屋へ」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080180a07">
「ここで寝る」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080190a00">
「先程、男女同衾は許さないと確かに」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080200a07">
「記憶にございませんなァー」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080210a00">
「それは政治家答弁というもの」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080220a07">
「政治家っす」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080230a00">
「……そうですね」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080240a07">
「初めてってわけでもなし」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080250a00">
「今朝の事ですか」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080260a07">
「うん」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080270a00">
「あれは、自分が目覚める頃合を見計らって
付いていたのでは――」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080280a07">
「なくて、毎晩ひっついて寝てました。
　お兄さんをここに連れてきてからずっと」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080290a00">
「風紀上、宜しくありません」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080300a07">
「嬉しいくせに」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080310a00">
「はい」

{	FwR("cg/fw/fw茶々丸_照れ.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080320a07">
「あ、嬉しい？」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080330a00">
「健全な成人男性のつもりですので、女性と
の接触は欲求に適います」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080340a07">
「素直なオスめ。
　うりうり」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080350a00">
「閣下。
　問題が発生します」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080360a07">
「眠れるんだ」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080370a00">
「はい？」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080380a07">
「お兄さんと一緒にいると。
　少しだけ……だけど」

{	FwR("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080390a07">
「なんでかな。
　ほかの音が遠くなって、お兄さんの音だけ
が聴こえる」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080400a07">
「お兄さんの音は、あてを苛まない……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　……何の話だ？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080410a00">
「ともあれ閣下、その、望ましからぬ可能性
を未然に摘み取るため必要な配慮を」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080420a07">
「家賃おくれ」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080430a00">
「……家賃ですか」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080440a07">
「金よこせなんて言わないから。
　こうさせてくれるだけでいいからさ」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080450a07">
「……だめ？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　内面そして外面がどうであるにしろ、足利茶々丸は
一人の少女に違いなかった。
　
　その懇願を、敢えて拒む。

　――だけの意志力が、俺にはどうやら不足していた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080460a00">
「……湊斗景明の自制心に御期待下さい」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080470a07">
「かっこいいぜお兄さん。
　でも、別に自制しなくたっていいからね」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080480a00">
「ご冗談を」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080490a07">
「御姫に見つかったら怒られるかなあ。
　まっ、大丈夫か」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080500a07">
「さっき起きたばっかりだし」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080510a00">
「？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……聞き間違いか？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080520a07">
「お兄さん、御姫にバラしちゃだめだよ。
　これは内緒で」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080530a00">
「話しません。
　どうしてか、即座に撲殺されるような予感
がします」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080540a07">
「鋭いね」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080550a00">
「……最初からそんな<RUBY text="リスク">危険</RUBY>を冒さずに済めば、
それに越したことはなかったのですが」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080560a07">
「聞こえんなァ。聞こえんねェ。
　さーっ、寝よ寝よ」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080570a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　小さな皮肉は、蚊が刺す程度の痛痒も与えなかった
らしい。
　既に諦めた事なので、構わないのだが。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＥＶ差分：光を落とす

//■イベ絵（ev218茶々丸と同衾する景明）ないから仮絵
//嶋：差分が変更されましたので、下記のように修正させていただきました。【09/07/21】
//	CreateTextureEX("ちゃちゃまる2", 3001, @0, @0, "cg/ev/ev218_茶々丸と同衾する景明_c.jpg");
	CreateTextureEX("ちゃちゃまる2", 3001, @0, -100, "cg/ev/ev218_茶々丸と同衾する景明_b.jpg");
	Fade("ちゃちゃまる2", 1000, 1000, null, true);
	Delete("ちゃちゃまる");
	WaitKey(1000);

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080580a07">
「お兄さん」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080590a00">
「はい」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080600a07">
「眠い？」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080610a00">
「まだ身体に疲労が残っているようなので、
それなりには。
　目蓋に重さを感じる程ではありません」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080620a07">
「そか。
　じゃ、一つお願い」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080630a00">
「どのような」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080640a07">
「何でもいいから、お話してくれると嬉しい
な」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080650a00">
「……話、ですか。
　しかし、眠る妨げになるのでは」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080660a07">
「んー、あては逆なの。
　耳元で話し掛けられてると、雑音があまり
気にならなくなるから」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080670a07">
「その声自体が不愉快だったら意味ないけど
ね。
　お兄さんは、大丈夫」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080680a00">
「…………。
　わかりました。その程度の事なら」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0080690a07">
「感謝」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0080700a00">
「……では……
　学生時代、自分が所属していた山岳部での
出来事を――――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フェードアウト

	ClearWaitAll(2000, 3000);

}

..//ジャンプ指定
//次ファイル　"md02_009.nss"