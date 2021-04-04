//<continuation number="3140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_001.nss_MAIN
{

	$TITLE_NOW = "　";

//嶋：フラグ初期化
	if($その他死亡){$その他復活=true;SetHex();}

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
	#bg026_普陀楽山塞a_03=true;
	#bg027_普陀楽評議の間_03a=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_足利護氏=true;
	#voice_on_大鳥獅子吼=true;
	#voice_on_遊佐童心=true;
	#voice_on_今川雷蝶=true;
	#voice_on_足利茶々丸=true;
//嶋：初期化
	$Others_Flag = 0;
	$OthersFav_After = 0;

	$PreGameName = $GameName;

	$GameName = "ma03_002.nss";

}

scene ma03_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma02_024.nss"

//◆普陀楽山塞・夜
//◆ＢＧＭ：六波羅

	PrintBG("上背景", 30000);

	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg026_普陀楽山塞a_03.jpg");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetNwC("cg/fw/nwその他.png");

	#voice_on_大鳥獅子吼=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010010a06">
「……岡部頼綱は降伏勧告を拒絶。
　自ら旗本衆を率いて討って出たため、我が
方はこれを迎撃――」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010020a06">
「猪苗代湖上空で激しい戦闘となったものの、
二時間後には敵騎をほぼ殲滅、制空権の掌握
に成功しました。
　ほぼ同時に地上の反乱部隊が降伏を宣言」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内・奥殿

	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	FadeBG(2000,true);

//◆獅子吼
//◆テロップ：篠川公方　大鳥獅子吼　竜軍中将

	StC(1000, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st獅子吼_通常_制服l.png");
	Move("絵ＳＴ", 0, @-170, @200, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-40, "cg/sys/Telop/tp_大鳥獅子吼.png");
	Move("絵テロ１", 0, @150, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st獅子吼_通常_制服.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);


	SetFwR("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010030a06">
「首謀者岡部頼綱は討死、嫡男十兵衛頼良は
館に火を放って切腹。
　大村玄信、高野喜三郎も討死を遂げ、岡部
の次子六曜丸は逃走中を捕殺」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010040a06">
「その他、主だった者どもは全て戦死、捕縛、
投降、いずれかの命運を辿っております。
　岡部一党は壊滅したと断定して宜しいかと」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆護氏
//◆テロップ：六衛大将領正三位　足利護氏　元帥竜軍大将

	DeleteStA(300,true);
	WaitKey(500);
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStC(300,true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_足利護氏.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

//	WaitKey(2000);

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st護氏_通常_私服_l.png");
	Move("絵ＳＴ", 0, @-190, @170, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-40, "cg/sys/Telop/tp_足利護氏.png");
	Move("絵テロ１", 0, @100, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

	SetFwR("cg/fw/fw護氏_通常.png");

	#voice_on_足利護氏=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010050a05">
「……反乱に加担し、物資や兵員を提供した
町村がいくつかあったはずだな。
　それは、どうした」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010060a06">
「常の通りに。
　住民は全て処刑、家屋は根こそぎ焼き払い、
何も残らぬ荒地と致しました」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010070a05">
「宜しい。
　大儀であった」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010080a06">
「はッ！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010090a05">
「頼綱め……
　長年、予に対して公然と面従腹背の姿勢を
見せてきおった憎い奴だが、こうして生首に
なった姿と対面してみると妙な感慨がある」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010100a05">
「こやつの毒舌をもう聞けぬと思うとな……
ふふ、不思議なほど寂しさを感じてならん。
　思えば奴の毒、あれはあれでなかなか一興
であった」

{	#voice_on_遊佐童心=true;
	NwR("cg/fw/nwその他.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010110a09">
「はぁっはっは！
　殿も勝手なことを申される！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//「はぁっはっは！
//　殿も勝手なことを申される！」

//◆童心
//◆テロップ：古河公方　遊佐童心　竜軍中将

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStC(300,true);


//	StC(1000, @0, @0,"cg/st/st護氏_通常_私服.png");
//	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st童心_通常_私服a_l.png");
	Move("絵ＳＴ", 0, @-190, @160, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-30, "cg/sys/Telop/tp_遊佐童心.png");
	Move("絵テロ１", 0, @100, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_遊佐童心.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw童心_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010120a09">
「先日までは事あるたび、岡部の首を持って
参れ、奴の首を犬に食わせてやるまでは眠る
こともできぬと、返す返す仰られていたに。
　それがし、耳にたこができましたぞ」

{FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010130a09">
「それがいざ死んでみれば、この仰りよう。
　いやはや、困った御方じゃ！」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010140a05">
「そう言ってくれるな、童心坊。
　予とてわかっておる……目の上の瘤が取れ、
心持ちに余裕ができたればこそそんな思いも
浮かぶのだ。かつては考えもせなんだことを」

//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010150a05">
「生きておれば死を望み、死に果てれば生を
望む……全く、<RUBY text="ごぼう">御坊</RUBY>に言われるまでもない。
　人の心の働きというのは本当に勝手なもの
よ。どこまでも満足せぬように出来ておる」

{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010160a09">
「であればこそ、人は満足を求めてあがき、
自らを高めるのでござる。
　満ち足りた人間は木石も同然、悟りの境地
ではござるが、世の役には立ち申さぬ」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010170a09">
「殿がかような生き仏になっては御国の大事。
　いや、勝手な言い草おおいに結構！　殿に
おかれてはどうか今後とも、自侭になさって
くださりませい！」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010180a06">
「……どういう説法だ」

{	FwR("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010190a05">
「かなわんな、童心坊には。
　ふっふっふ……」

{	#voice_on_今川雷蝶=true;
	NwR("cg/fw/nwその他.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010200a08">
「まぁ、何に致しましても」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雷蝶
//◆テロップ：小弓公方　今川雷蝶　竜軍中将

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st雷蝶_通常_制服.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st雷蝶_通常_制服_l.png");
	Move("絵ＳＴ", 0, @-190, @250, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-30, "cg/sys/Telop/tp_今川雷蝶.png");
	Move("絵テロ１", 0, @100, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st雷蝶_通常_制服.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_今川雷蝶.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010210a08">
「これで関東近隣から反幕府勢力はほぼ一掃
されたと言えましょう。
　まずはおめでとうございます、お父様」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010220a05">
「うむ。
　そちも御苦労であった」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010230a08">
「勿体ないお言葉！
　此度の乱ではあまり大した貢献も出来ませ
なんだのに……」

{	FwR("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010240a06">
「本当にな。
　貴様の担当したラインからの補給は、遂に
一度も前線まで届かなかった」

{	FwR("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010250a08">
「あっ……あれは仕方ないのよっ！
　討幕派のゲリラに鉄道を爆破されちゃった
んだから！　あいつら、こないだ散々叩いた
からもう大丈夫だと思っていたのに……」

{	FwR("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010260a06">
「馬鹿か？
　その手の輩はいくらでも湧いてくる。もう
大丈夫、などということはない」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010270a06">
「当然の警戒を怠った貴様の責任は重大だ」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010280a08">
「うぐ……」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010290a06">
「腹を切れとまでは言わんが、そのけばけば
しい頭を丸めてみるのはどうだ？　雷蝶。
　貴様のその、目に刺さるような見苦しさは
耐え難いと、かねがね思っていたところだ」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010300a08">
「あんた喧嘩売ってんのっ!?　こっ、この麿
の美々しい姿が、みみみ見苦しいですって!?
　許せないわ！　<RUBY text="またもの">陪臣</RUBY>上がりの癖に！　只で
済むとは思ってないでしょうね!?」

{	FwR("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010310a06">
「只で済ませてくれなくとも良い。
　貴様なら別段、高い出費を覚悟する必要も
無さそうだ」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010320a06">
「いつでも構わん。
　一戦交えるのが望みなら、掛かってくるが
いい」

{	FwR("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010330a08">
「な、な、なっ……」

{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010340a09">
「まぁまぁ、雷蝶殿。
　まずは落ち着いて。お座りなされい」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010350a08">
「でも、童心様！
　今のお聞きになったでしょう、足利家直系
の麿に対して暴言の数々！
　これはもう反逆よッ、今すぐ打ち首に――」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010360a05">
「静まれ」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010370a08">
「お、お父様……」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010380a05">
「そちに働きがないとは予は考えておらん。
　だが此度の戦、功一等は自ら手兵を率いて
乱を鎮圧した獅子吼。多少の放言は受容せよ」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010390a05">
「さもなくばそちの器量が問われようぞ」

{	FwR("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010400a08">
「……は、はっ」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010410a06">
「ふん……」

{	FwR("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010420a08">
「くっ……」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010430a05">
「獅子吼。そなたも控えよ。
　全て予への忠義から出た言葉であることは
わかっておるが、傍目には驕りとも映る」

//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010440a05">
「それではそなたの損になろう」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010450a06">
「はっ。
　心致します」

{	FwR("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010460a09">
「はっはっはっ。まぁ、若い者はこれくらい
元気な方が宜しい。角突き合わせるのも結構
結構。立場上いつも仲裁役に回らねばならぬ
殿には、なかなか、御難儀なことでござるが」

{	FwR("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010470a05">
「……」

{	#voice_on_足利茶々丸=true;
	NwR("cg/fw/nwその他.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010480a07">
「つーか」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆茶々丸
//◆テロップ：堀越公方　足利茶々丸　竜軍中将

	DeleteStA(300,true);
	StC(1000, @0, @0,"cg/st/st茶々丸_通常_制服a.png");
	FadeStC(300,true);

	CreateColorEX("絵暗転", 3000, "#000000");

	CreateTextureEX("絵ＳＴ", 3000, Center, Middle, "cg/st/resize/st茶々丸_通常_制服a_l.png");
	Move("絵ＳＴ", 0, @-250, @270, null, true);

	Fade("絵暗転", 600, 600, null, false);
	Move("絵ＳＴ", 600, @-30, @0, DxlAuto, false);
	Fade("絵ＳＴ", 600, 1000, null, true);

	CreateTextureSP("絵テロ１", 5000, Center, @-30, "cg/sys/Telop/tp_足利茶々丸.png");
	Move("絵テロ１", 0, @70, @0, null, true);
	DrawTransition("絵テロ１", 1000, 0, 1000, 105, null, "cg/data/slide_02_00_0.png", true);

	WaitKey();

	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	PrintGO("上背景", 50000);
	OnBG(100,"bg027_普陀楽評議の間_03a.jpg");
	StC(1000, @0, @0,"cg/st/st茶々丸_通常_制服a.png");
	FadeBG(0,true);
	FadeStC(0,true);

	FadeDelete("上背景", 300, true);

//	CreateTextureSP("絵テロ１", 2000, Center, @-40, "cg/sys/Telop/tp_足利茶々丸.png");
//	Move("絵テロ１", 0, @150, @0, null, true);
//	DrawTransition("絵テロ１", 1000, 0, 1000, 100, null, "cg/data/slide_02_00_0.png", true);
//	WaitKey(2000);
//	DrawDelete("絵テロ*", 1000, 100, "slide_02_00_1", true);

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010490a07">
「わりかしヤな方向で個性あり過ぎな一家を
まとめる苦労人パパって感じだよなー。いや、
まんまそうか？
　おじじもほんと、大変だね」

{	FwR("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010500a08">
「あんたが言わないでよッ！
　お父様にいつも一番迷惑掛けてるのはどう
考えたってあんたでしょうがッ!?」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010510a07">
「えー。あて、なんかした？」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010520a06">
「……何もしとらんな。雷蝶以上に。
　貴様、とうとう最後まで兵も物資も寄越す
そぶりさえ見せなかったが……一体どういう
つもりだ？」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010530a07">
「どーもこーも。
　あての本陣がどこだか知ってんだろ。伊豆
半島から関東を中央突破して会津まで送れっ
てーの？　無茶言えよな」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010540a07">
「鉄道は駄目、空路も海路も荒れてて駄目っ
てな状況で輸送ができるわけねえし。
　文句なら、そこの<RUBY text="ちょうちんあんこう">提灯鮟鱇</RUBY>と台風一五号に
言っとけ。あてに言うな、あてに」

{	FwR("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010550a08">
「だだっ……誰が提灯鮟鱇よッ!?」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010560a06">
「貴様だ」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010570a06">
「それでもどうにかして送るのが、六波羅に
あって一軍を預かる者の義務であるくらい、
言わずともわかろう。茶々丸。
　実際、童心殿は車両運送で届けてきた」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010580a07">
「あてにもそうしろって？
　やだよかったりぃ」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010590a07">
「いいじゃん、あっさりカタついたんだしさ。
結果オーライってーことで。ここはひとつ」

{	FwR("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010600a06">
「貴様……」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010610a07">
「あー怒るな怒るな。暑苦しいから。
　だいたい、獅子吼さ。あてだってなんにも
やんなかったわけじゃないよ」

{	FwR("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010620a06">
「嘘をつけ。
　前線でも兵站でも貢献しなかった貴様が何
をしたと云うのだ」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010630a07">
「宣伝工作」

{	FwR("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010640a08">
「……は？
　何よ、それ」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010650a07">
「大和南北新聞に社説を掲載してもらったの。
　あてが書いたやつを社員の名前で。いやさ、
あんまり世間の反感買うのもアレだし、今回
の件についてちょっと擁護をね」

{	FwR("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010660a09">
「ほう、ほう。
　茶々丸殿、それはどのような？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010670a07">
「こんなよーな」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆ばさっ。
//◆ノベル表示

	CreateColorEX("絵暗幕", 1500, "#000000");

	OnSE("se日常_衣類_落ちる01",1000);//ダミー注意
	Fade("絵暗幕", 150, 750, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
『友情の虐殺』<k>
　
　会津猪苗代で勃発した岡部頼綱の反乱は、一族郎党
皆殺しという結末を迎えた。国家に対する反逆である
以上やむを得ない処置であるとはいえ、凄惨な最期を
遂げた人々の苦しみを思うと、悲嘆の情感は抑え難い
ものがある。

　世間には六波羅に対して怒りと不満を募らせる風潮
もあるようだ。しかし、ちょっと待って欲しい。国家
を憎んだところで何が得られるというのだろう。ここ
はむしろ、我々国民を守る統治組織である幕府がなぜ、
あえてそのような行為をするに至ったかを考え、理解
し、今後は彼らにそうさせないよう、耐えるべきこと
は耐えて、新たに平和な関係を築くため努力するべき
ではないのか。

　そうすれば、岡部党鏖殺のこの事件は、後世に悲劇
としてではなく、官民を結び付けるきっかけとなった
『友情の虐殺』として、幸福な時代の始まりとして、
伝えられてゆくのではないだろうか……。
　それこそが残された人々の義務であり、岡部の人々
の尊い犠牲に報いる道だと、私には思えてならないの
である。

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵暗幕", 1000, true);

	SetFwC("cg/fw/fw護氏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010680a05">
「…………」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010690a06">
「…………」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010700a07">
「どうよ。
　この巧妙極まる論点のずらしっぷり」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010710a06">
「何処がだ!?」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010720a08">
「喧嘩売ってるようにしか見えんわッ!!」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010730a07">
「えー。そんなことねぇよー。
　ほら」

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010740a09">
「がっはっはっ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010750a07">
「ウケてるし」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010760a06">
「童心殿！」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010770a08">
「ていうか関係ないでしょっ!?
　あんたウケとるためにこれ書いたわけ!?」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010780a07">
「力だけの政治はもう終わった。
　これからはエンターテイメントの時代だ！」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010790a08">
「意味わかんないんだけどッ！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010800a06">
「前言撤回する。貴様はやはり何もするな。
金輪際何もするな。
　できれば呼吸もするな。脈拍も止めろ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010810a07">
「おじじー。
　大人気ない連中がいじめるー」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010820a05">
「……まぁ、良い」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010830a06">
「お言葉ですが殿下。全然、良くありません。
　幕府の威信にも関わります」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010840a08">
「とりあえずこの脳足りんは火星へ島流しに
して、新聞は回収させましょう。お父様」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010850a05">
「良い。
　獅子吼、雷蝶。茶々丸のすることにあまり
目くじらを立てるな」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010860a06">
「……仰せとあらば」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010870a07">
「立てるなー」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010880a06">
「黙れ」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010890a08">
「死になさいよ、あんた」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010900a07">
「おじじ、こいつら命令違反だから殺しても
いい？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010910a09">
「まぁまぁ。
　……さて、景気の良い話の後で恐縮なので
ござるが。一つ景気の良くない報告をさせて
頂いてもよろしゅうござるかな」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0010920a05">
「うむ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0010930a07">
「クラゲが大量発生でもした？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010940a09">
「いやいや。
　先頃、それがしの管区で発生した一村全滅
事件の調査報告が上がってきましてな」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010950a06">
「……あぁ」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0010960a08">
「景気が良くないってことは、予想通りって
ことですのね？　童心様」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010970a09">
「見ようによっては、これほど景気の良い話
もなかなかござらんがなァ。
　生存者は皆無。綺麗さっぱり皆殺し。老若
男女一切問わず、物言わぬ骸となりにけり」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0010980a09">
「事件の異様なまでの特殊性は〝銀星号〟の
出現を示しているとみてまず間違いなかろう、
との報告でござる」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0010990a06">
「……銀星号！」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011000a08">
「これで何件目なのよ……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011010a05">
「目撃情報は？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011020a09">
「これもまた、例によって……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011030a05">
「無し、か」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011040a09">
「信頼のおけるものは。
　銀の流星を見たという者も付近住民、通行
者らの中に幾人かおり申すが、さてどこまで
が本当でどこからが後付けの妄言やら」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011050a07">
「なんにしろ、殺戮現場をはっきり見た奴は
いないっつーことだーねー？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011060a09">
「そういうことだのぅ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011070a06">
「なんという馬鹿げた話だ……！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011080a07">
「別に馬鹿げちゃいねぇだろ。
　見た奴は全員死にましたってだけの話だ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011090a06">
「それの、どこが、馬鹿げていない？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011100a07">
「あはは。だよねー。馬鹿くせー」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011110a08">
「……笑ってる場合かっての」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011120a07">
「いやもう笑うしかねぇしさ。
　誰だってそーだと思うよ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011130a07">
「もう関東中に広まってる、武者の一個中隊
が銀星号に全滅させられたっつーあの噂。
　市民の間じゃ信憑性は半信半疑って辺りで
落ち着いてるけど」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011140a07">
「あれが実は嘘で」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011150a07">
「本当は一個中隊じゃなくて一個<RUBY text="・">大</RUBY>隊です、
なんてことを知ったらさ。
　笑う以外に何ができるっつーの？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011160a08">
「…………」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011170a06">
「確かにな。
　五〇騎からの武者がただ一騎に鏖殺される、
か……ふん。古代の神話か、でなければ狂人
の妄想にしか有り得ぬような話だ」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011180a09">
「<RUBY text="からくに">唐国</RUBY>の伝説に謳われる項覇王もかくや、と
いうところだのぅ。
　いやはや、何だってそのような代物が現世
に出て参ったやら」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011190a08">
「あれは何者なのよ？　一体……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011200a07">
「――其は終末であり、死滅であり、灰燼も
残さぬ消失である。
　汝、触れるなかれ見るなかれ。死に絶える
ことを望まぬならば……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011210a08">
「なによ、それ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011220a07">
「マタイの福音書、別記。
　降り来たる魔王の一節」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011230a08">
「……ふぅん……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011240a07">
「嘘だけど」

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011250a08">
「嘘かよ!?」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011260a07">
「プッ。信じてましたよこの人！
　いるんだよなーこういう奴。なんか適当に
それっぽいこと言うとあっさり鵜呑みにしち
まいやがんの。で、よそで吹聴して大恥かく」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011270a08">
「殺すわ……」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011280a09">
「ま、ま」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011290a06">
「殿下。やはりこれは由々しき事態。
　現在の対策班では足りませぬ。規模を拡大
し、我々の内の一名を責任者にあて、本腰を
入れた対応を行うべきかと存じます」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011300a05">
「うむ……」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011310a07">
「さらっと無視してるけど、あいつもきっと
一瞬信じたんだぜ……？
　良かったね雷蝶、仲間がいて」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011320a08">
「馬鹿はシカト。ふんっ」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011330a05">
「童心坊。
　獅子吼の進言や如何に？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011340a09">
「さぁて。
　やがて必要となる措置であることは、否め
ませぬが……」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011350a06">
「時期尚早と言われるか」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011360a09">
「さよう。
　幕府が、得体の知れぬ凶賊を相手に、そこ
までの力を注ぐ――ということが、おそらく
現段階では……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011370a05">
「火種を煽るか。
　民衆の中の反幕分子。それにＧＨＱ……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011380a06">
「内外の敵に付け入る隙を与えることになる
……それは私とて懸念せぬではありませんが。
〝銀星号〟は黙殺するには余りに大きな災厄。
多少の犠牲は払っても潰しておくべきでは？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011390a09">
「どちらを先に片付けるのか、という問題に
なるかな。敵勢力か、それとも災厄か……。
　しかし、獅子吼殿。銀星号の被害を蒙って
おるのは我らに限らぬ事を忘れてはなるまい」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011400a06">
「……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011410a09">
「六波羅の主敵、進駐軍も少なからぬ損害を
受けておる。そこを考えると、今、我らのみ
が矢面に立って厄介事の始末に乗り出すのは、
いささか割りに合わぬ話と云えぬかな」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――


	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011420a06">
「……なるほど」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011430a08">
「でも、童心様。
　ＧＨＱの手にも負えない銀星号を六波羅の
手で叩き潰せば、幕府こそが大和を統治する
力を持つというまたとない<RUBY text="アピール">証明</RUBY>になります！」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011440a09">
「しかし、それはそれでまた難しゅうござる。
　効果が薄ければくたびれ儲け。大きければ
大きかったで、進駐軍の尻に火を点ける結果
となり申す」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011450a09">
「大和<RUBY text="・・・・">完全支配</RUBY>の機を窺う者どもは、我らの
支配力強化を決して看過しますまい。
　銀星号対策で疲弊した所にＧＨＱの大軍を
迎える……それはちと、ぞっとしませぬなァ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011460a08">
「…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011470a05">
「宜しい。童心坊の見解を是とする。
　銀星号問題に対しては現状の体制で臨む。
いずれ対応部署の拡充は行うが、それは予の
支配が完全なものとなった後の課題としよう」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011480a06">
「はッ……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011490a09">
「御意」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011500a08">
「お父様の仰せのままに」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011510a05">
「……不満か？　獅子吼」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011520a06">
「いいえ、決して。
　ただ一点……どうにも気に掛かってならぬ
ことがございます」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011530a05">
「申してみよ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011540a06">
「……銀星号なる者、一度たりと関東防空圏
の<RUBY text="レーダー">金探</RUBY>に捉えられた例がございませぬ。
　である以上、彼奴めは関東の外からやって
来るのでは<RUBY text="・・">ない</RUBY>とみるのが妥当」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011550a08">
「低空騎航で<RUBY text="レーダー">金探</RUBY>を誤魔化しているっていう
可能性は……ないわよねぇ。
　だったら肉眼で発見されてないとおかしい
し」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011560a07">
「関東のどっかから出現して、どっかへ帰る
わけだ。……レーダーが関東の外縁だけじゃ
なくて全域をフォローしてくれてたら、話は
簡単だったんだけどねー」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011575a09">
「それはちと、人員と経費がおっつかんのう。
金探そのものを改良して性能の向上を図らぬ
ことには、なかなか……。
　現状では要所要所に配備するので精一杯よ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011580a06">
「確かに、関東全域を綿密に監視する金探が
あれば事は楽に片付いたろう。
　しかしそんなものがなくても、本来、事は
既に決着していなくてはおかしいのだ」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011590a06">
「何故なら武者は<RUBY text="・・・">目立つ</RUBY>。
　――殿下。私がどうにも納得いかぬのは、
その点」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011600a05">
「うむ……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011610a06">
「犯行現場から奴が飛び立つところを見たと
いう報告は過去に数件ございます。
　しかし、着陸現場を目撃されたことは一度
たりとありません。これはいかにも奇怪な話」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011620a09">
「……ふむぅ。
　武者が着陸する際に生じる爆音それに噴煙
の軌跡は、かなり離れた場所からでも確認が
できるはず。だというのに……か」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011630a08">
「人里離れた山奥に降りているだけじゃない
の？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011640a06">
「この関東に『人里離れた山奥』がどの程度
ある？
　無論、あることはあるがな。そんな場所は
既に対策班が重点的に調査済みだ」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011650a06">
「成果は無し。
　何の痕跡も発見できていない」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011660a08">
「……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011670a05">
「童心坊。どう考える？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011680a09">
「わかりませぬなァ。確かに獅子吼殿の申し
ようはご尤も、いかにも不審……。
　されど、相手は常識外れの怪物。当たり前
の物差しで計るべきではないのやも知れず」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011690a05">
「うむ……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011700a07">
「そーかなー。
　案外単純な話なんじゃない？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011710a08">
「あんたはもう黙ってなさいよ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011720a07">
「へーい」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011730a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011740a06">
「いや、待て。
　茶々丸、言いたいことがあるなら言え」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011750a07">
「ええのん？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011760a06">
「ああ」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011770a08">
「時間の無駄なのに……」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011780a07">
「んー。否定できないのがツライ。
　いやさ、ほんと単純なご意見なんだけど」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011790a07">
「単に銀星号は武者が着陸しててもおかしく
ない場所に降りてるだけなんじゃないの？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011800a08">
「……はぁ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011810a07">
「木を隠すには森の中っつーか。
　それなら誰も不思議に思わないやん」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011820a06">
「……あのな」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011830a08">
「あんたねぇ……。
　そんな場所、この普陀楽城と、関東四軍の
駐屯基地――つまりは麿たちの公方府くらい
しかないでしょうが！」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011840a07">
「だーよーねぇー？
　あはははははははははははははははははは」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011850a05">
「………………」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011860a09">
「………………」

{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011870a06">
「…………何だと？」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011880a08">
「…………え？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011890a07">
「あはー」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011900a08">
「ちょ、ちょっ……ちょっと待ちなさいよ！
　あんた、それじゃまるで、この五人の中の
……誰かが…………」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0011910a05">
「…………」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0011920a09">
「……ほゥ、ほゥ……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0011930a08">
「ばばっ、馬鹿馬鹿しい！
　大体そんな、何のために……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011940a06">
「……茶々丸。
　貴様、今の発言は……何か根拠あっての」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011950a07">
「んぐ。
　カステラうまい」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0011960a06">
「聞け！」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011970a07">
「……この城か、あてら四公方の本陣か。
　さもなけりゃ」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011980a07">
「んーん……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0011990a07">
「やっぱカステラは文命堂に限る……」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012000a06">
「……食うか喋るかどちらかにしろ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012010a07">
「なら食うけど」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012020a06">
「喋れ！」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012030a07">
「ＧＨＱなんじゃないの？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012040a06">
「…………」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012050a09">
「……ふむぅ。なるほど。
　横浜の進駐軍総司令部も竜騎兵の出入りは
激しゅうござるからの」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012060a09">
「その中に銀星号が紛れ込んでおったとして
も、傍目には何の違和感もなし……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012070a07">
「つーか、ＧＨＱが黒幕だとするなら、そも
そもの銀星号は関東内で離着陸してるはずだ
って前提自体が無意味になっちゃうのかもね」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012080a07">
「銀星号事件ってのは実は、ＧＨＱの新兵器
実験だったり？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012090a06">
「……<RUBY text="ステルスドラコ">隠形竜騎兵</RUBY>か。
　だとすれば〝銀星号〟の拠点は洋上だろう
な。その方が隠匿性が高い」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012100a08">
「太平洋艦隊から防空圏のレーダーを欺瞞し
つつ飛んでくる、連盟軍の最新型竜騎兵って
わけね……。
　けど茶々丸」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012110a07">
「うい」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012120a08">
「進駐軍だって銀星号の被害は受けてるじゃ
ない。
　それはどう説明するのよ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012130a07">
「……はぁ？
　あんた、何をカマトトぶってんですかぁ？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012140a08">
「な、なによ……？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012150a07">
「疑惑をそらすために被害者を装うなんて、
初歩の初歩の陰謀じゃねーか。
　あてらだって普通にやるだろ？　その程度」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012160a08">
「……」

{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012170a06">
「はッ。流石。
　親兄弟を殺して家督を奪った者は言う事が
違う」

{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012180a07">
「てめェが言えた義理かっつーの。
　……しかも、だ。<RUBY text="ブリテン">大英連邦</RUBY>サマは物量には
全く困っていらっしゃらない」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012190a07">
「木っ端兵士の二百や三百、使い捨てにした
って痛くも痒くもくすぐったくもねぇだろ。
　たったそれだけの犠牲で、新兵器の実験と、
治安の悪化――幕府の統治力の減退を図れる」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012200a07">
「やつらにしてみりゃ、安すぎて笑いが止ま
らないくらいのいい買い物なんじゃねーの？」

{	FwC("cg/fw/fw雷蝶_落胆.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012210a08">
「……そう……ね。
　確かに…………」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012220a06">
「一理ある。
　現段階では所詮、推測に過ぎんが……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012230a07">
「ねー。もうカステラ食っていい？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012240a06">
「好きにしろ。
　……殿下。如何なさいますか」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012250a09">
「今の茶々丸殿のお話、明確な根拠は欠いて
おるにしても、なかなか納得できるところが
多うござる。
　もし事実なれば、捨て置いては危険……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012260a05">
「いや。
　方針に変更はない」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012270a05">
「仮に全てが進駐軍の陰謀であるとしても、
否、そうであれば尚のこと、まず第一に対処
すべきはＧＨＱ本体。
　指先の動きに囚われては大局を見失う」

//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012280a05">
「ＧＨＱという根幹を潰せば、枝葉はすぐに
枯れ果てよう。
　忘れまいぞ。我らが敵は横浜に在り。宿望
は唯一つ――――」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012290a05">
「<RUBY text="・・・">大攘夷</RUBY>じゃ！」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012300a09">
「御意。
　六波羅のために！」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012310a06">
「神州大和のために！」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012320a08">
「お父様の天下のために！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012330a07">
「さすが、おじじ。
　んまんま」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012340a08">
「空気読めよ!?
　いつまでカステラ食ってんの！」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012350a07">
「ごちそうさま。
　で、話は変わるけどさぁ」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012360a08">
「しかも仕切るし……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012370a07">
「あー、うるさいですよキミ。
　場の空気を乱さないようにね。ひとの話は
ちゃんと聞け」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012380a08">
「ぐぎ……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012390a09">
「重要な議題かな？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012400a07">
「いんや、それほど。
　最近、ちっとばかし巷で噂になりつつある
ことがあってさ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012410a07">
「〝赤い武者〟の話なんだけど。
　知ってる？」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012420a06">
「……いや」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012430a09">
「銀の次は赤ときたかい。
　それは一体？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012440a07">
「弱きを助け強きを挫く。
　正義を掲げて闘う<RUBY text="ヒーロー">英雄</RUBY>」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012450a08">
「……はぁぁ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012460a07">
「ってことらしいよ？」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012470a08">
「それじゃ全然わからないわよ。
　そいつが何をしてるわけ？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012480a07">
「だから、弱くて正しいやつを助けて強くて
悪いやつをどついて回ってるんだろ。
　ヒーローってのはそーいうもんだし」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012490a08">
「悪いやつって誰よ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012500a07">
「あてら六波羅。
　それと、例の<RUBY text="・・・">工作員</RUBY>ども」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012510a05">
「……民衆を害する武者を、狩って回る武者
がいると云うのか？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012520a07">
「そそ。どこからともなく現れて、悪い武者
をぶっ倒して、どこへともなく去ってくんだ
そーな。
　あくまで噂だけどね」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012530a07">
「つーか、都市伝説？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012540a08">
「……でしょ？
　そんな報告は、」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012550a06">
「……ないこともない。
　事故死として処理された竜騎兵の死亡事件
の中には、不審な点が多いものもある」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012560a06">
「私闘か、さもなくば銀星号の手に掛かった
のだろうと、一概に片付けられていたが……
　その赤い武者とやらが実在するとすれば、
そちらの犠牲者も含まれているかもしれない」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012570a09">
「……ふむぅ。あるいは……
　先程ご報告した、例の全滅した村の代官が
……その英雄殿の刃に掛かったやもしれぬ」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012580a08">
「あれは銀星号なのでしょう？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012590a09">
「いや、それがですな、雷蝶殿。
　村が壊滅する前日の事なのでござるが……」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012600a09">
「それがしの古河公方府にその代官から連絡
がありまして。真紅の劔冑を駆る所属不明の
武者が現れただの、そやつがＧＨＱの巡察官
と組んで反逆行為に及んでいるだのと」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012610a05">
「ほう……？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012620a09">
「だから増援をくれという要請だったのです
がな。なにぶん岡部の乱で天手古舞になって
いた折のこと、まともに取り合う暇もなく、
無視してしまっており申した」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012630a06">
「失礼ながら童心殿。
　仮にも反逆を訴える通報に対して、それは
いささか手落ちというべきでは」

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012640a08">
「……この、陪臣上がり！
　少しは自分の立場ってものをわきまえて口
を利きなさいよ！」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012650a09">
「いやいや、まったくその通りで、返す言葉
もござらん。それがしも反省することしきり。
　ただ言いわけをしておくなら、聞き流して
しまった理由は他にもござってなァ」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012660a06">
「とは？」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012670a09">
「その代官がのぅ。前々から、赴任地のなん
とかいう山に固執して、大昔の古文書による
とここは宝石がわんさか出る場所だから是非
にも開発すべし、と再三上申を繰り返し」

{	FwC("cg/fw/fw童心_宥め.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012680a09">
「それが通らんと知ると、とうとう自費で穴
を掘り始めよった、なんというか……変物で
のぉ。
　武人としては使える男であったのだが」

{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012690a06">
「……中央で出世するための点数稼ぎがした
かったのか？
　それにしても術があろうに」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012700a09">
「さてなァ。今となってはわかり申さぬ。
　何にしても、そういう少し変わったやつだ
ということは皆知っておったので、古河では
誰も報告を真に受けなかったという次第よ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012710a07">
「ふーん」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012720a08">
「赤い武者、ねぇ……」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012730a05">
「興味深い話ではあるな。
　が……童心坊？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012740a09">
「は。今のところは夢とも<RUBY text="うつつ">現</RUBY>とも知れぬ話、
気に病むには及びますまい。
　それに……」

//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012750a09">
「赤い武者とやらが真、<RUBY text="・・・">工作員</RUBY>どもを斬って
回っているのなら。
　我ら以上にそやつが鬱陶しくてならぬのは
ＧＨＱ。連中が始末してくれるでござろう」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012760a05">
「獅子吼」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012770a06">
「童心殿に賛同仕ります。
　ただ、このような噂が広まる背景、市民の
間の英雄願望の高まりには若干の危惧を覚え
ないでもありません」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――――

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012780a09">
「……それだけ不満が募っておるということ
だからのぅ。
　といって、今の状況では民衆への締め付け
を緩めるわけにもいかんが……」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012790a06">
「然り。
　むしろ鎌倉大番らの警察体制を強化、不穏
分子の摘発をより徹底してゆくべきかと存じ
ます」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012800a05">
「うむ。その言を良しとする。
　雷蝶、速やかに手配せよ。<RUBY text="うまやしゅう">厩衆</RUBY>にも命令を
下しておけ。表と裏の両面から制御するのだ」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012810a08">
「はい、お父様」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012820a07">
「うにゃー。かったるー。
　おじじー、そろそろ終わりにしない？」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012830a05">
「……そうだの。
　他に議題がないようであれば、本日の評議
はこれまでとするが……」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012840a09">
「あいや殿、しばらく。
　獅子吼殿、例の一件については？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012850a06">
「……」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012860a08">
「例の一件？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012870a07">
「……あー、あーあー。大鳥本家の家督継承
について、なんか承認を受けたいことがある
とかなんとか。
　そーいやそんなこと言ってたっけ」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012880a07">
「あれ、どしたの？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012890a06">
「……その儀は。
　後日、また」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0012900a09">
「……ふむぅ？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012910a08">
「なによ。あんたがこだわってた、本家正統
の嫡子ってのが見つかったんじゃないの？
　それともなに？　やっぱり気が変わった？
花枝と結婚して本家を奪う気になったわけ？」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//嶋：ボイスなし
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012920a06">
「……ッ……」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0012930a08">
「じょっ、冗談よ！
　そんな、睨まなくたっていいじゃない！」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0012940a07">
「機嫌悪いじゃん。
　なんか良からぬことがあったようだねー？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012950a06">
「…………」

{	FwC("cg/fw/fw護氏_困惑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012960a05">
「……ふむ。
　仔細はわからぬが、不都合とあればあえて
問うまい」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012970a05">
「その件は日を改めて論ずるとしよう」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0012980a06">
「有り難き御差配……。
　痛み入りまする」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0012990a05">
「今宵は以上。皆の者、御苦労であった。
　下がって良い」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0013000a09">
「ははっ」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013010a07">
「おっ、そーだ。
　おじじー、時王は元気してる？」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0013020a06">
「時王ではない、茶々丸。
　殿下の御嫡孫、時王丸君は既に元服なさり、
四郎邦氏を称しておられる」

{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0013030a06">
「せめて四郎様とお呼びせよ」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013040a07">
「えー。
　いいじゃんかよ別にィ。元服しようが切腹
しようが、時王は時王なんだしさー」

{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/ma03/0013050a06">
「貴様は……」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0013060a05">
「良い、良い。獅子吼。
　四郎にとって茶々丸は姉のようなもの」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0013070a05">
「歳の近い親族は茶々丸しかおらぬでな。
　最近あまり会えないと、寂しがっておった。
良ければ顔を出してやってくれぬか」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013080a07">
「いいよー。本を貸してやる約束してたしね。
帰る前にちょこっと寄っていきましょう。
　次の大将領にコビ売っとくのも悪くない」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/ma03/0013090a05">
「ふふ。
　あまり甘やかしてくれるなよ。親を早くに
亡くした不憫な子ではあるが、立派に育って
貰わねば困るでな」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013100a07">
「はーい」

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0013110a08">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0013120a07">
「ん？　なに面白くなさそうな顔してんのさ。
　雷蝶叔父さん？」

{	FwC("cg/fw/fw雷蝶_焦り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0013130a08">
「べっ、別に……」

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma03/0013140a09">
「……ふむぅ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_002.nss"