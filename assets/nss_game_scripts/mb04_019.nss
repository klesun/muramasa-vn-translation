//<continuation number="970">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_019.nss_MAIN
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
	#bg047_景明故郷町c_02=true;
	#bg003_荒れ野_02=true;
	#ev269_義清と姉_a=true;
	#bg063_普陀楽城内廊下_01=true;
	#ev269_義清と姉_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_020.nss";

}

scene mb04_019.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_018.nss"

//◆燃える町。bg049流用？
//◆銃声＆悲鳴
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町c_02.jpg");
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetNwC("cg/fw/nw六波羅兵士.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190010e308">
「花堂大尉！」


{	NwC("cg/fw/nw六波羅大尉.png");}
//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190020e027">
「浦安の進駐軍部隊は何処まで来た？」


{	NwC("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190030e308">
「既に津田沼を通過した模様です！」


{	NwC("cg/fw/nw六波羅大尉.png");}
//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190040e027">
「そうか……潮時だな。
　良し、物資の徴発は現時刻を以て終了する」


//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190050e027">
「後は放火に専念しろ。
　どうせ進駐軍に奪われる町だ。何一つ残す
必要はない」


{	NwC("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190060e308">
「相当数の市民が逃げ遅れると思われますが
……」


{	NwC("cg/fw/nw六波羅大尉.png");}
//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190070e027">
「構わん！
　市民も資源だ。生かしておいては敵に利用
されるのみ」


//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190080e027">
「いずれ<RUBY text="きた">来</RUBY>る攘夷の聖戦のため、災いの種は
少しでも摘んでおかねばなるまい！
　全て燃やせ！」


//【ｅｔｃ／花堂大尉】
<voice name="ｅｔｃ／花堂大尉" class="その他女声" src="voice/mb04/0190090e027">
「これは大義である!!」


{	NwC("cg/fw/nw六波羅兵士.png");}
//【ｅｔｃ／六波羅兵】
<voice name="ｅｔｃ／六波羅兵" class="その他男声" src="voice/mb04/0190100e308">
「はッ！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆もーえろよもえろーよー。
	ClearWaitAll(2000, 2000);

//◆丘の上。bg003流用？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――その様子を、小高い丘の上から見下ろした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190110a02">
「あいつら……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190120b40">
《おのれ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　六波羅だ。
　その軍装。その紋章。何処をどう見ても六波羅だが
何処を見なくてもその<RUBY text="・・・・">やりくち</RUBY>だけで奴らだとわかる。

　物を奪って、
　火をかけて、
　人を殺戮している！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190130b40">
《この正宗の目前でよくも暴れた。
　心鉄が煮え滾るわ！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190140b40">
《これを見過ごし、奴らに明日の暁を拝ませ
てやろうなどとはよもや言うまいな!?
　御堂!!》


{	FwC("cg/fw/fw一条_怒りa.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190150a02">
「訊くんじゃねえ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆装甲フォーム
	StR(1000, @0, @0,"cg/st/st一条_装甲_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060a]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190160a02">
「世に鬼あれば鬼を断つ。
　世に悪あれば悪を断つ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵演装甲", 3000);
	StR(1000, @0, @0,"cg/st/st一条_装甲_制服b.png");
	FadeStR(0,true);
	FadeDelete("絵演装甲", 300, true);

	SetFwC("cg/fw/fw一条_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060b]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190170a02">
「ツルギの理――」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆銃声一発
//◆視界が回って、ばったり。
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_銃器_拳銃発砲01");
	CreateSE("SE01b","se人体_衝撃_転倒03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色血", 5000, "#CC0000");
	DeleteStA(0,true);
	FadeDelete("絵色血", 1000, true);

	CreateEffect("絵演震", 3000, Center, Middle, 1024, 576, "Plain");
	Request("絵演震",Passive);
	Fade("絵演震", 0, 500, null, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Shake("絵演震", 600, 0, 6, 0, 0, 1000, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　…………え？

　なんだ、これ。
　あたし……倒れた？

　なんで。
　
　……脇腹が熱い。

{	CreateSE("SE01","se人体_血_たれる01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　手で触れると、べとりとした感触。
　指と指の間に<RUBY text="まと">纏</RUBY>いつく重い液体。

　最近は特に見ることの多い、これ。
　
　今も勢い良く流出している。
　出所を探った指先が沈む、その小さな陥没から。

　小さく、弾けた肉の穴。

　――――撃たれた？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◆顔グラなし
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190180b21">
「邪魔しないで欲しいな。
　大鳥中将の命が下ったんだ。……関東中央
はひとまずＧＨＱと銀星号の好きにさせる」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190190b21">
「全部隊は可能な限り物資を確保して会津へ
撤収。
　神州奪回の大戦に備える……とね」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190200b21">
「まぁ、実の所そんなのはどうでもいいんだ
けれど」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190210b40">
《何者だ！
　おのれ、慮外な――》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵演震");

//◆義清
//◆姉を背負い、手に赤子大の白い包み（どす黒い血の滲みあり）と拳銃

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev269_義清と姉_a.jpg");
	Fade("絵背景100", 1000, 1000, null, true);

	Wait(1000);
	CreateVOICE("一条","mb04/0190220a02");
	CreateVOICE("正宗","mb04/0190230b40");

	SetBacklog("「…………!?」", "voice/mb04/0190220a02", 一条);
	SetBacklog("《――――!?》", "voice/mb04/0190230b40", 正宗);

	Delete("@text0080*");

	MusicStart("一条",0,1000,0,1000,null,false);
	MusicStart("正宗",0,1000,0,1000,null,false);

	SetFwR("cg/fw/fw一条_剣呑.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//◆（一条）（正宗）
「…………!?」
《――――!?》

</PRE>
	SetTextEXR();
	Request("@text0090", NoLog);
	TypeBeginRIO();//―――――――――――――――――――――――――――――


/*
//◆声用一時退避
//◆同時発声

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190220a02">
「…………!?」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190230b40">
《――――!?》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　辛うじて頭だけ起こして、見えたのは――大人びた
語り口とはまるで釣り合わない年頃の少年だった。
　彼は、一人ではない。

　小柄な女性を背負っている。
　少年ほどではないにしても、やはりまだ若いようだ。

　そして、手には拳銃。

　……総じて奇怪だった。
　何か、おかしな芸人のように見えた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190240b21">
「やあ」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　涼やかに笑いつつ、そいつが片手を挙げる。
　その所作に合わせて、力なく背負われている女性も
垂れ下がった腕をぶらんと揺らした。

　よほどに弱ってでもいるのか、女性は項垂れたまま
顔を起こす様子もない。
　けれど、その瞳だけは異様な力をもって、髪の隙間
からあたしを見下ろしていた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190250a02">
「……おまえ……」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190260b21">
「知らないか。
　知らないよね」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　くつくつと声を立てて微笑む。
　少女じみた風貌にその微笑はよく映えた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190270b21">
「でも私は貴方を知ってる。
　会ったのは一度だけ。けど目付きが何だか
印象的だったもの。男の方は男の方でむやみ
やたらに雰囲気が暗かったし」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190280b21">
「それでも入道様が何も言わなかったらすぐ
に忘れたろうね、きっと。
　そうだよ？　あの御方は気付いてた。今更
言うことでもないんだろうけど」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190290b21">
「貴方たちが敵だって最初から知ってたんだ。
　ああ……なのに。あの御方は何事も楽しま
ないと気が済まないから。手早く始末なされ
ば良かったのに。手管を妙に凝るものだから」


{	FwR("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190300b21">
「返り討ちに遭ってしまわれた。
　あの日。あの晩……もうひと遊びじゃ、と
お出掛けになった入道様はそれきり戻られな
かった。どうしてお止めしなかったんだろう」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190310b21">
「違う……それよりも前だ。
　どうして私は、貴方と会ったその時に斬り
捨ててしまわなかったんだ？」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190320b21">
「貴方。そう<RUBY text="・・">貴方</RUBY>だ。貴方だろう？
　男の方じゃない」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190330b21">
「入道様はどうとも仰せにならなかったけど。
でも私にはわかった。入道様のお気に召した
のは、<RUBY text="・・・">戯れ心</RUBY>を起こされたのは、貴方のほう
だって……ふふっ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190340b21">
「だから、貴方だ。あの月の翳る夜、入道様
のお相手を務めたのは貴方に違いない。
　入道様は貴方と遊び、戯れが過ぎて冥途へ
落ちてしまわれたに違いない」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190350b21">
「そうでしょう……？
　そう。そうだ。やっぱりそうだ」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190360b21">
「貴方なんだ。貴方が入道様を殺した。
　私は、知ってる……」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190370b40">
《……何だ、此奴。
　狂い人か？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　正宗が苦々しげに呻く。
　無理もない。少年の発する言葉は流暢だったけれど
も、内容はどこか支離滅裂だ。

　でも、あたしにはわかった。
　彼の言う事が通じていた。

　彼が誰なのか思い出した。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。普陀楽城の義清
//回想シーンまとめ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 6000, Center, Middle, "cg/bg/bg063_普陀楽城内廊下_01.jpg");
	StR(7000, @0, @0,"cg/st/st義清_通常_私服.png");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	FadeStA(0,true);
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 300, 200, null, true);

	WaitKey(500);

	Fade("絵白転", 400, 1000, null, true);
//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服a.png");
//	FadeStA(0,true);
	FadeStA(0,true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);
	SoundPlay("@mbgm24",0,1000,true);

	SetFwR("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190380a02">
「おまえ……
　あの豚坊主の」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190390b40">
《ぬ？》


{	FwR("cg/fw/fw一条_怒りc.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190400a02">
「遊佐童心の……小姓か」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190410b21">
「そうだよ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　思い出したが名は知らない、その少年が破顔する。
　嬉しそうだった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw義清_狂笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190420b21">
「良かった。すぐにわかってもらえて。
　せっかくこうして会いに来たのに、誰だか
思い出してもくれないんじゃ、あまりに悲し
くて仕方がないもの」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190430b21">
「そう、童心様のお側に控えていた私だよ。
　改一媛さん。……本名ではないのだろうけ
れど」


{	FwR("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190440a02">
「……っ……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　名を云おうとしたものの、喉から洩れたのはいがら
っぽい咳だけだった。
　腹部に感じる熱さから、何か不快なものが口元まで
せり上がって来つつある。

　だが差し当たって、返答にかまけるより優先すべき
事がありそうだった。
　……情報がこれだけ揃えば状況も限りなく明白で、
むしろ誤解する方が難しい。

　遊佐童心の遺臣が訪れて、あたしに銃をぶっ放した。
　つまり、その目的は、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190450b40">
《仇討ちにでも来よったか》


{	FwR("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190460b21">
「仇討ち？」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　嘲る声音で告げる正宗に、少年は鸚鵡返しする。
　仇討ち。更にもう一度その言葉を口の中で転がして
から、少年は小鳥めいた仕草で含み笑った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190470b21">
「そこまで考えてなかったなぁ」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190480b40">
《何をォ……？》


{	FwR("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190490b21">
「私はただ、もう一度貴方に会いたくて。
　会いたくて会いたくて仕方なかっただけで」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190500b21">
「ほかのことなんて考えられなかった。
　だって……それはそうじゃないか？」


{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190510b21">
「私たちをこんなにしてくれた人だもの！
　何を置いても会いたいさ！　顔を見たい！
側に寄りたい――」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190520b21">
「話の一つもしたいって、思うに決まってる
じゃないかっ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆発砲
//◆正宗、ガード。かちーん。
	CreateSE("SE01","se戦闘_銃器_跳弾02");
	CreateColorSP("絵色白", 5000, "#FFFFFF");

	Delete("絵背景100");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(1);
	FadeDelete("絵色白", 300, false);

	Wait(1000);

	SetFwC("cg/fw/fw一条_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190530a02">
「――ッ……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　あたしの眉間を正確に貫くはずだった弾道は、劒冑
の妨害で中途に断たれていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190540b21">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190550b40">
《これが<RUBY text="・">話</RUBY>か》


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190560b21">
「そうだよ。
　邪魔はしないでくれないかな」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190570b40">
《……筋違いだ。糞戯けめ。
　逆恨みと云っても良いがな》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190580b40">
《<RUBY text="いっぱし">一端</RUBY>に忠臣面などする前に、おのれの主が
してきた所業を顧みてみるがいい》


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190590b21">
「……」


{	FwC("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190600b40">
《ふん。他の誰よりもおのれが詳しいのでは
ないか？　側に仕えて見てきたのであろう？
　吾らも知らぬ奴の浅ましき振舞いの数々を
おのれは見届けたのであろうが！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190610b40">
《奴の末路はその報いよ！
　<RUBY text="てんもうかいかい">天網恢々</RUBY>、<RUBY text="そ">疎</RUBY>にして洩らさず!!》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190620b40">
《かの坊主めは形も留めぬ無惨な最期を遂げ
よったが、それこそ相応の死に様であったの
だ！　クハーハハハハァーー！
　道理をわきまえるがいいわ<RUBY text="こわっぱ">小童</RUBY>め》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190630b40">
《復讐の義など悪党には立つまいぞ！
　厚顔無恥も甚だしい!!》


{	FwC("cg/fw/fw義清_不安.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190640b21">
「――――」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　……少年は<RUBY text="うつむ">俯</RUBY>いている。
　正宗の語気に押されたように見えた。

　……肩が震えている。
　泣いているように見えた。

　――違う。
　そうじゃない。

　正宗は気付いているだろうか。
　いや。見えていないだろう……倒れているあたしに
しかそれは見えていないのだ。

　少年は笑っている。
　傷ついてもいないし泣いてもいない。

　楽しそうに嗤っているのだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190650b40">
《――この正宗は神罰の運び手なり。
　正しく素早く確実にを合言葉とし、悪人共
のお手元へ品質の高い天誅をお届けする<RUBY text="ごうぶく">降伏</RUBY>
の使者！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190660b40">
《罪に死罰を！　悪に死罰を！
　<RUBY text="てんどうしょうり">天道正理</RUBY>ここに在り！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190670b40">
《我が刃は一点の曇りとて無し。
　小童め。よくも正義に仇を為したな》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190680b40">
《筋違いの憤懣を振りかざし、吾の仕手を傷
つけるとは許し難い。
　その罪犯の報いを受けよ！》


//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190690b40">
《同じだけの傷をくれてやる！
　この正宗は少年法とか知らぬのだ。未成年
だからどうした。社会に養われておる身なら
尚のこと襟を正して粛然と生きるがいい――》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆牙を剥く正宗
//◆包みを投げつける義清
//◆ばしゃっ。
//◆画面黒
	CreateSE("SE01","se戦闘_正宗_隠剣六本骨爪02");
	CreateSE("SE01b","se人体_動作_外套纏う01");
	CreateSE("SE01c","se擬音_粘着質_ゲル潰れる04");

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);

	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("絵色黒", 5000, "#000000");
	MusicStart("SE01c",0,1000,0,1200,null,false);

	Wait(500);

	SetFwC("cg/fw/fw正宗天牛虫_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190700b40">
《うぬっ!?》


{	FwC("cg/fw/fw一条_苦痛.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190710a02">
「っ……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　何だ？
　……何かを投げつけられた。

　拳銃を持つ側とは反対の手に抱えていた包み。
　その中身を撒いたらしい。

　何か――液状の――
　いや、固形物も混じっている。

　硬いものと柔らかいもの。
　硬い何かの一つは、頬の上に落ちてきていた。

　手に取る。
　白く、細い。

{	CreateSE("SE02","se擬音_粘着質_ゲル潰れる04");
	MusicStart("SE02",0,1000,0,1000,null,false);}
　少し力を込めただけで、ぺしりと砕けた。
　脆い。

　それには液状物と、柔らかい固形物もまとわりつい
ている。
　液体は<RUBY text="・・・・">どろどろ</RUBY>と、軟体は<RUBY text="・・・・・・">べちょべちょ</RUBY>としていた。

　これは何だろう。

　……きっと、少し考えてみればわかる。
　けれどどうしてか、考えたくない。

　理解したくない。
　これが何かなんて、知りたくない。

　だって。
　これはどう見ても、<K>　　　の、<K>　　だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血と肉と骨。死産した赤子のイメージ。
//あきゅん「演出：追加素材？　イメージ不明」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	CreateColorSP("絵色血", 6000, "#CC0000");
	CreateTextureSP("絵背景100", 5100, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");


	FadeDelete("絵色血", $残時間, false);

	SetFwC("cg/fw/fw義清_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190720b21">
「ふふふ」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190730b21">
「ふふっ、あはは」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190740b21">
「それはね……」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190750b21">
「私の甥」


{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190760b21">
「入道様の<RUBY text="おこ">御子</RUBY>」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190770b21">
「<RUBY text="・・">この</RUBY>姉さんの」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190780b21">
「残念ながら……
　生まれ落ちた時にはもう、そんな姿だった
けれど」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆義清と姉
//◆姉の顔を出す。半腐乱中。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg003_荒れ野_02.jpg");
//	StR(1000, @0, @0,"cg/st/st義清姉付_通常_私服b.png");
//	FadeStR(0,true);
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev269_義清と姉_b.jpg");
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);
	SoundPlay("@mbgm28",0,1000,true);

	SetFwR("cg/fw/fw義清_狂笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190790b21">
「あはははははははははっ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190800b21">
「さあ笑って。
　笑ってよ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190810b21">
「これが貴方の言う、悪党の無惨な最期だ。
　相応の末路とやらだ」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190820b21">
「入道様は粉々に斬り刻まれてしまわれた。
　<RUBY text="そばめ">側女</RUBY>だった姉さんは、それを見るや狂して
しまった」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190830b21">
「とても耐えられなかったに違いない。
　大恩ある入道様――子供のような入道様！
困らされてばかりだった入道様、けど心から
お慕いしていた入道様が……あんなお姿に!!」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190840b21">
「気が触れた姉さんは、臨月も近かった身で、
階段から転げ落ちてしまった。
　それで、そうして……これだ！」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190860b21">
「貴方のしたことだ!!」


{	FwR("cg/fw/fw正宗天牛虫_通常.png");}
//【正宗】
<voice name="正宗" class="正宗" src="voice/mb04/0190870b40">
《――――》


{	FwR("cg/fw/fw一条_悲哀.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190880a02">
「――――」


{	FwR("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190890b21">
「入道様を殺し、私の甥と姉も死なせた。
　どうして？　ああ、天罰。そう言っていた
ね……入道様が悪いことをしたからだと」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190900b21">
「でもおかしいな。わからない。
　なら姉さんは一体、何をしたんだろう」

//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190910b21">
「生まれてもいなかった甥は、何をしたんだ
ろう。
　なぜ<RUBY text="・・・">貴方に</RUBY>裁かれてしまったんだろう？」

//おがみ：シナリオ修正
//「生まれる以前に罰せられなくてはならない
//理由というのは何だろう……。
//　わからない。わからないな」
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190920b21">
「生まれる前に殺されなくてはならない理由
というのは何だろう……。
　わからない。わからないな」

{	FwR("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190930b21">
「でも仕方ない。もう終わってしまったんだ。
　入道様、姉、甥。私のすべては貴方に奪わ
れてしまった」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190940b21">
「貴方のものだ。
　すべて貴方のものなんだ」


//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190950b21">
「仕方ない。
　それが既に事実なら受け入れるとも」

{	FwR("cg/fw/fw義清_狂笑.png");}
//【義清】
<voice name="義清" class="義清" src="voice/mb04/0190960b21">
「すべて貴方に差し上げよう！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　そう言って。
　少年はあたしの傍らへ屈み込み。

{	CreateSE("SE01","se擬音_粘着質_ゲル潰れる01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　<RUBY text="・・">肉片</RUBY>を一つ、あたしの口へ突き込んだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSPmul("絵色100", 1500, "RED");
	FadeDelete("絵色100", 500, true);

	SetNwC("cg/fw/nw一条.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0190970a02">
「……ッッ……!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　透き通るかに美しい、少年の笑顔。
　腐りかけた女性のどす黒い眼差し。
　泥じみた肉塊。

　あたしは死せる母に見下ろされながら、
　生まれることのなかった　　に口付けている。

　汚穢。
　無垢。
　究極的に相反すると思われた両者が混淆して在った。

　――ああ。
　
　この味には、覚えがある。

　これは罪の味。

　<RUBY text="・・・・・・">正義を犯した</RUBY>罪の味だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_020.nss"