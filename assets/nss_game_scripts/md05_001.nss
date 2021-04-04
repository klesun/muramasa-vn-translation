//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_001.nss_MAIN
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
	#bg026_普陀楽山塞a_02=true;
	#bg066_普陀楽城内のどか_02=true;
	#ev237_空に昇った金神_a=true;
	#ev237_空に昇った金神_b=true;
	#ev237_空に昇った金神_c=true;
	#ev239_茶々丸の最期_a=true;
	#ev801_戦争絵シリーズその１_a=true;
	#ev240_戦争状況図説_a=true;
	#ev240_戦争状況図説_b=true;
	#ev240_戦争状況図説_c=true;
	#ev240_戦争状況図説_d=true;
	#ev240_戦争状況図説_e=true;
	#ev240_戦争状況図説_f=true;
	#ev240_戦争状況図説_g=true;
	#ev240_戦争状況図説_h=true;
	#ev240_戦争状況図説_i=true;
	#ev240_戦争状況図説_j=true;
	#ev240_戦争状況図説_k=true;
	#ev240_戦争状況図説_l=true;
	#ev240_戦争状況図説_m=true;
	#bg049_景明故郷住宅地b_02=true;
	#bg049_景明故郷住宅地モブb_01=true;
	#ev239_茶々丸の最期_b=true;
	#ev239_茶々丸の最期_c=true;
	#ev239_茶々丸の最期_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_002.nss";

}

scene md05_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_062.nss"


//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",2000,700,0,250,null,true);

	OnBG(100, "bg026_普陀楽山塞a_02.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(1000);

	SoundPlay("@mbgm32", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　瀕死の茶々丸は良く<RUBY text="も">保</RUBY>ったが、元より致命傷を癒す
<RUBY text="すべ">術</RUBY>など無い。
　緩慢に死へ近付き……今、死に至ろうとしていた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内。bg066
	CreateTextureEX("城内", 200, @0, @0, "cg/bg/bg066_普陀楽城内のどか_02.jpg");
	Fade("城内", 1000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　空を見たいという望みを容れて、外へ連れ出す。
　今の普陀楽城内に人気は少ない。揉め事に出くわす
不安はなかった。

　茶々丸を松の根元に座らせて、俺も隣へ腰を下ろし、
二人で空を見上げる。
　村正は俺達から一歩離れて佇んでいた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空。第二太陽。ev237a
	CreateTextureEX("第二太陽", 210, @0, @0, "cg/ev/ev237_空に昇った金神_c.jpg");
	SetVolume("SE01L*", 2000, 1000, null);
	Fade("第二太陽", 1000, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　怪奇な天体は今日もそこにある。

　人々の間では第二の太陽という呼称が定着していた。
　それは外観のみに由来するもので、その実態に太陽
との共通項はほぼ無い――引力を無視した運動をする、
強い光を放つが熱は発していないらしい、等々。

　自然的あるいは人為的に発生した一種の幻像という
推測が、今は専門家の間で主流を占めていると聞く。
　真偽を確かめるための本格的調査も各国で計画され
ている――が、現情勢下で実行は難しいだろう。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010010a00">
「あれは本当に光なのか」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010020a07">
「……うん」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　衰えた声音で、しかし迷わず、茶々丸は認めた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 20000, 700, null);

//◆ＥＶ：茶々丸最期
	CreateTextureEX("さらば茶々丸", 240, @0, @0, "cg/ev/ev239_茶々丸の最期_a.jpg");
	Fade("さらば茶々丸", 1000, 1000, null, true);
	Delete("第二太陽");

	Wait(500);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010030a07">
「あれは御姫で……地底の牢獄から解き放た
れた神だよ。
　どっちが食ってどっちが食われたんだかは、
よくわからないけど」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010040a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010050a07">
「声が変わったんだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010060a00">
「声が？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010070a07">
「聴かせたでしょ。あの糞っ垂れな神サマの
雄叫び。
　あれが……柔らかくなった」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010080a07">
「今は子守唄みたいに聴こえる。
　……これ、御姫の声だよ。きっと」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010090a00">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010100a07">
「お兄さんには、聴こえない？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010110a00">
「……いや」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010120a00">
「聴こえるような気がする」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　空に第二太陽が現れて以来、ずっと吹き続けている
この風。
　耳孔の中に反響する<RUBY text="こだま">谺</RUBY>は、どうしてか――どう
にも銀星号の唄を思い出させる。

　人を闘争の衝動に駆り立てる、あの恐ろしい唄を。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 20000, 0, null);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010130a07">
「この声は世界を包んでる。
　みんなが……気付かずに、御姫の唄を聴い
てる……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010140a00">
「……だからか」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010150a00">
「だから、なのか」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010160a07">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　茶々丸は答えない。
　眼だけで、頷きを返してきた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：戦争イメージ

	CreateTextureSP("戦争絵00", 230, @0, @0, "cg/ev/ev801_戦争絵シリーズその１_a.jpg");
	CreateTextureSPadd("絵背景100", 230, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	Fade("絵背景100", 0, 700, null, true);


	Fade("さらば茶々丸", 1000, 0, null, true);
	Delete("さらば茶々丸");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　あの『神』の解放から、何週間何ヶ月と経ったわけ
ではない。しかしこのごく短い間に世界各地で起きた
激変は、過去の歴史の数年分、あるいは数十年分にも
相当するだろう。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆世界地図をレイヤ重ね
//◆中近東を示す。赤塗り？

	CreateTextureEX("戦争状況01", 240, @0, @0, "cg/ev/ev240_戦争状況図説_a.jpg");
	Fade("戦争状況01", 1000, 1000, null, true);

	Delete("絵背景100");

	WaitKey(1000);

	CreateTextureEX("戦争状況02", 250, @0, @0, "cg/ev/ev240_戦争状況図説_b.jpg");
	Fade("戦争状況02", 1000, 1000, null, true);
	Delete("戦争絵00");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　まず中近東では、長らく大英連邦に服属を余儀なく
されてきた<RUBY text="イスラム">回教</RUBY>諸国家が蜂起した。
　過去にもあった事である……だが何の前触れもなく、
また国家間の連携もない突発的決起は異常であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆中国
	CreateTextureEX("戦争状況03", 260, @0, @0, "cg/ev/ev240_戦争状況図説_c.jpg");
	Fade("戦争状況03", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　やはり大英連邦の保護下にある大漢帝国では、宮廷
内のクーデターと地方軍閥の反乱、更に民衆の暴動が
一斉に勃発している。
　皇帝は既に大英本国へ亡命したらしい。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆スペイン
	CreateTextureEX("戦争状況04", 270, @0, @0, "cg/ev/ev240_戦争状況図説_d.jpg");
	Fade("戦争状況04", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　イベリア半島でも反大英の狼煙が上がった。
　盟主はフランシスコ・フランコ・バァモンデ将軍。
軍人として名声高い彼に率いられた<RUBY text="レコンキスタ">国土解放</RUBY>軍は精強
であり、戦況は大英側のやや劣勢で推移している。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆イタリア

	CreateTextureEX("戦争状況05", 280, @0, @0, "cg/ev/ev240_戦争状況図説_e.jpg");
	Fade("戦争状況05", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　またイタリア半島では<RUBY text="ドゥーチェ">統帥</RUBY>ムッソリーニが再起。
　彼は先の大戦で死んだはずであり、その正体は限り
なく怪しいと言うほかない――それでも多くの人間が
彼の旗の下に結集し、祖国奪回の気炎を高めている。

　まるで戦争をやる契機になるなら本物でも偽者でも
構わないと考えているかのように……。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆イギリス本国

	CreateTextureEX("戦争状況06", 290, @0, @0, "cg/ev/ev240_戦争状況図説_f.jpg");
	Fade("戦争状況06", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　激変は大英連邦の本国すら例外としなかった。
　厳格な階級社会の中で抑圧されてきた労働者階層が
各地で暴発。資産家を襲うに留まらず、首都の王宮に
まで押し寄せる騒ぎとなっている。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ポーランド

	CreateTextureEX("戦争状況07", 300, @0, @0, "cg/ev/ev240_戦争状況図説_g.jpg");
	Fade("戦争状況07", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　そんな大英連邦の混乱を見てなのかそうでないのか。
　<RUBY text="ロシア">露帝</RUBY>の西方諸侯軍がポーランドへ侵攻を開始し、

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆南アフリカ
	CreateTextureEX("戦争状況08", 310, @0, @0, "cg/ev/ev240_戦争状況図説_h.jpg");
	Fade("戦争状況08", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　アフリカ南部のトランスヴァール公国は、大英連邦
とのダイヤモンド鉱山を巡る争いに決着をつけるため
アフリカ総督府に宣戦……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ニュージーランド、オーストラリア

	CreateTextureEX("戦争状況09", 320, @0, @0, "cg/ev/ev240_戦争状況図説_i.jpg");
	Fade("戦争状況09", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　オーストラリア総督府と、南洋先住民族の最後の砦
であるアオテアロア同盟の間でも戦火が噴いた。

　更に、大英連邦と直接関わらない地域――

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラジルとアルゼンチン

	CreateTextureEX("戦争状況10", 330, @0, @0, "cg/ev/ev240_戦争状況図説_j.jpg");
	Fade("戦争状況10", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　南米大陸の二雄、ブラジルとアルゼンチンが開戦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆インドネシア
	CreateTextureEX("戦争状況11", 340, @0, @0, "cg/ev/ev240_戦争状況図説_k.jpg");
	Fade("戦争状況11", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　統一されていたインドネシア諸島が分裂。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆タイとビルマ

	CreateTextureEX("戦争状況12", 350, @0, @0, "cg/ev/ev240_戦争状況図説_l.jpg");
	Fade("戦争状況12", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　タイとビルマの両王国は宿命的な抗争を再び始め。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ここまで取り上げられた地域を全て赤表示
//◆全世界を赤表示

	CreateTextureEX("戦争全部", 360, @0, @0, "cg/ev/ev240_戦争状況図説_m.jpg");
	Fade("戦争全部", 1000, 1000, null, true);
	Delete("戦争状況*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　――――要するに。
　
　地球上にあった戦争の火種が、連動してなのか独自
になのか、<RUBY text="・・">全て</RUBY>発火して周囲を焦がしているのだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内。bg066

	FadeDelete("戦争全部",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　大和も例外ではない。
　六波羅と進駐軍の戦いは惰性的に続き、これに各地
の反幕勢力が介入し、更に幕府と進駐軍のそれぞれで
内部分裂が生じ――争乱は混迷し拡大する一方である。

　この全世界的激動は、一部の有識者が主張するよう
な大英連邦を筆頭とする専制支配に対する現代人類の
総合的拒絶意思の表れなどではなく、
　ただ単に……<k><RUBY text="・・・・・・・・・・・">一個の意思が望んだ結果</RUBY>なのか。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010170a00">
「銀星号の精神汚染が世界全土を狂わせつつ
あるというのか」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010180a07">
「範囲が広いせいで汚染の進行は遅いみたい
だけどね。
　あと一週間くらいかな……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010190a07">
「全人類が戦うだけの<RUBY text="けもの">狂獣</RUBY>になるまで」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010200a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010210a00">
「それは、人間世界が滅ぶという事だ」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010220a07">
「甲鉄で守られるから武者は残るよ。
　とりあえず」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010230a00">
「本当に<RUBY text="・・・・・">とりあえず</RUBY>の事に過ぎないだろう。
　武者のみで社会を維持できる道理がない」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010240a07">
「そうだね……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010250a07">
「社会が崩壊して、死に絶えてゆくか。
　それより先にみんな硝子の像になるか……
どっちかだ」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　硝子の像。
　
　……そう。それもある。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg049b

	CreateTextureEX("街", 210, @0, @0, "cg/bg/bg049_景明故郷住宅地モブa_01.jpg");
	Fade("街", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　かの天体は、不定期に地上へ雨を降り注ぐ。
　雨――その表現は正しいのかどうか。

　<RUBY text="・・・・・・・・">液体のような光線</RUBY>。そんな奇妙な放出物である。
　世界の各地を、これが襲った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
	CreateColorEX("ホワイト", 15000, "WHITE");
	Fade("ホワイト", 1000, 1000, null, true);

//◆bg049c
	CreateTextureEX("街2", 210, @0, @0, "cg/bg/bg049_景明故郷住宅地モブb_01.jpg");
	Fade("街2", 0, 1000, null, true);
	Delete("街");
	FadeDelete("ホワイト",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　そしてそこにいた生物を――時には生物以外のもの
も変質させた。
　硝子か水晶のように透明であり、しかし金属質でも
ある、奇妙な物質へ。

　調査は進んでいない。その物質に触れた者は高確率
で同様の変質を遂げるため、調べが困難なのだ。
　そうして変質したものの生死さえ、現在はまだ判明
していなかった。

　ただ〝彫像〟となったものは生物的活動を停止する。
　それは明らかな事実である。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	FadeDelete("街2",1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010260a00">
「あれはやはり……死んでいるのか」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010270a07">
「<RUBY text="かみ">金神</RUBY>の仲間になり損なったっていうのか、
なり切っちゃったっていうのか。
　実際どっちなんだかはあてにもよくわから
ないけど」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010280a07">
「ま、生物としては死んだも同然だろうね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010290a00">
「……あの<RUBY text="あめ">光雨</RUBY>も、やがて――」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010300a07">
「地球全土を覆う……。
　やっぱり大して時間は掛からないと思うよ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010310a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010320a00">
「……世界が、滅びる……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010330a07">
「このままなら、ね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　答案に赤丸を付けるような気安さと迷いの無さで、
死に瀕した公方は終末予言を肯定した。
　それはしかし、当然の事ではあろう。

　この破滅を主導したのは他ならぬ、彼女なのだから。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




//◆ev239

	CreateTextureEX("さらば茶々丸", 220, @0, @0, "cg/ev/ev239_茶々丸の最期_a.jpg");
	Fade("さらば茶々丸", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010340a00">
「それで、どうする」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010350a07">
「うん？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010360a00">
「お前達……緑龍会は。
　念願叶って、神を呼び出した」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010370a00">
「それで、これからどうするつもりだ」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010380a07">
「さぁねぇ。
　たぶん誰も、この先のことなんて考えちゃ
いなかったろうし」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010390a07">
「みんなこれで気が済んで、自殺でもしてる
かも。
　それとも今更後悔して、慌てふためいてる
かな……どうもそっちのが多そうだ」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010400a00">
「……お前達は――」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010410a07">
「言ったでしょ。下らない屑の集まりだって。
　その程度だよ、あいつらは……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010420a07">
「あても、ね」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010430a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空と黒太陽
	CreateTextureEX("黒太陽", 230, @0, @0, "cg/ev/ev237_空に昇った金神_c.jpg");
	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",2000,1000,0,250,null,true);
	Fade("黒太陽", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010440a00">
「どうすれば止められる？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010450a07">
「……世界の滅びを？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010460a00">
「ああ」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010470a07">
「あれを壊すしかないだろうね」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　指差すような声で――実際はもうその腕が動く事は
なかった――茶々丸が天を示す。
　それは単純な結論だった。あの天体が元凶ならば、
あれを取り除く事で問題は解決するだろう。

　しかし、方法が無い。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010480a00">
「……とても行き着けん」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010490a07">
「どう見ても成層圏越えてるもんねぇ。
　武者の騎航で届く高さじゃない」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010500a07">
「コロンビヤード砲で撃ち出してもらうしか
なさそうだ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010510a00">
「月面まで行く気はない」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　それ以前に<RUBY text="サイエンス・フィクション">空想科学小説</RUBY>の手法を試す気はない。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239
	SetVolume("SE01L", 10000, 0, null);
	FadeDelete("黒太陽",1000,true);

//おがみ：茶々丸台詞、音声あわせ
//「……待っていればいいよ」

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010520a07">
「……待ってればいいよ」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010530a00">
「待つ？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010540a07">
「あれは――
　御姫は必ず降りてくる」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010550a07">
「もうすぐ。
　求めるものを、手に入れるために」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010560a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　降りてくる？
　あの、天体が……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010570a07">
「お兄さんは、待っていればいい」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010580a07">
「自分自身を整えて……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010590a00">
「体調の事か」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239a
//■aだとそのままなので記述なし inc櫻井
	CreateTextureEX("さらば茶々丸02", 230, @0, @0, "cg/ev/ev239_茶々丸の最期_b.jpg");
	Fade("さらば茶々丸02", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　茶々丸の双眼が俺を捉えた。
　その――空洞化しつつある瞳。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010600a07">
「いい？
　これはあてからお兄さんへの、最後の忠告」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010610a07">
「お兄さんは湊斗景明である限り、御姫には
決して勝てない。
　御姫は、湊斗光なんだから」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010620a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010630a07">
「お兄さんは無名の英雄になって。
　世界を守ることだけが目的の……<RUBY text="・">個</RUBY>の無い。
公の大義に従う武力行使者に」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010640a07">
「本当の英雄になるんだ」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010650a00">
「……俺は……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010660a07">
「資格の有無なんていい。
　それしかないんだよ。お兄さん」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010670a07">
「御姫を倒して、世界を救える方法は、それ
だけ」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010680a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010690a07">
「……いい？
　お兄さん、間違えないで」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010700a07">
「これは足利茶々丸の」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010710a07">
「お兄さんへの。
　この世界への」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239b

	CreateTextureEX("さらば茶々丸021", 230, @0, @0, "cg/ev/ev239_茶々丸の最期_c.jpg");
	Fade("さらば茶々丸021", 1000, 1000, null, true);
	Delete("さらば茶々丸02");

	Wait(500);

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010720a07">
「最後の――――呪いだ」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010730a00">
「…………？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010740a07">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239

	FadeDelete("さらば茶々丸021",1000,true);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010750a07">
「……ふぅ……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010760a00">
「茶々丸？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010770a07">
「疲れちゃった」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010780a00">
「……そうか」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010790a07">
「はぁ。
　世界……滅びるところ見たかったな」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010800a07">
「誰の声も聴こえない、静かな世界で眠りた
かった」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010810a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010820a07">
「まっ……いいか」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010830a07">
「うぜェ神畜生の声は御姫の唄になったし。
　お兄さんの声は優しいし」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010840a07">
「他の声は……もう遠いし」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010850a00">
「茶々丸」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010860a07">
「うん。
　これで、いいや」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010870a07">
「これで……眠れる……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010880a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239c

	CreateTextureEX("さらば茶々丸03", 230, @0, @0, "cg/ev/ev239_茶々丸の最期_d.jpg");
	Fade("さらば茶々丸03", 1000, 1000, null, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010890a07">
「お兄さん」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010900a00">
「……ん」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010910a07">
「さよなら」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010920a00">
「…………ああ」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010930a00">
「さようなら」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト
	SetVolume("@mbgm*", 2000, 0, null);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　そうして。
　堀越公方足利茶々丸は、帰らぬ者となった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆シーン切り
	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"md05_002.nss"