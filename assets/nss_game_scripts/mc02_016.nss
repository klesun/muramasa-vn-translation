

//<continuation number="780">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_016.nss_MAIN
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

	$GameName = "mc02_017.nss";

}

scene mc02_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_015.nss"

//◆ウィローの部屋？
//◆横書きテキスト
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg029_ガーゲット少佐執務室_01.jpg");

	StL(1000,@0,@0,"cg/st/stウィロー_通常_制服.png");
	StR(1000,@0,@0,"cg/st/stウォルフ_通常_私服.png");
	FadeStL(0,true);

	Delete("上背景");
	FadeDelete("黒幕１", 1000, true);

	SoundPlay("@mbgm36",0,1000,true);
	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160010b00">
「……〝<RUBY text="ゴールデン・ドーン">黄金の夜明け</RUBY>〟……
　それが作戦名か？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160020b03">
「はい」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160030b00">
「ふむ……」


{	FadeStR(300,false);
	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160040a13">
「気に食わないかね？　ウィロー少将。
　僕なりに良い名を考えてみたのだが……」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160050b00">
「いえ。そんなことはありませんよ、<RUBY text="プロフェッサー">教授</RUBY>。
　悪しき過去を断ち、輝かしき未来へと繋ぐ
一大作戦に相応しい名です」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160060a13">
「そうだろう。そうだろうとも。
　黄金の夜明け。この言葉を口にするたび、
未来の光景が目に浮かぶようではないか」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160070b00">
「ええ、そうですね」


{	FwH("cg/fw/fwウォルフ_歓喜.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160080a13">
「――パンツはいてない少女の下半身がッ!!」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160090b00">
「ええ、そうですね。
　それで……クライブ？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160100b03">
「１１月３０日、六波羅幕府の本拠地である
ところの普陀楽城に勅使を迎え、足利護氏の
嫡孫邦氏への大将領宣下が行われます。
　朝廷工作がようやく実ったようで」

//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160110b03">
「式典には当然、幕閣の要人ほぼ全員が参列
します。
　四公方、評定衆、政所執事、侍所所司……
少なくともこの辺りはまず間違いなく」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160120b00">
「頭は潰せるということだな。
　だが、それでは目的の半分だ。<RUBY text="インパクト">宣伝効果</RUBY>が
足りない。残りの半分についてどう見込んで
いるんだ、クライブ？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160130b03">
「満足な成果を、閣下。
　式典に合わせて幕軍の主力も普陀楽に集結
しつつあります」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160140b03">
「目的は式典の警護の他に……
　大和国民及び我々に対する威圧。加えて軍
全体の士気向上」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160150b03">
「要するに六波羅は、護氏の急死で失った物
全てを宣下式典で取り戻す気でいます。
　連中も連中なりに良く考えてますね」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160160b00">
「そうだな。<RUBY text="・・・・・・・">何事もなければ</RUBY>、六波羅の目算
はおおむね成就しただろうからな。
　しかし申し訳ないが、彼らの入念な準備は
全部我々の<RUBY text="パーティー">式典</RUBY>のために使わせてもらおう」

</PRE>
	SetTextEXH();
	TypeBeginHI();//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウィロー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160170b00">
「幕府首脳と軍主力が普陀楽に集まる。
　我々は彼らを<RUBY text="・・">一撃</RUBY>によって<RUBY text="・・">一掃</RUBY>し、この国
への支配権を確立する。未来はそう決まった
と考えて良いのだな？　クライブ・キャノン」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160180b03">
「機会は与えられました。間違いなく。
　後は努力次第ですよ」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160190b00">
「宜しい。不断の努力は<RUBY text="ワイルド・ウェスト">西部開拓時代</RUBY>から、
いやそのずっと昔から我々の最も得意とする
ところだ。
　成功は約束されている」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160200a13">
「もちろん。これは天命というものだよ少将。
　我々が失敗すれば世界はやがて<RUBY text="ブリテン">大英連邦</RUBY>の
手に落ちるだろう……だがそんなことは有り
得ないのだ」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160210a13">
「何故なら全人類を従える権利は唯一、神の
手にのみ帰する。いかに<RUBY text="クィーン">英国女王陛下</RUBY>が海賊
の首領まで遡る貴い血脈を誇っておられよう
と、その権利を犯せるものではない」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160220b00">
「仰る通り。
　<RUBY text="エンパイア">大英帝国</RUBY>は既に充分肥え太った。肥え太り
過ぎた。もういい加減、屠殺場に搬送されて
<RUBY text="・・">解体</RUBY>されても良い頃合です」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160230a13">
「うん、うん、まったくだ」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160240b03">
「……」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160250a13">
「……ふむ？　何かね、キャノン中佐。
　僕の顔にパンツでもついているかな」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160260b03">
「まあ、毛編みのパンツなら」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160270a13">
「それは髭だよ」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160280b03">
「失礼ながら少しばかり意外でしてね。
　教授が我々の理想にそうも共鳴して下さる
とは」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160290a13">
「ふむ……意外かな？
　確かに僕ら<RUBY text="ゲルマン">独逸人</RUBY>は、<RUBY text="ブリテン">英帝</RUBY>の支配下に置か
れる屈辱の歴史の長さにおいて君ら<RUBY text="アメリカン">新大陸人</RUBY>
の足元にも及ばない。まだほんの数年ばかり」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160300a13">
「だがそれだけに、生々しい怒りというもの
があってね……」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwキャノン_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160310b03">
「……」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160320b00">
「クライブ」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160330b03">
「ええ、わかっています。
　教授、疑うような発言をお許し下さい」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160340a13">
「いやいや。
　君の慎重さは美質だよ」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160350a13">
「しかし、僕は既に誠意を示してきたのでは
ないかな？　オデッサ機関を通じて、英国軍
に囚われ酷使されている我が同胞――世界に
誇る<RUBY text="ドイチェス・テヒニカー">独逸技術者</RUBY>と連絡を取り、」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160360a13">
「数々の最新兵器、わけても〝<RUBY text="ガジェット">装置</RUBY>〟が大和
へ運び込まれるよう仕向けた。
　ま、運用試験の適地について少々事実とは
違う報告をさせただけのことだがね……」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160370a13">
「この程度の助力では不足だったかな」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160380b00">
「そんなことは決してありません。
　ウォルフ教授、あなたは私にとって最大の
恩人の一人ですとも」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160390a13">
「そう言ってもらえると安心できるよ、<RUBY text="フロイント">友人</RUBY>。
　ならば君達が悲願を果たした暁には、我が
祖国への支援を期待しても良いのだろうね？」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160400b00">
「恩と友誼にかけて、必ずや。
　我が故郷の未来を磐石なものとするために
も、教授の祖国との協調は必要不可欠です」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160410b00">
「そうだろう、キャノン中佐？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160420b03">
「全くその通りです、閣下」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160430a13">
「うむ、うむ。
　１１月２９日は大英連邦の終焉の始まりで
あり、我ら両国の友好の始まりでもあるわけ
だな」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160440b03">
「……ええ」


{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160450b00">
「２９日？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160460b03">
「〝黄金の夜明け〟作戦の決行は宣下式典の
前日を予定しています」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160470b00">
「当日を避けた理由は？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160480b03">
「大和国民の微妙な心理に配慮した結果です。
　……教授？」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160490a13">
「うん、提案した僕から説明しよう。
　大和の人々はむろん六波羅を嫌ってやまぬ
わけであるが」


{	FwH("cg/fw/fwウォルフ_思索.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160500a13">
「それはそれとして盛大な式典が行われれば、
鎌倉市中は<RUBY text="フェスティバル">お祭り騒ぎ</RUBY>になるし、その気分は
各地にも伝播する。
　なんとなく<RUBY text="・・・・・">おめでたい</RUBY>気分になるわけだ」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160510b00">
「ふむ……？」

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//―――――――――――――――――――――――――――――

	SetFwH("cg/fw/fwウォルフ_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160520a13">
「そこへ我々が水をかければ――それも北極
海直送の氷水をぶっかけたりすれば、わかる
だろう少将？
　大和国民は我々に怒りを抱くかもしれない」


//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160530a13">
「巨悪の粉砕をもって国民の支持を勝ち取る
目論見は潰え、作戦の全てが無意味どころか
逆効果になってしまう恐れがあるのだよ」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160540b03">
「教授からそうご意見を頂き、作戦を一日、
前倒しにしました。
　幾つか無理は生じてしまいますが、まぁ、
許容範囲の内側です」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160550b00">
「……なるほど。
　いや、教授の言われることは尤もです」


{	FwH("cg/fw/fwウィロー_厳しい.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160560b00">
「中佐、標的はそれまでに普陀楽城へ集結を
終えているのだな？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160570b03">
「そうですね。ほぼ」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160580b00">
「なら問題はない。
　その予定に従って進めてくれ」


{	FwH("cg/fw/fwキャノン_笑い.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160590b03">
「了解です。閣下」


{	FwH("cg/fw/fwウォルフ_笑顔.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160600a13">
「では、僕はそろそろ失礼させて頂こう。
　パンツ禁断症状が出始めたようなのでね」


{	FwH("cg/fw/fwウォルフ_通常.png");}
//【ウォルフ】
<voice name="ウォルフ" class="ウォルフ" src="voice/mc02/0160610a13">
「また後ほど」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160620b00">
「はい。
　お疲れ様です、教授」

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//―――――――――――――――――――――――――――――

//◆教授、退出

	Move("@StR*", 300, @20, @0, Dxl2, false);
	DeleteStR(300, true);
	OnSE("se日常_建物_扉閉める01", 1000);
	WaitKey(500);

	StR(1000, @0, @0,"cg/st/stキャノン_通常_制服.png");
	FadeStR(200,true);

	SetFwH("cg/fw/fwキャノン_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160630b03">
「…………」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160640b00">
「彼を疑うのか、クライブ？」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160650b03">
「信用は置けませんね。全く」


{	FwH("cg/fw/fwウィロー_笑い.png");}
//嶋：修正【090930】
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160660b00">
「ふむ……
　私は必ずしもそうとは思わないが……」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160670b03">
「同じ境遇というだけで同情し過ぎですよ、
あなたは。
　故郷の同胞の中にさえ、大英連邦に仲間を
売る裏切り者が幾人もいたことをお忘れなく」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160680b03">
「いや……<RUBY text="・・・・">我々すら</RUBY>。
　始末に負えない同胞、大局を理解せず暴発
ばかりしたがる過激分子どもを<RUBY text="ガバナー・ゼネラル">新大陸総督</RUBY>に
売って、信用を得てきたではありませんか？」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160690b00">
「……彼が同じことをする、と？」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160700b03">
「いえ、流石にその点は徹底的に洗いました。
　大英連邦との接点は見当たりませんでした
よ」


{	FwH("cg/fw/fwキャノン_沈痛.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160710b03">
「ただ、不可解な部分も多いのです。
　できれば作戦前にそこのところをはっきり
させたかったんですがね……」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160720b00">
「……まぁ、いいさ。
　大英連邦の間者ではないというだけでも、
最低限の安心はできる」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160730b00">
「今はそれで満足しよう。
　いつだって万全は望めないものだし、それ
を理由に好機を逃すのは愚かしいことだ」


{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160740b03">
「……ええ」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160750b00">
「ところでクライブ」


{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160760b03">
「何ですか」


{	FwH("cg/fw/fwウィロー_通常.png");}
//【ウィロー】
<voice name="ウィロー" class="ウィロー" src="voice/mc02/0160770b00">
「パンツ禁断症状って何だ……？」


{	FwH("cg/fw/fwキャノン_戦慄.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/0160780b03">
「そいつを調べろってご命令だけはお断りし
ますよ、閣下」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"mc02_017.nss"