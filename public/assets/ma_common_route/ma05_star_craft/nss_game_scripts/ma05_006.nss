//<continuation number="1130">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_006.nss_MAIN
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
	#bg047_景明故郷町a_01 = true;
	#bg048_景明故郷オフィス_01 = true;
	#bg051_皆斗家居間_01 = true;
	#bg050_湊斗家門前_01 = true;

	#ev131_景明が湊斗家に来た日=true;
	#ev132_笑う統=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_007.nss";

}

scene ma05_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_005.nss"

//◆現実復帰
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060010a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　彼女らは俺に気付きもしない。
　笑い合いながら、駆け去っていく。

　世界が違うのだと、そう思った。
　彼女らには彼女らの世界。こちらは、俺と光のいる
世界。

　その間には壁が立ちはだかっている。
　視線は通っても、心はもう通わない。

　楽しげな――遠い光景から目を離して、俺は会社へ
向かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆会社
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg048_景明故郷オフィス_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	WaitKey(1000);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	WaitKey(1600);

//◆一度ブラックアウトして、また戻り
	CreateColorEX("絵暗転", 5500, "#000000");
	Fade("絵暗転", 1000, 1000, null, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm18",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……しまった。
　
　時計を見て、胸中に不覚を呟く。

　<RUBY text="・・・">一瞬前</RUBY>に見たときより、約二十分進んでいる。
　つまりはそれだけの時間、何もせず、意識をどこか
へ飛ばしていたということだ。

　寝不足が祟っている。
　ほんのわずか気を緩めるだけで、俺の精神は<RUBY text="もや">舫</RUBY>いを
外された船よろしく海を漂ってしまうようだ。

　部長らが俺の醜態に気付かなかった筈はないだろう。
　それでも起こされなかったのは、気を遣われたから
に他ならない。

　彼らも俺の家庭事情は知っている。
　知って、何それとなく配慮をしてくれる。

　それは有難かったが、しかし甘えられなかった。
　給料を貰っているのだ。その分の仕事をする責任が
俺にはある。

　この時世、辛いのは何も我が家だけではない。
　どの家庭もそれぞれの労苦を抱えている。会社とて
も同様だ。

　自分の所の苦しみだけを押し立てて、よそへ負担を
回し付けるが如き真似は、厚顔無恥というべきだった。
　自省せねばならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060020a00">
「申し訳ありません、部長」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060030e238">
「ん、いや。気にするな。
　疲れてるんだろ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060040a00">
「業務に差し障りがある程ではありません。
　今は気が緩んでいました」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060050a00">
「今後は気をつけます」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060060e238">
「うん……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　部長が不安げに頷く。
　その不安が俺の仕事の進捗に対してのものなら気も
楽だったが、そうでないのは明らかなだけに心は重く
ならざるを得なかった。

　人に気を遣わせるという事は、かくも苦しい。
　これは恩知らずな言い草というものかもしれないが。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060070e226">
「先輩、お茶どうぞ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060080a00">
「……すまない。
　頂く」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060090e226">
「そんなに気張らなくても大丈夫ですよー。
　今は忙しい時期でもないですし」

//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060100e226">
「フフフ……
　わたしなんて、今日で三日連続遅刻です。
記録更新なのですよ」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060110e238">
「……お前はもう少し気張れ。
　あと、減給」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060120e226">
「えー!?
　そ、そんなぁ……今月は……待ちに待った、
劇団☆超感染の新作公演があるのに……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　くらりとよろめいて、窓枠へ手をつく同僚社員。
　思わず苦笑する。

　……結局、何が悪いかと言って、深刻に考え過ぎる
のが一番悪いのかもしれない。

　俺は頭を軽く振って気を取り直すと、改めて手元の
書類に向かった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060130e226">
「…………」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060140e238">
「どうした田中。ぼーっとして。
　そのうち給料がゼロになるぞ、そんなこと
してると」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060150e226">
「部長」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060160e238">
「……ん？」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060170e226">
「<RUBY text="・・・・">あいつら</RUBY>です」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060180e238">
「……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060190a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　かりかりと小気味良い音を立てて踊っていた部長の
鉛筆が急停止する。
　俺は椅子を引いて、立ち上がった。

　窓の外を凝視している同僚の傍へ寄り、視線の行先
を追う。

　会社の玄関前に、人の一団があった。
　それだけならば、商品の搬入作業と見間違えたかも
しれない。

　だが群れた人々が悉く剣呑な表情をし、それ以上に
剣呑な気配の漂う筒状あるいは棒状の道具を手にして
いるとなれば、断じてそんな筈はなかった。
　彼らの道具は、一般的には銃火器や刀剣と呼ばれる。

　つまりは武装した一団が、会社の前に出現していた。
　その付近には数人の社員の姿が見える。が、対応を
しかねている様子だった。

　事態の意味がわからないから、ではない。
　その逆だろう。彼らが何者で何を求めて来たのかは、
わかり過ぎるほど良くわかっている。

　彼らは、山賊だ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆会社前。山賊団
	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(1000,true);

	SoundPlay("@mbgm35",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　その出自について、確かなところは誰も知らない。
　だが、推測は容易くできた。

　実の話、この手の武装略奪集団は今の大和において
珍しい存在だとは言えない。
　溢れている、とさえ言えたかもしれない。

　六波羅幕府の内外で吹き荒れる権力闘争の嵐は当然、
闘争の回数と同じだけの敗者を産み落とした。
　彼らは地位を奪われ、政治の舞台から退場する。

　だがその退場が現世から黄泉への退場をも意味する
かといえば、必ずしもそうではない。
　多くの場合その二つはセットだったが、中には粛清
の刃を逃れ、再起を期して野に潜るような者もいる。

　彼らには彼らなりの信念があったのかもしれない。
　だが市民層にとってみれば、彼らが潔い死を選んで
くれない事ほど迷惑な話も他になかった。

　何故なら彼らは、再起を期す――少なくともそう主
張して一族郎党を繋ぎ止める――以上、武器を捨てる
筈がなく、武器を手にしている以上、市井に混じって
まっとうに日銭を稼ごうなどと考えられる筈もなく、

　結果、一日一日を生きるための手段として、武力を
背景に市民から物資を奪うという道へ至るからだった。
　本人らの主張は兎も角、傍からは盗賊団以外の何と
も呼べない集団がこうして誕生する。

　幕府の目が届きにくい、余り都市化の進んでいない
地方はしばしば彼らの根城とされた。
　つまりはこの町も、そうしたケースに当てはまって
しまったのだ。

　無論、幕府には連絡し、対応も乞うた。
　だが、梨の<RUBY text="つぶて">礫</RUBY>であった。

　別にこの手の賊兵に対して幕府が寛容主義を貫いて
いるという事実はない。討伐は行われている。
　だが幕府の戦力は有限であり、それは当然、危険度
の高い敵に対して優先的に向けられる。

　大兵力を有したまま下野した者、人望のあった者、
海外勢力と繋がりのある者などが、迅速な討伐の対象
となった。
　この町に出現した彼らはそうではない。

　どちらかといえば小規模な部類だった。
　しかし、田舎町を完全に萎縮せしめるだけの戦力は
持っている。

　六波羅の注意は引かないが、山賊をやるには充分。
　……考えようによっては、最も始末の悪い賊集団に
当たってしまったのかもしれなかった。

　幕府が比較的安定し、軍が暇を持て余しているよう
な時期であれば、こんな町にも駆除部隊が派遣される
可能性はあったろうが。
　生憎と、今現在は違う。

　堀越公方<RUBY text="あしかがもりまさ">足利守政</RUBY>が鎮守府将軍岡部頼綱と手を結び、
大将領足利護氏打倒の兵を挙げる――
　そんな噂が広まり、しかも守政は釈明の努力をしな
かったため、鎌倉中央は神経を尖らせていたのである。

　篠川、小弓、古河の三公方府、そして鎌倉の中央軍
は堀越の挙兵に備えた警戒態勢下にあり、取るに足ら
ない小賊の討伐どころではなかった。
　いくら要請を出そうと通る筈がない。

　そういう次第で。
　町付近の山を占拠した彼ら山賊団は、時期外れの春
を謳歌するのだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060200e080">
「……とまあ、こんなところだ。
　すぐに用意して貰おうか？」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060210e238">
「い、いや……そう言われましても。
　それだけの品を持っていかれてしまっては
……我が社の経営が立ち行かなく……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060220e080">
「そーかぁ。
　ならどうする？　オレらと戦う？」

//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060230e080">
「戦って今ここで会社潰す？」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060240e238">
「それは……
　そんな……しかし」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　引き篭もってしまった社長に代わってやむなく応対
に出た部長の立場は、全く同情するほかになかった。
　銃口をちらつかせる、まともな交渉など望むべくも
ない相手と辛抱強く対話せねばならないのだから。

　交渉が一応、対話の形になっているのは、相手側に
こちらを嬲る意図があるためでしかない。
　利害調整の意図などは皆無だった。盗賊なのだから、
当たり前だが。

　とはいえ実のところ、俺はそうまで深刻な――会社
が致命的な損害を受けるとまでは――危機感を抱いて
いなかった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnBG(100,"bg048_景明故郷オフィス_01.jpg");
	FadeBG(600,true);

	SetNwC("cg/fw/nw社員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060250e226">
「せ、先輩……どうなっちゃうんでしょう」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060260a00">
「どうにもならない。
　いや、相応の物資は供出せねばなるまいが」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060270e226">
「で、でも、なんかとんでもない要求をされ
てるみたいですけど……
　あぁぁ、このままだと給料どころか失職の
ピンチに」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060280a00">
「従業員の一斉賃金カットは覚悟しておいた
方が良さそうだが、その程度で収まるだろう。
　あれはヤクザの手口だ」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060290e226">
「え？」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060300a00">
「彼らは町の経済に寄生している。
　経済が破壊されるほどの打撃を町に与えれ
ば、彼ら自身の進退が窮まる理屈だ」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060310a00">
「過大な要求をしているのは、この後で提示
する本当の要求を無抵抗に受諾させるための
布石に過ぎない。
　そろそろ譲歩するだろう」

{	NwC("cg/fw/nw社員.png");}
//【ｅｔｃ／同僚女】
<voice name="ｅｔｃ／同僚女" class="その他女声" src="voice/ma05/0060320e226">
「そ、そうでしょうか……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060330a00">
「過去の例からみてもほぼ間違いない。
　彼らは無軌道な暴力集団ではなく、理性的
に統率された組織だ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateWindow("窓", 1500, 0, 100, 1024, 376, false);
	SetAlias("窓","窓");
	CreateTextureEX("窓/絵背景100", 1500, 8, -248, "cg/bg/bg047_景明故郷町a_01.jpg");
	Zoom("窓/絵背景100", 0, 2500, 2500, null, true);
	SetShade("窓/絵背景100", HEAVY);
	CreateTextureEX("窓/絵st100", 1600, 459, 55, "cg/st/resize/st首領_通常_制服_ex.png");
	CreateColorEX("絵色100", 1000, "Black");

	OnBG(100,"bg047_景明故郷町a_01.jpg");
	FadeBG(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　同僚は疑わしげであったが、俺は彼らの中の一角を
見ていた。
　軽装甲車の脇で、その人物は<RUBY text="モノバイク">単輪自動車</RUBY>を<RUBY text="アイドリング">空吹き</RUBY>さ
せている。

　南方戦線で兵役に従事していた頃、幾度か目にした
機体――騎体だった。
　大和陸軍の<RUBY text="キューマルドラコ">九〇式竜騎兵甲</RUBY>。

　劔冑だ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Fade("絵色100", 1000, 500, null, false);
	Fade("窓/*", 0, 1000, null, false);
	DrawTransition("窓/*", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
　つまり、バイクに跨るあの女性は武者。
　この集団の頭株に違いない。

　その貌に張り付いた侮蔑の笑みは他の賊兵らと同様
だが、一点違うのは、武力による威嚇行為に酔ってい
ない所だった。
　落ち着いて、部下の交渉を眺めている。

　それも、頃合良しと見たのだろう。
　明らかに合図の意図をもって、一際大きく<RUBY text="エグゾースト">排気</RUBY>する。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 500, false);
	DrawDelete("窓/*", 500, 1000, "slide_01_04_1", false);

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060340e080">
「……ち、貧乏くせえ連中だ。
　仕方ねえなあ！」

//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0060350e080">
「じゃあこれと、これだけ用意しろ。今日の
ところはそこまでにまけといてやるよ。
　感謝してくれよな。全然足りないんだぜぇ、
こんなんじゃ！」

{	NwC("cg/fw/nw部長.png");}
//【ｅｔｃ／部長】
<voice name="ｅｔｃ／部長" class="その他男声" src="voice/ma05/0060360e238">
「は、はい。有難うございます。
　すぐに用意しますので……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　気が変わっては大変と、部長がすぐさま商品倉庫へ
すっ飛んでいく。
　その背を打った山賊たちの会釈無い笑いは、容易く
手に乗った部長の浅慮を嘲ったものなのであろう。

　実際は、部長は愚かな人間ではない。
　俺が同僚に呟いた程度の事は容易に見抜けるだけの
知性の所有者だ。

　が、武器を持った人間を前にして知力を鈍らせずに
済む人間というのは圧倒的に少数派である。
　俺とても、彼らの矢面に立たされていたら、賢しく
推理を巡らす余裕など無かったに決まっていた。

　部長は貧乏籤を引いたとしか言いようがない。
　この後、逃げを決め込んでいた社長にも詰られる事
になるだろう。

　せめてその際には、弁護役を務めたいものだが……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	Delete("窓");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060370a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　そう思いつつ部長から山賊らへと戻した視線を、俺
は慌てて伏せた。
　偶然、こちらを見回していた頭目の眼差しと鉢合わ
せしてしまったからだ。

　相対した一瞬の間に、いくつかの印象を覚える。
　高慢、底意地の良くなさ、意外に清潔な容貌、力へ
の過信――大半は<RUBY text="マイナス">負</RUBY>の方向のものだった。

　幸い、向こうはこちらの事など気にも留めなかった
らしい。
　臆病な態度を嗤うように鼻を鳴らしだけして、すぐ
に注意が離れてゆくのを感じた。

　安堵の吐息をつく。
　絡まれなくて済んだのは幸いだった。争い事は生来、
どうも好きではない。

　増してこのような手合いとの争いは。
　嘲笑を浴びるだけで済むなら、安いものだ。

　部長が手近な人間を集めて物資の運び出しを始めて
いる。
　手伝うため、俺もそちらへ向かった。

　作業は捗りそうだった。
　皆の顔を見ればわかる。彼らを手早く追い払うには
それが最善だと、俺のみならず誰もがそう悟っていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆町？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_皆斗家居間_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　<RUBY text="みなと">皆斗</RUBY>家は五百年間に渡ってこの土地に君臨してきた
氏族だ。

　元来は武士であり、一帯を所領としていたが、徳川
氏による天下一統と前後して帰農。
　しかし大地主として事実上の支配力は保持し続け、
現在にまで至っている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(1000,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
　湊斗家はその分家にあたる。
　が、概して相続問題の収拾の結果として生じる一般
的な分家族とは、やや性格を異にすると言わねばなら
ない。

　発祥は五百年前、つまり皆斗本家の登場とほぼ時を
同じくする。
　そもそも皆斗家は朝廷より勅命を受け、<RUBY text="・・・・・">あしきもの</RUBY>
を封じるためにこの地へやって来た一党であった。

　彼らはその具体的手法として、一族を分けて別家を
建て、〝<RUBY text="あ">邪</RUBY>しきもの〟を鎮める祭祀を行わせ、本家が
それを警護及び監視する――という形をとった。
　<RUBY text="すなわ">即</RUBY>ちその別家が、湊斗家である。

　このような祭祀に特化された家系は、血統の純潔を
重視し、親族婚を重ねる例が少なくない。
　湊斗家において、それがまさしく正逆になったのは、
役目として鎮守するものが悪害であったからだろう。

　湊斗家の当主は代々女性が務め、必ず外の土地から
婿を迎えて後裔を残した。
　常に他所者の血を加え続けることで、湊斗家を異類
の存在とし、抱える厄災もろとも隔離したわけである。

　屋敷地が常に里から離れた場所に置かれたことも、
理由は等しい。
　湊斗家は高い地位を認められながら土地に溶け込む
ことを許されず、敬して遠ざけられる立場にあった。

　……だがそれも、形骸化して久しい。
　伝統的支配層の常として頑迷なまでに保守的である
皆斗本家が手配りを怠らず、そのため<RUBY text="かたち">形骸</RUBY>は維持され
続けているものの、町の人々の意識は既に過去と違う。

　大半の人は湊斗の家を、ちょっと変わった<RUBY text="・・・・">お宮さん</RUBY>
程度にしか見ていなかった。
　でなければ山賊問題に際して、強気な本家への抑止
役に養母が持ち上げられることもなかったろう。

　それは多分に、姉御肌と呼ぶべき養母の性格のせい
でもあったろうが。
　何にしろ、本家にしてみれば幾重にも面白からぬ話
に違いない。

　だから会いに行くにあたり、それなりの覚悟はして
いた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆本家屋敷内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg051_皆斗家居間_03a.jpg");
	FadeBG(0,true);

	CreateWindow("窓", 1500, 0, 100, 1024, 376, false);
	CreateTextureEX("窓/絵背景100", 1500, 8, -248, "cg/bg/bg051_皆斗家居間_03a.jpg");
	Zoom("窓/絵背景100", 0, 2500, 2500, null, true);
	SetShade("窓/絵背景100", HEAVY);
	CreateTextureEX("窓/絵st100", 1600, 459, 55, "cg/st/resize/st本家_通常_私服_ex.png");
	CreateColorEX("絵色100", 1000, "Black");


	FadeDelete("絵暗転", 1000, true);
	WaitKey(1000);
	FadeDelete("上背景", 1000, true);

	Fade("絵色100", 1000, 500, null, false);
	Fade("窓/*", 0, 1000, null, false);
	DrawTransition("窓/*", 1000, 0, 1000, 100, null, "cg/data/slide_01_04_0.png", true);


	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060380b52">
「考えてもみよ。
　奴らは正規兵崩れではあろうが、数は百に
も届かぬ。町の男どもが集い、不意を襲えば、
勝てぬ道理などあろうかよ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060390a00">
「は……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060400b52">
「それを統めは人死にが出るの、割りに合わ
ないのと言いおって……
　まさしく女の言辞よな。一命を賭してでも
守るべき誇りがあることを、知ろうともせぬ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060410a00">
「……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060420b52">
「景明！
　貴様もそうは思わんか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060430a00">
「……はっ。
　自分如きには、何とも」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵色100", 700, false);
	DrawDelete("窓/*", 700, 1000, "slide_01_04_1", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　……覚悟はしていたが、実際にこうなってみると、
やはり対応に窮するものがある。
　俺は嘆息を肺の奥へ隠しつつ、<RUBY text="すがめ">眇</RUBY>で時計を確認した。
実りないまま、来訪より既に一時間が経過している。

　話は本題に触れてさえいない。
　本家にとっては兎も角、俺にとっての本題には全く。

　やにわに用件から切り出すのも無作法な話であるし、
それにどうせ避けられぬ話題ならと、こちらから山賊
の一件を持ち出してみたのだが。
　どうも後悔すべき選択をしたらしい。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	Delete("窓");
	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060440b52">
「わからぬはずはなかろう！
　貴様は御国の為に戦地へ赴いた身ではない
か。武功を挙げられなかったのは残念だが、
金で兵役を逃れた酒屋の糞餓鬼などとは違う」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060450b52">
「知っておるぞ。統は兵役免除の手続きをし
ようとしたが、貴様が拒んだのであろう。
　その一件を聞いて以来、儂は貴様のことを
見込んでいるのだ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060460a00">
「恐縮です」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　……単に、そこまでの世話は養家に掛けられないと
思っただけなのだが。
　どうも誤解があるようだ。

　狷介で知られるこの人が、一年前に光が倒れて以来
度重なっている俺の訪問を、歓迎はせぬまでも門前払
いにもしない理由がそこにあると思えば、その誤解を
解いてしまうわけにもいかない。<RUBY text="いささ">些</RUBY>か心苦しかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060470b52">
「貴様を養子に取った明堯にも、ふむ、見る
目くらいはあったのだろうな。
　聞けば、貴様の実の親は義勇兵として大陸
へ赴き、壮烈な戦死を遂げたとか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060480a00">
「はい。
　そのように、聞いております」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060490b52">
「南蛮の血筋とはいえ、御国より受けし恩を
忘れず、一命を捧げたは天晴れである。
　貴様の身体にもその父母と同じ血が流れて
いるのだ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060500a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　これにはどう答えて良いかわからず、目礼だけする。
　養父が俺を引き取るに際し、最も反対したのは目の
前の保守的老人だと、誰からともなく聞き知っている
だけに反応の<RUBY text="すべ">術</RUBY>がない。

　だが本家は自己の強硬論を補強するために、事実を
捏造して今更俺の両親を持ち上げたわけではなかった。
　この俺に血肉を与えたのは、確かにそういう人々で
あったらしい。

　長崎鳴滝の人である。
　つまりはネーデルラント市国の人間であり、厳密な
意味では大和人と言えない。

　外暦一八〇〇年代初頭、欧州全土を巻き込んだナポ
レオン戦争の中で、<RUBY text="オランダ">蘭王国</RUBY>は<RUBY text="ブリテン">大英連邦</RUBY>に踏み潰され、
地上から消滅した。
　戦争終結後も、国土回復は成されなかった。

　行き場を無くしたオランダ人の窮状は、徳川宰領府
もすぐに知るところとなった。
　開府以来の長きに渡る国交を鑑み、これを看過する
は国家の信義に背くと結論、

　当時の国際港でありオランダ人にも馴染み深かった
長崎近郊の土地を開放、居住地として提供した。
　アジア各地の商館で進退窮まっていたオランダ商人、
外交官らが殺到したのは言うまでもない。

　その土地はネーデルラント市国と名づけられ、徳川
宰領府と大英連邦に非好意的ないくつかの国からのみ、
独立国としての扱いを受けた。
　爾来、百年。

　長崎鳴滝村の小国家は、オランダの亡命政権とでも
いうべき発祥時の性格を徐々に変え、大英連邦の支配
から脱した欧州人の駆け込み寺のようになっていた。
　俺の祖先も<RUBY text="・・・・・">駆け込んだ</RUBY>口だ。

　聞いた話では、祖父の代に<RUBY text="ネオ・ブリテン">新大陸</RUBY>から渡って来た
のだという。
　おそらくは、第二次新大陸独立戦争の敗残兵だった
のだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
〝<RUBY text="アウァ・アメリカ">偉大なる故郷</RUBY>〟を<RUBY text="ブリテン">女帝</RUBY>の<RUBY text="くびき">軛</RUBY>から解放せよ――
　今も新大陸で密やかに叫ばれているという合言葉を、
祖父も口にしたのではないか。

　……実の親族の事は、どうにも曖昧になる。
　俺が生家の姓――大和への帰化を志した家祖が本来
の英語姓を和風に<RUBY text="アレンジ">改変</RUBY>したもの――を冠し、<RUBY text="あらたじろう">改次郎</RUBY>と
名乗っていたのは生後ほんの数年ばかりに過ぎない。

　およそ二十年前、<RUBY text="アラタ">改</RUBY>家の父と母――二人とも大和人
の血をも濃く備える<RUBY text="ハイブリッド">混血</RUBY>であったそうな――は、幼児
だった俺を残し、大陸戦線に身を投じて戦死した。
　これは長崎鳴滝の人間として珍しい話ではない。

　流亡の身を迎え入れてくれた大和の恩に報いる想い
が強かったのだろう。欧州からアジアへと支配の網を
広げてゆく大英連邦に対する復仇の意欲もあったろう。
　長崎鳴滝の成人は男女問わず多くが大和軍に参じた。

　また、市国内で結成されたネーデルラント騎士団に
加わる者も多かった。
　これは四年前――先の大戦末期に九州最前線へ出撃
し、連盟軍相手に奮戦、玉砕を遂げている。

　軍内で、俺の両親は養父と親交があったらしい。
　その縁で、養父は俺を引き取ってくれたのだ。

　それから二十年余の歳月を、俺は湊斗家の養子――
湊斗景明として生きている。

　現在、ネーデルラント市国は公的には存在しない。
　国際連盟に国家として認めない旨を宣告されたうえ、
連盟軍の厳重な監視下に置かれている。弾圧まで受け
ているとの報は聞かないが、生活環境は厳しかろう。

　そんな中で、親なしの孤児として生きる至難を想像
すれば、養父の厚意は俺にとって幾重にも感謝せねば
ならぬものだった。
　養父と共に俺を受け入れてくれた一家にも。

　俺は、湊斗の家に恩義がある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆回想ＣＧ。庭木に水をやっている統と、景明（四〜
//◆五歳くらい）を連れた明堯（署長）。統は二人の方
//◆を見ていない
//◆以下シーン、顔グラ使用せず。従来の擬似フキダシ型？
	PrintBG("上背景", 15000);
	EfRecoIn1(18000,600);

	FadeDelete("上背景", 0, true);
//	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＶ", 100, Center, Middle, "cg/ev/ev131_景明が湊斗家に来た日.jpg");
//	CreateEffect("エフェクト１", 200, 0, 0, 1025, 576, "Sepia");

	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【署長】
　
<voice name="署長" class="署長" src="voice/ma05/0060510a11">
『統……』

//【統】
　
<voice name="統" class="統" src="voice/ma05/0060520b46">
『……んー？
　どしたの、その子』

//【署長】
　
<voice name="署長" class="署長" src="voice/ma05/0060530a11">
『いや、その……
　何というかだな……突然で済まないんだが……』

//【署長】
　
<voice name="署長" class="署長" src="voice/ma05/0060540a11">
『この子を、うちの養子にしようと思う』

//【統】
　
<voice name="統" class="統" src="voice/ma05/0060550b46">
『……あ、そう』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さー。水を撒くＳＥ。数秒
	CreateSE("SE01","se日常_水_排泄音小");//ダミー

	CreateTextureEX("絵ＥＶ２", 120, 0, 0, "cg/ev/resize/ev131_景明が湊斗家に来た日_ex.jpg");

	Move("絵ＥＶ２", 2000, -200, @0, Dxl1, false);
	Fade("絵ＥＶ２", 500, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0278]
//【統】
　
<voice name="統" class="統" src="voice/ma05/0060560b46">
『……じゃあ……』

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ３", 200, Center, Middle, "cg/ev/ev132_笑う統.jpg");
	Fade("絵ＥＶ３", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0279]
//【統】
　
<voice name="統" class="統" src="voice/ma05/0060570b46">
『昼飯、三人分作らないとな』

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆回想ＣＧ。統の顔アップ。景明の方を向いた。
//◆差分。「にっ」と笑う

	WaitKey(1000);

//◆戻り
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("@Reco_Over*", 500, 0, Dxl1, false);
	EfRecoOut1(2000);
	Wait(100);
	Delete("絵*");
	OnBG(100,"bg051_皆斗家居間_03a.jpg");
	FadeBG(0,true);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060580a00">
「…………」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060590b52">
「――だからだ、景明。
　貴様も誇りの為に戦う道を知っていよう」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060600a00">
「……はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　名を呼ばれたのが契機となって、些か取り留めなく
想念を追っていた思考が引き戻される。
　尤も、先方もさほど内容のある話はしていなかった
らしい。会話は全く進んでいなかった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060610b52">
「尊厳を捨てて生きるより、誇りと共に死ぬ
のが<RUBY text="やまとびと">大和人</RUBY>というものだ。
　それを、あの統めは……」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060620a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　<RUBY text="おもて">面</RUBY>を伏せて、慎重に回答を避けつつ思う。
　本家の言うことは、わからぬではない。

　だがその理解は同時に、本家に反対する養母の思想
への理解をも深めた。
　
　――誇りは大事であろう。しかし。

　そのために死すという意思は、人が自発的に持って
こそ尊ばれるべきで、他者が強要するようなものでは
ない。
　……一言で言えば、養母の意見はそうなろう。

　それを言うに言えない養母の苦衷が偲ばれた。
　かくも直接的な物言いをすれば、それが本家を激発
させる爆薬となり、事を一気に最悪の局面へ追いやり
かねない。

　俺も口を噤まねばならなかった。
　養母への同意を面と向かって告げるわけにはいかず、
といって養母への非難に同調もできぬとなれば、それ
だけが唯一の方策だ。

　老人の、語気荒い愚痴はしばらく続いた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060630b52">
「……とな。あの時も統はそんな事を言うて
おった。馬鹿者めが！
　景明、貴様も養い親に感謝するのは良いが、
あまり毒されるでないぞ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060640a00">
「……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060650b52">
「きゃつの娘……光は、見所があったがな。
　あんなことになったのが、つくづく惜しい」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　俺は顔を上げた。
　話を本題へ引き込む機会が来たようだ。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060660b52">
「万事が滞りなく運んでおれば、今頃は光が
湊斗家の長となっておったに。
　全く、何たることか！」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060670a00">
「はい。
　本来なら……今年一月に髪上げの儀が執り
行われ。光は湊斗家四三代の座を襲っており
ました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　現実にならなかった予定を云う。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060680a00">
「御本家の苦衷、お察し致します」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060690b52">
「おぉ。
　髪上げの儀と湊斗の相続さえ済めば、儂の
片付けねばならぬ大事はあと光の婚礼が残る
のみであったわ……」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060700b52">
「貴様も口惜しかろう。
　もしこのまま光が二度と立たぬようなこと
があれば、貴様の立場も宙に浮くからの」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060710a00">
「……は」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　俺の立場。
　
　――光を生涯に渡って支え、守る。

　それが目前の老人によって定められた湊斗における
俺の役割であり、光がいなくなれば意味を成さぬ使命
であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060720a00">
「しかし全ては、この身の不覚から。
　自分が注意を怠ったばかりに、このような
始末に至りました」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060730a00">
「詫びて済む話ではございませんが……
　返す返すも、面目次第なき限り」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060740b52">
「……貴様が謝るには及ばん。
　病は天命。人を責めても始まらぬ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　吐き捨てるように、本家が呟く。

　天命という事実をぼかした言い様は、鉱毒病事件を
起こした工場に一部住民の反対を押し切って開業許可
を与えたのが、他ならぬこの老人である為だろう。
　声も表情も苦々しい。

　あるいは本家は俺の言葉を婉曲な非難と受け取った
のかもしれない。が、こちらにその意図はなかった。
　保護者の役割を全うし得なかった俺以上の責任が、
この人にあるとは考えていない。

　本家が不機嫌の殻に閉じ篭もってしまう前に、俺は
話を進めることにした。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060750a00">
「……昨晩にも、発作がありました。
　幸い、大事には至らず済みましたが」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060760b52">
「うむ……。
　体調は、どうだ。少しは回復しておらんか」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060770a00">
「残念ながら……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060780b52">
「髪上げの儀は年内に済ませねばならぬ！
　さもなくば家法に背く。湊斗の<RUBY text="かんなぎ">巫姫</RUBY>の継承
を規定の年齢において行わざるは、古来より
厳に戒められるところだ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060790b52">
「これに<RUBY text="たが">違</RUBY>えば御家の命運に陰りが差そう」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060800a00">
「……は。
　しかし今は、とてもの事に」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060810b52">
「起き上がれずとも良い。
　半日の儀式の間、静かにしておれるなら、
後はどうにか――」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060820a00">
「それが叶う状態ではないのです、御本家。
　いつ何時、発作に見舞われるとも知れず」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060830b52">
「……ぬぅ……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　苛立たしげに、皺だらけの指が髭を掻き毟る。

　<RUBY text="しきた">仕来</RUBY>りの遵守を至命とするこの老人にしてみれば、
皆斗一族の最重要事ともいえる巫姫の継承儀礼を規則
通りに行えなかった初の惣領として名を後へ残すなど、
到底受け入れられることではなかろう。

　攻めるべき隙はそこにある。
　俺は心持ち、膝を進めた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060840a00">
「さればこそ――御本家」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060850b52">
「うむ？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060860a00">
「欧州では鉱毒病の研究も進んでおり、中で
もベルリンのメンゲレ博士は第一人者と聞き
及びます。
　……如何でしょう」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060870a00">
「御本家のお力で、博士をお招き頂くわけに
は参りませんか」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060880b52">
「またその話か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　本家は、露骨に眉をしかめた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060890b52">
「皆斗の祭儀を司る巫姫の身柄を、他国者の
医師などに預けるわけにはゆかぬ。
　何度も、そう言うておろうが」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060900a00">
「承っております。
　しかし、最早」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060910b52">
「医師ならば手配する！
　先日の者は役に立たなんだようだが、次は
熊本の大学の――」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060920a00">
「赤池教授ならば、先日書簡を頂きました。
　自分の手には負えぬ、と」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060930a00">
「……メンゲレ博士をご紹介くださったのは、
かの教授です」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060940b52">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　黙り込む本家。
　その顔は憤懣を持て余して引き歪み、恐ろしいまで
の形相となっていた。

　これは、危険信号だ。
　本家の身近にあって彼を良く知る者は誰しも、この
顔を見ると、すぐさま何もかも打ち捨てて引き下がる
――そうせねば、自分が憤懣の捌け口とされるからだ。

　それはこの土地において社会的生命の喪失さえ時に
意味した。
　不注意で本家の激発を招いたがため、職を失い路頭
に迷った者はかつて一人二人ではない。

　だが俺は逃げ出すわけにはいかなかった。
　光にはもう、時間がない。

　次の発作が命を奪うやもしれないのだ。
　あるいはその次の発作かもしれないが。確かなのは
それが永遠に続くはずはなく、しかも永遠よりも無の
方にはるかに近いだろうという事だった。

　本家の機嫌を窺っているゆとりは無い。
　俺はその場に平伏した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060950a00">
「お願い申し上げます、御本家……」

{	FwC("cg/fw/fw本家_不快.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060960b52">
「……」

{	FwC("cg/fw/fw景明過去_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060970a00">
「何卒。
　光の為、皆斗家の為――お許しを頂きたい」

//【景明】
<voice name="景明" class="景明" src="voice/ma05/0060980a00">
「何卒！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　遠い異国の名医を呼び寄せるだけの力の持ち主は、
この老人を置いて他にはいない。
　文字通り、額を畳に擦り付ける。

　普段であれば、ここで一喝されて終わりだ。
　しかし今日は、沈黙が長く続いた。

　家族の情からではないにしても、本家とて光の回復
を心底より望んでいるのだ。俺や養母にも劣らぬほど。
　光の病状に狂おしいまでの焦りを抱いているのは、
全く変わらない。……俺はそう信じた。

　信じて待った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0060990b52">
「…………良かろう……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
　ややあって。
　傷ついた牛にも似た唸りを、老人は搾り出した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");


//嶋：修正（致し方もない）【090930】
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061000b52">
「大和に人なしとあっては、致し方ない。
　ベルリンの医者とやらを呼んでくれよう」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061010a00">
「御本家……！」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061020b52">
「だがな、景明！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
　喜びの余り思わず跳ね上がった顔を、威圧的な眼光
が迎える。
　釘を刺すように、本家は告げてきた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061030b52">
「それも貴様の進言が、信ずるに値するもの
であれば……の話だ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061040a00">
「……は……」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061050b52">
「わかるか？
　儂は愚にもつかぬ輩の妄言に乗って、湊斗
の社の清浄を汚させたりなどせぬ」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061060b52">
「だが、貴様が信ずるに足る男であるならば
……意見を聞き、他国の医師に湊斗の敷居を
跨がせてもくれよう。
　儂は、そう言うておるのだ」

{	FwC("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061070a00">
「――はっ。
　して、その証は如何にして立てれば宜しい
のでしょうか」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
　要は、<RUBY text="・・">試す</RUBY>ということか。
　伝統の遵守と光の身命、どちらを優先すべきか――
本家は逡巡している。

　後者と主張する俺の言葉に、どれ程の重みがあるか。
　それによって、決しようというのだ。

　俺は心身を引き締めて身構えた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061080b52">
「山賊どもを、片付けよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061090a00">
「……はっ？」

{	FwC("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061100b52">
「あやつらを始末するのだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
　皆斗の惣領は、繰り返した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw本家_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061110b52">
「どのような手段を用いてもかまわぬ。町の
男を駆り出しても良い。
　景明。貴様の手腕で、あの飢えた野犬ども
を儂の膝元から駆逐してみせよ！」

//【本家】
<voice name="本家" class="本家" src="voice/ma05/0061120b52">
「成し遂げた暁には、貴様を認めてやろうぞ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0061130a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_007.nss"