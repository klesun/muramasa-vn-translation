//<continuation number="1730">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_012.nss_MAIN
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

//嶋：デバッグ用
//$Ichizyou_Dead=true;
//$Kanae_Dead=true;

	//▼ルートフラグ、選択肢、次のGameName

	if($Ichizyou_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ka";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	#av_荒覇吐=true;

	}else if($Kanae_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_ic";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	#av_荒覇吐=true;

	}else{
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_all";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

	#av_荒覇吐=true;

	}

	$PreGameName = $GameName;

	$GameName = "ma04_013vs.nss";

}

scene ma04_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　夜陰に乗じて江ノ島に上陸する。
　昨日と同様、しかし昨日より格段に効率良く。時刻
が正子を過ぎた頃には、既に調査の途についていた。

　闇の帳をかき分けるようにして歩く。
　昨夜の印象があるせいだろう……風景を沈める深い
暗黒は尚一層あやしく、陰秘めいて見えた。

　知らず、足取りが重く、慎重になる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆分岐。
//◆ヒロイン全員生存なら１１Ａ
//◆香奈枝死亡なら１１Ｂ
//◆一条死亡なら１１Ｃ


}


scene ma04_012.nss_all
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm24",0,1000,true);

//――――――――――――――――――――――――――――――
.//●１１Ａ

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0120010a04">
「湊斗さま。今宵の方針はどのように？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120020a00">
「ひとまずは昨夜発見した怪奇な痕跡のある
場所へ向かいましょう。
　新たな異変が見つかるかもしれません」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120030a00">
「その後、研究所へ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120040a02">
「真っ直ぐ研究所へ向かった方が良くありま
せんか？　どう考えても、核心はそこですし」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120050a03">
「それはその通りですけれど、どうせ方角は
同じ。なら少し寄り道をしていっても無益で
はないでしょう。
　……そういうことではないかしら？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120060a00">
「はい」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120070a02">
「なるほど……
　わかりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
『漁業研究所』は島の中央からやや西へ逸れた辺りに
鎮座するという。
　少なくとも、幕府発行の地図ではそうなっている。

　それが事実と異なる表記であった場合には、自力で
所在を探さねばならないだろう。
　だからこそ確実に何かの手掛かりが残る場所は優先
して押さえておきたかった。どう役立つかわからない。

　とはいえ時間は有限にして常に不足する。
　寄り道をするのなら急ぐ必要があった。ともすれば
慎重の度を超して臆病になりかかる足に喝を入れ、音
が立たぬ程度の早足で進む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　そうして程なく、辿り着いた。
　地面に深々と爪痕の残る奇異な空き地。枯れ果てた
木々も昨日のままだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120080a02">
「……どうしますか」

{	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120090a03">
「今日は踏み込みます？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120100a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　昨日は時間がなかったこともあって危険を冒すのは
避けたが、この場からの観察では知れる事にも限りが
ある。踏み込まねば情報は得られない。
　無論、慎重に手順を踏んだ上でなくてはならないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120110a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120120a01">
《ええ……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120130a00">
「熱源探査を実行。
　周囲の生命反応を探せ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120140a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。それっぽいＳＥ
	CreateSE("SE01","se特殊_コックピット_起動音04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120150a01">
《……反応なし。
　何もいない……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120160a01">
《本当に何も。
　犬猫の一匹すら……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120170a00">
「そうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　今も感じる<RUBY text="うそさむ">薄寒</RUBY>い<RUBY text="・・・・">無の気配</RUBY>の実在が、裏付けられた
格好だった。
　やはりこの辺りには生物がいないのだ。

　異常な暑熱そして急激な温度変化を思えば、生態系
の損傷はむしろ当然だろう。
　だがそれにしても<RUBY text="・・">死滅</RUBY>は度が過ぎている。

　他に、何か。
　理由がある筈だ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120180a03">
「景明さま？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120190a00">
「……周囲に人はいないようです。
　調査を行いましょう。可及的迅速に――」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120200a01">
《――御堂!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　張り詰めた金打声が、俺の舌に楔を打つ。
　聞くも明らかな警告の絶叫。

　平手で同行者に静止を促し、頭上の劔冑を振り仰ぐ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120210a00">
「村正!?
　どうし――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120220a01">
《高熱源反応ッ!!
　何――何なの、これ！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120230a00">
「村正!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　高熱源――武者か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120240a01">
《高<RUBY text="・">々</RUBY>度熱源反応有り！
　来る――――何かっ!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120250a00">
「どこだ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120260a01">
《<RUBY text="した">地下</RUBY>よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　――――地下!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆怪物登場演出。まずシルエットか。
	OnSE("se戦闘_破壊_建物01",1000);
	CreatePlainEX("絵振", 5100);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵振", 0, 500, null, true);
	Shake("絵振", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵フラ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　目前の空地に、四角い<RUBY text="・・">陥没</RUBY>が出来た――そう見えた。
　次の瞬局。

　その穴の底から、<RUBY text="・・">それ</RUBY>は浮揚し、現れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵用強化外装・荒覇吐
	#av_荒覇吐=true;

//◆というかビグザム。遮光器土偶風？
	PrintGO("上背景", 25000);
	CreateSE("SE01","se特殊_その他_渦巻く力");
	CreateColorSP("絵煙幕", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵背景200", 5000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);
	Move("絵背景100", 0, @+100, @0, null, true);
	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景100", 1500, @0, @+200, null, false);
	Shake("絵背景100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("絵煙幕", 1000, 1000, "effect_01_00_0", true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 1000, 0, null, false);
	Move("ムービー１", 5000, @0, @+300, null, false);
	Zoom("ムービー１", 5000, 70000, 8000, null, false);
	Fade("ムービー１", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//ここまで

	SetFwL("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120270a02">
「…………か……」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120280a02">
「……怪物……？」

{	FwL("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120290a03">
「……あらあら」

{	FwL("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0120300a04">
「……まあまあ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　まさしく。
　怪物と呼ぶほか、ない代物だった。

　白金にも近い銀色の肌。
　人体を極端に抽象化したかのような造形。

　何よりも――
　その巨躯。

　陸に上がった鯨であった。
　総重量は何トンに達するのか、計算さえ働かない。

　そんなものが……
　<RUBY text="・・・・・">浮いている</RUBY>。

　およそ、現実感を味わい難い光景だった。
　思考がまとまらない。何を思い、何を為せば良いの
かわからない。

　おそらく、俺だけではなかったろうが。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//ここまで
	CreateTextureEX("絵背景1000", 6000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵背景1000", 1000, 1000, null, true);
	Delete("ムービー１");
	Delete("絵背景100");
	Delete("絵背景200");


	SetFwL("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120310a03">
「……むかし西村なんとかさんという人が、
あんなものを造ったとか造らないとか……」

{	FwL("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0120320a04">
「あれはドイツで行方不明になったと聞いて
おりましたがねぇ……」

{	FwL("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120330a02">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　まともに働こうとしない頭を叱咤する。
　すべき事がある筈だ――何かある筈だ。

　危険。

　ここは見世物小屋の中ではない。
　驚愕を楽しむゆとりなどない。

　すべき事。
　すべき事が――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120340a00">
「……村正」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120350a01">
《……御堂？》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120360a00">
「あれは、何か……
　わかるか？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120370a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120380a01">
《……劔冑、よ。
　ちょっと……風変わりだけど》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120390a00">
「劔冑か……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　あるいはと思ったが。
　あれは、劔冑。

　ならば。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120400a00">
「〝卵〟の有無は」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120410a01">
《…………無し》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120420a01">
《あれは、違う》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120430a00">
「寄生体ではないか。
　無論、銀星号でもない」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120440a01">
《ええ》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120450a00">
「では――ここは退くべきだ、な」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120460a01">
《そうね……。
　戦う気はありませんって、言ってみる？》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　魁偉なる大劔冑は、こちらに視線――視線？――を
注いでいる。
　こちらを見ている。

　はっきりとこちらを見ている。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120470a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　何か、不都合な。
　思わしからぬ事態が、生じているような。

　繋がらない。
　良く把握できない。

　迷う――戸惑う。
　<RUBY text="・・・・・・・・・・・・・・・・・・・・・・">そんな場合でないことだけはわかっているのだが</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐおーん。
//◆カロリードレイン発動。
	CreateSE("SE01","se特殊_陰義_荒覇吐01");

	CreateTextureEXsub("絵反転100", 16000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateColorEX("絵反転200", 15000, "White");

	CreateTextureEXadd("絵背景200", 12000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateMovie("ムービー１", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-30, null, true);
	SetAlias("ムービー１","ムービー１");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("ムービー１", 5000, 40000, 5000, Axl1, false);
	Fade("ムービー１", 1000, 1000, null, false);
	Shake("絵背景100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵反転200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵背景200", 300, 0, null, false);
	Fade("絵反転100", 0, 1000, null, false);
	DrawTransition("絵反転100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("絵反転200", 0, 1000, null, false);
	DrawTransition("絵反転200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("ムービー１", 2000, 0, null, false);
	Zoom("ムービー１", 5000, 30000, 5000, Axl1, false);

	FadeDelete("絵反転*", 500, false);


//ここまで

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120480a00">
「……ッ!!」

{	FwL("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0120490a03">
「これは……!?」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120500a02">
「熱い……
　じゃない、寒い!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通
	SetVolume("SE01", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　生温い風が吹きつける。
　身体の芯が<RUBY text="・・・">凍えた</RUBY>。

　何かが失われている。
　何かが奪われている。

　これは――――

　これは、攻撃だ！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120510a00">
「村正ァッ!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120520a01">
《――――!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鋼糸攻撃
//◆ざしゅざしゅざしゅ。突き刺さる。
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	CreateTextureEX("絵EF100", 10000, 0, 0, "cg/ef/ef018_蜘蛛の糸.jpg");

	SetVertex("絵EF100", 1024, 576);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Request("絵EF100", Smoothing);

	SetBlur("絵EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵EF100", 200, 1024, 0, Dxl1, false);
	Fade("絵EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵EF100");
	Delete("ムービー１");
	Delete("絵背景200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se戦闘_銃器_跳弾04",1000);


	Fade("フラッシュ白",300,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　飛槍のように、蜘蛛の放った鋼糸が宙を駆けた。
　銀色の巨甲に突き立つ。

　それが何程の損傷を与えたかは知れない。
　だが、奇妙な風は止んだ。

　肉体の自由が回復する。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120530a00">
「撤退しろ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　俺は同行者に向かって叫んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120540a00">
「入り江へ――
　いや、片瀬まで戻れ！」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120550a02">
「湊斗さんは――」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120560a00">
「行けッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340a]
　怒鳴る。
　問答の間などない。

{	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);}
　立ち竦んだ一条の手を大鳥大尉が引き、無理矢理に
駆けさせる。
　彼女もまた走り出しながら……一度だけ、こちらへ
視線を投げて寄越した。

{	SetVolume("SE*", 3000, 0, null);}
　視線を返す。
　今はこれまで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340b]
　駆け去る背中を見送るゆとりは許されず、己の背に
消えゆく足音のみを聞く。
　そうして向き合う。

　――巨像。
　蜘蛛の反撃を浴びて怯む色もないその怪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120570a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バリーン。パーツ分解
//◆景明の周囲に展開
//◆左手で顔を覆う。片目は覗く
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120580a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120590a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者・三世右衛門尉村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120600a00">
「……さて。
　始めるぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120610a01">
《ええ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 4100, -780, -170, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Request("絵ＥＶ100", Smoothing);
	Rotate("絵ＥＶ100", 0, @0, @180, @0, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　戦わねばならない。
　少なくとも彼女らが脱出を果たすまでの間。

{	DrawTransition("絵ＥＶ100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("絵ＥＶ100", 300, 850, null, false);}
　この相手と――
　未だ嘗て<RUBY text="まみ">見</RUBY>えたこともなく、見えることを想像だに
しなかった<RUBY text="てき">対敵</RUBY>と。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_013vs.nss"

}


//――――――――――――――――――――――――――――――
.//●１１Ｂ
scene ma04_012.nss_ic
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120620a00">
「……ひとまず、昨夜の場所へ向かう」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120630a02">
「変な跡があった所ですね」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120640a00">
「ああ。
　その後、研究所だ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120650a02">
「真っ直ぐそっちへ行った方が早くないです
か？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　核心は其処なのだろうし。
　そう言いたいのだろう一条の考えは理解できた。

　俺にも別段、異論はない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120660a00">
「どうせ、通り道だ。
　大した手間ではないし、何か重要な情報が
ないとも限らぬ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120670a02">
「あ、そっか……そうですね。
　わかりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
『漁業研究所』は島の中央からやや西へ逸れた辺りに
鎮座するという。
　少なくとも、幕府発行の地図ではそうなっている。

　それが事実と異なる表記であった場合には、自力で
所在を探さねばならないだろう。
　だからこそ確実に何かの手掛かりが残る場所は優先
して押さえておきたかった。どう役立つかわからない。

　とはいえ時間は有限にして常に不足する。
　寄り道をするのなら急ぐ必要があった。ともすれば
慎重の度を超して臆病になりかかる足に喝を入れ、音
が立たぬ程度の早足で進む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　そうして程なく、辿り着いた。
　地面に深々と爪痕の残る奇異な空き地。枯れ果てた
木々も昨日のままだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120680a02">
「……どうします？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120690a00">
「今日は踏み込む」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　昨日は時間がなかったこともあって危険を冒すのは
避けたが、この場からの観察では知れる事にも限りが
ある。踏み込まねば情報は得られない。
　無論、慎重に手順を踏んだ上でなくてはならないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120700a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120710a01">
《ええ……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120720a00">
「熱源探査を実行。
　周囲の生命反応を探せ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120730a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。それっぽいＳＥ
	CreateSE("SE01","se特殊_コックピット_起動音04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120740a01">
《……反応なし。
　何もいない……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120750a01">
《本当に何も。
　犬猫の一匹すら……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120760a00">
「そうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　今も感じる<RUBY text="うそさむ">薄寒</RUBY>い<RUBY text="・・・・">無の気配</RUBY>の実在が、裏付けられた
格好だった。
　やはりこの辺りには生物がいないのだ。

　異常な暑熱そして急激な温度変化を思えば、生態系
の損傷はむしろ当然だろう。
　だがそれにしても<RUBY text="・・">死滅</RUBY>は度が過ぎている。

　他に、何か。
　理由がある筈だ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500a]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120770a02">
「湊斗さん？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120780a00">
「……周囲に人はいないようだ。
　調査を行う。可及的迅速に――」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120790a01">
《――御堂!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　張り詰めた金打声が、俺の舌に楔を打つ。
　聞くも明らかな警告の絶叫。

　平手で同行者に静止を促し、頭上の劔冑を振り仰ぐ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120800a00">
「村正!?
　どうし――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120810a01">
《高熱源反応ッ!!
　何――何なの、これ！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120820a00">
「村正!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　高熱源――武者か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120830a01">
《高<RUBY text="・">々</RUBY>度熱源反応有り！
　来る――――何かっ!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120840a00">
「どこだ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120850a01">
《<RUBY text="した">地下</RUBY>よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　――――地下!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆怪物登場演出。まずシルエットか。
	OnSE("se戦闘_破壊_建物01",1000);
	CreatePlainEX("絵振", 5100);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵振", 0, 500, null, true);
	Shake("絵振", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵フラ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　目前の空地に、四角い<RUBY text="・・">陥没</RUBY>が出来た――そう見えた。
　次の瞬局。

　その穴の底から、<RUBY text="・・">それ</RUBY>は浮揚し、現れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵用強化外装・荒覇吐
	#av_荒覇吐=true;

//◆というかビグザム。遮光器土偶風？
	PrintGO("上背景", 25000);
	CreateSE("SE01","se特殊_その他_渦巻く力");
	CreateColorSP("絵煙幕", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵背景200", 5000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);
	Move("絵背景100", 0, @+100, @0, null, true);
	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景100", 1500, @0, @+200, null, false);
	Shake("絵背景100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("絵煙幕", 1000, 1000, "effect_01_00_0", true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 1000, 0, null, false);
	Move("ムービー１", 5000, @0, @+300, null, false);
	Zoom("ムービー１", 5000, 70000, 8000, null, false);
	Fade("ムービー１", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//ここまで

	SetFwL("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120860a02">
「…………か……」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120870a02">
「……怪物……？」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　まさしく。
　怪物と呼ぶほか、ない代物だった。

　白金にも近い銀色の肌。
　人体を極端に抽象化したかのような造形。

　何よりも――
　その巨躯。

　陸に上がった鯨であった。
　総重量は何トンに達するのか、計算さえ働かない。

　そんなものが……
　<RUBY text="・・・・・">浮いている</RUBY>。

　およそ、現実感を味わい難い光景だった。
　思考がまとまらない。何を思い、何を為せば良いの
かわからない。

　おそらく、俺だけではなかったろうが。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//ここまで
	CreateTextureEX("絵背景1000", 6000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵背景1000", 1000, 1000, null, true);
	Delete("ムービー１");
	Delete("絵背景100");
	Delete("絵背景200");

	SetFwL("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120880a02">
「――――」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0120890a02">
「えっ……と」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　まともに働こうとしない頭を叱咤する。
　すべき事がある筈だ――何かある筈だ。

　危険。

　ここは見世物小屋の中ではない。
　驚愕を楽しむゆとりなどない。

　すべき事。
　すべき事が――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120900a00">
「……村正」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120910a01">
《……御堂？》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120920a00">
「あれは、何か……
　わかるか？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120930a01">
《…………》

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120940a01">
《……劔冑、よ。
　ちょっと……風変わりだけど》

{	FwL("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120950a00">
「劔冑か……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　あるいはと思ったが。
　あれは、劔冑。

　ならば。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120960a00">
「〝卵〟の有無は」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120970a01">
《…………無し》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0120980a01">
《あれは、違う》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0120990a00">
「寄生体ではないか。
　無論、銀星号でもない」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121000a01">
《ええ》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121010a00">
「では――ここは退くべきだ、な」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121020a01">
《そうね……。
　戦う気はありませんって、言ってみる？》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　魁偉なる大劔冑は、こちらに視線――視線？――を
注いでいる。
　こちらを見ている。

　はっきりとこちらを見ている。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121030a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　何か、不都合な。
　思わしからぬ事態が、生じているような。

　繋がらない。
　良く把握できない。

　迷う――戸惑う。
　<RUBY text="・・・・・・・・・・・・・・・・・・・・・・">そんな場合でないことだけはわかっているのだが</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐおーん。
//◆カロリードレイン発動。
	CreateSE("SE01","se特殊_陰義_荒覇吐01");

	CreateTextureEXsub("絵反転100", 16000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateColorEX("絵反転200", 15000, "White");

	CreateTextureEXadd("絵背景200", 12000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateMovie("ムービー１", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-30, null, true);
	SetAlias("ムービー１","ムービー１");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("ムービー１", 5000, 40000, 5000, Axl1, false);
	Fade("ムービー１", 1000, 1000, null, false);
	Shake("絵背景100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵反転200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵背景200", 300, 0, null, false);
	Fade("絵反転100", 0, 1000, null, false);
	DrawTransition("絵反転100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("絵反転200", 0, 1000, null, false);
	DrawTransition("絵反転200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("ムービー１", 2000, 0, null, false);
	Zoom("ムービー１", 5000, 30000, 5000, Axl1, false);

	FadeDelete("絵反転*", 500, false);
//ここまで

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121040a00">
「……ッ!!」

{	FwL("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0121050a02">
「熱い……
　じゃない、寒い!?」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通
	SetVolume("SE01", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　生温い風が吹きつける。
　身体の芯が<RUBY text="・・・">凍えた</RUBY>。

　何かが失われている。
　何かが奪われている。

　これは――――

　これは、攻撃だ！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121060a00">
「村正ァッ!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121070a01">
《――――!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鋼糸攻撃
//◆ざしゅざしゅざしゅ。突き刺さる。
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	CreateTextureEX("絵EF100", 10000, 0, 0, "cg/ef/ef018_蜘蛛の糸.jpg");

	SetVertex("絵EF100", 1024, 576);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Request("絵EF100", Smoothing);

	SetBlur("絵EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵EF100", 200, 1024, 0, Dxl1, false);
	Fade("絵EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵EF100");
	Delete("ムービー１");
	Delete("絵背景200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se戦闘_銃器_跳弾04",1000);


	Fade("フラッシュ白",300,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　飛槍のように、蜘蛛の放った鋼糸が宙を駆けた。
　銀色の巨甲に突き立つ。

　それが何程の損傷を与えたかは知れない。
　だが、奇妙な風は止んだ。

　肉体の自由が回復する。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121080a00">
「撤退しろ！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　俺は同行者に向かって叫んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121090a00">
「入り江へ――
　いや、片瀬まで戻れ！」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0121100a02">
「湊斗さんは――」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121110a00">
「行けッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740a]
　怒鳴る。
　問答の間などない。

　立ち竦む一条を突き飛ばし、来た方角へと追いやる。
　視線が重なった――何かを訴えてくる視線。

　
　　　　　あたしも、
　　　　　　　　　　　　　一緒に――

{	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);}
　敢えて黙殺する。
　哀しげに唇を噛んで、彼女は身を翻した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 3000, 0, null);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740b]
　駆け去る背中を見送るゆとりは許されず、己の背に
消えゆく足音のみを聞く。
　そうして向き合う。

　――巨像。
　蜘蛛の反撃を浴びて怯む色もないその怪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121120a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バリーン。パーツ分解
//◆景明の周囲に展開
//◆左手で顔を覆う。片目は覗く
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121130a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121140a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者・三世右衛門尉村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121150a00">
「……さて。
　始めるぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121160a01">
《ええ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 4100, -780, -170, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Request("絵ＥＶ100", Smoothing);
	Rotate("絵ＥＶ100", 0, @0, @180, @0, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　戦わねばならない。
　少なくとも彼女が脱出を果たすまでの間。

{	DrawTransition("絵ＥＶ100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("絵ＥＶ100", 300, 850, null, false);}
　この相手と――
　未だ嘗て<RUBY text="まみ">見</RUBY>えたこともなく、見えることを想像だに
しなかった<RUBY text="てき">対敵</RUBY>と。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_013vs.nss"

}


//――――――――――――――――――――――――――――――
.//●１１Ｃ
scene ma04_012.nss_ka
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_011.nss"

//◆夜
//◆長磯
	PrintBG("上背景", 30000);
	OnBG(100,"bg042_江ノ島沿岸_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	SoundPlay("@mbgm24",0,1000,true);


	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121170a04">
「湊斗さま。今宵の方針はどのように？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121180a00">
「ひとまずは昨夜発見した怪奇な痕跡のある
場所へ向かいましょう。
　新たな異変が見つかるかもしれません」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121190a00">
「その後、研究所へ」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121200a03">
「そうですね。真っ直ぐ研究所へ向かった方
が話は早いのでしょうけれど。
　方角的に、大した寄り道でもありませんし」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121210a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
『漁業研究所』は島の中央からやや西へ逸れた辺りに
鎮座するという。
　少なくとも、幕府発行の地図ではそうなっている。

　それが事実と異なる表記であった場合には、自力で
所在を探さねばならないだろう。
　だからこそ確実に何かの手掛かりが残る場所は優先
して押さえておきたかった。どう役立つかわからない。

　とはいえ時間は有限にして常に不足する。
　寄り道をするのなら急ぐ必要があった。ともすれば
慎重の度を越して臆病になりかかる足に喝を入れ、音
が立たぬ程度の早足で進む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆荒廃地域
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　そうして程なく、辿り着いた。
　地面に深々と爪痕の残る奇異な空き地。枯れ果てた
木々も昨日のままだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服c.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121220a03">
「今日は踏み込みます？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121230a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　昨日は時間がなかったこともあって危険を冒すのは
避けたが、この場からの観察では知れる事にも限りが
ある。踏み込まねば情報は得られない。
　無論、慎重に手順を踏んだ上でなくてはならないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121240a00">
「村正」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121250a01">
《ええ……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121260a00">
「熱源探査を実行。
　周囲の生命反応を探せ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121270a01">
《諒解》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。それっぽいＳＥ
	CreateSE("SE01","se特殊_コックピット_起動音04");//ダミー注意
	MusicStart("SE01",0,1000,0,1500,null,false);

	WaitKey(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121280a01">
《……反応なし。
　何もいない……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121290a01">
《本当に何も。
　犬猫の一匹すら……》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121300a00">
「そうか……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　今も感じる<RUBY text="うそさむ">薄寒</RUBY>い<RUBY text="・・・・">無の気配</RUBY>の実在が、裏付けられた
格好だった。
　やはりこの辺りには生物がいないのだ。

　異常な暑熱そして急激な温度変化を思えば、生態系
の損傷はむしろ当然だろう。
　だがそれにしても<RUBY text="・・">死滅</RUBY>は度が過ぎている。

　他に、何か。
　理由がある筈だ……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880a]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121310a03">
「景明さま？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880b]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121320a00">
「……周囲に人はいないようです。
　調査を行いましょう。可及的迅速に――」

{	SetVolume("@mbgm*", 100, 0, null);
	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121330a01">
《――御堂!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
　張り詰めた金打声が、俺の舌に楔を打つ。
　聞くも明らかな警告の絶叫。

　平手で同行者に静止を促し、頭上の劔冑を振り仰ぐ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121340a00">
「村正!?
　どうし――」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121350a01">
《高熱源反応ッ!!
　何――何なの、これ！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121360a00">
「村正!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　高熱源――武者か――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121370a01">
《高<RUBY text="・">々</RUBY>度熱源反応有り！
　来る――――何かっ!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121380a00">
「どこだ!?」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121390a01">
《<RUBY text="した">地下</RUBY>よ！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　――――地下!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆どかーん。
//◆怪物登場演出。まずシルエットか。
	OnSE("se戦闘_破壊_建物01",1000);
	CreatePlainEX("絵振", 5100);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");

	Fade("絵振", 0, 500, null, true);
	Shake("絵振", 1000, 0, 30, 0, 0, 1000, Dxl1, false);
	Fade("絵フラ", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
　目前の空地に、四角い<RUBY text="・・">陥没</RUBY>が出来た――そう見えた。
　次の瞬局。

　その穴の底から、<RUBY text="・・">それ</RUBY>は浮揚し、現れた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵用強化外装・荒覇吐
	#av_荒覇吐=true;

//◆というかビグザム。
	PrintGO("上背景", 25000);
	CreateSE("SE01","se特殊_その他_渦巻く力");
	CreateColorSP("絵煙幕", 10000, "#FFFFFF");
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	CreateTextureSP("絵背景200", 5000, Center, Middle, "cg/ef/efRec_雲a03.png");
	Request("絵背景200", Smoothing);
	Zoom("絵背景200", 0, 3000, 5000, null, true);
	Move("絵背景100", 0, @+100, @0, null, true);
	Move("絵背景200", 0, @+250, @-50, null, true);
	CreateMovie("ムービー１", 10000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-50, null, true);

	Delete("上背景");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵背景100", 1500, @0, @+200, null, false);
	Shake("絵背景100", 3000, 1, 2, 0, 0, 1000, Dxl1, false);

	DrawDelete("絵煙幕", 1000, 1000, "effect_01_00_0", true);

	Zoom("絵背景200", 2500, 10000, 80000, null, false);
	Fade("絵背景200", 1000, 0, null, false);
	Move("ムービー１", 5000, @0, @+300, null, false);
	Zoom("ムービー１", 5000, 70000, 8000, null, false);
	Fade("ムービー１", 4000, 0, null, false);

	WaitKey(1000);
	SetVolume("SE01", 4000, 0, null);

//ここまで

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121400a00">
「………」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121410a00">
「…………〝怪物〟…………」

{	FwL("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121420a03">
「……あらあら」

{	FwL("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121430a04">
「……まあまあ」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

	SoundPlay("@mbgm13",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　まさしく。
　怪物と呼ぶほか、ない代物だった。

　白金にも近い銀色の肌。
　人体を極端に抽象化したかのような造形。

　何よりも――
　その巨躯。

　陸に上がった鯨であった。
　総重量は何トンに達するのか、計算さえ働かない。

　そんなものが……
　<RUBY text="・・・・・">浮いている</RUBY>。

　およそ、現実感を味わい難い光景だった。
　思考がまとまらない。何を思い、何を為せば良いの
かわからない。

　おそらく、俺だけではなかったろうが。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//ここまで
	CreateTextureEX("絵背景1000", 6000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Fade("絵背景1000", 1000, 1000, null, true);
	Delete("ムービー１");
	Delete("絵背景100");
	Delete("絵背景200");

	SetFwL("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121440a03">
「……むかし西村なんとかさんという人が、
あんなものを造ったとか造らないとか……」

{	FwL("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121450a04">
「あれはドイツで行方不明になったと聞いて
おりましたがねぇ……」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121460a00">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　まともに働こうとしない頭を叱咤する。
　すべき事がある筈だ――何かある筈だ。

　危険。

　ここは見世物小屋の中ではない。
　驚愕を楽しむゆとりなどない。

　すべき事。
　すべき事が――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121470a00">
「……村正」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121480a01">
《……御堂？》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121490a00">
「あれは、何か……
　わかるか？」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121500a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121510a01">
《……劔冑、よ。
　ちょっと……風変わりだけど》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121520a00">
「劔冑か……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　あるいはと思ったが。
　あれは、劔冑。

　ならば。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121530a00">
「〝卵〟の有無は」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121540a01">
《…………無し》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121550a01">
《あれは、違う》

{	FwL("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121560a00">
「寄生体ではないか。
　無論、銀星号でもない」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121570a01">
《ええ》

{	FwL("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121580a00">
「では――ここは退くべきだ、な」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121590a01">
《そうね……。
　戦う気はありませんって、言ってみる？》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　魁偉なる大劔冑は、こちらに視線――視線？――を
注いでいる。
　こちらを見ている。

　はっきりとこちらを見ている。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121600a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　何か、不都合な。
　思わしからぬ事態が、生じているような。

　繋がらない。
　良く把握できない。

　迷う――戸惑う。
　<RUBY text="・・・・・・・・・・・・・・・・・・・・・・">そんな場合でないことだけはわかっているのだが</RUBY>。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ぐおーん。
//◆カロリードレイン発動。
	CreateSE("SE01","se特殊_陰義_荒覇吐01");

	CreateTextureEXsub("絵反転100", 16000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateColorEX("絵反転200", 15000, "White");

	CreateTextureEXadd("絵背景200", 12000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");

	CreateMovie("ムービー１", 12000, InLeft, 0, true, true, "dx/mvk100.ngs");
	Fade("ムービー１", 0, 0, null, true);
	Rotate("ムービー１", 0, @0, @180, @0, null,true);
	Zoom("ムービー１", 0, 3000, 5000, null, true);
	Move("ムービー１", 0, @+250, @-30, null, true);
	SetAlias("ムービー１","ムービー１");

	MusicStart("SE01",0,1000,0,500,null,false);

	Zoom("ムービー１", 5000, 40000, 5000, Axl1, false);
	Fade("ムービー１", 1000, 1000, null, false);
	Shake("絵背景100", 2000, 2, 1, 0, 0, 1000, null, false);
	Shake("絵反転200", 2000, 2, 1, 0, 0, 1000, null, false);

	Fade("絵背景200", 0, 1000, null, false);
	DrawTransition("絵背景200", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Fade("絵背景200", 300, 0, null, false);
	Fade("絵反転100", 0, 1000, null, false);
	DrawTransition("絵反転100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);

	Fade("絵反転200", 0, 1000, null, false);
	DrawTransition("絵反転200", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);


	Wait(400);

	Fade("ムービー１", 2000, 0, null, false);
	Zoom("ムービー１", 5000, 30000, 5000, Axl1, false);

	FadeDelete("絵反転*", 500, false);


//ここまで

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121610a00">
「……ッ!!」

{	FwL("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121620a03">
「これは……!?」

{	FwL("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0121630a04">
「……<RUBY text="ドレイン">吸収</RUBY>！
　いけませぬ、お嬢さま！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通
	SetVolume("SE01", 2000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　生温い風が吹きつける。
　身体の芯が<RUBY text="・・・">凍えた</RUBY>。

　何かが失われている。
　何かが奪われている。

　これは――――

　これは、攻撃だ！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121640a00">
「村正ァッ!!」

{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121650a01">
《――――!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆鋼糸攻撃
//◆ざしゅざしゅざしゅ。突き刺さる。
	CreateSE("SE01","se特殊_生物_蜘蛛の糸吐く01");
	CreateTextureEX("絵EF100", 10000, 0, 0, "cg/ef/ef018_蜘蛛の糸.jpg");

	SetVertex("絵EF100", 1024, 576);
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	Request("絵EF100", Smoothing);

	SetBlur("絵EF100", true, 3, 500, 100, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵EF100", 200, 1024, 0, Dxl1, false);
	Fade("絵EF100", 100, 1000, null, true);

	Wait(50);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("絵EF100");
	Delete("ムービー１");
	Delete("絵背景200");

	SetVolume("SE01", 200, 0, null);

	OnSE("se戦闘_銃器_跳弾04",1000);


	Fade("フラッシュ白",300,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Fade("フラッシュ白",100,1000,null,true);
	Fade("フラッシュ白",20,0,null,true);
	Delete("フラッシュ白");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　飛槍のように、蜘蛛の放った鋼糸が宙を駆けた。
　銀色の巨甲に突き立つ。

　それが何程の損傷を与えたかは知れない。
　だが、奇妙な風は止んだ。

　肉体の自由が回復する。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	StR(1000, @-30, @0,"cg/st/st景明_通常_私服.png");
	Move("@StR*", 200, @30, @0, DxlAuto, false);
	FadeStR(200,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121660a00">
「撤退を！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
　俺は同行者に向かって叫んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//ここまで

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121670a00">
「入り江へ――
　いや、片瀬までお戻り下さい！」

{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0121680a03">
「――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se人体_足音_走る01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120a]
　大鳥大尉は返事をしなかった。
　その手間を踏むかわり、即座に飛び退る。

　ただ、踵を返す直前。
　一差しだけ、視線を投げて寄越した。

{	SetVolume("SE*", 3000, 0, null);}
　視線を返す。
　今はこれまで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

..//以下のシーンは各ルート共通

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120b]
　駆け去る背中を見送るゆとりは許されず、己の背に
消えゆく足音のみを聞く。
　そうして向き合う。

　――巨像。
　蜘蛛の反撃を浴びて怯む色もないその怪影。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121690a01">
《御堂！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆バリーン。パーツ分解
//◆景明の周囲に展開
//◆左手で顔を覆う。片目は覗く
	OnSE("se特殊_鎧_装着03",1000);
	CreateColorEXadd("絵フラ", 6500, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服a.png");
	FadeStR(0,true);
	Fade("絵フラ", 1000, 0, null, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121700a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreatePlainSP("絵板写", 2000);
	StR(1000, @0, @0,"cg/st/st景明_装甲_私服b.png");
	FadeStR(0,true);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121710a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者・三世右衛門尉村正
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0121720a00">
「……さて。
　始めるぞ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0121730a01">
《ええ……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 4100, -780, -170, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Request("絵ＥＶ100", Smoothing);
	Rotate("絵ＥＶ100", 0, @0, @180, @0, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
　戦わねばならない。
　少なくとも彼女らが脱出を果たすまでの間。

{	DrawTransition("絵ＥＶ100", 0, 0, 260, 600, null, "cg/data/slide_01_03_0.png", true);
	Fade("絵ＥＶ100", 300, 850, null, false);}
　この相手と――
　未だ嘗て<RUBY text="まみ">見</RUBY>えたこともなく、見えることを想像だに
しなかった<RUBY text="てき">対敵</RUBY>と。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_013vs.nss"

}


