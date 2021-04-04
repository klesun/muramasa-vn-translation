continuation number="670">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004.nss_MAIN
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
	#bg048_景明故郷オフィス_01=true;
	#bg047_景明故郷町a_01=true;
	#bg050_湊斗家門前_02=true;
	#bg002_空a_02=true;
	#ev128_病床の光_c=true;
	#ev133_兜割に挑む光_a=true;
	#ev136_戦闘解説ＶＳ首領編３_e=true;
	#ev128_病床の光_f=true;
	#ev138_首領の最期_c=true;
	#bg054_湊斗家祭殿b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mb04_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_003.nss"

//◆オフィス。第五話の
//◆ウェイト
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演背景", 1000, Center, Middle, "cg/bg/bg048_景明故郷オフィス_01.jpg");
	SetShade("絵演背景", EXTRAHEAVY);
	OnBG(100,"bg048_景明故郷オフィス_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawTransition("絵暗転", 600, 1000, 0, 100, Axl2, "cg/data/slide_05_00_0.png", true);
	Delete("絵暗転");
	FadeDelete("絵色白", 2000, false);
	FadeDelete("絵演背景", 4000, true);
	SoundPlay("@mbgm29",0,1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　…………………………………………………………。

　ここは…………

　？<k>　――――？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040010e238">
「……ん？
　湊斗くん、どうした」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040020a00">
「……部長!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　貴方は、二年前――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/mb04/0040030e226">
「あ、先輩ヒドイ。
　いくら起き抜けにはきっつい顔だからって
そんな露骨に驚いちゃ可哀想です」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040040a00">
「――」


{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040050e238">
「……酷いのはお前だ。
　単に寝惚けただけだろ、彼は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　寝惚けた？
　……夢を見ていた？

　い――いや。
　夢というなら、こちらが夢の筈。

　これは夢で、
　現実は<RUBY text="・・・">あちら</RUBY>だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040060a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　あちら？
　あちら――<k>あちら――――

　あちら？
　………………………………何の事だ？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040070e238">
「…………。
　どうも相当疲れてるみたいだなぁ」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040080a00">
「あ――いえ。
　申し訳ありません」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040090a00">
「本当に、寝惚けていたようです……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 5000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　ようやくの事、意識と<RUBY text="・・">現実</RUBY>とが繋がる。
　ここは会社だ――俺の勤めている小さな会社。

　窓の外はまだ明るい。堂々たる勤務時間中だ。
　にも拘わらず俺は寝こけていたらしい。それも随分
と深く。

　最後にこの光景を見たのが――つまり眠りに落ちた
時ということになるが――もう何年も前の事のような、
そんな不条理な感覚がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw部長.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040100e238">
「まぁ、仕方ないさ。家の方、色々大変なん
だろ？
　今日はあまり仕事もないし、もう上がって
くれていいぞ」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040110a00">
「いや、しかし」


{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040120e238">
「暇な時に無理されて、忙しい時に倒れられ
るとこっちが困る」


{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040130a00">
「…………」


{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/mb04/0040140e226">
「先輩、サラリーマンは身体が資本。
　体調管理も仕事の内です」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040150a00">
「……そうだな」


{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/mb04/0040160e226">
「だからわたしの昼寝も仕事の内なのですよ。
　フフフいま明かされる衝撃の真実」


{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/mb04/0040170e238">
「……こんな社員がいても回るんだよ、うち
の会社。
　だから気にするな」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040180a00">
「はい……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆外へ
//◆故郷の町
	SetVolume("@mbgm*", 1500, 0, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm22",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　家路を辿る。
　いつもより、少し早い時刻。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040190a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　歩き慣れた道。
　住み慣れた町。

　静かで穏やかな故郷。

　でも――そう。
　今は少しばかり問題がある。

　軍崩れの山賊団が現れて――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040200a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆湊斗家
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg050_湊斗家門前_02.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　郊外の屋敷。
　俺の暮らす家。

　生家ではない。
　けれど、ここには家族がいる。

　今は布団から起きられない妹。
　そして養母。

　俺の、掛け替えのない家族。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆統
	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【統】
<voice name="統" class="統" src="voice/mb04/0040210b46">
「おや？
　今日は早いね」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040220a00">
「――――」


{	FwC("cg/fw/fw統_笑い.png");}
//【統】
<voice name="統" class="統" src="voice/mb04/0040230b46">
「お帰り、景明」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040240a00">
「……はい。
　只今帰りました」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040250a00">
「統様」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夕空
	OnBG(5000,"bg002_空a_02.jpg");
	FadeBG(2000,true);
	DeleteStA(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　平穏な日々がここにあった。
　それはこれからも続いていく。

　きっと続いていく――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040260a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　――そう思うのに。
　どうしてか、俺はその思いが裏切られるのだと、

　既に知っていた。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――


//◆イベントＣＧ等を流して第五話の展開をコンパクトに表現
//◆で、山賊竜騎兵が統を斬ろうとするとこ
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	WaitKey(200);
	CreateTextureSP("絵回想１", 8000, Center, Middle, "cg/ev/ev128_病床の光_c03.jpg");
	CreateTextureSP("絵回想２", 8000, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");
	CreateTextureSP("絵回想３", 8000, Center, Middle, "cg/ev/ev136_戦闘解説ＶＳ首領編３_e.jpg");
	CreateTextureSP("絵回想４", 8000, Center, Middle, "cg/ev/ev128_病床の光_f03.jpg");
	CreateTextureSP("絵回想５", 8000, Center, Middle, "cg/ev/ev138_首領の最期_c.jpg");
	Fade("絵白転", 300, 150, null, true);

	Delete("絵回想５");
	Wait(50);
	Delete("絵回想４");
	Wait(50);
	Delete("絵回想３");
	Wait(50);
	Delete("絵回想２");
	Wait(50);

	Fade("絵白転", 400, 1000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg054_湊斗家祭殿b_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm34",0,1,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　―――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――
――――――――――――――――――――――――

　刹那、意識の<RUBY text="・・">飛躍</RUBY>を感じた。

　時間軸が錯乱する。
　ここは現在か。それとも過去か。未来か。

　いや――――落ち着け！
　現実を見ろ！

　目の前で繰り広げられている現実を見るのだ！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵
//◆統
//あきゅん「演出：なるべく過去と同じように。BGMも同様に。けど村正系の曲は避ける」
	SetVolume("@mbgm*", 5000, 1000, null);
//	StR(1000, @0, @0,"cg/st/st統_通常_私服.png");
//	FadeStR(300,true);
//	WaitKey(300);
//	DeleteStR(300,true);

	StL(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStL(300,true);

	WaitKey(300);

	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　ぽかんとした様子で地面に座り込んでいる養母。
　その傍らで――太刀を振りかざしている竜騎兵。

　山賊だ！
　山賊の武者が、今、養母を殺害しかけているッ!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040270a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　助け――助けねば。
　……どうやって!?

　武者を止められる力は武者だけだ。
　俺は……ただの生身の人間。

　止められない――
　止められないのか!?

　養母が殺されるのを見ているしかないというのか!?

　いや…………
　力はある！

　<RUBY text="・・・・">ある筈だ</RUBY>！
　俺は知っている。

　この時、この場に、養母を救う力は存在している。
　俺が手を伸ばせば、届くところに――――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音
//あきゅん「SE：ちょいとイメージと違うので別版が欲しい」
	CreateSE("SE01","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……あった！
　そう、これだ！

　途方もない力のうねり。
　指先が触れた金属から伝わってくる、武威の胎動。

　劒冑！
　あの竜騎兵と拮抗、いや遥かに凌ぐ力。

　これを使えば！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040280a00">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……しかし。
　どうしてか、俺は知っているのだ。

　これが途轍もなく恐ろしい代物である事を。
　そう――この劒冑の呼び掛けに応えたが最後。

　湊斗景明の人生は、地獄へ向かう――――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音
//あきゅん「SE：ちょいとイメージと違うので別版が欲しい」
	CreateSE("SE01","se特殊_雰囲気_共鳴01");//ダミー注意
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵フラッシュ白", 2000, false);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040290b40">
《何をもたもたしている！
　我が<RUBY text="あるじ">御堂</RUBY>よ！》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040300a00">
「……え？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆正宗天牛虫
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("絵演立", 1000, Center, Middle, "cg/st/3d正宗天牛虫_正面.png");
	Move("絵演立", 0, @0, @180, null, true);
	Fade("絵演立", 300, 1000, null, true);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040310b40">
《誓言を発し、この正宗を纏え！
　母の危機であろう！》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040320a00">
「あ……あぁ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……正宗？
　それが……俺を待っていた劒冑の<RUBY text="な">銘</RUBY>？

　――そう――だった、か？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040330b40">
《急ぐのだ御堂！
　誓言を！》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040340a00">
「誓言……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　そうだ。
　とにかく……急がねば。

　養母を救わねば。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//あきゅん「演出：うーん、ギャグ臭いかなぁ」
	SoundPlay("@mbgm04",0,1000,true);

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040350a00">
「鬼に逢うては……鬼を斬る……」


//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040360a00">
「仏に逢うては……仏を……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　――それは、
　善悪相殺の<RUBY text="ノロイ">呪戒</RUBY>。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040370a00">
「!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　駄目だ！
　この誓約を結んでは、決して――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 300, 0, null);

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040380b40">
《ええい、何を血迷っておる！
　そんな妄言を誰が教えた！》


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040390a00">
「……何？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040400b40">
《正宗は正義を貫徹する力！
　斬るべきは鬼、断つべきは悪！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040410b40">
《滅ぼすべきは邪悪のみ！
　それを誓うのだ！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　邪悪……だけ？

　…………それで良いのか？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040420b40">
《早う！》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040430a00">
「……世に鬼あれば鬼を断つ。
　世に悪あれば悪を断つ」


{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040440a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り……？」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040450b40">
《疑問符は余計だが諒承した！
　これより正宗は湊斗景明の刃たらん！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040460b40">
《さぁ、共に悪鬼を討とうぞ！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ガシーン。装甲
//◆正宗
//あきゅん「演出：ここは過去シーンとまったく同様にする」
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StC(1000, @0, @0,"cg/st/3d正宗_立ち_通常.png");
	FadeStC(0,true);
	Delete("絵演*");
	WaitKey(1000);
	FadeDelete("絵フラ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　俺は装甲を遂げた。
　何という――力か。

　地上のあらゆる野獣に後塵を拝さしめるであろう、
超越的暴力がここに存在する。
　しかも――清々しく爽快な力！

　これは悪を憎む力だ。
　<RUBY text="ごうりき">強力</RUBY>を振るって力弱き人々を苦しめる、そんな自惚
れた奴輩を、更に上回る暴威でもって叩き潰してやる
ための力なのだ。

{	SoundPlay("@mbgm10",0,1000,true);}
　まさに正義！
　その体現！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040470b40">
《如何にも！
　ゆけ、御堂!!》


{	FwR("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040480a00">
「応！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1250,null,false);

	EffectZoomadd(10000, 1000, 1000, "cg/ef/ef003_汎用移動.jpg", false);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	StC(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_瀕死.png");
	FadeStC(0,true);
	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　悪は今そこにいる。
　養母を殺そうとしている山賊の武者！

　彼はこちらを見て泡を食っている様子だった。
　馬鹿め！　自分だけが力の所有者だと思っていたの
だろう！

　自分だけが好き放題に暴力で人を害せるのだと信じ
込んでいたのだろう！
　その傲慢にいま報いをやる。

　悪の暴力は必ず正義の鉄槌の前に散るのだ！

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//◆ボイス「だぁいあぁーーー！」
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0040490b40">
《ＤＡＡＡＩＩＡＡＡＡＡＡＡＡＨＨＨＨ!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆突進
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	DrawDelete("黒幕１", 150, 100, "circle_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　敵は養母に向かって太刀を振り下ろしている。
　だが、それが届く前に、

　俺が奴を斬り伏せる――――<k>
　
{	SetVolume("@mbgm*", 100, 0, null);}
　その――――刹那。

　養母が俺を見たのに気付いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【統】
<voice name="統" class="統" src="voice/mb04/0040500b46">
「――――――――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



}

//◆選択：このまま斬る／……待て

..//ジャンプ指定
//◆このまま斬る　"mb04_004a.nss"
//◆……待て　"mb04_004b.nss"

//★選択肢シーン
scene mb04_004.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("このまま斬る","……待て");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆このまま斬る　"mb04_004a.nss"
				$GameName = "mb04_004a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆……待て　"mb04_004b.nss"
				$GameName = "mb04_004b.nss";
		}
	}
}