//<continuation number="740">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_008vs.nss_MAIN
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
	#bg022_山林a_02=true;
	#bg004_鄙びた村a_01=true;
	#bg014_鎌倉繁華街_02=true;
	#ev951_小太郎装甲_a=true;
	#ev951_小太郎装甲_c=true;



	//▼ルートフラグ、選択肢、次のGameName
	#av_月山従三位=true;

	$PreGameName = $GameName;

	$GameName = "ma02_009vs.nss";

}

scene ma02_008vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_007.nss"


//◆森
	PrintBG("上背景", 30000);

	OnBG(100,"bg022_山林a_02.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm32",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……結局、少女を森の出口まで送り届けてきたため、
再び奥深くまで来た時にはもう日が大きく傾ぎ、辺り
は黄昏模様となっていた。
　まだ物が見えなくなる程ではないが。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0,@0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0010a00">
「急ぐ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0020a01">
《ええ》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　闇夜の中であろうと劔冑の眼が利かなくなることは
ないにせよ、しかしやはり昼間とは勝手が異なる。
　探索の困難と奇襲の危険が増すのは否めなかった。
できることなら今の内に始末をつけたい。

　昼の代官との戦闘からまだ四、五時間とは経過して
いない。代官が態勢を立て直すには全く足りない筈だ。
　仮に彼がよほど心身の活力に恵まれていたとしても、
ようやくこれから動き出そうかというところだろう。

　余裕は期待できないが、手遅れではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0030a01">
《……ねえ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0040a00">
「何か」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0050a01">
《思ったんだけど。
　やっぱりさっきの犬は変じゃないかしら》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0060a00">
「見るからにな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　あの体躯。狼の末裔か、あるいはそれそのものか。
　既に絶滅したというのが通説だが、生き残りがまだ
いないとも限らない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0070a01">
《そうじゃなくて……いえ、そうなんだけど。
　あれだけの身体、餌がいくらあってもそう
そう足りないはず。けれど殊更、飢えている
ようには見えなかったでしょう？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0080a00">
「確かに」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　肥えているというほどではなかったが。
　痩せさらばえてはいなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0090a01">
《それに、飢えていないのなら、どうして人
を襲ったのかしら》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　山犬にせよ狼にせよ、凶暴性の強い動物だとは伝え
聞く。縄張りを守るために争うことはあるだろう。
　が……彼らもイヌ科の多例から外れず、集団行動を
基本の原則としている筈である。

　それが果たして、飢えてもいない時に、単独で人間
のように厄介な相手を襲うだろうか。
　なかなかに首肯し難いものがあった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0110a01">
《もしかして、と思うのだけど》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0120a00">
「ああ」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0130a01">
《あれは、誰かが――<?>
{	Wait(300);
	SetVolume("@mbgm*", 100, 0, null);}
上ッ!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);

	Move("@StR*", 150, @+150, @+30, Axl1, false);
	DeleteStR(150,false);

//◆攻撃
//◆景明、避け
	CreateColorEXadd("絵色100", 1000, "White");
	OnSE("se戦闘_攻撃_振る02",1000);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 50, 0, 600, 100, Dxl1, "cg/data/crow_01_00_0.png", true);
	DrawTransition("絵色100", 300, 600, 0, 100, Axl1, "cg/data/crow_01_00_0.png", true);
	Delete("絵色100");

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
　……爪？
　何の――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃演出
//◆避けっ
	OnSE("se戦闘_攻撃_振る02",1000);
	CreateColorEXadd("絵色100", 100, "White");
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);
	DrawTransition("絵色100", 300, 600, 0, 100, Axl1, "cg/data/crow_02_00_0.png", true);
	Delete("絵色100");

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);


	Shake_Delete(2000,300,true,"cg/bg/bg022_山林a_02.jpg");
	OnSE("se人体_動作_後ずさり01",1000);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0140a00">
「――猿!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0150a01">
《いいえ――！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃演出
//◆村正蜘蛛糸
//◆きんかんがきーん。
	OnSE("se戦闘_攻撃_振る02",1000);
	CreateColorEXadd("絵色100", 1500, "White");
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);

//嶋：SE素早く吐く
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);
	CreateTextureEX("絵ef100", 2000, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	CreateTextureEXadd("絵ef200", 2100, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	SetBlur("絵ef200", true, 3, 500, 100, false);

	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, true);

	Zoom("絵ef200", 500, 2000, 2000, Dxl1, false);
	Fade("絵ef200", 500, 0, null, true);
	Delete("絵色100");

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");
	Delete("絵ef200");

	Shake_Delete(2000,700,false,"cg/bg/bg022_山林a_02.jpg");

	Fade("フラッシュ白",1000,0,Dxl1,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0109]
　猿――否。
　その鈍い光沢。鋼鉄の芳香！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆月山従三位・猿猴
//嶋：初登場演出（ＣｕｔＩｎ？）
/*
	StL(1000, @100,@0,"cg/st/3d月山猿_俯瞰.png");

	Move("@StL*", 300, @-100, @0, Dxl1, false);
	FadeStL(300,true);
*/

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0160a00">
「……劔冑！」

{	NwC("cg/fw/nwその他.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0170b35">
「如何にも。
　その<RUBY text="ましら">猿</RUBY>は<RUBY text="がっさんじゅさんみ">月山従三位</RUBY>と申す……我が一族、
伝来の一品よ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小太郎
	StC(1000, @0,@0,"cg/st/st小太郎_通常_私服.png");
	FadeStC(500,true);

	Wait(500);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0180a00">
「……ッ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　音もなく、木陰から現れた若い女。
　しかし――今、聞こえた声は紛れもなく老爺のもの。

　もう一人、どこかに……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw小太郎_自嘲.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0190b35">
「ほっほっ。如何した？」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0200a00">
「……!?」


{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0210b35">
「挨拶としては、いささか非礼であったかな。
　どうか大目に見てやってくれい。儂も劔冑
も山育ちゆえ……粗野な振舞いが染み付いて
しまっておるで……」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0220a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　妖艶と称するのがふさわしい美女の唇から紡がれる、
<RUBY text="しわが">嗄</RUBY>れた声音。
　異様、というほかはない情景だった。およそ現実感
というものが欠落している。

　――狐狸、妖怪の類か。
　そのような愚考さえ思い浮かんだ。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0230a00">
「……御老人、と呼べば宜しかろうか」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0240b35">
「ほほ。見ての通り、枯れ果てた老いぼれよ。
　下手な気遣いは無用。この歳になるともう、
若いと世辞を言われても素直に喜べぬでのう」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　ほっほっ、と歳経た声で笑う妙齢の女。
　これが質の悪い幻覚でないのなら、何なのか。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――



	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0250a00">
「……先の<RUBY text="・・">戯れ</RUBY>は挨拶と承った。
　然らば御用向きも自ずと知れるが、左様に
受け止めて差し支えはありますまいか？」


{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0260b35">
「なかろうのう。なかろうのう。
　この老体、推して参ったは雇い主たる代官
長坂を守らんが為。となれば無念かな、主と
茶を飲み交わす仲にはなれまいて……警官殿」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0270a00">
「……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　代官の<RUBY text="てか">手下</RUBY>の者――それは察せられていた。遭遇は
想定の内だった。劔冑を連れて来るというのは想定外
だったにせよ。
　だが。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0280a00">
「代官の前で警察を称した覚えはない。
　そもそもこの素顔も晒していない筈」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0290a00">
「しかし御老人、貴方は迷わず、俺を襲って
来られた」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0300b35">
「なに、教えてくれる者がおったまでよ」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0310a00">
「……それは」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想・村と雪車町
//◆回想・鎌倉の通りと雪車町（第一話）
//◆森

	SetVolume("@mbgm*", 300, 300, null);


	CreateColorEX("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);

	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");

	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雪車町_通常_私服.png");
	CreateTextureSP("絵回想300", 2100, 106, InBottom, "cg/st/st景明_通常_私服.png");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");

	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

	Fade("フラッシュ白",0,1000,null,true);
	OnSE("se擬音_フラッシュバック01",1000);

	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_02.jpg");
	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雪車町_通常_私服.png");

	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵回想*");
	Delete("Memory_cover");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetVolume("@mbgm*", 500, 1000, null);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0320a00">
「杖を携えた筋者か。
　確か……雪車町一蔵と云う」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0330b35">
「主とは知己のようだの。
　因縁でもあるのかね？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0340a00">
「道で行き会った程度の縁。
　しかし、このような場所で再会する不思議
が気には掛かっていた……彼も代官の協力者
なのか」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0350b35">
「小器用な男での。重宝しておる。
　ＧＨＱと<RUBY text="パイプ">接点</RUBY>を持つというだけでも心強い。
本人は小間使いなどと言うておるが、何の、
味方につけて役立つのはそういう者よ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0360a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　成程。
　あの男が代官とＧＨＱの橋渡し役。とすれば、先刻
の村長宅来訪は大鳥中尉との交渉のためか。

　そしてすぐに失敗し、代官のもとへ舞い戻った。
　……そんなところだろう。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0370a00">
「彼は今、何処に……？」

{	FwR("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0380b35">
「さあて？　何処かのう。
　忙しい男だて……」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0390a00">
「……」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0400b35">
「ほっ、ほっ。
　周囲に気を散らすのは結構だがの……儂の
ことも忘れんでおくれ。それはちと寂しい」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0410b35">
「折角、楽しみにしておったのだからのう」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0420a00">
「……とは？」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0430b35">
「哀れな村の衆を嬲って回る遊びにも、ちと
飽いておった。歯応えというものがな、どう
してもの。
　いわば髀肉をかこっておったのよ。ほっ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0440a00">
「…………。
　ひとつお伺いしておくが、代官に加担する
理由は。よもや、その遊びが目的と言われる
か」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0450b35">
「まさか。そこまで暇ではない。
　暇であればよかったがのう」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0460a00">
「……」

{	FwR("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0470b35">
「金よ。世知辛い話だが、金が要るのよ。
　我が一族はとある名門に仕えておったのだ
が、この家がしばらく前に世渡りを誤っての。
廃絶の憂き目に遭ってしもうた」

{	FwR("cg/fw/fw小太郎_警戒.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0480b35">
「煽りを食って身分から収入まで失った我ら
に残されたのは、父祖の地と云えば聞こえは
いいが、雑穀もろくに実らぬ狭い山間の所領
のみ。ほっ、枯死を待つばかりであったよ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0490a00">
「……士籍を逐われたと。
　ならば、その劔冑は」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0500b35">
「むろん、没収されるところであったがな。
つてを頼って御上の慈悲を請い、どうにか見
逃してもろうた。もっとも……そのすぐ後で
ＧＨＱの劔冑狩りに掛かり、水泡に帰したが」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0510a00">
「……？」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0520b35">
「そこへ現れたのがかの男、雪車町一蔵での。
　<RUBY text="やま">鉱山</RUBY>掘りで荒稼ぎしようとしている男の話
を儂に教えた上、協力するならＧＨＱに手を
回して劔冑を取り戻そうと請合ってくれてな」

{	FwR("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0530b35">
「儂が飛びつかぬはずもあるまい？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0540a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白", 2500, "WHITE");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");

	Fade("フラッシュ白",0,1000,null,true);
//	OnSE("se擬音_フラッシュバック01",1000);
//	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_02.jpg");
	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雪車町_通常_私服.png");

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……妙だ。
　
　一抹の疑念を、俺は看過しかねた。

　雪車町という男、<RUBY text="・・・・・・・・・・・">積極的に動き過ぎている</RUBY>。
　幕府御雇組に草鞋を脱ぐ一方、進駐軍にも顔を売り
両者の橋渡し役を務める、そういう人物がいることに
不思議はない。おそらくは、賢い世渡りの一つだ。

　しかしそういう、一部社会で非常に重宝する人間は、
他人に求められ<RUBY text="・・・・">使われる</RUBY>ものだ。自分から売り込んで
回ったりはしない。わざわざそんなことをせずとも、
軽い仕事と高い報酬の組み合わせが足繁く通ってくる。

　聞いた話を信じるならば、だが。雪車町の<RUBY text="アクティブ">能動的</RUBY>な
行動はやや不審だった。
　<RUBY text="ろくはら">国内権力</RUBY>と<RUBY text="ＧＨＱ">国外権力</RUBY>の仲介者という気楽な立場には
そぐわない。

　加えて、劔冑の返却を手配したという話もまた疑念
を呼ぶ。
　ＧＨＱは大和の正規軍――現在は即ち六波羅――を
除いて劔冑の所持を禁じ、没収する措置を取っている。

　そうして没収された劔冑の多くは、ただ死蔵されて
いるという。言語上あるいは体質の問題によりＧＨＱ
士官が用いるには不都合が多いため、利用価値を認め
られていないようだ。しかしそれでも、劔冑は劔冑。

　一介の連絡役の要望で簡単に持ち出せるとはどうも
信じ難かった。何がしかの<RUBY text="・">裏</RUBY>があるとしか思えない。
　……そんな俺の疑念をよそに、目前の怪人は説明を
締めくくる。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵回想*");
	Delete("Memory_cover");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0550b35">
「とまあ、そういう次第でな。
　一族を食わすためには代官の目論見を成就
せしめねばならん。である以上、代官の敵は
儂の敵、ここで会ったが百年目となるわけよ」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0560a00">
「……御事情は理解した。
　その為に、この村を犠牲にするもやむ無し
というお考えか」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0570b35">
「うん？　何ぞ、つまらんことを言わせたい
のかの。弱肉強食だの、どうのこうのと。
　たっての要望とあらば口にせんではないが、
言う方も聞く方も恥ずかしくはないかね？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0580a00">
「……全くに」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0590b35">
「ほっほっ。
　そのようなことはどうでも良かろうて」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0600b35">
「湊斗景明殿……で、確かかな？
　さぁ、そろそろそちらの蜘蛛、村正の<RUBY text="はあじ">刃味</RUBY>
を儂に味わわせてはくれぬかね？」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0610a00">
「！」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0620a01">
《――――》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……此の者。
　ここでは誰にも話していない、村正のことまで。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0630a00">
「御老人……
　いささか、知り過ぎてはいまいか？」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0640b35">
「くふっ」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0650a00">
「……」

{	FwR("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0660b35">
「この先は――太刀打にて仕ろう！
　月山ッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆月山・猿
//◆バリーン。月山猿、鎧パーツに分離
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se特殊_鎧_装着03",1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	DeleteStC(0,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");



	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0670a00">
「……っ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆小太郎、胸の前で両手を重ねる。触れないように
//◆隙間を空けて。左手を上、右手を下。巴図を模す

//嶋：本番きたら、装甲演出


	CreateTextureEX("絵ＥＶ", 4110, Center, Middle, "cg/ev/ev951_小太郎装甲_a.jpg");
	Zoom("絵ＥＶ", 0, 1500, 1500, null, true);
	SetBlur("絵ＥＶ", true, 2, 300, 100, false);

	OnSE("se特殊_鎧_装着01",1000);
	OnSE("se特殊_鎧_装着04",1000);
	Zoom("絵ＥＶ", 1600, 1000, 1000, Dxl2, false);
	Fade("絵ＥＶ", 1600, 1000, null, true);

	Wait(500);

	SoundPlay("@mbgm08",0,1000,true);

	SetFwL("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0680b35">
「迷いの六界、地獄・餓鬼・畜生・阿修羅・
人間・天人、いざ行かん――」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

/*
//◆両手を左右に広げる。指を上へ立てつつ
	StC(1000, @0,@0,"cg/st/st小太郎_装甲_私服b.png");
	FadeStC(300,true);
*/
	OnSE("se戦闘_動作_突進01",1000);
	EffectZoomadd(10000, 500, 100, "cg/ev/ev951_小太郎装甲_a.jpg", true);

	SetFwL("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0690b35">
「悟りの四界、<RUBY text="しょうもん">声聞</RUBY>・縁覚・菩薩に仏、いざ
行かん……
　死して生あり生して死あり、死とは生なり
生とは死なり、死して十界生して十界！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ガシーン
//◆武者・月山従三位
	#av_月山従三位=true;

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	CreateTextureEX("絵ＥＶ２", 4110, Center, Middle, "cg/ev/ev951_小太郎装甲_c.jpg");
	CreateTextureEX("絵大ＥＶ３", 4110, -700, -575, "cg/ev/resize/ev951_小太郎装甲_c_l.jpg");
	SetBlur("絵ＥＶ２", true, 1, 500, 200, false);

	OnSE("se特殊_鎧_装着02",1000);

	Fade("フラッシュ白",1000,1000,null,false);

	Zoom("絵ＥＶ*", 1000, 1500, 1500, Axl2, true);

	Fade("絵ＥＶ２", 0, 1000, null, true);
	Fade("絵大ＥＶ３", 0, 1000, null, true);

	Fade("フラッシュ白",500,0,null,false);
	Move("絵大ＥＶ３", 2500, @0, @575, Axl3, false);
	Wait(2200);
	Fade("フラッシュ白",200,1000,null,true);

	Wait(50);
	Delete("絵大ＥＶ３");

	OnSE("se特殊_鎧_装着03",1000);
	Zoom("絵ＥＶ*", 2000, 1000, 1000, Dxl2, false);
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	Wait(1500);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵ＥＶ*");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林a_02.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

//嶋：アニメ挿入予定
//	DeleteStC(0,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


//◆景明
//◆村正、鎧パーツに分離
//◆左手で顔を覆う。片目は覗く

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);

	StC(1000, @0,@0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(500,true);

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0695a00">
「鬼に逢うては鬼を斬る。
　仏に逢うては仏を斬る」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreateColorEXadd("絵色100", 1500, "WHITE");

	OnSE("se特殊_鎧_装着05",1000);

	Fade("絵色100", 100, 1000, null, true);
	StC(1000, @0,@0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);

	FadeDelete("絵色100", 500, true);


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0700a00">
「ツルギの<RUBY text="ことわり">理</RUBY>ここに在り」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者・三世右衛門尉村正

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	OnSE("se特殊_鎧_装着04",1000);
	OnSE("se特殊_鎧_装着02",1000);
	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	Wait(500);

	Fade("フラッシュ白",2000,0,null,true);
	Delete("フラッシュ白");

	Wait(1500);

//◆村正と月山

	CreateWindow("ウィンドウ上", 15000, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureEX("ウィンドウ上/絵背景01", 3600, 0, 0, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureEX("ウィンドウ上/絵ga01", 3600, Center, -250, "cg/st/3d月山_立ち_通常.png");

	Move("ウィンドウ上/絵背景01", 0, @-200, @0, null, true);

	CreateTextureEX("ウィンドウ下/絵背景01", 3600, -1024, 0, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureEX("ウィンドウ下/絵mura01", 3600, -1, 134, "cg/st/3d村正標準_立ち_通常.png");

	Move("ウィンドウ下/絵背景01", 0, @+200, @0, null, true);
	Move("ウィンドウ下/絵mura01", 0, @-200, @0, null, true);
	Move("ウィンドウ上/絵ga01", 0, @20, @0, null, true);

	Move("ウィンドウ上/絵背景01", 2900, @+200, @0, null, false);
	Move("ウィンドウ下/絵背景01", 2900, @-200, @0, null, false);

	Fade("ウィンドウ上/絵背景01", 300, 1000, null, false);
	Fade("ウィンドウ下/絵背景01", 300, 1000, null, true);

	Move("ウィンドウ上/絵ga01", 2500, @-300, @0, Dxl1, false);
	Move("ウィンドウ下/絵mura01", 2500, @+300, @0, Dxl1, false);

	Fade("ウィンドウ下/絵mura01", 1000, 1000, Dxl1, false);
	Fade("ウィンドウ上/絵ga01", 1000, 1000, Dxl1, false);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0710b35">
「相模足柄は<RUBY text="かざまたに">風間谷</RUBY>の小太郎。
　並びに月山従三位」

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0720b35">
「畢竟の武者村正に、いざ一槍馳走せん！」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0730a00">
「!?
　風魔――小太郎か!!」

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0740b35">
「ハァッハ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆飛翔

	OnSE("se戦闘_動作_空上昇01",1000);


	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下");

	Wait(2000);


}

..//ジャンプ指定
//次ファイル　"ma02_009vs.nss"



