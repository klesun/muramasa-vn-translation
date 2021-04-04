//<continuation number="230">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_002.nss_MAIN
{

	$TITLE_NOW=" ――――　第四編 震天騎　―――― ";

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

	if($Ichizyou_Dead == true){#ev112_一条をお姫様だっこする村正=true;}
	else{}

//嶋：デバッグ
//	$Ichizyou_Dead = true;

//嶋：分岐注意

	//▼ルートフラグ、選択肢、次のGameName
	if($Ichizyou_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//■超速設定２
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}
	}else{
		//■未読既読判定３
		$BasGameName = $GameName;
		$GameName = $GameName + "_i";
		$AllRead = Conquest($ConGameName,$GameName,null);
	
		//■超速設定３
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}

		//■未読既読判定４
		$GameName = $BasGameName + "_k";
		$AllRead = Conquest($ConGameName,$GameName,null);

		//■超速設定４
		if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
			SkipOut();
		}else{
			$MainGameName="@->"+$GameName;
			GameMainSet();
			call_scene $MainGameName;
			GameMainSet2();
		}



	}

	//■選択肢スクリプト及びフラグ設定２
	$PreGameName = $GameName;
	$GameName = "ma04_003.nss";
}

//嶋：通過用スクリプト
scene ma04_002.nss
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_001.nss"



//◆第四編「震天騎」

	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第四編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);

}



scene ma04_002.nss_i
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_001.nss"



//◆第四編「震天騎」

/*
	PrintBG("上背景", 30000);
	CreateColorSP("絵黒幕１", 1500, "Black");
	Delete("上背景");

	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/lg_第四編.png");
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

	WaitKey(2000);
*/

..//分岐。一条生存なら０１へ。死亡なら０２へ
//◆分岐。一条生存なら０１へ。死亡なら０２へ


//――――――――――――――――――――――――――――――
.//●０１
//●０１
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");

	SoundPlay("@mbgm14",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　この世の悪を憎むということ。
　それが、父の残した最大のものだった。

　父は教えた。
　悪とは何か。

　略奪、
　騙詐、
　背信、
　奸佞、

　一つ一つ、父は教えた。
　子供が悩まぬよう平易な、しかし丁寧な言葉で。

　だから教えは理解できた。
　しかし、わからないことがあった。

　なぜ、悪を憎まねばならないのか。

　なぜ人の物を奪ってはならないのか？
　なぜ人を騙してはならないのか？
　なぜ人を裏切ってはならないのか？
　なぜ人に媚びへつらってはならないのか？

　問われて、父は首を左右に振った。
　
　――説明することはできない。

　私は悪を憎むべき理由を、筋道立てて説明すること
はできない。
　いや。そういうものだとは考えないのだ。

　徳川時代に<RUBY text="ほそいへいしゅう">細井平洲</RUBY>なる儒学者が現れ、本当の信愛
とは幼子が母を信ずるように、母が子を愛するように、
何それという理由の無いものだと云った。
　まさにその通りだと私は思う。

　同じ事ではないのか？
　悪を憎むのはそれが人として嫌悪されるからであり、
他に理由を求めるべきではない。あえて理屈立てをし
拘泥すれば、かえって本質から離れる結果を招こう。

　何となれば理論によって悪の否定を説明する場合、
それを覆す理論が生まれた時、悪は認められるという
ことにもなり得る。
〝必要悪〟という考え方だ。

　自分の身を守るためだから――
　最初に悪事を働いたのは相手だから――
　どうせ大したことにはならないから――<k>
　悪を行っても構わない、という思考法。

　理屈による悪の否定は理屈による悪の肯定を生む。
　
　それは違う、と私は思うのだ――思いたいのだ。

　それでは悪は決して滅びないから。
　誰もが悪を否定しながら肯定し、悪を生き延びさせ
続ける。世の中とはそうしたもの、と諦観する。

　人として正しく在る――それは叶わない願いだと、
認める考え方だ。
　私は認めたくはない。否、認めてはならないと思う
のだ。例え結果は、そうなってしまうとしても……。

　私は人として、悪を滅ぼしたいと望む。
　そのためには――一切の例外なく。悪を否定しなけ
ればならない。

　悪を為さねばならない状況は……あるのだろう。
　そう思う。これまでの人生で、それなりに色々な人
を見てきた。他にどうしようもなく、本当に何の逃げ
道もなく、唯一の道として悪を行った人は確かにいた。

　だがそれでも、悪は悪なのだ。
　否定されるべき行為なのだ。「仕方がない」という
言葉で肯定されてはならないのだ。

　悪とは。
　人としての<RUBY text="・・">原則</RUBY>に背く行為なのだと、私は思う。

　だから、理屈ではない。
　頭で知るのではない。肌で知るのだ。

　命で知るのだ。
　悪の憎むべきを。

　…………父のその話は、理解できたとは言いかねた。
　今もって尚。そもそも、<RUBY text="・・">理解</RUBY>を求めるような話では
なかったのだろうけれども。

　だが、そう語る父の正しさを信じた。
　信じている――今も。

　綾弥一条は命にかけて悪を憎む。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 1000);

	Wait(1000);

//◆教室
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg008_教室_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020010a02">
（…………）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　溜息がこぼれた。
　憎むことに対する疲れがそうさせたのではない。

　疲労を生むのは無力感だった。
　戦う力が無いということ。

　悪を憎む意思に揺らぎはない。
　父と大叔母から伝えられた、戦うための技もある。

　だが<RUBY text="・・・">あの人</RUBY>が相手とする悪に対して、その二つだけ
では余りにも不足だった。
　足りない。まったく足りない。

　それでも戦いたい、と思う。
　戦わせて欲しいと思う。

　だが許されなかった。
　当然だろう。立場がもしも逆であったら、彼女とて
許さない。

　無力な者が戦っても犠牲が増えるだけ。
　本人は満足かもしれないが、誰も救われはしないし
何ら有益な結果を生み出しもしない。関わりを持った
人に多大な迷惑を及ぼすことならできるだろうけれど。

　一条にもそれはわかっていた。
　だから、自己満足のためだけに我意を押し通すこと
は自制した。

　そうして今、思う。
　戦う力が欲しいと。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆第二話、一条を救う村正絵。ちらっと挿入

	EfRecoIn1(18010,300);
	CreateTextureSP("絵ＥＶ100", 5100, Center, Middle, "cg/ev/ev112_一条をお姫様だっこする村正.jpg");
	EfRecoIn2(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　――あの人の役に立てるようになりたいと。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw教師.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020020e051">
「綾弥」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020030a02">
「……」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020040e051">
「あーやーね！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	EfRecoOut1(300);
	FadeDelete("絵ＥＶ100", 0, true);
	EfRecoOut2(500,true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020050a02">
「……はい？」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020060e051">
「はい、じゃない。ぼさっとしてんな。
　設問を解いてみろ」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020070a02">
「……どこですか」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020080e051">
「なんだ、聞いてなかったのか!?
　一二七ページの三問目だ！」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020090a02">
「……」

{	OnSE("se日常_物_紙をめくる01",1000);
	NwC("cg/fw/nw教師.png");}
//◆教科書めくる音。ぱらぱら。
//◆教師、会心のギャグっぽく
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020100e051">
「ぼけーっとしやがって。
　お前は木瓜の花か！」

{	NwC("cg/fw/nw教師.png");}
//◆しーん
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020110e051">
「……どうせ夜遊びでもしてて寝不足なんだ
ろう。まったくお前のような奴は将来が心配
だな！　絶対ろくな大人にならんぞ、どっか
の汚い<RUBY text="こうば">工場</RUBY>で女工でもやるのが関の山――」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020120a02">
「Ｋエネルギー第一法則によればＰ＝ＷＨＳ」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020130a02">
「問題文に『それは九六式戦車一〇台と金属
バット八本、五リットルの油に七リットルの
牛乳、米三合、塩五升、あと砂糖を小匙三杯
加えたら出来た』とあるのでＷは五五〇トン」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020140a02">
「Ｈは『重ねたトランプの一部だけ千切る事
が可能』とあることから設問二の解を代入し
て二一五キロ。テクニカルゴールドモーター
にピニオンが一三ＴならＳは四八キロ」

//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020150a02">
「代入して、五五〇×二一五×四八……
　五六七六〇〇〇」

{	FwC("cg/fw/fw一条_通常a.png");}
//ｋｔは「カラテ」と読む
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020160a02">
「答え。
　破壊ロボのパンチ力は五六七六〇〇〇ｋｔ
になります」

{	NwC("cg/fw/nw教師.png");}
//【ｅｔｃ／教師】
<voice name="ｅｔｃ／教師" class="その他男声" src="voice/ma04/0020170e051">
「…………正解」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnSE("se日常_物_椅子鳴る01",1000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg001_空b_01.jpg");
	Fade("絵背景100", 2000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　義務を果たして席に着く。
　そうしてまた、空を眺める。

　手の中に、短い鉄の塊を弄びながら。
　……あの滅びてしまった小さな村で、彼女の生命を
救った老人が、最後に託して寄越したもの。

　牙のような角のような、奇妙な棒。
　その金属質の冷たさは一条の意識を澄み渡らせる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020180a02">
（会いに行こう）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　午後の予定を決める。
　それはここ暫くの繰り返し。日課にも近い――そう
して、実際に会えるとは限らないのだったが。
　それでも行こうと思う。

　学校の勉学を疎かにする気はなかった。
　父に教えられている。知識の選り好みを許される者
は、天地万物全ての知識を知りその価値を定めている
者だけであるはずだと。

　つまり自分が神ではないなら、どんな知識も謙虚に
学ばねばならないと。
　あの人も言っていた。こちらはもっと簡単に。学校
で学ぶことは大切だ、と。

　だから学習は一切手を抜いていない。本年度に履修
する全科目について予習を済ませ、不明箇所は教師に
質問して解決し、教科書の内容は全て把握している。
　だが――それ以上のことをしようとは思わない。

　今は、ほかに学びたいことがあるから。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/0020190a02">
（今頃、何してるのかな……。
　一人で捜査に行っちゃってるんでなければ
いいけど……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　早く会いたい。

　あの人に会って、学びたい。
　少しでも……何かを。

　一日も早く、戦えるようになるために。

　――読経のような講義が再開される中。
　知らず、冷たい棒を握り締めて。一条は幾度となく
反芻した言葉を今また胸に宿していた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1000, 2000);

..//ジャンプ指定？
//次ファイル　●０２？　"ma04_003.nss"
//嶋：ジャンプ先「●０２」に変更

}



.//●０２
//――――――――――――――――――――――――――――――
scene ma04_002.nss_k
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//――――――――――――――――――――――――――――――
.//●０２
//●０２

//◆拘置所
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg011_拘置所内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//◆景明の顔グラが上下逆？
	SetNwC("cg/fw/nw看守.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma04/0020200e038">
「未決囚〇四八号。
　出ろ」

{	OnFwC("cg/fw/fw景明_困惑.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0020210a00">
「はい」

{	NwC("cg/fw/nw看守.png");}
//【ｅｔｃ／看守】
<voice name="ｅｔｃ／看守" class="その他男声" src="voice/ma04/0020220e038">
「…………で。今日は何をやってる？
　棚に足かけて、ぶら下がって」

{	OnFwC("cg/fw/fw景明_困惑.png");
	Request("@FwC*", Smoothing);
	Rotate("@FwC*", 0, @180, @0, @0, null,true);
	Move("@FwC*", 0, @0, @-1, null, true);
	FadeFwC(0,false);}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0020230a00">
「腹筋運動です」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆八幡宮
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

	WaitKey(500);

	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm19",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　――江ノ島にある幕府直轄の漁業研究所。
　その実態は兵器研究施設、しかも秘匿しているだけ
あって極めて危険性の高い新型兵器の開発が行われて
いる――<k>との密告を受け、調査を開始したのが一月前。

　容疑濃厚と判断、機会を見計らって潜入捜査に送り
出した調査員は先週、短い連絡を最後に音信を絶った。
　――――「銀色の怪物を見た」と。

　また、江ノ島付近の沿岸において不審な失踪事件が
多発している事実を確認。近在住民の間でも島の様子
を怪しむ声が上がり始めている。
　……事態は予想以上に深刻と<RUBY text="おぼ">思</RUBY>しい。

　六波羅幕府による非人道的兵器実験の存在、
　あるいは、未確認連続大量虐殺犯――仮名<RUBY text="シルヴァー">銀星号</RUBY>の
関与が疑われる。迅速な調査が必要と判断される。

　しかし現状、大和における調査行動に適した人材は
多いと言えず、既に何らかの業務に従事していない者
となると皆無である。
　そこで――

　進駐軍総司令部は大和国内務省警察局に対し、国際
平和の精神に基づく協力を要請する。
　以上。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000,true);
//	ClearWaitAll(1000, 2000);


//	CreateColorSP("絵暗転", 15000, "#000000");
//	DrawTransition("絵暗転", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

..//ジャンプ指定
//次ファイル　"ma04_003.nss"


}



