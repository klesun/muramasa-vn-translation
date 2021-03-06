//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_011.nss_MAIN
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
	#bg079_ウォルフ教授の部屋_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc02_012.nss";

}

scene mc02_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_010.nss"

//◆ウォルフの部屋
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");
	
	OnBG(11, "bg079_ウォルフ教授の部屋_03.jpg");
	FadeBG(0, false);
	SoundPlay("@mbgm16", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　暇であった。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　兵士に連行され、この部屋を訪れてから既に三十分。
　部屋の主はおらず、兵士もすぐに退出してしまった
から、不平を聞かせる相手もいない。

　大鳥大尉から名前は聞かされていた、ウォルフ教授
なる人物が俺を呼んだとの話だったが……。
　呼んだだけで会いもせずほったらかし、というのは
どんな意図なのだろう。

　部屋の中はいかにも雑然としている。
　古書の山があるかと思えば、その上にはアフリカの
工芸品と<RUBY text="おぼ">思</RUBY>しき木彫りの仮面が置かれ、対岸を見ると
<RUBY text="アーマーレース">装甲競技</RUBY>の専門誌が何冊も転がり。

　壁には少女<RUBY text="レーサー">騎手</RUBY>皇路操の等身大ポスター――タムラ
甲業の宣伝用――が貼られてあった。
　添え書きのようなものもあった。妙に達筆な書体で、

〝装甲騎手はパンツはかない。美しい〟

　意味不明である。

　教授と呼ばれるからには学徒なのだろうが、分野が
まるで窺い知れなかった。
　何と言われても納得できるし、また何処か納得でき
ないような気もする。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110020a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　いずれにしろ、そんな空間に長々と放置された俺は
退屈の虫を順調に培養中であった。
　育て過ぎてそろそろ暴れ出しそうだ。

　これが自分の部屋であれば時間の潰しようはあるし、
何もなくとも寝ていれば良いのだから退屈さなどそう
そう覚えない。
　が、他人の部屋ではできる事とできない事がある。

　時間を潰すには格好と思われる物が色々と見当たる
だけに、尚更退屈感が刺激される。
　当然の礼儀作法として、勝手に手をつけるわけには
いかないのが辛かった。

　…………しかし。
　そもそも他人の部屋に一人というこの状況からして
変なのだ。

　この部屋の主は私物を客に勝手に触られても気にし
ない……というより、触られても気にならないような
物しかここには置いていないのではないか。
　でなければ、不在の部屋に俺を入れはしないだろう。

　単に気が回らないだけという可能性もあるが……<k>
　
　
　もうじき一時間。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110030a00">
「……」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110040a00">
「失礼……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　若干の後ろめたさを覚えつつ、俺は一番手近な所に
あった紙の束を取り上げた。
　どうやら、何かの論文のようだ。

　最初の一枚に題が記されている。
　
　――――『<RUBY text="ファンタジー・オブ・クルス">劒冑夢想論</RUBY>』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ページめくる音
	OnSE("se日常_物_紙をめくる02", 1000);
//◆ノベル表示


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　劔冑とは何か。それは人の肉と金属を重ね合わせて
造られる鎧であり、生命体と金属物の双方の特性を備
える。即ち劔冑は人間に似た知性を持ち、生体らしく
破損を再生し、独自に活動することも不可能ではない。
且つ、この物体は紛れもなく金属であり、基本的には
他者に使用されない限り動くことはなく、適切な保存
環境に置かれていれば死亡・腐敗などの変質を遂げる
こともない。
　そして。言うまでもあるまいが、着用する戦士に魔
神の力を与える。それが劔冑である。

　ただの鉄の鎧と劔冑、如何なる未知の物質が両者を
天と地に隔絶するのか、我々の科学的認識力は未だ大
きく不足しており、真実の島へ至れるだけの航行能力
を欠く。先人と我々の労力が果たしていつ報われるも
のなのか、現時点では何一つ確たる言を述べ得ない。
百年後の最高学府で現在より飛躍的に進歩した技術知
識を持つ教授達が我々と全く同じようにひたすら頭を
抱えているかもしれないし、あるいは、マケドニアの
片田舎で無名の天才が書き上げた従来の劔冑研究を根
底から覆す論文が来月号のニュー・サイエンス誌上に
華々しく登場するかもしれない。だがいずれであれ、
我々現代を生きる探求者にできることはただ一つだ。
いつか訪れるゴール・インの瞬間を信じて、脳細胞に
鞭を加えるだけである。

</PRE>
	SetTextEXAH();
	TypeBeginAHIO();//―――――――――――――――――――――――――――――

//◆戻り

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0110050a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　この論文は完全なものではないようだ。
　いくらかの欠落があるのだろう、<RUBY text="ページ">頁</RUBY>をめくると急に
内容が飛んでいた。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("フラッシュ白", 1000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);

}

..//ジャンプ指定
//次ファイル　"mc02_012.nss"