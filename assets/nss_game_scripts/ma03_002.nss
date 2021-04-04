//<continuation number="920">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_002.nss_MAIN
{

	$TITLE_NOW=" ――――　第三編 逆襲騎　―――― ";

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
	#bg010_拘置所外観_01=true;
	#bg011_拘置所内_01a=true;
	#bg018_署長執務室_01=true;
	#bg007_若宮大路a_01=true;


	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_署長=true;

	$PreGameName = $GameName;

	$GameName = "ma03_003.nss";

}

scene ma03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_001.nss"

//◆第三編「逆襲騎」

	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第三編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);


//◆関東拘置所
//◆景明の獄室

	PrintGO("上背景", 25000);

	OnBG(10,"bg010_拘置所外観_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, true);

	Wait(1000);

	SoundPlay("@mbgm22",0,1000,true);

//あきゅん「SE：要望：腕立ての音、木の板が軋む、同テンポでループとか」
	CreateSE("SEL01","se人体_動作_拾う01");//ダミー注意
	MusicStart("SEL01",2000,1000,0,500,null,true);


	OnBG(10,"bg011_拘置所内_01a.jpg");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　拘置所の一日は退屈によって支配される。

　既に刑の確定した者のための施設である刑務所とは
異なり、拘置所に収容されるのは未決囚と未決囚扱い
の死刑囚（彼らに与えられるべき刑罰は最後の死のみ
であり、他には無い）なので、強制労働は行われない。

　規定の上では志願すれば労役に就くことも可能な筈
だが、この関東拘置所はその体制が整っていないため、
要望に応えることは不可能――とのことだった。
　看守からそう聞いている。

　外に出て体を動かせるのは一日あたり三十分間だけ。
　他の時間は全て独房内で静かに過ごさねばならない。

　読書や書き物は可能だが、制限がつく。
　長い一日を潰すのは無理だ。

　となれば後は、ひたすらに寝て過ごすか、あるいは
――貪眠による心身機能の低下を受容できないのなら
ば――二畳余の空間で許される限りの運動を行うしか
ない。

　派手な音を立てる行為は当然、認められない。
　器具を使うような運動も無論――例え獄室内にある
物で間に合わせるとしても。乾布摩擦でさえ、看守に
よっては絞殺の準備とみられる。

　素振りなどは論外。体術の型なども看守のささくれ
立った神経をいたずらに刺激するのみだ。
　結局のところ、出来ることは腕立て、腹筋、背筋と
いったスタンダードな筋トレの類に限られる。

　つまりは、俺が今している事もそれなのだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ガチャ
	OnSE("se日常_建物_牢獄扉開く01",1000);
	SetVolume("SEL*", 300, 0, null);


	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020a]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020010e038">
「未決囚〇四八号」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/st景明_通常_囚人.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020b]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020020a00">
「はい」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020030e038">
「事情聴取のため、お前を一時的に鎌倉署へ
移送するとの通達があった。迎えの車はもう
来ている。
　一〇分以内に支度をしろ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020040a00">
「わかりました」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020050e038">
「……ところで、お前」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020060a00">
「何でしょうか」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020070e038">
「今、何をしていた？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020080a00">
「腕立て伏せです」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020090e038">
「……そうか。
　腕立て伏せか」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020100a00">
「はい」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020110e038">
「お前、生まれは？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020120a00">
「長崎です」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020130e038">
「俺は秋田だ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020140a00">
「きりたんぽが美味しいとか」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020150e038">
「長崎は、ちゃんぽんだな」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020160a00">
「ええ」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020170e038">
「……俺の故郷では、腕立て伏せってのは、
両手と両足を地面につけてやるもんだった」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020180a00">
「大概は、そうでしょう」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020190e038">
「足を浮かせてやる腕立て伏せっていうのは
初めて見た」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020200a00">
「自分も、他人がやるのはあまり見た覚えが
ありません」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020210e038">
「苦しくないのか？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020220a00">
「苦しみ悶えます」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020230e038">
「…………そうか。
　安心したよ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020240a00">
「それは幸いです」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma03/0020250e038">
「支度をしてくれ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020260a00">
「はい」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉
//◆署長室

	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg018_署長執務室_01.jpg");
	FadeBG(0,true);

	SetVolume("@mbgm*", 1500, 0, null);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	Wait(1000);

	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw署長_通常.png");

	#voice_on_署長=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020270a11">
「……つまり。
　間違いはないのだな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020280a00">
「はい。
　あの村は銀星号が滅ぼしました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　卓上の茶碗を手に取る。
　鼻をくすぐるほのかな香りは、遠州産の新茶のそれ
だった。色を見れば安物とわかるが、品質は悪くない。

　水面が唇に触れる程度に碗を傾け、舌先を湿らせる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020290a00">
「村正も同様の見解です。というより……
　ただの一人も逃れ得なかった、文字通りの
<RUBY text="・・">全滅</RUBY>なのです。誤解の余地がありません」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020300a11">
「その通りだな。
　例えば軍事用語で全滅と云うとき、部隊が
機能を完全に失うほどの損害を受けた状態を
指す。比率にして三割から四割程度」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020310a11">
「全滅といっても六割は無事に生きている。
それが常識というものだ。
　しかし<RUBY text="・・">あれ</RUBY>に遭遇した者には、その六割の
生存が許されない」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020320a00">
「あれは戦争ではないので。
　加害者と被害者との間に、戦闘などという、
生温いお遊戯めいた交渉は存在しません」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020330a00">
「単なる天災です。
　沿岸の村を襲う大津波です。
　山麓の村を襲う大噴火です。
　生き残りなど許される筈がない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　事実を事実として言い切る。
　返答はなかった。

　広くもない室内の東側の壁に、絵が一幅、飾られて
いる。桑の栽培の様子を描いた、ごくごく平凡な風景
画だ。技術的にも見るべき点は特にないだろう。
　だが好悪を問うなら、好みだった。

　著名人の作品ではない。いや、画家の手になるもの
でさえない。それはこの部屋の主の、自筆だった。
　凡庸な作品だからこそと言うべきか、見る人を落ち
着かせるような趣がある。……贔屓目かもしれないが。

　そんな絵だけが、この部屋にあって唯一、装飾品と
呼べるものだった。
　後は実用本位の家具と多くの資料類、味も素っ気も
ない諸々があるばかりだ。

　鎌倉市の治安を預かる――べき――警察署の首長が
座すにしては、寂しい佇まいだと言えた。
　もう少し皮肉な表現力を駆使するなら、<RUBY text="・・・・・">嘆かわしい</RUBY>
佇まいだと評することも可能かもしれない。

　あるいは<RUBY text="・・・">現実的</RUBY>か。
　現実的な署長室の現実的な警察署長は、テーブルの
木目に向けていた視線を外し、再びこちらを見やって
いる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020340a11">
「〝卵〟の孵化は阻止したのだな」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020350a00">
「はい。
　六波羅代官長坂右京とその傭兵風魔小太郎
が寄生体であることを確認、両名を殺害しま
した」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020360a11">
「現状で何よりも肝要なのはそこだ。
　あんなものに<RUBY text="・・">増え</RUBY>られては堪らん」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020370a11">
「御苦労だったな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020380a00">
「いいえ。
　苦しんだのは決して、自分ではありません
から」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020390a11">
「…………。
　銀星号について情報は得られたか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020400a00">
「長坂右京からは何も。
　風魔小太郎の方は<RUBY text="・・">あれ</RUBY>と会話程度の接触は
した様子ですが、所在などの有意義な情報は
やはり得られませんでした」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020410a11">
「そうか。
　あれは何処かに、何者かが、<RUBY text="・・">保護</RUBY>している
とみるべきなのだが……」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020420a00">
「そう考えなくては、理屈に合いません」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020430a11">
「失踪者扱いで全国に捜索を手配しているに
も拘わらず、まるで引っ掛からないのだから
な。
　警察力の不足もあるだろうが……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020440a11">
「もう二年にもなる。
　支援者がいると考えるべきだ」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020450a00">
「全くに。しかし、目的が皆目わかりません。
　誰もを害する殺戮者に、誰がどうして手を
貸すのか」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020460a11">
「ああ。筋道が通らんな？
　……そして世の中、筋道の通らん話が割合
横行するから困る」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020470a00">
「であれば、論理的推察のみによって真実へ
近付くのは難しいという事になります」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020480a11">
「その通りだ。
　安楽椅子の探偵を気取っていてもどうにも
ならん」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020490a11">
「決定的な情報が要る。
　済まないが宜しく頼むぞ、景明」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020500a00">
「承知しています。
　ところで。それとは別件で一つ、気になる
事柄が」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020510a11">
「なんだ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020520a00">
「風魔小太郎に劔冑を提供した男です。
　名は雪車町一蔵。六波羅御雇の野木山組に
属し、且つＧＨＱの御用聞きでもある」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020530a11">
「ああ……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020540a00">
「自分が聞かされた話をすべて鵜呑みにする
なら、という前提ですが――風魔はＧＨＱに
奪われた劔冑を雪車町の手配りで取り戻して
いる。何故、そのような真似が許されたのか」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020550a00">
「ＧＨＱの〝劔冑狩り〟政策の成果は当然、
厳重に封印されている筈。
　でなければ、手間隙を費やして劔冑を狩り
集めた意味がありません」

{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020560a11">
「…………。
　先日の教師。鈴川令法か。彼も出所不明の
劔冑を持っていたのだったな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020570a00">
「はい。
　関連性が疑われます」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020580a11">
「お前はどう考えている？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020590a00">
「……妥当な推論をするなら。
　ＧＨＱの大和への無関心が進駐軍の綱紀を
緩ませ、物資の横流しを安易に行わせている
――というあたりでしょう」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020600a11">
「その推論に対する自己採点は？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020610a00">
「不可」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020620a11">
「なぜ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020630a00">
「ＧＨＱは大和に無関心ですか？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020640a11">
「否。
　……そう、そういうことだな」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020650a11">
「この件については既に推測を持っている。
　だが、明日話そう。どうせ話題になる……
こんな話は幾度も口にしたくない」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020660a00">
「明日？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020670a11">
「今日は私の役宅で休んでおけ。拘置所には
戻らなくていい。
　明日、仕事が済んだ後で付き合って欲しい
所がある」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020680a00">
「どちらへ」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020690a11">
「八幡宮だ。
　親王殿下がお前に会いたがっておられる」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020700a00">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020710a00">
「それはまた、何故」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020720a11">
「お前が思っている以上に、殿下はお前の事
を気に掛けておられるよ。
　殿下は国民を多く害する銀星号事件を我が
身の事として考えておいでだ」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020730a11">
「お前にかける期待も大きい。
　一度親しく言葉を交わしたいと、実は前々
から仰せであった」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020740a00">
「しかし。
　血の穢れに塗れた身を皇族の御前には――」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020750a11">
「そんなつまらん事にこだわられる殿下では
ない」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020760a00">
「つまらぬ事とは思われません。
　社稷を司る者は不浄を遠ざけるべき」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020770a11">
「まあ、そう言うな。
　要は実際的な方なのだよ、殿下は。事件の
実情を知るために現場の者の声を聞きたいと
望んでおられる。となればお前しかいない」

//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020780a11">
「それだけだ。だから別に、愛想を振りまく
必要もない。
　事件について殿下の御下問にお答えすれば
済む」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020790a11">
「小一時間ほどの辛抱だ。我慢して付き合え」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020800a00">
「……わかりました」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　やむなく首肯する。
　気の重い話だが、そう言われては仕方がなかった。

　――八幡宮の親王。
　皇室の変わり種という風評はこれまでにも耳にして
いたが、どうやら噂通りあるいは噂以上の人物らしい。
　獄囚に会いたがる貴人など聞いたこともない。

　……あまり根掘り葉掘りあれこれと聞かれなければ
良いが。

　既に湯気など立てない茶碗を呷る。
　温かみを失った茶は無闇に苦かった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆鎌倉街路

	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 10000, "#000000");

	OnBG(100,"bg007_若宮大路a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　職員用の通用門から鎌倉署の外へ。
　通りへ出る。

　署長はわざわざ見送りをしてくれた。厚情は有難い
が、人目を思って気に病みもする。
　警察署長が拘置囚を送っているのだから異様な図だ。

　とはいえ署長は警察の制服姿だが、こちらは拘置所
の囚人服を着ているわけではない。
　無用の心配だとはわかっていた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020810a11">
「何事も無ければ、明日は日暮れ前に役宅へ
戻る。それまではくつろいでいろ」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020820a00">
「はい。
　書斎を使っても構いませんか」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020830a11">
「好きにしろ。
　……ああ、そういえば<RUBY text="ドイツ">統合帝国</RUBY>の優生学に
ついてまとめた研究書が入っている」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020840a00">
「それは関心があります。今夜にでも読んで
おきましょう。
　では」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020850a11">
「ああ――
　ん？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　署長の視線がふと、泳ぐ。
　俺の後方、斜め右側へ。

　つられて追う。
　
　人影があった。

　コンクリート塀に背を預け、こちらをうつむき加減
の横目で窺っている。
　一見、何の気もなさそうな素ぶり。しかしその実、
眼球の奥には激しい意志の光があった。

　俺の知る限り、彼女がいつもそうであったように。

　脳裏に強く記憶されている顔だった。
　姓名を思い出すのに何の苦労もいらない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一条

	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0020860a02">
「…………」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020870a00">
「…………」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma03/0020880a11">
「知り合いか？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020890a00">
「ええ……。
　どうしてここに？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020900a00">
「一条綾弥さん」


{	OnSE("se擬音_コミカル_ガーン01",1000);
	FwC("cg/fw/fw一条_怒りb.png");}
//◆ショックガーン
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0020910a02">
「逆だよっ!!」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0020920a00">
「…………失敬」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_003.nss"