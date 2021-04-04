//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_003.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName

	$PreGameName = $GameName;

//嶋：確認用
//	$Ichizyou_Dead = true;
//	$Kanae_Dead = true;

//嶋：分岐差し込み
	if($Kanae_Dead == true){
		//■未読既読判定２
		$BasGameName = $GameName;
		$GameName = $GameName + "_i";
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
	}

	$GameName = "ma04_004.nss";

}

scene ma04_003.nss
{


}

}

scene ma04_003.nss_k
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_002.nss"


//◆奥殿内
	SoundPlay("@mbgm19",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//◆分岐。香奈枝生存なら０３Ａ。死亡なら０３Ｂ

//――――――――――――――――――――――――――――――
.//●０３Ａ
//●０３Ａ

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　横浜から戻った大鳥大尉が署長に文書で渡し、口頭
でも伝えた内容は、ほぼそのようなものだった。
　暫く、言葉がない。他の人間も同様と見える。書類
をめくる署長の指先の音だけが空気の沈殿を乱した。

　六波羅の極秘兵器実験。
　現今の状況を思えば、それは確かに有り得る話では
あったものの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030010a00">
「………些か、突拍子もない話だとの感慨を
禁じ得ません」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030020a03">
「本当ですね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　<RUBY text="ようよ">漸</RUBY>う、選んで口にした言葉に、香奈枝嬢はあっさり
と同意の頷きを返して寄越した。
　一歩を引いた――というよりも観客の口調で、更に
続ける。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030030a03">
「『銀色の怪物を見た』って、怪奇小説じゃ
ないんですから。
　仮にも本職の調査員が、そんないい加減な
報告をするものでしょうか？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030040a00">
「叙情的に過ぎるとは自分も思います」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030050a03">
「それに、兵器実験。警察局への協力要請。
　……まぁ別個に見れば、これといって不審
なことはないにしても」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030060a00">
「ええ」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030070a03">
「二つ合わせると何ともはや。
　どうしてそんな<RUBY text="・・・・・・・・・・・・">探る側にとっても機密性の</RUBY>
<RUBY text="・・">高い</RUBY>調査に外部の協力を頼むのでしょう？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030080a00">
「適切な人材が不足している、とのご説明で
したが……」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030090a03">
「連盟は戦時中から多数の現地工作員を確保
していましてよ？　今の実情について詳しい
わけではありませんけど……人手不足という
のはどうも、リアリティを感じませんね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　眉をひそめつつ、大尉。
　自分の所属する組織への不審を口にして、悪びれる
様子もない。

　個人的には、大尉のこうした態度は信じて構わない
と考えているが……
　親王や署長にしてみれば底意を疑わずにいられない
のだろう。やや冷たい視線を投げ、沈黙を続けている。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030100a00">
「率直にお伺いしますが、この一件について
大尉殿には何か別の説明が与えられていない
のですか？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030110a03">
「それが何も。
　急な召喚に何事かと思って横浜へ出向いて
みれば、ただその紙束を押し付けられただけ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030120a03">
「わたくしの上司は郵便っていうシステムを
知らないみたいです。困ったこと」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030130a04">
「機密情報の扱いとしては当然ですが。
　ま、確かに馬鹿馬鹿しい話でございます」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030140a00">
「……六波羅の兵器研究を探るために警察局
へ協力を要請する。
　これは前提として幕府と警察局を分断する
認識が必要な筈ですが、この点については？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030150a03">
「舞殿宮殿下と鎌倉署長さまの交誼、そして
お二人が大和の現況を憂いておられることに
ついては既に報告を上げていますから」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　これもまたあっさりと大尉は告げた。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030160a03">
「警察局はともかく、鎌倉署は幕府と一線を
画する存在だと判断。平和主義の下にＧＨＱ
との握手も肯んずると信じ、協力を要請した。
　……と、いうことなのではないでしょうか」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030170a00">
「成程」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030180a04">
「完璧でございますね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　完璧に胡散臭い。
　同じ結論を出し、三人揃って視線を虚空に舞わせる。

　薄暗い天井は、この島国の平和と秩序を回復すると
いう名目を担って進駐する軍隊への信頼を高めるため
に、全く何の役にも立たなかった。
　不審と疑念ばかりが渦を巻く。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030190a11">
「……宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030200a10">
「うん……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030210a11">
「おそらくＧＨＱは、この八幡宮が景明――
固有の戦力を擁している事に気づいたのだと
思われます」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　大尉の方へちらりと視線を送って、署長は言った。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030220a11">
「ＧＨＱがこの先宮殿下をどう扱うつもりに
しろ、実戦力を保有していては不都合なので
しょう。
　そこで排除に掛かったのではないかと」

//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030230a11">
「……あるいは。
　ＧＨＱはより<RUBY text="・・・">直接的</RUBY>に、景明を厭う理由を
持つのかもしれませんが」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030240a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　大鳥大尉が八幡宮を留守にしている間を狙い、署長
が俺と舞殿宮に明かした一つの推測を思い起こす。
　あれが真実であるなら――確かに。親王との関わり
がなくても、ＧＨＱは俺の排除を望むだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030250a10">
「で、罠を仕掛けてきたっちゅうことか」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030260a11">
「はい。
　江ノ島に何が待つにしろ、その目的とする
所は景明の捕殺とみて間違いないでしょう」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030270a11">
「如何ですか？
　大尉」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030280a03">
「まったく賛成いたします。
　わたくしもこの話を聞いた時から、うなじ
の毛が逆立ちっぱなしで仕方ありませんし。
それはもうびんびんに」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030290a03">
「ほら、景明さま。
　ご覧下さいましな」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030300a00">
「は」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030310a04">
「はしたないですよ、お嬢さま」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030320a10">
「は、はしたないことやってるんか!?
　くはッ、スダレが邪魔でよう見えん！」

{	FwC("cg/fw/fw香奈枝_含羞.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030330a03">
「景明さま……
　触ってもよろしいんですのよ？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030340a00">
「では、失礼して」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030350a11">
「……後にしろ。
　大尉からも異論がないのであれば、この件
は罠と断定して差し支え無し」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030360a11">
「言葉を選んで断るか、あるいは表面上受け
入れておいて実質は何もしない……要はサボ
タージュを決め込むか。
　いずれかで宜しかろうと存じます。宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030370a10">
「そやねえ。
　景明くん、それでええね？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030380a00">
「いいえ」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030390a10">
「おうっち!?」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030400a11">
「……景明」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030410a00">
「自分は江ノ島へ向かいます。
　宮殿下、保釈の密旨をお下しあれ」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030420a03">
「ほしゃくの……みつじ？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030430a00">
「少々差し障りがありますので、お聞き流し
下さい」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030440a03">
「わかりました♪」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030450a04">
「素直さをアピールしてせこく好感度ゲット。
　良い感じですよお嬢さま」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030460a11">
「景明……どういうつもりだ。
　罠ではないと思うのか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030470a00">
「全てが額面通りという可能性も否定はしま
せん」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030480a11">
「本気か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　むしろ正気かと言いたげな口ぶりだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030490a00">
「自分には、その点はどちらでも構わないの
です。
　ただ、銀星号の介在を示唆されている事が
気に掛かります」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030500a00">
「それがただの虚言なのか、それとも何らか
の事実を下敷きにしているのか……これは罠
か否かという観点からは判断不可能です。
　どちらにしても双方の可能性が有り得ます」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030510a00">
「現地へ踏み込んで確認する以外に<RUBY text="みち">途</RUBY>があり
ません」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030520a10">
「……無謀やと思うえ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030530a00">
「委細承知」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030540a10">
「……署長……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030550a11">
「景明。
　宮殿下はお前の身を案じておられる」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030560a00">
「勿体なき限り」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030570a11">
「必要としてもおられる。
　先刻、ＧＨＱは八幡宮が戦力を有すること
を嫌うと言ったろう。その裏を読め」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030580a00">
「理解しております。
　宮殿下よりの数々のご厚情も忘れてはおり
ません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　礼をとる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030590a00">
「さり<RUBY text="なが">乍</RUBY>らこの身は銀星号討滅の為に尽きる
もの。
　どうかお赦しありたい」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030600a10">
「……」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030610a11">
「…………宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030620a10">
「…………。
　仕方ないか……？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030630a11">
「は……。
　この者には、まだ……今は」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030640a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030650a10">
「用心するんよ、景明くん。
　くれぐれもな……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030660a00">
「お心遣い痛み入ります」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030670a10">
「……死んだら、あかんえ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030680a00">
「…………はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆境内
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg031_八幡宮境内_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　奥殿を辞する。
　当然のような顔をして、大鳥大尉が同行した。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030690a00">
「自分はこれからすぐに向かいます」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/0030700a03">
「ええ。
　参りましょう」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/stさよ_通常_私服.png");
	FadeStL(300,false);

//◆一条生存なら０３Ａ１、死亡なら０３Ａ２

.//if
	if(!$Ichizyou_Dead){

//――――――――――――――――――――――――――――――
.//●０３Ａ１
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030710a04">
「一度署長宅には戻った方がよろしいですね。
　準備もございますし、綾弥さまが来ておら
れるやもしれません」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_004.nss"

	}else{

//――――――――――――――――――――――――――――――
.//●０３Ａ２
	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/0030720a04">
「一度署長宅には戻った方がよろしいですね。
　準備もございますし」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030730a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_004.nss"

	}//if_end

}


scene ma04_003.nss_i
{

	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//――――――――――――――――――――――――――――――
.//●０３Ｂ
//●０３Ｂ

	SoundPlay("@mbgm19",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg032_八幡宮奥舞殿内a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　大鳥香奈枝の後任として横浜の進駐軍総司令部から
派遣されて来た新規の八幡宮付将校は、ごく事務的な
声で説明を終えると、署長に文書を手渡して退出した。
　暫し、沈黙が落ちる。

　六波羅の極秘兵器実験。
　現今の状況を思えば、それは確かに有り得る話では
あったものの。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030740a00">
「………些か、突拍子もない話だとの感慨を
禁じ得ません」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030750a11">
「全くだな」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030760a10">
「あっからさまに胡散臭い話やねぇ……。
　幕府の危険な兵器実験。人手不足。現地の
警察に協力要請」

//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030770a10">
「いっこいっこなら何てこともない話やけど。
　三つそろうと……素直に受け止めろって方
が無理やわ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　確かに。
　どうにも演劇の台本を読んでいるような気にさせら
れてならない。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030780a11">
「……宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030790a10">
「うん……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030800a11">
「おそらくＧＨＱは、私と八幡宮のつながり、
そしてそこに景明――固有の戦力が存在する
ことに気づいたのだと思われます」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030810a11">
「大鳥大尉が<RUBY text="・・">失踪</RUBY>前に報告をしていたのかも
しれません」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030820a00">
「……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030830a11">
「ＧＨＱが宮殿下をどう扱うつもりにしろ、
実戦力を保有していては不都合なのでしょう。
　そこで排除に掛かったのではないかと」

//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030840a11">
「……あるいは。
　ＧＨＱはより<RUBY text="・・・">直接的</RUBY>に、景明を厭う理由を
持つのかもしれませんが」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　八幡宮に<RUBY text="めつけやく">駐在将校</RUBY>が欠けている間を狙い、署長が俺
と舞殿宮に明かした一つの推測を思い起こす。
　あれが真実であるなら――確かに。親王との関わり
がなくても、ＧＨＱは俺の排除を望むだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw親王_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030850a10">
「で、罠を仕掛けてきた？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030860a11">
「はい。江ノ島に何が待つにしろ、その目的
とする所は景明の捕殺とみてまず間違いない
でしょう。
　そういうことであれば、対処は……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030870a11">
「言葉を選んで断るか、あるいは表面上受け
入れておいて実質は何もしない……要はサボ
タージュを決め込むか。
　いずれかで宜しかろうと存じます。宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030880a10">
「そやねえ。
　景明くん、それでええね？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030890a00">
「いいえ」

{	FwC("cg/fw/fw親王_驚き.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030900a10">
「おうっち!?」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030910a11">
「……景明」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030920a00">
「自分は江ノ島へ向かいます。
　宮殿下、保釈の密旨をお下しあれ」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0030930a10">
「いやいや、そらあかんやろ……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030940a11">
「……どういうつもりだ。
　お前はこれが罠ではないと思うのか？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030950a00">
「全てが額面通りという可能性も否定はしま
せん」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0030960a11">
「本気か」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　むしろ正気かと言いたげな口ぶりだった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030970a00">
「自分には、その点はどちらでも構わないの
です。
　ただ、銀星号の介在を示唆されている事が
気に掛かります」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030980a00">
「それがただの虚言なのか、それとも何らか
の事実を下敷きにしているのか……これは罠
か否かという観点からは判断不可能です。
　どちらにしても双方の可能性が有り得ます」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0030990a00">
「現地へ踏み込んで確認する以外に<RUBY text="みち">途</RUBY>があり
ません」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031000a10">
「……無謀やと思うえ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031010a00">
「委細承知」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031020a10">
「……署長……」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031030a11">
「景明。
　宮殿下はお前の身を案じておられる」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031040a00">
「勿体なき限り」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031050a11">
「必要としてもおられる。
　先刻、ＧＨＱは八幡宮が戦力を有すること
を嫌うと言ったろう。その裏を読め」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031060a00">
「理解しております。
　宮殿下よりの数々のご厚情も忘れてはおり
ません」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　礼をとる。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031070a00">
「さり<RUBY text="なが">乍</RUBY>らこの身は銀星号討滅の為に尽きる
もの。
　どうかお赦しありたい」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031080a10">
「……」

{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031090a11">
「…………宮殿下」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031100a10">
「…………。
　仕方ないか……？」

{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/0031110a11">
「は……。
　この者には、まだ……今は」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031120a00">
「……」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031130a10">
「用心するんよ、景明くん。
　くれぐれもな……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031140a00">
「お心遣い痛み入ります」

{	FwC("cg/fw/fw親王_通常.png");}
//【舞殿宮】
<voice name="舞殿宮" class="舞殿宮" src="voice/ma04/0031150a10">
「……死んだら、あかんえ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0031160a00">
「…………はっ」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_004.nss"

}


