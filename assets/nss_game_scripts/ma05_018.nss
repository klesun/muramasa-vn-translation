//<continuation number="1580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_018.nss_MAIN
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
	#bg050_湊斗家門前_01=true;

	#ev138_首領の最期_a=true;
	#ev138_首領の最期_b=true;
	#ev138_首領の最期_c=true;
	#ev138_首領の最期_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_019.nss";

}

scene ma05_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_017.nss"


/*
	CreateWindow("ウィンドウ１", 150, 0, 100, 1024, 376, false);

	CreateColorEX("絵色100", 1500, "Black");

	CreateTextureEX("ウィンドウ１/絵ＥＶ", 3000, -922, -196, "cg/ev/resize/ev138_首領の最期_bl.jpg");

	WaitKey();

	Move("ウィンドウ１/絵ＥＶ", 300, -922, -296, Dxl1, faslse);
	Fade("ウィンドウ１/絵ＥＶ", 300, 1000, Dxl1, false);
	Fade("絵色100", 300, 500, Dxl1, true);


	WaitKey();
*/

//◆湊斗家
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	CreateSE("SE01","se日常_建物_扉開く02");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,500,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	FadeDelete("絵暗転", 2000, true);
	CreateSE("SE01b","se人体_衝撃_転倒03");
	MusicStart("SE01b",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　ただならぬ物音に、俺は門の方角へ目を向け……
　まろび出てきた人影に、我が眼を疑った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180010a00">
「首領殿!?」

{	NwC("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180020b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　その人が我が家を訪れたという事が、さまでに不可
思議だったのではない。
　非現実性は、彼女の姿にあった。

　無数の斬傷。
　全身に――まさに<RUBY text="なます">膾</RUBY>切りとしか言いようがない。

　肌という肌、肉という肉を切り刻まれている。
　こんな凄惨な有様は、戦場でも滅多に顕れなかろう。

　……むしろ、戦いを冒涜するような。
　大勢で一人を嬲り物にする如き所業でもなければ、
このように無残な姿には――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180030a00">
「首領殿！
　……お気を確かに！」

{	NwC("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180040b31">
「……ぁ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ", 3000, -100, -109, "cg/ev/resize/ev138_首領の最期_al.jpg");
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵ＥＶ", 2000, -233, @0, null, false);
	FadeDelete("上背景", 1000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　ともかくも駆け寄って、ふらついた足取りの首領を
抱き止める。
　ぼやけた眼差しが、俺を射る……だが焦点は合って
いない。

　瀕死であった。
　かつて南方の戦場で、数多の死を見届けた経験が、
要りもしない予見をする――<RUBY text="・・・・・">もう駄目だ</RUBY>、と。

　この眼をした人間は、もう助からない。

　……何故だ。
　何があった。どうしてこんな事になった!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw統_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【統】
<voice name="統" class="統" src="voice/ma05/0180050b46">
「景明！
　とにかくその人を部屋まで上げろっ！」

{	FwR("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180060a00">
「は……
　はッ！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180070b31">
「……まってっ……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateWindow("絵ウィンドウ１", 150, 0, 100, 1024, 376, false);
	SetAlias("絵ウィンドウ１","絵ウィンドウ１");
	CreateColorEX("絵色100", 11000, "Black");
	CreateTextureEX("絵ウィンドウ１/絵ＥＶ", 13000, -922, -196, "cg/ev/resize/ev138_首領の最期_bl.jpg");


	CreateSE("SE01","se人体_動作_抱く02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵ウィンドウ１/絵ＥＶ", 500, -922, -296, Dxl1, faslse);
	Fade("絵ウィンドウ１/絵ＥＶ", 500, 1000, Dxl1, false);
	Fade("絵色100", 500, 500, Dxl1, true);

//	CreateTextureSP("絵ＥＶ", 3000, -100, -109, "cg/ev/ev138_首領の最期_b.jpg");
//	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　養母の一声で我に返り、満身創痍の小さな体を抱え
上げようとしたところで、その腕を掴まれる。
　首領の視線が今は俺を捉えていた――瞳の色はその
ままに。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 20000);

	CreateTextureSP("絵ＥＶ", 3000,  Center, Middle, "cg/ev/ev138_首領の最期_b.jpg");
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180080a00">
「……首領殿。
　ご無理はなさらず。今すぐ、手当てを――」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180090b31">
「いい……から。
　そんな、こと……より……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　けほっ、と彼女が咳き込む。
　俺の胸元に、血華が散った。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180100a00">
「……！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180110b31">
「町の人を……すぐに……
　……急いで……兵たちが……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180120a00">
「首領殿……？
　いや、とにかく今は安静に！　無理をして
口を利かれては、傷に」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180130b31">
「攻めて……くる……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180140a00">
「――!?」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　断片的だった首領の言葉は、その一語で結合した。
　
　……山賊団が攻めて来る!?

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw統_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【統】
<voice name="統" class="統" src="voice/ma05/0180150b46">
「……！」

{	FwR("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180160a14">
「…………」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180170b31">
「……ごめんなさい……
　部下を……抑えきれませんでした……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180180b31">
「……約束したのに……」

{	FwR("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180190a00">
「首領殿……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　こぼれた涙は、苦痛のそれではなかった。
　身体の傷よりも遥かに深い痛哭を伝えていた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180200a00">
「首領殿」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180210b31">
「ごめんなさい……
　約束……守れなかった……」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180220b31">
「あなたとの、約束を……
　とうとう……一度も……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180230a00">
「そのようなことは決して！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　俺は叫んだ。
　何を置いても――今は、彼女をこのまま<RUBY text="い">逝</RUBY>かせては
ならないと思った。

　あるいは、夢想を抱いたのかもしれない。
　彼女が悲痛の中で死のうとしているなら、その悲痛
を取り除いてやれば死なずに済む筈だと。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明過去_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180240a00">
「貴方は約束をお守り下さいました。
　町に平穏を与えて下された」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180250a00">
「お陰で、妹に医者を呼ぶ事も叶いました。
　今はもう、快復しております……！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180260a00">
「全ては貴方のご尽力あればこそです！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180270b31">
「……ぁ……」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180280b31">
「ほんとうに……？」

{	FwR("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180290a00">
「はい！
　この湊斗景明――心魂に懸けて貴方の存在
に感謝致します！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180300a00">
「感謝しております……！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180310b31">
「……あ……ぁぁ。
　……よかった……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ１", 3100, -353, -109, "cg/ev/resize/ev138_首領の最期_bl.jpg");
	CreateTextureSP("絵ＥＶ２", 3000, -393, -109, "cg/ev/resize/ev138_首領の最期_al.jpg");

	Move("絵ＥＶ１", 500, -393, @0, null, false);
	FadeDelete("上背景", 500, true);

	Fade("絵ＥＶ１", 2000, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　首領が微笑む。
　表情から悲痛が和らぐ。

　だが――遠い。
　遠くなる――――

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180320a00">
「首領殿！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180330b31">
「それなら……いいの……
　それなら……」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180340a00">
「良くはありません……！
　自分は、貴方に何も報いていない！」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180350a00">
「どうか、お気を強く！
　自分を忘恩の徒にしないで頂きたい！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180360b31">
「……」

{	Fade("絵ＥＶ１", 200, 1000, null, false);
	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180370b31">
「じゃあ……最後に……
　一つだけ……」

{	FwR("cg/fw/fw景明過去_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180380a00">
「最後などと言わず！　一つと言わず！
　どのような事でも仰せ付け下さい」

{	FwR("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180390a00">
「貴方にはそれだけの恩を受けている……！」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180400b31">
「……いえ……
　一つで良いのです……」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180410b31">
「一つだけ……
　……お願い……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180420a00">
「それは……!?」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180430b31">
「……なまえ……を」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180440a00">
「？」

{	NwR("cg/fw/nw首領.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180450b31">
「あたくし、の……
　なまえを……呼んで……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　思わず、絶句した。
　……自分の間抜けさ加減にだ。

　恩人だと思い、そう口にしながら。
　その名さえ知ってはいなかった。

　山上の砦での対面の折に名乗って貰えなかったから
ではあるが……
　それにしても、機会はその後いくらでもあったろう
に。

　………俺の馬鹿面を見てだろう、彼女がおかしげに
笑う。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetNwR("cg/fw/nw首領.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180460b31">
「……ふふ……
　だって……訊いて下さらないんだもの……」

{	FwR("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180470a00">
「……失礼を！
　大変遅きに失し、今更恥ずかしいばかりで
はありますが」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180480a00">
「御婦人。
　どうか、お名前をお聞かせ下さい」

{	NwR("cg/fw/nw瑞陽.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180490b31">
「……<RUBY text="みずひ">瑞陽</RUBY>……と……」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180500a00">
「瑞陽……」

{	NwR("cg/fw/nw瑞陽.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180510b31">
「……はい……」

{	FwR("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180520a00">
「瑞陽殿」

{	NwR("cg/fw/nw瑞陽.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0180530b31">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ２", 3000, -393, -109, "cg/ev/resize/ev138_首領の最期_cl.jpg");
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　最後に。
　彼女は、それは嬉しそうに。

　<RUBY text="わら">微笑</RUBY>ったのだ。
　
　――最後に。

　ほぅ……と風に溶けゆく微かな息吹、
　何かが抜け去ったかのように力を失う身体、
　そして微笑。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ２", 3000, -393, -109, "cg/ev/resize/ev138_首領の最期_dl.jpg");
	FadeDelete("上背景", 1000, true);

	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0216]
　それが、彼女の<RUBY text="おわり">最期</RUBY>だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180540a00">
「……………………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　これまでの人生で――特に数年の兵役の中で。
　身近な人間の死に立ち会う事は幾度かあった。

　そうして知った事がある。
　誰かが死んだ時、その人に預けていた心も死ぬのだ
と。

　心の一部が死んで、穴が開く。
　温かいものが無くなり、代わりに空虚なものが生ま
れる。

　……瑞陽という人の死で、生じた空虚は、
　こうなるまで、思いもしなかった程に――大きく、
深かった。

　ほんの短い、わずかな期間の接触だったのだ。
　俺とこの人とは。

　それなのに。
　俺は心の、これほどの領域を、この人に預けていた
のだ。

　失ってから、そうと知る。
　……失ってはならない人を失ったのではないかと、
知る。

　この人は、俺という人間に必要な存在だったのでは
ないかと――

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	CreateTextureSP("絵ＥＶ２", 3000, Center, Middle, "cg/ev/ev138_首領の最期_d.jpg");
	FadeDelete("上背景", 1000, true);

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180550a00">
「……今更。
　何を」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　自責を呟く。
　
　――何を、わかり切った事を。

　とにかく、この人をこのままにしてはおけない。
　亡骸といえど洗い清めて差し上げなくては――<k>いや、
どうもそういう場合ではないようだが、せめて布団に
は寝かせてやらねば。

　一人では手間が掛かってしまう。
　俺は養母に手伝いを頼もうと、背後を振り返った。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 10000);
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180560a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　いない。
　……光もいない。

　二人とも、何処に――<k>
　
　と、視界の端に、二人の背が映った。

　とても病み上がりとは思えぬ早足でどこかへ向かう
光と、小走りにその後を追う養母。
　行く先は――

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0180570a00">
「祭殿？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　……何故、このような時に？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆祭殿
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【統】
<voice name="統" class="統" src="voice/ma05/0180580b46">
「光！
　……おい、ちょっと待ちなって」


{//◆がちゃがちゃ。なんか探してる
	CreateSE("SE01","se戦闘_破壊_金属");
	MusicStart("SE01",0,1000,0,1000,null,false);}
//【統】
<voice name="統" class="統" src="voice/ma05/0180590b46">
「何やってんだ……<k><?>
{	FwC("cg/fw/fw統_通常b.png");}
……………………」

//【統】
<voice name="統" class="統" src="voice/ma05/0180600b46">
「光。
　おまえ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光の前に立ち塞がる統
	StR(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw光二年前_冷たい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【光】
<voice name="光" class="光" src="voice/ma05/0180610a14">
「母上。
　そこに立たれては邪魔です」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180620b46">
「……その<RUBY text="かぎ">御鑰</RUBY>、どうするつもりだ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180630a14">
「訊くまでもないことを。
　こんなもの、使い道は一つきりでしょう」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180640b46">
「孫の手にするなら居間にもうちょっとマシ
なやつがあるぞ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180650a14">
「それは母上がお使い下さい」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180660b46">
「……なんでおまえが知ってるんだ。
　御鑰の場所と、使い方まで」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180670a14">
「<RUBY text="・・・・・・・・・・">光が見ていましたから</RUBY>。
　あれが見聞きした事は<RUBY text="おれ">光</RUBY>にも伝わります」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180680b46">
「……？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180690a14">
「さて？　何度も申し上げるつもりはありま
せんが。
　邪魔です、母上。おどき下さい」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180700b46">
「何をする気だよ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180710a14">
「<RUBY text="・・・">おれの</RUBY>劒冑を解放するのです。
　どうやら、差し迫った事態のようではあり
ませんか」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180720b46">
「おまえの劒冑……？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180730a14">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180740b46">
「……その劒冑で？
　何をするって？」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180750a14">
「母上。
　わかりきった問いにいちいち答えねばなら
ないこちらの身にもなって頂けますか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180760b46">
「そりゃすまんこってした。
　ものわかりの悪い母に噛み砕いて説明して
やってくれ、娘よ。母がボケてしまった時の
練習だと思って」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180770a14">
「致し方ありません。
　ただ、鏖殺するだけです。町に攻めて来る
連中とやらを」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180780b46">
「……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180790a14">
「単語の意味もご説明しましょうか」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180800b46">
「結構です。
　聞くだに胸が悪くなりそうだ」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180810a14">
「それは上々」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180820b46">
「通さない」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180830a14">
「……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180840b46">
「……殺してどうする？　光。
　後には恨みが残るだけだよ」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180850a14">
「残りませぬ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180860b46">
「……なんでだ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180870a14">
「一人残らず殺しますゆえ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180880b46">
「……」

//【統】
<voice name="統" class="統" src="voice/ma05/0180890b46">
「あの山賊どもにだって親類縁者くらいいる
だろうさ。
　その中には復讐心に駆られる奴もいるだろ」

//【統】
<voice name="統" class="統" src="voice/ma05/0180900b46">
「そいつら自身にだって、死ねば悲しむ仲間
の一人くらいいるだろ。
　恨みは必ず残る」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180910a14">
「残りませぬ」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180920b46">
「……なんでだよ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【光】
<voice name="光" class="光" src="voice/ma05/0180930a14">
「一人残らず殺しますゆえ。
　この光より弱き者は<RUBY text="・・・">すべて</RUBY>」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180940b46">
「…………」

//【統】
<voice name="統" class="統" src="voice/ma05/0180950b46">
「それは……
　武の道じゃないぞ。光」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180960a14">
「武の道にございます」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180970b46">
「何を……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0180980a14">
「ではお聞かせ下さい。
　母上はどうなさりたいのです？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0180990b46">
「説得してくるよ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181000a14">
「そんな状況ではなかったら？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181010b46">
「……止めるさ。
　けど、殺しはしない」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181020a14">
「はははははは……！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181030b46">
「……」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181040a14">
「そのような事ができるとお思いか？」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181050b46">
「できるさ。
　景明も手伝ってくれる」

{	FwC("cg/fw/fw光二年前_通常b.png");}
//◆不快
//【光】
<voice name="光" class="光" src="voice/ma05/0181060a14">
「……」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181070b46">
「あの子は一度それをやってみせた。
　もう一度だって、きっとできる」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181080a14">
「……成程。それで、さっきの女……。
　母上は一度、やらせたのですね。景明に、
<RUBY text="・・・・・">そんなこと</RUBY>を」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181090b46">
「ああ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181100a14">
「だからもう一度やると」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181110b46">
「ああ……」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181120a14">
「戯け」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181130b46">
「……何ぃ……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181140a14">
「あなたのその下らぬ所業が――
　今日の事態を招いたとは思いませぬのか」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181150b46">
「……どういう意味だよ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181160a14">
「山賊どもとやらは、武を侮った。
　真相は<RUBY text="・・">殺法</RUBY>に過ぎぬ武を、見誤った」

//【光】
<voice name="光" class="光" src="voice/ma05/0181170a14">
「あなたが偽りの武を見せたからだ、母上。
　戦って負けても<RUBY text="・・・・・・・">殺されずに済む</RUBY>などと彼ら
に信じさせた」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181180b46">
「…………」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181190a14">
「彼らは武を軽んじた。
　甘く見た」

//【光】
<voice name="光" class="光" src="voice/ma05/0181200a14">
「だから嵩に懸かって攻め寄せて来る。
　おわかりになりませぬか、母上」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181210b46">
「……そうだとしても。
　連中が戦う気を無くすまで、防ぎ続ければ
いいこった」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181220b46">
「そいつが武の道だよ」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181230a14">
「違います。
　武はそんな<RUBY text="・・・・・・・">まだるっこしい</RUBY>ものではない」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181240a14">
「強きをもって弱きを滅ぼす。
　それが、武にござります」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181250b46">
「教えたはずだぞ光！
　戈を止めると書いて武の一文字！」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181260a14">
「否！
　戈にて<RUBY text="とど">止</RUBY>むと書いて武の一文字！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181270b46">
「……!!」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181280a14">
「刃は生命に止めを呉れるもの！
　他に用途は何も無し！」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181290b46">
「だからって、殺してどうなるよ！
　誰も得しねえだろ！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181300b46">
「そんな武道、何の意味があるってんだ……」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181310a14">
「そうでしょうか？
　母上の教えてくださった武道こそ、糞の役
にも立ちませなんだが……村正が示した武は
こうして光を世に送り出してくれましたぞ？」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181320b46">
「……!?
　村正が……示した？」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181330a14">
「つまりは……
　こうしてここに光の在ることが、我が武の
真実たる<RUBY text="あかし">証明</RUBY>！」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181340b46">
「おまえ……」

{	FwC("cg/fw/fw光二年前_冷たい.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181350a14">
「おどきあれ、母上。
　これで最後とさせて頂く」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181360b46">
「…………。
　おまえ、誰だ？」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181370a14">
「……くふっ」

//【光】
<voice name="光" class="光" src="voice/ma05/0181380a14">
「娘の顔を見忘れたか。
　母上」

{	FwC("cg/fw/fw統_通常a.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181390b46">
「どうだったかな。
　わたしがお<RUBY text="なか">腹</RUBY>痛めて産んだ子は、そりゃー
性格面でアレなとこが多過ぎたし正直人間と
してこいつどうなのよって感じだったけど」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181400b46">
「おまえほど、化物じみた<RUBY text="つら">面</RUBY>はしてなかった
と思うんだが」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181410a14">
「ふっふ……！」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181420b46">
「……」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181430a14">
「良い眼をしているではないか、母上！」

{	FwC("cg/fw/fw統_怒り.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181440b46">
「来るな。
　そのまま下がって、外へ出ろ！」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181450a14">
「嫌と申さば、
　――――如何する!?　湊斗統!!」

{	FwC("cg/fw/fw統_睨む.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181460b46">
「ッ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光ＶＳ統
	PrintGO("上背景", 5000);
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	StC(1000, @0,@0,"cg/st/st光二年前_通常_私服.png");
	FadeStC(0,true);
	FadeDelete("上背景", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　――止められる筈だ、と……
　統には、確信があった。

　娘の力量は知っている。
　<RUBY text="ありてい">有体</RUBY>に言って、妖怪じみた天才だ。

　一年前、病に倒れる直前、その技術はもう完成まで
間近だった。
　が……まだ、付け入る隙は残していた。

　あれから一年。光の技は停滞している。
　いや、後退しているはずだ――常識的に考えれば。
それについてはどうもあまり期待しない方が良さそう
だったが。

　光の流麗な立ち姿は、これで病み上がりなどと言わ
れてもつまらぬ<RUBY text="ギャグ">諧謔</RUBY>にしか思えない。
　しかし――まだ、抑え切れる。統はそう踏んだ。

　<RUBY text="かまえ">構</RUBY>から窺える技の多様さ、鋭さ、強靭さは統の許容
量に収まる。
　危うい線ではあっても、紙一枚の差で勝てる。

　湊斗統にも己の術技に自負するところがあった。
　あと半年――いや三ヶ月も光が修練を重ねていたら
わからなかったろうが、現段階ではまだ優ると見た。

　――<RUBY text="カラン">花乱</RUBY>の裏から、八手で詰み。

　脳裏に勝利への図式を思い描く。
　推敲。……この計算を崩す要素は無い。

　ならば図式を実行する。
　統は重心を前へ傾け、仕掛ける気を窺った。<k>
　
　そこで、計算は崩壊した。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_睨む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【統】
<voice name="統" class="統" src="voice/ma05/0181470b46">
「……!?」

{	FwL("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181480a14">
「……」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　――呼吸がおかしい。

　光の呼吸をつかめない。
　呼吸そのものはあるが……何かが違う。

　<RUBY text="・・・・・・・・・・・">戦う人間の呼吸ではない</RUBY>。
　ひどく――――希薄な。

　希薄なのは呼吸に留まらない。
　……気付けば、<RUBY text="けはい">存在感</RUBY>そのものが希薄。

　目の前に確かに、<RUBY text="はげ">烈</RUBY>しく在りながら。
　しかし<RUBY text="かげろう">陽炎</RUBY>のようにあやふやで――

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【統】
<voice name="統" class="統" src="voice/ma05/0181490b46">
（……なんだ？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　それが、
　湊斗統の不覚だったのだ。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【統】
<voice name="統" class="統" src="voice/ma05/0181500b46">
（こいつ……
　本当に、<RUBY text="・・・・・・・">ここにいるのか</RUBY>？）

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　<RUBY text="たたかい">鉄火</RUBY>の場に立ちながら。
　そんな現実を離れた疑問に、一瞬でも意識を委ねて
しまったことが――

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆踏み込む光。疾風。
	CreateSE("SE01","se人体_動作_跳躍01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSP("絵黒幕１", 25000, "BLACK");
	DrawTransition("絵黒幕１", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	DeleteStA(0,true);
	DrawDelete("絵黒幕１", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【統】
<voice name="統" class="統" src="voice/ma05/0181510b46">
「!!」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181520a14">
「母上」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　気付けば。
　統は耳元に、娘の囁きを聞いていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【光】
<voice name="光" class="光" src="voice/ma05/0181530a14">
「光はあなたを殺しませぬ。
　光は何者も<RUBY text="・・">敵意</RUBY>によっては殺しませぬから」

//【光】
<voice name="光" class="光" src="voice/ma05/0181540a14">
「何故なら我が道程は<RUBY text="たかみくら">神座</RUBY>へ至るための<RUBY text="みそぎ">禊</RUBY>。
　武の法だけがあれば良く、敵意悪意が如き
穢れは無用」

//【光】
<voice name="光" class="光" src="voice/ma05/0181550a14">
「……母上にはこの光、憎しみを捨て切れま
せぬ。
　だから殺しませぬ……」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0181560b46">
「光……！」

{	FwC("cg/fw/fw光二年前_冷徹.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181570a14">
「あなたは」

//◆光アクション？
{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0181580a14">
「愛によってお死にあれ。
　母上」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どご。
//◆決着
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	CreateColorSP("絵黒", 4500, "#000000");
	WaitKey(10);
	Delete("絵白転");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　
　　　　　　　……鎧袖、一触であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度フェードアウトして
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_019.nss"