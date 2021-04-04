//<continuation number="1420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_019vs.nss_MAIN
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
	#ev247_向き合う村正と銀星号=true;
	#ev248_汚染嵐を生成する銀星号=true;
	#ev002_銀星号事件イメージ２=true;
	#ev008_赤子を抱える女=true;
	#bg051_皆斗家居間_03a=true;
	#ev131_景明が湊斗家に来た日=true;
	#ev132_笑う統=true;
	#ev005_斬り割られた兜=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_020vs.nss";

}

scene md05_019vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md05_018.nss"

//◆新生銀星号・昇臨
	PrintBG("上背景", 30000);

		SoundPlay("@mbgm01", 0, 1000, true);
		CreateTextureSP("背景１", 100, 0, 0, "cg/ev/ev247_向き合う村正と銀星号.jpg");
		CreateSE("サウンド２","se背景_ガヤ_燃える町並み_L");
		CreateSE("サウンド１","se特殊_その他_辰気収斂_L");
		SoundPlay("サウンド２",3000,1000,true);
		SoundPlay("サウンド１",3000,500,true);

	FadeDelete("上背景", 3000, true);

//◆溶岩の海の上、対峙する村正と銀星号
//◆人を小さく、地獄風景を大きく取る構図か。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　世界の終熄を誰が疑おう。
　この光景に至って、誰が。

　美しい形を失った富士が、濁血のような溶岩を噴き
流している。
　それは生命を許さぬ、存続を許さぬ、創造を許さぬ、
破滅以外を許さぬ虚界。

　誰がここで生きるのだ。
　誰がここで生きるのだ？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		SetVolume("サウンド１", 3000, 250, NULL);
		SetVolume("サウンド２", 3000, 500, NULL);

	Wait(2000);

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0010a14">
「勝者のみ」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0020a14">
「唯一人の勝者のみが、<RUBY text="はて">涯</RUBY>に立つ」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0030a14">
「その者をこそ<RUBY text="カミ">上</RUBY>と呼ぼう。
　人に許されざるを自ら許す、超越の権能者
と――」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0040a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　覚悟していた邂逅だった。

　出会いを期し、為すべき事も決めていた。

　光。
　我が妹。
　
　――自らの夢に沈んだ、湊斗光。

　会えば殺すと、決めていた。

　……決めていたのだから。
　今、すぐに、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0050a00">
「光」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0060a14">
「うむ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　呟きさえ聞き流さず、光が応じる。
　頷いて。微笑を含めて。

　燃える地上から熱気流が吹く中、その様子は穏やか
ですらある。
　
　しかし、俺は。俺のすべきは、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0070a00">
「お前……なのか？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0080a14">
「何だ、その禅問答は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　くつくつ、と笑う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0090a14">
「いや、わからんではない。何やら吹っ飛ば
されかけたり地底に埋没したりそこで変なの
に出くわしたり、色々とあったからな。
　心配をかけたか……？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0100a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0110a14">
「案ずるな。
　結局なんだったんだか我が事ながら未だに
さっぱりよくわからんが、光は光。他の何者
でもない」

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0120a14">
「見ての通り、健在だ！」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0130a00">
「……そうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　――違う。
　こんな会話は要らない。

　俺は、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0140a00">
「神と言ったな……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0150a14">
「あぁ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0160a00">
「お前は、この世の神になりたいのか」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0170a14">
「<RUBY text="・・・・・・・">神になりたいか</RUBY>？
　……ふむ、それは考えたこともない」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0180a14">
「だが、<RUBY text="・・・・・・・・・">ならなくてはならぬ</RUBY>と知っている。
　ならねば、光の望みが叶わぬ」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0190a14">
「これはおまえと<RUBY text="ムラマサ">二世</RUBY>が教えてくれた道」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0200a00">
「…………。
　だがお前は、既に神も同然だろう」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0210a14">
「……うん？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　――違う。
　こう、逃げ場を探すように言辞を弄するのではなく、

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0220a00">
「見ればわかる……。
　あの〝神〟は砕けて散ったが、<RUBY text="ちから">神威</RUBY>は失わ
れていない」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0230a00">
「おまえの中にある」

{	FwC("cg/fw/fw光_不思議.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0240a14">
「……？」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/019vs0250a15">
《御堂、<RUBY text="・・">これ</RUBY>のことであろう》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆うぉーん。神力オーラとかそんな感じで演出

	OnSE("se特殊_その他_神のオーラ",1000);

	CreateColorEXadd("色１", 19999, "#FFFFFF");
	Fade("色１", 1000, 500, null, true);
	Fade("色１", 1000, 0, null, false);

	SetFwC("cg/fw/fw光_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0260a14">
「ああ……これか！」

{	FwC("cg/fw/fw二世女王蟻_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md05/019vs0270a15">
《なかなか、大したものではある》

{	FwC("cg/fw/fw光_笑い.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0280a14">
「肝臓が十個くらい増えた感じだな」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0290a00">
「……それで、もう充分だろう。
　お前は神と名乗れるだけの力を持っている」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0300a00">
「このうえ更に、何を望む」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0310a14">
「ふふ。
　わかり切ったことをあえて訊く……そこが
おまえの不思議なところだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0320a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0330a14">
「いや――そも、光は未だ神の座に値せず」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0340a14">
「気付けば手に入れていたこの謎の力。
　なるほど、確かに強大だ……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0350a14">
「しかし、力さえあれば神たるのか？
　では恐竜は神か。海嘯は神か。八〇センチ
重列車砲は神か――」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0360a14">
「頷けまい？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0370a00">
「……」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0380a14">
「力は、力に過ぎぬ。
　因であって果ではない」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0390a14">
「過去、幾人もの覇王が神を自称した。
　それは彼らに力があったからか。否。力を
もって国々を切り従えたからこそ、王は己に
神性宿るを信じたのだ。臣民もまた」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0400a00">
「……なら、お前は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　あくまで。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0410a14">
「光は歴史への敬意のもと、その示す道筋に
従おう。
　いかに大きな武力を持とうが、成果を世に
顕すまでは決して僭称すまい！」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0420a14">
「そして過ちの轍も踏むまい！」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0430a14">
「かつての覇王は皆、中途で堕落した。
　世界人類悉くを征服する前に満足し、力に
溺れ、不完全な神となった」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0440a14">
「ゆえに打倒された……」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0450a14">
「おれは、そうはならぬ。
　覇道の終端までを踏破する」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0460a14">
「湊斗光は三〇億人類全てと勝負し屈服させ、
その事実をもって神座へ至ろう！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0470a00">
「お前は、どうしても、
　その妄念を捨てられないのか!?」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0480a14">
「捨てられぬ！
　いかにも妄念、いかにも愚念、されどこの
一念が光の命脈！」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0490a14">
「まずは舞台を整えよう。
　今、光に宿るこの戯けた力……天下万民と
分かち合うにも充分だ！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0500a00">
「――――何を!?」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0510a14">
「光は一身の願いから全人類の敗死を求む。
　ならば<RUBY text="もろびと">諸人</RUBY>は光の意思に抗い拒絶するため
の能を持たなくてはなるまい――でなくては
<RUBY text="・・・">不公正</RUBY>！」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0520a14">
「ゆえに授ける！
　武の一法！　殺伐争奪の力と心を！」

{	SetVolume("@mbgm*", 500, 0, null);
	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0530a14">
「天下布武ッッ!!
　今ここに、湊斗光が発令した!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm37",0,1000,true);

//◆稲妻逆天
	OnSE("se自然_雷_稲光02",1000);

	Fade("色１", 0, 1000, null, true);

		CreateColorEX("色２", 19999, "#000000");
		CreateTextureSP("背景３", 2000, 0, 0, "cg/bg/bg001_空a_02.jpg");
		CreateTextureSPadd("エフェクト１", 2000, 100, -200, "cg/ef/ef038_汎用射撃.jpg");
		Rotate("エフェクト１", 0, @0, @0, -70, null, true);
		Zoom("エフェクト１", 0, 3000, 3000, Dxl2, true);
	
		CreateTextureSP("背景４", 1000, 0, 0, "cg/bg/bg002_空b_03.jpg");
		CreateTextureSPsub("エフェクト２", 1000, -505, -281, "cg/ef/ef045_スパーク.jpg");
		Zoom("エフェクト２", 0, 2000, 2000, Dxl2, true);

	Fade("色１", 500, 0, null, false);
	Move("エフェクト１", 1000, @50, @400, Dxl1, false);
	Wait(500);
	Fade("色２", 500, 1000, null, true);

	Fade("色１", 0, 0, null, false);
	Fade("背景３", 0, 0, null, false);
	Fade("エフェクト１", 0, 0, null, true);
	Fade("色２", 1000, 0, null, false);

	SetVolume("サウンド*", 2000, 0, NULL);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　銀の右手が天を指し、閃光を撃ち出した。
　あたかも<RUBY text="さかのぼ">逆上</RUBY>る稲妻。

　暗空に銃創を思わせる孔が開く。
　
　――その周囲で、大気がうねった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：神力台風
	CreateSE("サウンド３","se戦闘_銀星号_精神汚染波_L");
	SoundPlay("サウンド３",1000,1000,true);

	CreatePlainSP("絵板写", 18010);
	SetVertex("絵板写", 0, 0);
	SetBlur("絵板写", true, 3, 500, 200, false);

		Delete("エフェクト*");
		Delete("背景*");
		CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev248_汚染嵐を生成する銀星号.jpg");
		SetVertex("背景１", 512, 50);
		Zoom("背景１", 0, 4000, 4000, Dxl2, true);
		SetBlur("背景１", true, 2, 500, 100, false);

	Zoom("絵板写", 2000, 4000, 4000, Axl2, false);
	Fade("絵板写", 2000, 0, null, false);
	Wait(2000);



	Fade("背景１", 2000, 1000, null, false);
	Zoom("背景１", 2000, 1000, 1000, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　渦を巻く。

　雲が引き裂かれて散った。
　<RUBY text="あさなぎ">朝凪</RUBY>の海に似た空は<RUBY text="しけ">時化</RUBY>の海へ模様を変えた。

　中央の<RUBY text="・">目</RUBY>を軸に荒れ狂う旋風……
　まるで台風のようだ――が、

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0540a00">
「村正、あれは――」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0550a01">
《……汚染波の塊よ！
　途轍もない濃度の……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0560a01">
《あんなのを浴びたらきっと、甲鉄でも防げ
ない！》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　――武者をも逃さない精神汚染！
　
　あの嵐が、それをもたらす……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0570a01">
《しかも……それだけじゃ、ない……？》

{	FwR("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0580a14">
「そうとも、蜘蛛。
　これは<RUBY text="・・・">武の嵐</RUBY>だ」

//【光】
<voice name="光" class="光" src="voice/md05/019vs0590a14">
「白銀の雨風を地上に注いで回り……
　人々に武の力と魂を与え、この光と同等の
武人に仕上げる」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0600a00">
「――な……ッ!?」

{	FwR("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0610a14">
「これで人類は心身共に完全武装!!
　この中で勝ち抜いてこそ、神たる武人!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　それは、
　まさか、
　つまり――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆汚染光景
	CreateTextureEX("背景２", 100, 0, 0, "cg/ev/ev002_銀星号事件イメージ２.jpg");
	SetTone("背景２", Monochrome);

	Fade("背景２", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　あの惨劇の拡大再生産か!?

　人々を無為の殺戮闘争へ駆り立てる――
　<RUBY text="・・・・・・・・">銀星号と同等の力</RUBY>を与えた上で。

　そういう事なのか？
　それは――どれほどの破壊破滅を成し遂げる!?

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("背景２", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　光の佇まいには迷妄も諧謔も、どちらの色彩も存在
しない。
　全人類を滅ぼすと云い、それに先立って全人類を己
と同じ最強者にすると云い、そして実行に移しながら。

　己の行為への疑念が一切無い。
　
　――嵐が創られる。

　一つではない。
　二つ、三つと、次々に生成されてゆく。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0620a14">
「<RUBY text="ロシア">露帝</RUBY>！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進。適当に演出。
	CreatePlainSP("絵板写１", 18090);
	SetVertex("絵板写１", 1024, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);

	Zoom("絵板写１", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写１", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0630a14">
「<RUBY text="カン">大漢</RUBY>！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進。
	CreatePlainSP("絵板写２", 18080);
	SetVertex("絵板写２", 50, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);

	Zoom("絵板写２", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写２", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0640a14">
「欧州！
　中東！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進
	CreatePlainSP("絵板写３", 18070);
	SetVertex("絵板写３", 900, 50);
	CreatePlainSP("絵板写４", 18060);
	SetVertex("絵板写４", 700, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写３", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写３", 500, 500);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写４", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写４", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0650a14">
「新大陸！
　暗黒大陸！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進
	CreatePlainSP("絵板写５", 18050);
	SetVertex("絵板写５", 200, 50);
	CreatePlainSP("絵板写６", 18040);
	SetVertex("絵板写６", 100, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写５", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写５", 500, 500);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("絵板写６", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写６", 500, true);

	SetFwR("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0660a14">
「大和！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆台風発進。
	CreatePlainSP("絵板写７", 18080);
	SetVertex("絵板写７", 512, 50);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("色１", 0, 500, null, true);
	Fade("色１", 500, 0, null, false);

	Zoom("絵板写７", 500, 1200, 1200, Axl1, false);
	FadeDelete("絵板写７", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……銀星号の号令一下。
　嵐たちは忠実な部将のように、示された方角へ突き
進んでゆく。

　闇と風を蹴散らして。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド３", 1000, 0, NULL);

	CreateTextureEX("背景２", 100, 0, 0, "cg/bg/bg002_空b_03.jpg");
	Fade("背景２", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0670a00">
「……村正……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0680a01">
《……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0690a00">
「あれが全世界を汚染するのに、どの程度の
時間が必要かわかるか」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0700a01">
《多分……一時間とは》

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0710a14">
「およそ四五分だろう」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("背景１", 100, 0, 0, "cg/ev/ev247_向き合う村正と銀星号.jpg");
	Fade("背景１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　親切な注釈が、実行者から入った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0720a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0730a00">
「止める方法は？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0740a01">
《元を断つ》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/019vs0750a01">
《あの嵐は独立してない。
　発生源と繋がったままだから――》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　根源を、
　銀星号を滅ぼせば、汚染の嵐も散る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0760a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　殺さなくてはならない。
　
　――とうにわかりきっていた事は、更に差し迫った
現実と化して俺の前に据えられている。

　光を、殺さなくてはならない。
　すぐに。すぐに。

　迷う間にも。
　逡巡する間にも。
　太刀を抜き、今すぐに。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0770a00">
「――――」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0780a00">
「何を望む……光！」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0790a00">
「そこまでの事を為し、何を!!」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0800a14">
「良い。幾度でも答えてやる。
　おまえが問いを重ねるなら、光も同じだけ
変わらぬ決意を叫ぼう」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0810a14">
「父を!!」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0820a00">
「……ッ……」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0830a14">
「光の望みは唯一つ！
　<RUBY text="・・・・・・">我が父を返せ</RUBY>!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　湊斗光の<RUBY text="ゆめ">深層</RUBY>である存在は、湊斗光の<RUBY text="ゆめ">悲願</RUBY>を叫んだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0840a14">
「おれをこの世に生み落とした根源を――
　父の愛を確かめたい！」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0850a14">
「そのために光は母を滅ぼし、世界を滅ぼす。
父を奪い束縛する全てを滅ぼす。
　そのために光は神となる。<RUBY text="ひとのみち">人倫</RUBY>に許されぬ
父の奪回を神権によって成し遂げる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　それはあたかも――
　海に落とした一粒の真珠を探すという難題に、業火
をもって海を焼き溶かすと解くかのよう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_瞋恚.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0860a14">
「何故、と問うか？
　何故、かくも求めるのかと」

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0870a14">
「それが<RUBY text="・・・・・・・・">奪われているから</RUBY>だッッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・光出生時
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 1000, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　
　　　　　　〝この子に父親はいない〟

　
　　　　　〝この子はあなたの娘ではない〟

　
　　　　〝この子を……愛してはならない〟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 500, 1000, null, true);
	Delete("絵ＥＶ");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw光_瞋恚.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【光】
<voice name="光" class="光" src="voice/md05/019vs0880a14">
「おれは覚えている。
　母が父に告げた強奪の言葉を、その瞬間を、
魂に懸けて記憶している」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0890a14">
「だから取り戻さずにはいられないッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　脳ではない。それは命の渇望。
　
　心臓を盗まれた人間が取り返さずにいられるものか
と、そう云っていた。

　断じて<RUBY text="こら">堪</RUBY>えられぬ衝動が有るのだと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0900a00">
「…………」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0910a00">
「……父は……」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0920a00">
「お前の、父は」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想・皆斗本家
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 1000, Center, Middle, "cg/bg/bg051_皆斗家居間_03a.jpg");
	StL(1000, @0, @0,"cg/st/st本家_通常_私服.png");
	SetTone("絵ＥＶ", Sepia);
	SetTone("@StL*", Sepia);
	FadeStL(0,true);
	Fade("色１", 500, 0, null, true);


	SetFwC("cg/fw/fw本家_通常.png","Sepia");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【本家】
<voice name="本家" class="本家" src="voice/md05/019vs0930b52">
『景明！　ここへ参れ！』

//【本家】
<voice name="本家" class="本家" src="voice/md05/019vs0940b52">
『貴様には何の恨みもない。かような真似を
命じるのが心苦しくもある。
　だが今となっては、この愚か者に拾われた
運命を嘆いてもらうよりないわ』

//【本家】
<voice name="本家" class="本家" src="voice/md05/019vs0950b52">
『貴様が事の決着をつけよ』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆明堯
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	DeleteStA(0,true);
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev131_景明が湊斗家に来た日.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//◆統
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//◆兜割り
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 500, 1000, null, true);
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	SetTone("絵ＥＶ", Sepia);
	Fade("色１", 500, 0, null, true);

//◆戻り
	Fade("色１", 500, 1000, null, true);
	Delete("絵ＥＶ");
	Fade("色１", 2000, 0, null, true);

	Wait(2000);

	SetFwC("cg/fw/fw景明_悲しみ.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0960a00">
「……いないのだ。
　この世の、何処にも」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0970a00">
「お前の父は、父たる事を捨てた。
　捨てるよう命じられ……従った」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs0980a14">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs0990a00">
「知っているのだろう」

{	FwC("cg/fw/fw光_哀愁.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1000a14">
「知っている」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1010a14">
「だから、諦めていた……。
　<RUBY text="・・">表の</RUBY>湊斗光は」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1020a00">
「……」

{	FwC("cg/fw/fw光_沈思.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1030a14">
「しかしその陰で、おれを育てた。
　それでも父に愛されたいという希望を……」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1040a14">
「おれという、一つの夢を」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　悲痛にではなく。
　誇るように。
　
　それは己の虚構を語った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1050a00">
「……お前は……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1060a14">
「人の世に押し隠された父なら……
　人の世を引っくり返してやれば、出てくる
やもしれんだろう？」

{	FwC("cg/fw/fw光_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1070a14">
「ふふ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1080a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　光はおかしそうに笑う。
　俺は何も返せなかった。

　笑いが尽きるまで、ただ石の沈黙を守る。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【光】
<voice name="光" class="光" src="voice/md05/019vs1090a14">
「……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1100a00">
「……」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1110a14">
「景明よ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1120a00">
「光」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　小指で触れてくるような呼ばわりに、上から被せる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1130a00">
「なら、お前は……
　父親が戻り、お前を娘と認めさえすれば、
それで満足するのか？」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1140a00">
「世界の破壊を、思い留まるか？」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1150a14">
「……その問いも、以前に答えたな」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1160a14">
「光が欲しいのは生贄の肉ではない。
　真実の心」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1170a14">
「父は社会と秩序を重んじ、それゆえに光を
娘と認めて下さらなかった。
　だからこそ、現世界を守るためとあらば光
の願いを聞くやもしれぬ」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1180a14">
「しかし、それでは駄目なのだ！
　真実が無い。形ばかりの偽物に過ぎない。
そんなものは欲しくもない！」

{	FwC("cg/fw/fw光_警戒.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1190a14">
「真実を得るには……
　父が尊ぶもの。我が母統を、今の人間社会
を、全て滅ぼし尽くした上で問うのみ」

{	FwC("cg/fw/fw光_愕然.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1200a14">
「<RUBY text="・・・・">これでも</RUBY>光を愛してくれるか、と！
　九割が憎しみでも構わない。九割九分でも。
残りの一分、ほんの少しだけ……一欠片だけ、
肉親の愛情を示してくれるなら、」

//◆囁くように
{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1210a14">
「それでいい」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1220a00">
「…………」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1230a14">
「それでおれは満ち足りる」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　その光景を思い描いたのか。
　ほぅ――と。

　光は、夢見るような吐息をこぼした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1240a00">
（――――）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　糸の存在を想う。

　絡まり合った糸の束。
　複雑過ぎて、何処がどうしてこうなったのか、最早
まるでわからない。

　これを解きほぐすなら、時間を掛けて取り組むのが
正しいやり方だろう。
　
　だが、その時間が無ければ――

　手段は一つだ。
　鋏を使って切るしかない。

　結び目を断ち切って、糸を解放するしかない。
　
　この絡まりを解くには、もうそれしか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1250a00">
「そうか」

{	FwC("cg/fw/fw光_慈愛.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1260a14">
「……景明？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1270a00">
「ならば、光」

//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1280a00">
「お前に父など与えない」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1290a00">
「ここで……死ね」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	SetVolume("@mbgm*", 3000, 0, NULL);
	Wait(5000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　熱波の渦を、冷気が押し退ける。
　それは冬の気象の生んだものではなかった。

　一個人の心気が発しているものだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光_通常b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【光】
<voice name="光" class="光" src="voice/md05/019vs1300a14">
「それが答か、景明」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1310a00">
「……」

{	FwC("cg/fw/fw光_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1320a14">
「わかっていた。
　そう、おまえはあくまでも母上の味方……
おれではなく」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1330a14">
「母こそはおれの敵であった」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1340a14">
「母の遺志に従うなら、
　<RUBY text="あに">義兄</RUBY>景明、おまえも光の敵！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1350a00">
「……その通りだ」

{	SoundPlay("@mbgm11",0,1000,true);
	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1360a14">
「斃す」

//【光】
<voice name="光" class="光" src="voice/md05/019vs1370a14">
「母に従うその生命魂魄、奪い尽くす」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1380a14">
「母のものは何もかも、この光が奪う！」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/019vs1390a00">
「…………」

{	FwC("cg/fw/fw光_瞋恚.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1400a14">
「そして世界を打倒する」

{	FwC("cg/fw/fw光_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1410a14">
「全て終わった後で……
　この身に宿る力を使い、我が父のみを生き
返らせよう」

{	FwC("cg/fw/fw光_怒り.png");}
//【光】
<voice name="光" class="光" src="voice/md05/019vs1420a14">
「阻めるものなら阻むがいい!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
　銀星号――湊斗光の殺意。
　それは遂に、俺へ向けられた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"md05_020vs.nss"