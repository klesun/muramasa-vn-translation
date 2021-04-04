//<continuation number="650">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_025.nss_MAIN
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
	#bg077_建朝寺得月楼前_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc01_026.nss";

}

scene mc01_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_024vs.nss"

//◆得月楼
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg077_建朝寺得月楼前_02.jpg");
	DrawDelete("上背景", 300, 100, "slide_03_01_1", true);
	Delete("上背景");

//◆バロウズ登場
	CreateSE("SE01","se特殊_鎧_駆動音02");
	StL(1000, @-60, @0,"cg/st/3dバロウズ_立ち_通常.png");

	MusicStart("SE01",0,1000,0,850,null,false);
	Move("@StL*", 300, @60, @0, Dxl1, false);
	FadeStL(300,true);

	SoundPlay("@mbgm21",1000,1000,true);

	SetFwC("cg/fw/fw署長_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//◆ボイス「ウェイトアミニット」Wait a minute
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250010a11">
「待て！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長
	StR(1000, @0, @0, "cg/st/st署長_通常_制服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw署長_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//◆ボイス「ユアネームアンド……」Your name and...
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250020a11">
「貴官の姓名と――」


{	FwC("cg/fw/fwバロウズ_通常.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250030a03">
「大和語で結構でしてよ、署長さん」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250040a11">
「…………」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250050a11">
「貴方か……大鳥大尉」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250060a03">
「はい。
　本日はお日柄も良く」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250070a11">
「……コブデン氏が失敗したと聞いた時点で、
何らかの制裁は避けられまいと覚悟していた
が。
　よりによって貴方が送られて来るとは」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250080a11">
「いや……当然か。
　私がＧＨＱの参謀でもそうする」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250090a03">
「ええ。
　わたくしがＧＨＱの味方なら、忠誠を確か
める試金石になる。敵なら、敵同士ぶつから
せて食い合わせることになる」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250100a03">
「しかもわたくしは大和人。
　わたくしが親王を襲っても傍目には進駐軍
の関与が窺えないし、仮に知られても大した
問題にはならない……」

//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250110a03">
「実際に血を流し合ったのは結局、どちらも
大和人なんですもの。
　ＧＨＱは宮殿下に報復を加えながら、大和
の人々の感情を刺激しなくて済んでしまう」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250120a03">
「わたくしの上司は本当に合理的でしてよ」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ジーツー
	SetFwC("cg/fw/fw署長_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250130a11">
「……<RUBY text="Ｇ２">参謀第二部</RUBY>。
　クライブ・キャノン中佐？」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250140a03">
「あら、ご明察」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250150a11">
「私が張り合うには、少々……無理がきつい
相手だったようだ」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250160a03">
「ですかしら？
　あなたがたが焦って自沈の道を選びさえし
なければ、まずまず互角の勝負ができていた
と思いましてよ」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250170a11">
「……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250180a03">
「策を弄し過ぎたのではなくて？
　足利護氏の急な死は確かに、進駐軍の大和
政策を巧遅から拙速へと振り向ける危険性を
持っていましたけど――」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250190a03">
「掌を返すように一瞬で変わると思っていた
なら、あなたがたは警戒が過ぎました。
　ＧＨＱのように図体の大きい組織が、そう
俊敏に動けるものではありません」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250200a03">
「方針を翻すとしても、それは会議と密談を
繰り返して内部の意見調整を済ませた後……。
　あなたがたが対策を講じる余地は十二分に
ありましたのよ？」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250210a11">
「…………成程」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250220a11">
「そうか。そういうことか。
　つまり我々は……疑心暗鬼の陥穽に<RUBY text="はま">嵌</RUBY>った
のか」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250230a03">
「……疑心？」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250240a11">
「貴方に対する。
　大鳥大尉」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250250a03">
「……」

{	SetVolume("@mbgm*", 1000, 0, null);
	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250260a11">
「足利護氏を殺したのは我々ではない」

{	SoundPlay("@mbgm35", 0, 1000, true);
	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250270a11">
「景明に拒絶され、<RUBY text="・・・・">貴方にも</RUBY>断られ……我々
はやむなくプランを放棄した。
　暗殺実行者を用意できなかったからだ」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250280a11">
「しかし、大将領は死んだ」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250290a03">
「…………」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250300a11">
「我々は――――ＧＨＱが手を下したのだと
判断した」


//◆腑に落ちた、というニュアンスで
{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250310a03">
「……あぁ……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250320a11">
「そうだ。大鳥大尉……我々から大将領暗殺
の計画を聞いた貴方がＧＨＱへ報告したのだ
と、そう思った。そしてＧＨＱはそれを利用
すべく策したに違いないと」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250330a11">
「自らの手で護氏を始末しておき、その上で
<RUBY text="われわれ">舞殿宮</RUBY>の計画を幕府に密告する……。
　計画は実在したのだし、大尉という証人も
いるのだから信じさせるのは容易い」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250340a11">
「幕府の手で宮殿下を攻め滅ぼさせ、しかる
後、その行為を非難して進駐軍が幕府を潰す。
　大和の国民は進駐軍を正義の執行者と認め、
支配を受け入れる……」


//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250350a11">
「そういう筋書きをＧＨＱは書いたのだろう
と……我々は考えたのだ」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250360a03">
「……それで。
　とにもかくにも進駐軍の出足を止めようと、
コブデン中佐を買収して横須賀軍港を爆破さ
せるなんて乱暴な手を……」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250370a11">
「ああ。
　一刻の猶予も許されない――と、宮殿下も
私も思い込んでいた」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250380a11">
「……空回りだったのだな。
　大尉、先程の貴方の話を追えば……護氏を
殺したのは<RUBY text="あなたがた">ＧＨＱ</RUBY>でもない」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250390a03">
「ええ。
　あの事件は司令部にも寝耳に水」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250400a03">
「わたくし、お二人から暗殺の話を持ちかけ
られたこと、誰にも洩らしませんでしたから。
　利用してどうの、なんてキャノン中佐にも
できる道理はなかったんです」


{	FwC("cg/fw/fw署長_沈黙.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250410a11">
「…………」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250420a03">
「お断りする時、申しましたでしょう。
　<RUBY text="・・・・・・・・・・・・・">計画の趣旨には賛同できます</RUBY>けど、私的な
事情で少し立て込んでいるので今回はご協力
致しかねます――って」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250430a03">
「あの言葉を額面通りに受け取って下されば
よろしかったのに」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250440a11">
「……そうだな。
　それをできなかったのが、私の器量だ」


{	FwC("cg/fw/fw香奈枝_通常a.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250450a03">
「美人の言葉を疑ってはいけない。
　この世の鉄則でしてよ」


{	FwC("cg/fw/fw署長_笑顔.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250460a11">
「来世があれば気を付けよう。
　…………しかし」


{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250470a11">
「では……誰だ。
　あの奉刀参拝の日、誰が八幡宮を襲ったの
だ？」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250480a11">
「我々を踊らせたのは誰だ？
　いや……そもそも<RUBY text="・・・・・・">踊らせる意図</RUBY>があったの
か？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250490a03">
「………………」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250500a11">
「……詮無いことか。今更。
　理由はどうあれ、私は策に敗れた」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250510a11">
「結果として、意味もなく進駐軍に敵対する
愚を犯した」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250520a03">
「ええ。
　もちろん、右の頬をはたかれたら左の頬を
<RUBY text="・・・・">殴り返す</RUBY>のが彼らのマナーです」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250530a03">
「そうやって世界の支配権を握ってきた人種
ですから」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250540a11">
「承知している。
　逃げるつもりはないし、温情を乞うつもり
もない」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250550a03">
「……菊池署長。
　わたくしは<RUBY text="・・・">首謀者</RUBY>への制裁を命じられてい
ますの」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250560a03">
「あなたは――」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250570a11">
「私が首謀者だ」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250580a03">
「……」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250590a11">
「進駐軍にとってもその方が好都合だろう。
　大和の皇族に危害を加えるのはやはり<RUBY text="リスク">危険</RUBY>
が大きいはずだ」

//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250600a11">
「宮殿下を唆す者がいた……という事にして
おいた方がいい。
　いわゆる君側の奸だよ」


{	FwC("cg/fw/fw署長_哀愁.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250610a11">
「……あながち間違いでもない。
　確かに私は、宮殿下の御側に控えながら、
正しく補佐し奉る責務を果たせなかったのだ
からな」


{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250620a03">
「……」


{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250630a03">
「あなたがたがわたくしを信頼できなかった
のは、わたくしの不徳も一因。
　その分のお詫びはせねばなりません……」


{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc01/0250640a03">
「ご希望に沿いましょう。
　菊池署長」


{	FwC("cg/fw/fw署長_冷厳.png");}
//【署長】
<voice name="署長" class="署長" src="voice/mc01/0250650a11">
「心から感謝する。
　大鳥大尉」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc01_026.nss"