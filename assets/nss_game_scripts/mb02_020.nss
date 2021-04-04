//<continuation number="1000">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_020.nss_MAIN
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
	#ev145_桜子を犯す童心_a=true;
	#ev145_桜子を犯す童心_b=true;
	#ev145_桜子を犯す童心_b02=true;
	#ev145_桜子を犯す童心_c=true;
	#ev145_桜子を犯す童心_d=true;

	#ev145_桜子を犯す童心_a=true;
	#ev145_桜子を犯す童心_b=true;
	#ev145_桜子を犯す童心_b02=true;
	#ev145_桜子を犯す童心_c=true;
	#ev145_桜子を犯す童心_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_021.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	#mb02_020=true;
	ReConquest();
	if($PLACE_reco){
		RecoOut();
	}
}

scene mb02_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================

..//ジャンプ指定
//前ファイル　"mb02_019.nss"

//◆邦氏サイド
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵演背景", 100, -170, -520, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200010b49">
「……ど、童心！
　童心坊!!」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200020b49">
「や……やめよ！
　そのような――無体な！」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200030a09">
「さあて……」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200040b49">
「……」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200050a09">
「今、何か申されましたかな？
　殿下」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200060b49">
「な、なにっ？」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200070a09">
「生憎とそれがし、今は舞の最中でござる。
　芸人は親の死に目と聞いても舞台を去って
はならぬが掟」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200080a09">
「御用事は、<RUBY text="・・">これ</RUBY>が終わった後で承るゆえ。
　今はどうか、お許しあれい」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200090b49">
「たわけ！
　それをやめよと申しているのだ!!」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200100a09">
「さぁて、さて。
　風雅を解さぬ困った若殿じゃ……」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200110a09">
「どうしても、とあらば。
　誰ぞに命じてみてはいかがでござる？」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200120b49">
「何だと……」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200130a09">
「この古河公方。
　遊佐の童心入道を」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200140a09">
「あの舞台より引きずり下ろせ……と。
　御家来衆に命じられよ」


{	FwC("cg/fw/fw邦氏_通常a.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200150b49">
「…………」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200160b49">
「ゆ――
　ゆけ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜騎兵数人。動かず

	StL(1000, @-120, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	StCR(1000, @-30, @0,"cg/st/3d九〇式竜騎兵_立ち_通常.png");
	StR(1000, @180, @0,"cg/st/3d八八式竜騎兵_立ち_通常.png");
	FadeStL(300,false);
	Wait(50);
	FadeStR(300,true);
	Wait(50);
	FadeStCR(300,false);

	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200170b49">
「何をしておる！
　余の命令が聞けぬか！」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200180b49">
「童心坊を止めよ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆動かず
	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200190b49">
「そ、そなたら……」


{	NwC("cg/fw/nw奉公衆Ａ.png");}
//【ｅｔｃ／奉公衆Ａ】
<voice name="ｅｔｃ／奉公衆Ａ" class="その他男声" src="voice/mb02/0200200e250">
「我ら奉公衆は殿下を守護し奉るが務め」


{	NwC("cg/fw/nw奉公衆Ｂ.png");}
//【ｅｔｃ／奉公衆Ｂ】
<voice name="ｅｔｃ／奉公衆Ｂ" class="その他男声" src="voice/mb02/0200210e251">
「古河中将様に盾突くは、叶わぬ仕儀にござ
います」


{	FwC("cg/fw/fw邦氏_怒り.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200220b49">
「……っ」

{	StCL(1000, @0, @30,"cg/st/st邦氏_通常_私服.png");
	Move("@StML*", 300, @60, @-30, DxlAuto, false);
	FadeStCL(300,false);
}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200230b49">
「だ――誰でもよい！
　童心を止めよ！」


//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200240b49">
「誰ぞ！
　童心を止めよっ!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆しーん
	WaitKey(1000);

	SetFwC("cg/fw/fw邦氏_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200250b49">
「……なぜ誰も答えぬ！
　誰か！　誰か――」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200260a09">
「見苦しいわい、<RUBY text="こわっぱ">小童</RUBY>が!!」


{	FwC("cg/fw/fw邦氏_失意.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200270b49">
「!?」


{	FwC("cg/fw/fw童心_頼政.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200280a09">
「なぜ、誰も<RUBY text="・・・">おのれ</RUBY>の命令を聞かぬか……？
　決まっておる。そんなこともわからんのは
おのれだけだわ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200290a09">
「<RUBY text="・・・・">飾り神輿</RUBY>が急に喋り出したところで、誰が
それに従おうか!?
　鬱陶しいと思うだけよ！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200300a09">
「神輿なら神輿らしく黙って鎮座しておれい！
　かついでやっているこちらの邪魔にならぬ
ようにのう!?」

//嶋：修正（引き据え）【090930】
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200310a09">
「偉そうな口は……
　誰も<RUBY text="たの">恃</RUBY>まず、己の手で童心坊めを引き捕え
られる力が身についてからにせい!!」


{	FwC("cg/fw/fw邦氏_自失.png");}
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200320b49">
「……あ……
　………あぅ…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どさっ。腰を抜かす邦氏
	CreateSE("SE01","se人体_衝撃_転倒05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StML*", 1000, 3, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StML*", 300, @-10, @30, null, false);
	FadeStCL(300,true);

	SetFwC("cg/fw/fw童心_頼政.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200330a09">
「……かはッ。要らぬ邪魔が入ったわ。
　待たせたのう、桜子どの」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200340a09">
「改めて、参るぞ……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆桜子姫を襲う童心
	CreateTextureEX("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev145_桜子を犯す童心_a.jpg");
	Fade("絵ＥＶ", 1000, 1000, null, true);

	DeleteStA(0,true);


	Wait(500);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	CreateTextureSP("絵ＥＶ", 5000, Center, Middle, "cg/ev/ev145_桜子を犯す童心_a.jpg");

	//リコ背景抹消
	RecoIn();
	SoundPlay("@mbgm36",0,1000,true);
}
//========================================================

	SetFwR("cg/fw/fw桜子_恐怖b.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200350b28">
「――ひっ……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200360b28">
「いやっ！
　何をする！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200370a09">
「舞には<RUBY text="はな">華</RUBY>がなくてはの。
　姫は良い華をお持ちの様子」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200380a09">
「一つ、皆に見せて<RUBY text="た">賜</RUBY>もれ」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200390b28">
「放して！
　放せ、下郎！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200400a09">
「くはッ。
　良き声なり良き声なり！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　桜子姫の手向かいも虚しい。
　それこそ舞のような鮮やかぶりで、白い裸身が露わ
にされる。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw桜子_恐怖b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200410b28">
「やっ……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200420a09">
「おうおう、そのように恥ずかしがるでない。
　秘してこそ花……されどそれを許さぬが人
の業」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200430a09">
「散らしてでも引き出してくれよう！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　せめて体を丸めて人目から隠す――だが悪僧はそれ
さえも許さない。
　腕ずくで身を起こさせ、抱え上げる。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_衣類脱ぐ01");
	CreateTextureSP("絵ＥＶ２", 4990, Center, Middle, "cg/ev/ev145_桜子を犯す童心_b.jpg");

	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵ＥＶ", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　暴虐に震える豊かな乳房が、舞台の白光の下に晒さ
れた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw邦氏_自失.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【邦氏】
<voice name="邦氏" class="邦氏" src="voice/mb02/0200440b49">
「――――」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200450b28">
「――――」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　あるまじき仕打ちを受ける姫と。
　霊魂を抜かれた態でへたり込む少年の。

　視線が、刹那――
　絡むこともなく、互いを射抜いた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_悪笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200460a09">
「ほっほっ！　良いぞ姫！
　実に華麗、実に美麗」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200470a09">
「一糸纏わぬ素裸に、<RUBY text="アラセイトウ">紫羅欄花</RUBY>の花一輪！
　これは何とも良い塩梅じゃ！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200480b28">
「っ……！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶ２５", 4980, Center, Middle, "cg/ev/ev145_桜子を犯す童心_b02.jpg");

	CreateSE("SE01","se人体_動作_締める02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("絵ＥＶ２", 500, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　姫は辛うじて自由になる左腕の先を動かすと、髪に
挿していた花をむしり取った。
　そのまま握り締める。握り潰す。

{	CreateSE("SE01a","se人体_血_たれる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
　既に正気ではないのだろう。
　拳から汁が<RUBY text="したた">滴</RUBY>っても、なお潰し続けた。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_悪笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200490a09">
「花に罪はなかろうに。
　酷いことをするものよ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200500a09">
「やむなし、代わりの花を頂こう。
　そうれ！　足を開かれよ！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200510b28">
「やめろっ！
　この……恥知らずが！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200520a09">
「はっはっはっ！
　恥知らずぶりでは、今の姫には敵わぬのぅ」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200530a09">
「ほれ……
　嫁入り前の生娘が、衆目に尻の穴まで晒し
ておる！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200540b28">
「――――!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200550a09">
「いや眼福眼福！
　上は大輪、下は小粒」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200560a09">
「どちらも可愛い花ぶりでござるのぉ！」


{	FwR("cg/fw/fw桜子_羞恥.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200570b28">
「うっ……うぅ……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200580a09">
「しかし惜しむらくはどちらも蕾。
　これではいささか興がない」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200590a09">
「ひとつ、この坊主めが……
　咲かして御覧に入れようか！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200600b28">
「――！」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200610b28">
「や……やめて……」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200620a09">
「ふっふぅ」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ずぶっと。
	CreateTextureSP("絵ＥＶ３", 4970, Center, Middle, "cg/ev/ev145_桜子を犯す童心_c.jpg");
	FadeDelete("絵ＥＶ２５", 1000, true);

	SetFwR("cg/fw/fw桜子_憎悪b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200630b28">
「く……ッ！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200640a09">
「ぬ。ぬ？
　これはしたり、これはしたり」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200650a09">
「手強かろうと思うておったが……
　存外にするりと入ってゆくな」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200660a09">
「さては姫。
　人前で肌を晒すを、愉しんでおられたか？」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200670b28">
「……っ、こ……のっ！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　息も絶え絶えの桜子姫に。
　古河公方はにんまりと笑い、心までも犯そうとする。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200680a09">
「はぁっはっは！
　それならそうと仰せになれば！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200690a09">
「わしも気合が乗ったものを……
　このようにのぅ！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200700b28">
「あ――」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆破瓜。血がつーっと。
	CreateTextureSP("絵ＥＶ４", 496, Center, Middle, "cg/ev/ev145_桜子を犯す童心_d.jpg");
	FadeDelete("絵ＥＶ３", 1000, true);

	SetFwR("cg/fw/fw桜子_恐怖b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200710b28">
「っ……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200720b28">
「く……ぅッ……!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200730a09">
「ようし、咲いた！
　見事に咲いたわ！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200740a09">
「鮮やかな赤が白地に映える……
　雅な花にてござ候!!」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200750b28">
「……古河……公方……！」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200760b28">
「遊佐、童心……!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200770a09">
「ほう？　ほゥ。
　何やら音色が変わってきたの」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200780a09">
「ならばこちらも合わせようか。
　……のう、桜子どの。先程、六波羅の口を
もって岡部を語る許しを頂いたな？」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200790b28">
「…………」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200800a09">
「姫の口から岡部は語られぬ。
　然らば姫は、我ら六波羅を語られませい」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200810a09">
「さぁさ。
　言葉が喉に支えるとあらば、一押しくれて
差し上げるほどに……！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200820b28">
「うぐっ……！」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200830a09">
「岡部の姫よ！
　六波羅を語れい！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200840b28">
「――外道ッッ!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200850a09">
「いかにも！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200860b28">
「人非人ッッ!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200870a09">
「いかにも！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200880b28">
「鬼畜！　悪魔！
　地獄の底から来た<RUBY text="やつばら">奴輩</RUBY>!!」


{	FwR("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200890a09">
「いかにもッッ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　衆の面前で裸にされ、姦されている姫が罵る。
　姦する入道は陶然と聴く。

　それは、おぞましいまでに<RUBY text="・・・・・">噛み合った</RUBY>交合だった。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw童心_バサラ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200900a09">
「たまらぬ！　たまらぬわえ！
　何と官能的な調べであろう！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200910a09">
「うっかり成仏してしまいそうじゃわ！
　姫よ、わしが往生してしまわぬよう、しっ
かり締めて捕まえておいてくれい！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200920a09">
「この喜悦は現世限りのもの。
　これあると知れば、わしはたとえ極楽から
でも戻って来られるからのぅ！」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200930a09">
「それ、参るぞ！」


{	FwR("cg/fw/fw桜子_憎悪b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200940b28">
「く……あぁぁ!!」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200950a09">
「父と兄に良く見てもらえぃ！
　仇に子種を注がれる姿……とくとのう！」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0200960b28">
「!?
　なっ――そんな」


{	FwR("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200970a09">
「おう、暴れるでない。
　そう喜ぶでない」


//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200980a09">
「焦らずとも、きちんと孕ませてやるからの。
　その後は……<RUBY text="・・・">菊の花</RUBY>じゃ」


{	FwR("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb02/0200990a09">
「そちらもなかなか乙なものぞ？
　ふわっはっはっはっはっはっはっはっは!!」


{	FwR("cg/fw/fw桜子_恐怖b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0201000b28">
「いやぁぁぁーーーーーーーーーーーーっ!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		RecoReturn();
	}else{
	//◆フェードアウト
		ClearWaitAll(2000, 2000);
	}
//============================================

}

..//ジャンプ指定
//次ファイル　"mb02_021.nss"