//<continuation number="520">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_006.nss_MAIN
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
	#bg005_山中_01=true;
	#bg022_山林a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_005.nss"

//◆山中・有道
	PrintBG("上背景", 30000);

	OnBG(100,"bg005_山中_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　村を出た時には夕暮れに差し掛かっていた。
　村長宅を辞してから少々時間を食ったせいだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060010a01">
《体調はどう？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060020a00">
「良好とは言えないが、問題はない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　代官との一戦は、体内の<RUBY text="カロリー">熱量</RUBY>をほぼ限度まで奪って
いた。通常、この消耗を補うには食事と休息のほかに
方法がない。消化の良いものを摂取し、六時間以上の
睡眠を取る必要があった。

　しかし現状、迅速な行動は体調の確保に優先する。
代官に時間を与え、巻き返しを許すべきではなかった。
彼が打撃を受け、おそらくは状況把握もまだ不十分で
あろう今の間に追撃せねば、時の利を失う。

　村の奥まった一角で見つけた雑貨屋で、保存食料の
類を二、三みつくろって腹へ収め、軽く体を動かして
消化を促し、脱糞した後少し休む。
　都合二時間。

　何もしないよりはましという程度の補給にしかなら
なかったが、まともな食事を得る手間を惜しんだのだ
から仕方がない。
　この程度でも短時間の戦闘には耐える筈だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060030a00">
「装甲は敵影確認まで控える。
　奇襲の可能性を考慮すると危険だが、今は
熱量の消耗を最小限に抑えたい」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060040a01">
《そうね……。
　相手に待ち伏せを掛けるような余力がない
ことを祈りましょう》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　舗装が充分とは言い難い道を歩く。
　村人の姿は見えなかった。田畑のある方角ではない
のか、異変を警戒して家に籠もっているのか。それと
も単に黄昏が近いからか。見れば陽は既に西天にある。

　夜になる前に片をつけたかった。
　しかしどうなるか。難しいかもしれない。

　季節は既に秋深く。
　落日の呆気なさが釣瓶落としに例えられる折柄。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060050a00">
「誰に」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060060a01">
《え？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060070a00">
「誰に祈れる？
　俺は」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060080a01">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060090a00">
「神仏の恩寵を願える筋合いではない」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060100a01">
《……なら、悪魔の庇護でも願えばどう》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060110a00">
「自分に祈って何の意味がある」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060120a01">
《私に祈れと、言っているのよ》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060130a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060140a01">
《……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060150a00">
「自惚れるな。
　得物」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060160a01">
《……自惚れないことね。
　手足》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　日の翳りがひたひたと蒼天の端から忍び寄っている。
　俺は早足に歩を進めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆山中・無道
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　村から問題の『お山』へ向かう道を外れ、森に入る。
　代官の落ちた地点は把握していた。墜落がもたらす
負傷を考えに入れれば、そこから長い距離を移動して
しまっている可能性は除去できる。発見は難しくない。

　……木々の間を潜りながらの移動が、方角を見失わ
せなければの話だが。
　地形と時間的な事情により、太陽もほとんどあてに
ならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060170a00">
（森に慣れた案内人を頼むべきだったろうか）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　ふと、そんなことを思う。
　馬鹿げた発想だった。

　自分自身の安全さえ覚束ない状況で、そんな真似が
許される筈もない。
　状況の困難が弱気を誘っているのかもしれなかった。

　左手の爪を右手の平に埋め込む。
　痛みがわずかに、意識へ喝を入れた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060180a00">
「気配はあるか」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060190a01">
《ええ。<RUBY text="かかさま">銀星号</RUBY>の……こればっかりは間違え
ようのない匂い。
　確かにこの辺りにある》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060200a00">
「正確な位置は……わからないのだな」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060210a01">
《私の、あれの気配を捉える能力は劔冑本来
の<RUBY text="みみ">探査機能</RUBY>ほど確かじゃないのよ。
　漠然とした位置以上のことは無理ね。視界
内に収めれば特定はできるのだけれど》


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060220a00">
「そちらには反応がないのか？
　<RUBY text="レーダー">探査機能</RUBY>には」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060230a01">
《……地表で、しかもこの地形ではね》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060240a00">
「……そうだな。
　愚問だった」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　こんな遮蔽物の多い場所で探査機能がまともに働く
わけがない。
　最新の<RUBY text="ウォーカードラグーン">陸戦特化型竜騎兵</RUBY>のように強力な熱源探査を
持っていれば、また話は別なのかもしれないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060250a00">
「地道に探すとしよう」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060260a01">
《そうね。
　方角の確認は任せて》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060270a00">
「<RUBY text="コンパス">方位磁針</RUBY>の代わりにはなるということだな。
　それは助かる」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060280a01">
《ええ。私も自分の有能さに感動してる》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　耳孔の奥に直接送られてくる不機嫌な<RUBY text="きんちょうじょう">金打声</RUBY>を聴き
ながら、樹海の中を縫って進む。
　まだそれほど奥深くではない筈だが、既に来た方向
も進行方向も見分けはつかなかった。木、また木。

　朝日の下であれば、気持ちの良い散策になったかも
しれない。
　だがそろそろ暗くなろうかというこの時刻、きっと
傍目には肝試しか自殺志願としか映らないことだろう。

　しかもどちらかといえば後者だ。
　どの木も何かを吊るすには良さそうな枝ぶりである。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060290a01">
《……どこかから悲鳴か恨み言でも聞こえて
きそうね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　村正が軽口を叩く。
　似たようなことを考えていたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060300a00">
「云わば招く、というぞ」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060310a01">
《こういう話をしていると、本当に？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060320a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獣の声。うおーん。狼。
	CreateSE("SE01","se背景_動物_狼咆哮01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0179]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060330a01">
《こんな風かしら》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060340a00">
「そうだな」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　足元が何かに突っ掛かる。
　根だ。雨に洗われて露出したものらしい。

　靴の無事を確認して、再び足を進める。
　この辺りは注意した方が良さそうだった。怪我はし
ないだろうが、靴を壊せば身動きが取れなくなる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060350a01">
《大丈夫？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060360a00">
「問題ない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se背景_動物_狼唸り01");
	MusicStart("SE01",0,500,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　……………………。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060370a01">
《ねえ》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060380a00">
「ああ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　足を止める。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060390a01">
《今、本当に聞こえなかった？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060400a00">
「俺もそのように思う」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　周囲を見回す。
　目を引くものは何もない。今まで通りの光景。

{	CreateSE("SEL01","se自然_風_野原01_L");
	MusicStart("SEL01",2000,1000,0,1000,null,true);}
　耳を澄ます。
　……静寂。何も聞こえてはこない。虫の音、葉擦れ、
そんな自然の響きを除いて、気に掛かる程の音は何も。

　だがそれだけにかえって、記憶に残る音響には現実
感があった。
　この環境で、あんなものを錯覚することがあるとは
思えない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060410a00">
「人の声ではなかったな」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060420a01">
《そう思うけれど。野犬？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060430a00">
「もう少し大きい獣のような気もする。
　方角はわかるか？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060440a01">
《わかるけど……行くつもり？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060450a00">
「獣が理由もなく叫ぶことはない。
　そしてあれは攻撃的な声だった」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060460a01">
《……人が襲われているのかもしれない、と
いうこと？》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060470a00">
「野獣同士の喧嘩なら、相手の声も聞こえて
きて良さそうなものだと思わないか」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060480a01">
《確かに。
　諒解、行きましょう。先導するからついて
きて。多分、そう遠くはないはず》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	SetVolume("SE*", 1500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	WaitPlay("SE*", null);
	WaitKey(1000);

	SoundPlay("@mbgm13",0,1000,true);

	DrawDelete("黒幕１", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0256]
　……悪い予測は的中した。
　往々にして、そういうものだ。

　人がいる。
　こちらに背を向ける格好の、中背の学生服――村の
青少年だろうか？　自分の足を抱え込むようにして、
<RUBY text="・・">何か</RUBY>を前に<RUBY text="うずくま">蹲</RUBY>っている。

　何か。
　並みの動物であれば、この方角からは人影に隠れて
見え辛かっただろうが。<RUBY text="・・">それ</RUBY>はどのようなものか一目
で判然としていた。つまり、並みではなかった。

{	OnSE("se背景_動物_狼唸り01",1000);}
　犬。山犬、だろう。人里で見られる犬とは太い一線
を画する禍々しい眼光、荒れた毛並み。
　昨今は六波羅を揶揄して御公儀などと呼ばれること
も多い、山野の危険な徘徊者に間違いなさそうだった。

　しかし、その体躯は異様。
　小型の熊ほどもありそうに思えた。仮に後足で立ち
上がれば、人間とそう変わらない高さに達するのでは
なかろうか。控えめに言っても尋常一様の犬ではない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060490a01">
《妙な話ね》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　村正の呟きが届く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060500a01">
《村の人達はあんな獣と共存してきたという
わけ？　あの体では、とてもこの森の中だけ
で餌をまかなうことなんてできないでしょう》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　その疑問は頷けた。確かにおかしい。
　どこからか流れてきたばかりなのだろうか？　だが
差し当たり、謎は棚上げにしておかねばならない様子
だった。

　両者の間の空気は張り詰めている。
　低く唸る獣に対し、学生姿の方は微動だにしない。
そもそも、犬を見ているのかどうか。単個で見れば、
地面の草花でも摘んでいるかのようだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/0060510a01">
《御堂。装甲は――》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/0060520a00">
「要るまい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　あの程度の獣ならば生身で駆逐できるだろう。
　もっとも、そういう意味での返答ではなかった。

　走る速度を緩める。足音を殺し、忍び寄った。
　けたたましい乱入は人影を驚かせ、獣の側に好機を
与える結果となりかねない。

　<RUBY text="・・・・・">要りもせぬ</RUBY>助けを押し付けた挙句にそれでは、余り
に情けないというものだった。
　ある程度の距離まで接近したところで足を止めて、
手頃な木の陰に身を隠す。

　しかし、山犬は新手の到来に気付いたのだろう。
　状況が動いたとを察しての判断か、最後通牒のよう
に甲高く吠える――<k><?>
{	OnSE("se背景_動物_狼猛り01",1000);}
そしてその残響の絶えぬ内、尚も
無関心なまでに不動の姿へ、牙を剥くや噛み掛かった。

　迅い。
　猫科の獣とはまた異なる、犬類特有の直線的、鋭角
的な突進。よほどに距離を置いていたならばともかく、
指呼の間合でこれを迎えて躱せるものではあるまい。

　人影は、<RUBY text="ようよ">漸</RUBY>う、起き上がっていた。

　のっそりと首をもたげるその動きは、襲い来る山犬
の怪物よりもむしろ熊じみている。
　格段に鈍く、遅い。

　犬が駆ける。
　人影が起つ。
　
　――接触する。

　その一刹那。
　企図を遂げていたのは、数間を疾駆して標的の首筋
を狙った犬怪ではなかった。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("@mbgm13", 500, 0, null);

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	OnSE("se人体_動作_跳躍01",1000);
	CreateTextureSP("絵背景100", 5000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	SetBlur("絵背景100", true, 3, 500, 50, false);

	DrawTransition("絵背景100", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	Zoom("絵背景100", 200, 2000, 2000, null, true);

	OnSE("se戦闘_攻撃_殴る01",1000);
	OnSE("se人体_動作_床殴る01",1000);
	CreateTextureSP("絵背景110", 5010, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Zoom("絵背景110", 0, 1500, 1500, null, true);
	SetBlur("絵背景110", true, 3, 600, 100, false);
	Shake("絵背景110", 300, -30, 10, 0, 0, 600, null, false);
	WaitKey(200);

	CreateColorEX("絵フラ", 5100, "#FFFFFF");
	Fade("絵フラ", 200, 1000, null, true);

	Wait(800);

	PrintGO("上背景", 10000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 800, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　時間軸上、最も早く重なった両者の部位は、人影の
右拳と山犬の咽喉だった。
　拳の先端が、脆弱な骨格に突き刺さる――刺される
<RUBY text="・・・・・">犬自身の力</RUBY>がそうさせる。

　針山へ蜜柑を投げ込むようなもの。
　人影は、ただ、<RUBY text="・・・・・・・">そこへ拳を置く</RUBY>以上の力を使っては
いない。

　くきゃり……という短くも滑稽な音を聞いたように
思った。
　あるいは錯覚だったろうか。

{	OnSE("se背景_動物_狼悲鳴01",1000);}
　その直後の悲痛な絶叫と、まるで曲芸を仕込まれて
いるかのように宙へ舞い、弧を描きつつ元の位置まで
転げ落ちていく大柄な山犬の姿は、一瞬、忘我を避け
得ないほど印象的なものであったから。

{	CreateSE("SE01","se人体_衝撃_転倒04");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　落ちた犬が、のたうつ――激しく、短く。
　学生服の人物が完全に立ち上がり、犬の傍まで歩み
寄った頃には、既にその四肢の痙攣は弱いものとなり、
か細く末期の息を洩らすばかりになっていた。

　一撃は喉ばかりでなく、頚骨まで砕いたのだろう。
　犬の怪力がその結果を導いた。お陰で長く苦しまず
に済んだ――そう思えば皮肉であり、哀れであった。

　止めを与えるべきか、その人は迷ったのだろうか。
近付く足がふと、たたらを踏む。
　その間に、終わっていた。最後の呼吸が絶え、森に
静寂が戻る。そして人影の背には後味の悪さが滲んだ。

　その背を見て、俺は――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

}


//◆選択：率直だ、と思う／未熟だ、と思う


..//ジャンプ指定

//◆率直だ、と思う　"ma02_006a.nss"
//◆未熟だ、と思う　"ma02_006b.nss"

//★選択肢シーン
scene ma02_006.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	OnBG(100,"bg022_山林a_01.jpg");
	FadeBG(0,true);

	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("率直だ、と思う","未熟だ、と思う");
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
//率直だ、と思う　"ma02_006a.nss"
				$GameName = "ma02_006a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//未熟だ、と思う　"ma02_006b.nss"
				$GameName = "ma02_006b.nss";
		}
	}
}

