//<continuation number="250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_029vs.nss_MAIN
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
	#ev146_新陰流合撃解説_a=true;
	#ev146_新陰流合撃解説_b=true;

	#bg070_普陀楽城内階段ホール_03=true;
	#bg071_普陀楽城内張り出し_03=true;
	#ev146_新陰流合撃解説_a=true;
	#ev146_新陰流合撃解説_b=true;
	#ev146_新陰流合撃解説_c=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_030vs.nss";

}

scene mb02_029vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_028vs.nss"

	SoundPlay("@mbgm09",0,1000,true);//ダミー注意

//◆景明ＶＳ常闇
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg070_普陀楽城内階段ホール_03.jpg");
	StR(1000, @0, @0,"cg/st/st常闇斎_通常_私服.png");

//おがみ：村正をウィンドウで出しておきます
//	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_抜刀手無.png");
	CreateWindow("絵演窓右", 4000, 0, Middle, 512, 576, false);
	SetAlias("絵演窓右","絵演窓右");
	CreateTextureSP("絵演窓右/絵演右", 4100, 0, 0, "cg/bg/bg071_普陀楽城内張り出し_03.jpg");
	CreateTextureEX("絵演窓右/絵背景100", 4200, Center, Middle, "cg/st/3d村正標準_立ち_抜刀手無.png");
	Rotate("絵演窓右/絵演右", 0, @0, @180, @0, null,true);

	Move("絵演窓右/絵背景100", 0, -470, -180, null, true);


	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 500, true);

	CreateSE("SE01","se戦闘_動作_鎧_踏み込み01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("絵演窓右/絵背景100", 500, -450, -200, Dxl2, false);
	Fade("絵演窓右/絵背景100", 500, 1000, null, false);
	FadeStA(500,true);


	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0010a00">
「……柳生常闇斎」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0020b37">
「……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0030a00">
「相違なかろうか」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0040b37">
「私は裏方の者。
　敵に名乗る習慣は持ちません」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0050b37">
「が……貴方は特別です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　それはつまり、認めるという意味だ。
　その名称で呼ばわれる事を。

　――柳生常闇斎。
　幕府門外不出の武芸、柳生新陰流六波羅派の現宗主。
幕軍剣術師範にして足利一族直衛隊〝厩衆〟の統括者
……

　つまりは大和第一位の剣客！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0060b37">
「〝切落〟だと思いましたか？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　武界の頂上にいる男は、俺の左手を指差しつつそう
言ってきた。
　手首から先を失っているその手。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0070a00">
「……」


{	FwC("cg/fw/fw常闇斎_通常b.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0080b37">
「一刀流の真髄〝切落〟は相手の剣と対称の
一撃をもって勝を取る……
　その秘訣は」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶａ", 6000, Center, Middle, "cg/ev/ev146_新陰流合撃解説_a.jpg");
	Fade("絵ＥＶａ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0090b37">
「<RUBY text="・・・">遅れて</RUBY>――相手の剣筋を見切った上で動き。
それを<RUBY text="・・・・・">切り落とす</RUBY>明確な意図をもって迎え、
刀と刀の打ち合いを制する点にあります。
　求められるのは運剣の精密さ」


{	FwC("cg/fw/fw常闇斎_思考.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0100b37">
「我らの〝合撃〟はこれと似て非なるもの。
　相手の剣筋を見極めてから動くところまで
は同じ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：剣理図解。刃鳴風の。
	CreateTextureSP("絵ＥＶｂ", 5990, Center, Middle, "cg/ev/ev146_新陰流合撃解説_c.jpg");
	FadeDelete("絵ＥＶａ", 1000, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0110b37">
「しかしその先は精密さではなく効率を求め
ます。
　<RUBY text="・・・・">大きな円</RUBY>を描く敵の剣筋の内側に、我が剣
は<RUBY text="・・・・">小さな円</RUBY>を描き――」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶｃ", 5980, Center, Middle, "cg/ev/ev146_新陰流合撃解説_b.jpg");
	FadeDelete("絵ＥＶｂ", 1000, true);

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0120b37">
「結果的に、相手よりも早く目標に達し。
　打ち合わず。<RUBY text="・・・・・">乗り込んで</RUBY>。
　斬る」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0130b37">
「これが新陰流六波羅派の合撃です。
　……同じ新陰流でも解釈の相違があるので、
他の派ではまた異なる形で伝わっているよう
ですが」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　面倒見の良い教師の顔付きで、彼はそう語る。
　出来の悪い生徒は、半分も理解できずにいたが。

　立ち上がりの遅れを効率的な運剣でカバー――いや
逆転させる、術。
　……わかったのはせいぜいがそこまで。

　真似はできないし、打ち破る方法も思いつかない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/029vs0140a01">
《御堂……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　だが余計な事は骨身に徹してよく理解してしまった。
　それは村正も同様だったのか。

　この男には勝てない。
　現時点、現状況下では――どう仕様もなく。

　腹腔に冷たいものが満ちる。
　それはおそらく、血と熱量を無為に垂れ流してゆく
左手首の切断面のせいばかりではなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/029vs0150a01">
《――全力で》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0160a00">
（<RUBY text="いや">否</RUBY>）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　<RUBY text="おわりのながれ">蒐窮磁装</RUBY>――<RUBY text="レールガン">電磁抜刀</RUBY>の使用をも含めて戦術を検討
しろと、村正が云う。
　それはこの赤い劒冑にとって屈辱的な進言であった
に違いない。

　生身の人間を相手に総力を費やすなど！
　
　だが屈辱とは関係なしに、俺は進言を拒んだ。

　――もう、<RUBY text="おれ">村正</RUBY>は誰も殺さない。
　一条と約束したのだ。罪無き善良な人間までも殺す
呪いを、眠らせておく為に。

　劒冑の能力を完全に駆使すれば、必ず相手を殺して
しまう。劒冑は殺人目的に特化された武器なのだから。
　抑制せねばならない……一条に従うと決めた、その
誓いに懸けて。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb02/029vs0170a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　村正は黙った。
　諦観を伝えるような沈黙だった――この勝負への、
<RUBY text="・・・・">ではなく</RUBY>。

　別の何かへの諦め。
　……その正体を探るだけの心理的ゆとりは今、俺に
与えられていない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0180b37">
「――さて。
　私は一人。刀一振りを提げて貴方の進路に
立ち塞がる。手の内はこの〝<RUBY text="がっしけん">合撃剣</RUBY>〟」


//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0190b37">
「貴方は武者一騎。仲間はいるが離れている。
　時間は無い。ややもすれば私の部下がここ
へ来る」


{	FwC("cg/fw/fw常闇斎_敬意.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0200b37">
「状況、以上。
　では――どうされます？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　挑発としか思えないようなことを、とても挑発には
聞こえない穏やかな口調で剣士が言ってきた。
　黒い機械に覆われてその双眸は見えず、真意もまた
窺い知れない。

　だが突きつけられた問題は、確かにいま俺が直面す
べき現実そのものだった。掛け値もない。
　敵は一人。己も一人。しかし敵には近い将来の決定
的な増援があり、こちらには無く……。

　敵の剣は本邦武術史上に冠たる大流儀、柳生新陰流
の秘極に達したもの。
　無名の流派を<RUBY text="ようよ">漸</RUBY>う修めたきりの湊斗景明の剣とでは、
同じ剣でも重さが違う。

　武者と生身、本来絶対的であるべき戦力差は有って
無きが如し。
　
　――どうすべきか。

　この状況を如何なる手段で打開する？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw常闇斎_思考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【常闇斎】
　
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0210b37">
<RUBY text="シンポウハカタチナク、ジッポウニツウカンス"> 「心法無形通貫十方」 </RUBY>


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0220a00">
「……」


{	FwC("cg/fw/fw常闇斎_通常a.png");}
//【常闇斎】
<voice name="常闇斎" class="常闇斎" src="voice/mb02/029vs0230b37">
「貴方は<RUBY text="せつにんとう">殺人刀</RUBY>に留まる器か？
　それとも<RUBY text="かつにんとう">活人刀</RUBY>に届く器か……？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　返す言葉はない。
　つまりは、返す技もない。

　剣の勝敗は既に定まっている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 300, 1000, null, false);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/029vs0250a00">
（そうか）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　それが<RUBY text="・・">答え</RUBY>なのだと、俺は気付いた。

　湊斗景明は柳生常闇斎に勝てない。
　――負けた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 1500);

}

..//ジャンプ指定
//次ファイル　"mb02_030vs.nss"