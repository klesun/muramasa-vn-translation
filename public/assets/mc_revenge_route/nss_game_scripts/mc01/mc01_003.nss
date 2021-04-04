//<continuation number="910">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_003.nss_MAIN
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
	#bg007_若宮大路a_03=true;
	#bg007_若宮大路b_01=true;
	#bg009_鎌倉住宅街b_01=true;
	#bg014_鎌倉繁華街_01=true;
	#bg020_山脈坑道_01=true;
	#bg038_サーキット直線_03=true;
	#bg053_湊斗家の庭_04=true;
	#bg054_湊斗家祭殿b_01=true;
	#bg054_湊斗家祭殿a_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_004.nss";

}

scene mc01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_002.nss"

//◆八幡宮
//◆市街。雨
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg007_若宮大路b_01.jpg");
	CreateSE("SEL01","se自然_水_雨音02_L");
	MusicStart("SEL01", 2000, 500, 0, 1000, null, true);

	Wait(2000);

	SoundPlay("@mbgm18",0,1000,true);
	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	CreatePlainSP("絵板写", 1990);

	Delete("上背景");
	Fade("黒幕１", 1500, 0, null, true);

	StR(1000,@0,@0,"cg/st/st香奈枝_通常_私服a.png");
	StL(1010,@0,@ 0,"cg/st/stさよ_通常_私服.png");
	FadeStA(0, true);

	Fade("絵板写", 300, 0, null, true);

	SetFwC("cg/fw/fw香奈枝_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030010a03">
「いい天気ねぇ……」

{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030020a04">
「また初っ端からカッ飛んでおられますな、
お嬢さま」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("絵板写", 300, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　大鳥主従と合流し、帰路につく。
　出がけには無かった雨が天地の狭間を満たしており、
俺は八幡宮で傘を借りねばならなかった。

　野放図なまでに用意のいい永倉侍従が何処からとも
なく取り出したので、老若の女性二人組は自前の傘を
差している。
　香奈枝嬢のそれは、白の無地。

　気に入りなのか、手の中で弄んでくるくると回して
いる。
　機嫌が良さそうだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	WaitAction("絵板写", null);
	DeleteStA(0, false);
	Delete("絵板写");

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030030a03">
「あら。固定観念に囚われているのではなく
て、ばあや？
　雨は嫌なものだなんて、誰が決めたわけで
もないでしょう」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030040a04">
「なるほど。左様でございますねぇ。
　恵みの雨などとも申しますし」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030050a03">
「そうそう。
　……うふふふふふふふふふふ」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030060a04">
「ど、どうなさったのですお嬢さま!?
　突然そのような悪魔的不審性に満ちた人間
外の笑い声を洩らされるなど……このさよ、
思わず石を投げるところでございましたぞ！」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030070a03">
「うふっ……
　雨の恵みは農業だけのものにあらず――」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030080a03">
「男女の恋愛にとっても恵みとなるのです！」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_回顧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//◆↓縦書きボックスでは表示不可能なんで
//◆専用ボックス使用か。
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030090a04">
「( ﾟдﾟ)？」


</PRE>
//★ inc遠藤 不明瞭でしたが、一時的に横書きにしてプリセット位置を変更しました。
	SetTextEXH();
	Move("$SYSTEM_present_text", 0, 448, 134, null, true);
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_含羞.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030100a03">
「降り注ぐ雨……
　濡れるブラウス……
　そして透ける下着ッ！」


{	FwC("cg/fw/fw香奈枝_驚き.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030110a03">
「自然現象を利用したさりげなくかつ強力な
セックスアピールが殿方のハートをがっつり
キャッチするのです！
　これぞまさに、天神の鬼謀!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ぴかーんごろごろ。雷鳴演出
	DeleteFwC(100, false);
	Fade("@box*", 150, 0, null, true);

	CreateColorEXadd("絵色白", 1300, "#6699FF");

	CreateTextureEXadd("絵ブラー１", 1020, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	Rotate("絵ブラー１", 0, @0, @0, @300, null, false);
	Zoom("絵ブラー１", 1000, 2000, 2000, Dxl1, false);
	Request("絵ブラー１", Smoothing);
	Fade("絵色白", 0, 1000, null, true);
	Fade("絵ブラー１", 0, 1000, null, false);
	Shake("絵ブラー１", 1000, 50, 50, 0, 0, 1000, Axl2, false);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	FadeDelete("絵ブラー１", 900, false);

	SetVolume("@mbgm16*", 1, 1, null);
	CreateSE("SE01","se自然_雷_稲光02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵色白", 900, true);

	WaitKey(2000);
	SetVolume("@mbgm16*", 1000, 1000, null);
	WaitKey(1200);
	SetVolume("SE01", 500, 0, null);

	SetFwC("cg/fw/fwさよ_疲れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030120a04">
「おお……それは確かに恐るべき策略！
　流石、このさよめの主人たる方は一味違い
まする」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030130a03">
「うっふっふ……」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030140a04">
「しかしながらお嬢さま。
　それって実は単なる痴女と紙一重と申しま
すか、わざとやっている時点で普通に痴女で
ございますな」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030150a03">
「ふっ……その程度のリスクに臆していては
恋の成就など夢のまた夢！
　愛という果実を手にするには、蛮勇と呼ば
れるほどの勇気こそが肝要なのです！」


{	StR(1000, @0, @0, "cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300, false);
	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030160a03">
「ね、景明さまもそう思われますでしょう？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030170a00">
「はい」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030180a03">
「やっぱりっ。
　じゃあ、わたくしの精一杯の勇気……受け
取ってくださいます？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030190a00">
「はい」


{	FwC("cg/fw/fw香奈枝_照れ.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030200a03">
「あぁん、今のを聞いてばあや？
　ついにわたくしの想いが通じたのね……！」


{	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030210a04">
「おめでとうございます、お嬢さま！
　まぁどう見ても完璧にスルーされてるだけ
ではあるのですが」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　上の空に聞く会話は、右から左へ流れ去るばかりだ。
　頭の中は既に別のもので占められている。

　知らされた、親王と署長の真意。
　――彼らは湊斗景明を裁くつもりがない。

　俺の犯した悪は見逃されてしまう。
　法に照らされ、相応しい報いを与えられることなく。

　全てを知る第三者たる彼らにその意思が無い以上は
必然、そうなる。
　
　……馬鹿な。

　そんな――馬鹿な事が。
　許されて良いのか。

　良い筈はない……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030220a00">
「……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030230a03">
「……そういえば、そこはかとなくお元気が
ありませんわね。景明さま。
　どうなさったのかしら」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030240a04">
「はて？　左様でございましょうか。
　陰鬱なお顔、近寄るだけで株価が下がって
しまいそうな不景気な気配……いつも通りの
湊斗さまに見えまするが」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030250a03">
「でも普段の景明さまなら、わたくしがこれ
だけ<RUBY text="モーション">誘い</RUBY>をかければ『グダグダうるせぇんだ
よ牝犬がァ、どうせ俺のコレが欲しいんだろ
おぉ!?』とか叫んで襲ってくると思わない？」


{	FwC("cg/fw/fwさよ_回顧.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030260a04">
「仰られてみれば、そんな気もいたします」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030270a03">
「八幡宮で何かおありになったのかも」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030280a04">
「何かとは」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030290a03">
「殿方をこうも消沈させてしまうことなので
すから……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030300a04">
「は」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030310a03">
「……不能？」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030320a04">
「お待ちを」


{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030330a03">
「ちんちん勃たなくなったのかしら……」


{	FwC("cg/fw/fwさよ_怒り.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030340a04">
「待てっつってんだろお嬢さま」


{	FwC("cg/fw/fw香奈枝_凹む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030350a03">
「この御歳で腎虚なんて……。
　どうしましょうさよ、『勃たない景明さま
も好きです！』って言って差し上げたいけど
かえって傷つけてしまうかしら？」


{	FwC("cg/fw/fwさよ_疲れ.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030360a04">
「つーかそれがどうして八幡宮で判明するの
でありましょうや」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030370a03">
「……………………」


{	SetComic(@0,@0,13);
	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030380a03">
「ぽっ……」


{	DeleteComic();
	FwC("cg/fw/fwさよ_涙.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030390a04">
「あんたもう人間として駄目でございますね。
　お嬢さま」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030400a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　雨の音もどこか遠い。
　そのくせ濡れた革靴の感触は生々しく、鬱陶しくて
ならなかった。

　皮膚を刺す冷気が、<RUBY text="かん">癇</RUBY>に障る……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆移動
//◆銭洗弁天付近
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("絵背景10");
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	DrawDelete("黒幕１", 1000, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030410a03">
「あっ……景明さま。
　少しお待ちになって」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030420a00">
「――は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　<RUBY text="ワンテンポ">一拍</RUBY>遅れて呼び掛けに気付き、足を止める。
　さっきまで右隣にあったはずの白い傘は、いつしか
消え失せていた。

　八幡宮と署長宅の丁度中間、源氏山の麓付近。
　山へと繋がる道を眺めつつ、大鳥大尉は俺から数歩
ばかり後方に佇んでいる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030430a00">
「何か？」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030440a03">
「銭洗弁財天さまへ行くには、こちらの道で
よろしいの？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030450a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　銭洗弁天。
　
　胸の奥を、何かがちくりと刺した。

　考えまい。
　今は――考えるべきではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030460a00">
「……はい。
　この道を真っ直ぐ行けば、十分ほどで」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030470a03">
「少しお参りしてきても構いませんかしら。
　わたくし、まだ行ったことがなくて」


{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030480a04">
「鎌倉に来てからこちら何かと慌しく、観光
をしているゆとりもございませんでしたから
ねぇ……。
　江ノ島くらいでございますか？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030490a03">
「あれも観光というには少々せわしなかった
ような」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030500a00">
「わかりました。
　御案内しましょう」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030510a03">
「いえいえそんな。真っ直ぐなのでしょう？
ならわたくし一人で大丈夫です。
　すぐに戻りますから、ここでお待ち下さい
まし」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030520a03">
「さよ、景明さまをお願いね」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030530a04">
「は。お任せ下さいませ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　やや早口に会話をまとめると、香奈枝嬢はさっさと
路地へ入っていってしまった。
　呼び止める間もない。

　白い傘を見送って、ふと息をつく。
　正直、安堵する部分もあった。

　今は何をするのも億劫だ。
　銭洗弁天までは標高にして何十メートルもないが、
それでも今の自分には荷が重い。

　彼女の帰りを雨の下に立ち尽くして待つ方がずっと
楽だった。むしろそれなら望むところだった。
　何も思わず、何も考えずにいられる。

　永倉侍従は黙して佇立し、ろくに気配さえ感じさせ
ない。こちらの心境を読み、気を遣ったのかもしれな
かった。それはそれで心苦しかったが――今はそんな
ことも考えたくはない。

　……しかし、なぜ大鳥大尉は侍従を残したのだろう。
　一緒に連れて行けば良さそうなものだが。

　そういえば源氏山へ向かう間際、二人で無言の視線
を交し合ったように見えたが――あれは――
　
　……やめよう。

　物を考えると、今は酷く疲れる……。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030540a04">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆inc久保田：プレ分けしました

	DeleteFwC(100, false);
	Fade("@boxCT", 150, 0, null, false);

	CreateColorEX("絵黒転", 15000, "BLACK");
	Fade("絵黒転", 1000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵黒転", 1000, true);


	StR(1000, @50, @0, "cg/st/st香奈枝_通常_私服a.png");
	Move("@StR*", 300, @-20, @0, Dxl1, false);
	FadeStR(300, true);

//◆inc久保田：プレ分けしました
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　程なく戻ってきた香奈枝嬢を迎え、また歩き出す。
　そろそろ夕暮れが近かった――この天気では辺りの
暗さの微妙な移ろいのほかにそうと知らしめる何物も
無かったけれども。

　香奈枝嬢の容貌は先刻より影を濃くしている。
　……それはあながち夜の気配ばかりが理由でもない
ようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0, "cg/st/stさよ_通常_私服.png");
	FadeStL(300, false);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030550a04">
「何かございましたか、お嬢さま」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030560a03">
「……いえ。
　大したことではないのだけど」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030570a03">
「少し、嫌な話を聞いてしまって……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030580a04">
「弁天さまで？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030590a03">
「ええ。宮司さんが丁度いらっしゃったから、
神社の御由緒などをお伺いしたの。
　そうしたら――」


{	FwC("cg/fw/fwさよ_笑顔.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030600a04">
「実はこの神社は海底の都市で眠る蛸っぽい
姿の神様を祀っているのです、とでも言われ
ましたかな」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030610a03">
「それはすごく嫌だけどそうではなくて。
　……入り口が洞窟になっている面白いお社
だったから、子供たちにはいい遊び場なので
しょうねって言ったのよ」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030620a03">
「そうしたら宮司さんが暗い顔をなさって。
　少し前までは元気な四人組が良く来ていた
が、今はもういない……と」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030630a04">
「は……？」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030640a03">
「……四人そろって、不幸な目に遭われてし
まったのですって。
　一人はこのあたりの竹林で失踪して、それ
きり」

{	DeleteStA(300,false);}

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(300);//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 500, 0, null);

//◆ドクン。動揺

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se人体_体_心臓の音02",1000);
// 効果音を画面効果併せで適時待つ
	WaitKey(400);
	CreateColorEXadd("あかいよー", 15000, "RED");
	Fade("あかいよー", 0, 100, null, true);

	CreatePlainEX("絵ブラー１", 20000);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	Delete("あかいよー");

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 100, 1100, 1100, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);

	Zoom("絵ブラー１", 500, 1000, 1000, Dxl1, false);
	Fade("絵ブラー１", 500, 0, null, true);

	Delete("絵ブラー１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　――――!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030650a03">
「一人は残酷な事件に巻き込まれて、両眼を
失くしてしまって。
　一人は同じ事件で手足を……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030660a04">
「何と」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。動揺
	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(400);
	CreateColorEXadd("あかいよー", 15000, "RED");
	Fade("あかいよー", 0, 100, null, true);

	CreatePlainEX("絵ブラー１", 20000);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	Delete("あかいよー");

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 100, 1200, 1200, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);

	Zoom("絵ブラー１", 500, 1000, 1000, Dxl1, false);
	Fade("絵ブラー１", 500, 0, null, true);

	Delete("絵ブラー１");

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030670a03">
「最後の一人は……
　自分の家の中で、誰かに殺されてしまった
のですって」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030680a03">
「首を――綺麗に刎ねられていたそうよ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。動揺
//◆視界が揺れる。ぼやける
	OnSE("se人体_体_心臓の音02",1000);
	WaitKey(400);
	CreateColorEXadd("あかいよー", 15000, "RED");
	Fade("あかいよー", 0, 100, null, true);

	CreatePlainEX("絵ブラー１", 20000);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	Delete("あかいよー");

	Fade("絵ブラー１", 0, 500, Dxl1, true);
	Zoom("絵ブラー１", 100, 1300, 1300, Dxl1, false);
	Fade("絵ブラー１", 100, 1000, null, true);

	Zoom("絵ブラー１", 500, 1000, 1000, Dxl1, false);
	Fade("絵ブラー１", 500, 0, null, true);

	Delete("絵ブラー１");
	FadeDelete("絵ＥＦ", 1000, true);

	SetFwC("cg/fw/fwさよ_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030690a04">
「<RUBY text="むご">惨</RUBY>い話でございますねぇ……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030700a03">
「本当に。
　どこの悪魔がそんなことをしたのかしら」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030710a03">
「明るくて、とても良い子供たちだったそう
なのに……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。血？

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	OnSE("se戦闘_攻撃_刀刺さる05",1000);
	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("フラッシュ白", 300, 0, null,true);

	WaitKey(1500);
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵回想01");
	Fade("フラッシュ白",300,0,null,true);

	SoundPlay("@mbgm04", 0, 1000, true);


	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030720a03">
「首を……
　斬ってしまうなんて、ねぇ」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030730a04">
「まこと……人非人の所業でございます」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。雄飛殺害
	EfRecoIn1(18000,600);

	CreateTextureSP("絵回想03", 5300, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_b.jpg");
	CreateTextureSP("絵回想01", 5000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_c.jpg");
	CreateTextureSP("絵回想02", 4000, Center, Middle, "cg/ev/ev106_雄飛と見下ろす村正_d.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	CreateTextureEXadd("絵EF100", 6500, Center, 100, "cg/ef/ef014_汎用横軌道.jpg");

	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵EF100", 0, 1000, null, true);
	DrawDelete("絵EF100", 50, 100, "slide_01_00_0", true);
	WaitKey(100);
	Delete("絵回想03");
	WaitKey(300);
	OnSE("se人体_血_血しぶき01",1000);
	Delete("絵回想01");
	CreateTextureSPover("絵回想血", 6000, Center, Middle, "cg/anime/Right/blood_B_6.png");
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("絵回想*");


	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030740a03">
「許せない……」


{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030750a04">
「許せませぬな……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030760a03">
「けれど犯人は捕まっていないみたい。
　罰を受けてはいないのよ」


{	FwC("cg/fw/fwさよ_老兵.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030770a04">
「のうのうと、どこかで生きているのですか
……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030780a03">
「ええ。
　罪もない子供を殺して、自分は生きている」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030790a04">
「何と浅ましい」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030800a03">
「今もどこかで、自分だけが不幸という顔を
して、雨の中を歩いているのよ。
　もう雨に濡れることも叶わない子供たちの
ことは忘れて……」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030810a04">
「この世は不条理なものでございます」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030820a03">
「本当にそうね。
　子供は死んで、子供を殺した悪魔は生きる」


{	FwC("cg/fw/fw香奈枝_警戒.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030830a03">
「どうして逆ではないのかしら」


{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030840a04">
「どうして逆ではないのでしょう」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030850a03">
「ねぇ、景明さま」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030860a03">
「<RUBY text="・・・・">どうして</RUBY>？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。殺してきた人々
//◆視界揺れて
//◆がっく。膝をつく

	CreateTextureEX("絵ＥＦ", 1900, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	SetShade("絵ＥＦ", HEAVY);
	Zoom("絵ＥＦ", 0, 1200, 1200, DxlAuto, false);

//inc久保田メモ ユウヒ


	EfRecoIn1(18000,600);


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_01.jpg");
	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Right/blood_B_6.png");
	EfRecoIn2(300);

	Wait(100);

	EfRecoIn1(18000,600);

//inc久保田メモ ふきふな
	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg020_山脈坑道_01.jpg");
	CreateTextureSP("絵回想200", 2100, 200, InBottom, "cg/st/stふき_通常_私服.png");
	CreateTextureSP("絵回想400", 2300, 550, InBottom, "cg/st/stふな_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Left/blood_C_6.png");
	EfRecoIn2(300);

	Wait(100);

	EfRecoIn1(18000,600);

//inc久保田メモ ミサオ
	Delete("絵回想*");

	if($操殺害 == true){
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st操_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");
	}else{
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg037_競技場ガレージa_01.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st皇路_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");
	}

	EfRecoIn2(300);


	Wait(100);

	EfRecoIn1(18000,600);

//inc久保田メモ 一条
	Delete("絵回想*");


	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg007_若宮大路a_03.jpg");
	CreateTextureSP("絵回想200", 2100, 400, InBottom, "cg/st/st一条_通常_制服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");

	EfRecoIn2(300);


	Wait(100);


	EfRecoIn1(18000,600);

//inc久保田メモ 母
	Delete("絵回想*");




	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg053_湊斗家の庭_04.jpg");
	CreateTextureSP("絵回想300", 2100, 106, InBottom, "cg/st/st統_通常_私服.png");
	CreateTextureSPover("絵回想血", 2500, Center, Middle, "cg/anime/Left/blood_C_7.png");

	EfRecoIn2(300);

	Fade("絵ＥＦ", 0, 1000, null, true);

	Wait(100);
	
	EfRecoOut1(300);

	Delete("絵回想*");
	DrawEffect("絵ＥＦ", 3000, "LowWave", 85, 85, Dxl1);

	Request("絵ＥＦ", Smoothing);
	Zoom("絵ＥＦ", 2500, 1350, 1450, DxlAuto, false);
	Zoom("絵効果雨", 1500, 2500, 2500, DxlAuto, false);
	Fade("絵効果雨", 1500, 100, DxlAuto, false);

	EfRecoOut2(600,true);



	Move("絵ＥＦ", 1500, @0, @100, DxlAuto, true);
	SetVolume("@mbgm*", 500, 1000, null);
	WaitKey(100);

	Move("絵ＥＦ", 1000, @0100, @0, AxlAuto, false);
	Zoom("絵ＥＦ", 1000, 1250, 1350, AxlAuto, false);
	Zoom("絵効果雨", 1000, 2000, 2000, AxlAuto, false);
	Fade("絵効果雨", 1000, 1000, AxlAuto, false);
	Move("絵ＥＦ", 1000, @0, @-60, AxlAuto, true);

	WaitKey(1500);
	Move("絵ＥＦ", 100, @0, @-400, DxlAuto, false);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", false);


	OnSE("se人体_衝撃_転倒03",1000);
	WaitKey(1000);
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【さよ】
<voice name="さよ" class="さよ" src="voice/mc01/0030870a04">
「……湊斗さま？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0030880a03">
「どうされましたの？
　しっかりなさって！」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030890a00">
「あ――――あぁ――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
	CreateTextureSP("絵ＥＦ", 4000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");

	CreateTextureSP("絵ＥＦa", 6000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	CreateTextureSP("絵ＥＦb", 5500, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");
	CreateTextureSP("絵ＥＦc", 5000, Center, Middle, "cg/bg/bg009_鎌倉住宅街b_01.jpg");

	SetShade("絵ＥＦa", NOMORE);
	SetShade("絵ＥＦb", SEMIHEAVY);
	SetShade("絵ＥＦc", EXTRAHEAVY);

	CreateEffect("絵効果雨", 4100, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);

	Fade("絵赤転",600,0,null,false);
	Fade("黒幕１",600,0,null,true);
	FadeDelete("絵ＥＦa", 1500, true);
	Fade("黒幕１",500,200,DxlAuto,true);
	FadeDelete("絵ＥＦb", 500, true);
	Fade("黒幕１",1500,0,AxlAuto,true);
	FadeDelete("絵ＥＦc", 1500, true);

	Fade("黒幕１",600,0,AxlAuto,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　どうして。
　どうして。

　どうして俺だけが生きているのだ。
　殺して殺して殺して殺して、何人もの人を雨もない
世界へ追いやったくせに、どうして俺だけは今も雨を
浴びて歩くことを許されているのだ。

　おかしい。
　理不尽だ。
　不条理だ。

　許されない。
　俺は罰せられなければならない。

　――だというのに、許されようとしている。

　俺の罪を知る者が、俺の罪を鳴らそうとしない。
　許し……あまつさえ功績と称え……安息を与えよう
などと云う。

　どうして。
　
　どうして――そんな理不尽が通る！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("黒幕１",500,1000,AxlAuto,true);
	Delete("絵*");
	CreateTextureEXadd("うねうね", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	Fade("うねうね", 0, 300, null, true);
	Zoom("うねうね", 30000, 1500, 1500, null, false);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_01.jpg");
	CreateTextureSP("絵回想200", 2100, 600, InBottom, "cg/st/st光二年前_装甲_私服a.png");
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	Fade("黒幕１",1000,0,null,true);
	WaitKey(1000);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030900a00">
「あ――あ」


{
	DeleteFwC(100,false);
	Fade("@box*",150,0,null,true);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg054_湊斗家祭殿a_01a.jpg");
	CreateTextureSP("絵回想200", 2100, 200, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	Fade("フラッシュ白",300,0,null,true);
	WaitKey(1000);
	Fade("黒幕１",1000,1000,null,true);
	SetFwC("cg/fw/fw景明_恐怖.png");
	FadeFwC(300,false);
	Fade("@boxCT",150,800,null,true);
}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/0030910a00">
「ああぁぁぁぁぁ……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト。イン

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc01_004.nss"