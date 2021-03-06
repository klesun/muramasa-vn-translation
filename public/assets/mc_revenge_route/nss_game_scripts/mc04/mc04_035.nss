//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_035.nss_MAIN
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
	#ev204_微笑する幼い香奈枝_a=true;
	#ev204_微笑する幼い香奈枝_b=true;
	#ev204_微笑する幼い香奈枝_c=true;
	#ev204_微笑する幼い香奈枝_d=true;
	#ev204_微笑する幼い香奈枝_e=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_036.nss";

}

scene mc04_035.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_034.nss"


//◆過去回想

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 15000, "#000000");
	Delete("上背景");
	SoundPlay("@mbgm06",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　大鳥香奈枝という人は、ごくごく尋常に生を<RUBY text="う">享</RUBY>けた
はずである。
　少なくとも、彼女自身が<RUBY text="ひとづて">人伝</RUBY>に聞く限りではそうだ。

　屍女の胎内から産み落とされたわけでもなければ、
妊娠三ヶ月で母の腹を食い破って出てきたのでもない
らしい。また、母の妊娠と前後して父が黒魔術の儀式
に耽溺していたという事実も、別段無いようだ。

　愛情があり、性交があり、精子と卵子の結合があり、
十ヶ月の熟成があって生まれてきただけなのだろう。
　平々凡々、何の変哲もなく、二〇億だか三〇億だか
いる他の人類種と全く同じ手順を踏んで生誕したのだ。

　大鳥香奈枝。
　彼女は人間として正しく生まれた。

　にも拘わらず、彼女は人間として正常ではなかった。
　大鳥香奈枝の心身には、ほんの少し――何処か一部
だけ、異常な機能が備わっていた。

　その事実を最初に知ったのは本人ではない。
　父親であった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：幼い香奈枝
	CreateTextureEX("絵ＥＶ1", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_a.jpg");
	Fade("絵ＥＶ1", 0, 1000, null, true);
	FadeDelete("黒幕１", 1000, true);
	WaitKey(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　彼は子供の教育に熱心な人物だった。
　親としての責務に忠実であったとも言える。

　権門の一員として多忙を極める立場にありながらも、
娘を使用人の手に委ねてしまうことはなく、でき得る
限り時間を作って多くの事柄を自ら教えた。
　だから、娘の<RUBY text="・・">偏向</RUBY>を知らずには済ませられなかった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カマキリの死骸。レイヤー重ねで
	CreateTextureEX("絵ＥＶ2", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_b.jpg");
	Fade("絵ＥＶ2", 1000, 1000, null, true);
	Delete("絵ＥＶ1");
	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　ある日、彼は幼い娘の小さな手の中で、<RUBY text="かまきり">蟷螂</RUBY>の首が
引き千切られる光景を目にした。
　足元には<RUBY text="もんしろちょう">紋白蝶</RUBY>の死骸もあった――こちらは蟷螂に
食い殺されたと<RUBY text="おぼ">思</RUBY>しかったが。

　父は眉をひそめながらも、その時は無言で去った。
　幼児期特有の残忍さを頭ごなしに叱責しても逆効果、
それより根気良く生命倫理を教え込んでゆく事で自ず
から間違いに気付かせるべきだと考えたためだった。

　彼は良い父であった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ツバメの死骸
//◆香奈枝差分、指先に血が。
	CreateTextureEX("絵ＥＶ3", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_c.jpg");
	Fade("絵ＥＶ3", 1000, 1000, null, true);
	Delete("絵ＥＶ2");

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　別のある日、彼は娘が<RUBY text="つばめ">燕</RUBY>を捕まえて<RUBY text="くび">縊</RUBY>る光景に遭遇
した。
　燕は餌を集めていたところだったのだろう、何匹も
の昆虫を口から吐き出していた。

　父はその時も、声をかけずに去った。
　内心では、命の尊さを教えるのに適切な童話が何か
無かったろうかと考えていた。

　彼は良い父であった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆カラスの死骸
//◆差分、手首辺りまで血が。頬にも少し

	CreateTextureEX("絵ＥＶ4", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_d.jpg");
	Fade("絵ＥＶ4", 1000, 1000, null, true);
	Delete("絵ＥＶ3");

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　またある日、彼は娘が鋏の尖端で大柄な<RUBY text="からす">烏</RUBY>の息の根
を止めている光景に出会って愕然とした。
　娘は父の視線に気付くと、この烏は燕の巣を壊した
のですと言った。確かに残骸が散らばっていた。

　父は少し迷ってから、よく烏なんて捕まえられたな、
と感心する素振りで言ってその場を離れた。
　害獣の烏を駆除したこと自体は咎められない、叱責
するのは別の時にした方がいいと考えたからだった。

　彼は良い父であった。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆野犬の死骸
//◆差分、血まみれ。
	CreateTextureEX("絵ＥＶ5", 4000, Center, Middle, "cg/ev/ev204_微笑する幼い香奈枝_e.jpg");
	Fade("絵ＥＶ5", 1000, 1000, null, true);
	Delete("絵ＥＶ4");

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　そしてある日、彼は使用人の悲鳴を聞いて駆けつけ、
そこに血まみれの娘の姿を見出して絶句した。
　娘は左手に包丁を持ち、右手で野良犬の死体を引き
摺っていた。

　この犬は子猫を食い殺したのです、と語りながら、
少女は足元をふらつかせていた。
　血は、野犬のものばかりではない様子だった。

　父は内心の動転を必死に抑えつつ、医者を呼ばせ、
娘には体を洗いに行くよう命じた。
　娘は野犬を裏庭に埋めた後で父の言葉に従った。

　その日の夜、父はとうとう、どうしておまえはその
ようなことをするのだと娘に問い<RUBY text="ただ">質</RUBY>した。
　娘は、許せないのですと答えた。

　何が許せないのかと父は訊いた。
　悪業が許せないのだと娘は答えた。

　我欲のため、他者の命を奪い取る悪業が。

　その<RUBY text="さま">様</RUBY>を見るたび、奪われる側に心が寄る。
　強者の暴虐に屈する、その無念と悲憤に同調する。

　だから殺した。
　そう娘は言った。

　蟷螂を、燕を、烏を、野犬を――
　蝶に、虫に、燕に、子猫に代わって殺した。

　そう言った。

　父は、それは自然の摂理なのだと告げた。
　どんな動物も、他の生物を犠牲にして生きている。

　我々とて、日々、牛や豚を食べているではないか。
　父はそう諭した。

　娘は頷いた。

　――ええ。
　だからわたくしたちも罰せられるべきです。

　淀みなく、そう答えた。

　父は言葉を失った。

　娘は続けた。

　――弱肉強食が自然の摂理なら。
　その自然の摂理というものが、自分には許せない。

　それは正義ではないから。

　仕方なかろうと。必然であろうと。
　それは決して、正しい行いではないから。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒幕１", 15000, "Black");
	Fade("黒幕１", 1000, 1000, null, true);
	PrintBG("上背景", 30000);

	Delete("上背景");


	CreateTextureEX("絵テロ100", 2000, Center, Middle, "cg/sys/Telop/tp_復讐編挿入01.png");
	Zoom("絵テロ100", 0, 700, 700, null, true);
	Request("絵テロ100", Smoothing);
	FadeDelete("黒幕１", 2000, true);
	Fade("絵テロ100", 2000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("絵テロ100", 2000, true);

//	WaitKey(2000);

//inc久保田 テロップなので下記テキストをコメントアウト
/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆テロップ
　この世には正義がある。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……娘は父の教育を真摯に受け止めていた。
　世に正義を示し、人々の心に堕落させぬよう努める
こと、それはたしかに彼が教えた<RUBY text="ノーブル">貴顕</RUBY>の義務そのもの
だった。

　邪悪は憎み、否定せねばならない――
　
　教えに忠実であり過ぎる娘を、どう遇すれば良いの
か彼にはわからなかった。

　娘の性根が<RUBY text="・・・・・">歪んでいる</RUBY>のはわかる。
　しかし、何も<RUBY text="・・・・・・・・">間違ってはいない</RUBY>のだ。

　辛うじて口に出せたのは、理屈で通せないなら恐怖
心に訴えようという稚拙な言葉に過ぎなかった。
　
　――あの犬にもきっと家族がいただろう。

　おまえは猫の仇討をしたつもりで、犬の仇になった
のかもしれない。
　いずれ犬の群れがおまえを殺しに来るかもしれない
ぞ――

　娘は答えた。
　
　――<RUBY text="・・・">それが</RUBY>正義です。
　わたくしは、犬に食い殺されましょう。

　その返答に強がりの成分が幾らかでも混じっていた
のなら、父は多少の安堵を胸に抱き得ただろう。
　真っ直ぐ過ぎて危うい部分はあっても、本質的には
ごく正常な人間なのだと信じられたに違いない。

　しかしあろうことか、娘は美しく<RUBY text="わら">微笑</RUBY>ってその一言
を吐いたのだった。
　恍惚と。夢見るように。

　それ以上なにも言えず、父は娘を部屋に帰した。
　そして長い間、悩むことになった。

　悩みが報われることは遂になかった。

　彼は良い父であった。<k>
　
　
　しかし、娘があまりにも劣悪に過ぎた。

　彼女は実のところ、理解していたのである。
　自分の歪みを。父親の困惑を。どうすれば父を悩ま
せずに済むかまで。

　理解していて、黙殺した。
　己の欲求を優先した。

　報復嗜好。
　復讐志向。

　彼女はそれが正しいからしたのではない。
　それが<RUBY text="たの">愉</RUBY>しいからしたのだ。

　復讐を正しい――正義とする考えは、倫理観に基く
殺害行為への禁忌を<RUBY text="・・">解禁</RUBY>するものでしかなかった。
　……その意味において、彼女に対する父親の教育は
無益どころか有害ですらあったのかもしれない。

　幸いというべきか、父は生涯、その点まで思い至る
ことはなかった。
　危惧したよりもはるかに娘の<RUBY text="さが">性</RUBY>が悪質であるという
ことを、理解せずに済んだ。

　彼は良い父であり、善良な人間であった。
　善良であるが故に、<RUBY text="・・・・・">生来の悪魔</RUBY>という個性について
深く考察するには足りないものが多過ぎた。

　善良な男は娘を理解できず、良い父は暴力と権力と
で娘の矯激な行動を掣肘する決断が下せなかった。
　娘は歪みを無事に抱えたまま成長し、

　興隆二四年九月を迎える。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆王杉事件
	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転",1000,1000,null,true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");

	OnBG(100,"bg013_鎌倉俯瞰a_01.jpg");
	FadeBG(0,true);

	CreateEffect("Memory_cover", 14000, 0, 0, 1024, 576, "Sepia");
	//CreateEffect("Memory_cover", 14000, Center, Middle, 1100, 600, "Sepia");
	FadeDelete("上背景", 0, true);

	WaitKey(1500);

	SoundPlay("@mbgm32",0,1000,true);

	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　関東大震災の混乱に乗じて大鳥閥に属する陸軍大尉
と一党は無政府主義者王杉栄の身柄を拉致したものの、
密告を受けた警察が迅速に初動したため、駐屯基地に
戻ることができなくなっていた。

　当時軍と警察は対立関係にあり、裏交渉などは望む
べくもない。
　やむなく、陸軍大尉と麾下将兵は大鳥家の影響力が
強い会津へ逃亡する。

　彼らが王杉一家と共に永倉家所有の山荘に籠もった
という連絡を受け、大鳥本家では対応が協議された。
　意見は大別して二派であった。

　陸軍大尉らを擁護すべしとする当主。
　警察に引き渡すべしとする当主の弟――香奈枝の父。

　議論は紛糾した。
　怒鳴り合いと掴み合いがそれぞれ両手の指の数ほど
発生し――最終的に、「無かったことにする」方向で
決着した。

　王杉一家は秘密裏に海外へ亡命させる。
　陸軍大尉一党の行動は震災の混乱に煽られての職務
放棄として処理、原隊復帰のうえ罰則に従わせる。

　無難な収拾ではあった。
　しかし結論が出た頃には、もう全て終わっていたの
だった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg092、セピアマスク？
	CreateTextureSP("絵背景30", 10, Center, Middle, "cg/bg/bg092_森の道b_01.jpg");
	FadeDelete("@OnBG*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　事件があった丁度その折、白河の永倉家に滞在して
いた香奈枝は、ふとした思い付きで山荘に向かい――
　そこで瀕死の男児と出会う。

　たどたどしく、彼は語った。
　父、母、兄と一緒に、ここへ連れて来られたこと。
連れて来た大人たちは父に何かを要求し、父がそれを
拒んだこと。激しい言い合いになったこと。

　それから――
　
　子供は、そこまでしか話すことができなかった。

　しかし、それで充分だった。
　大鳥香奈枝に必要なことは、全て伝えていた。

　銃を提げた兵士が、山荘の玄関から飛び出してきて、
何事かを叫んだ。
　香奈枝は動かなくなった子供をそこに寝かせ、立ち
上がった。

　そして開始した。

　自身の魂に備わった<RUBY text="オリエンテーション">志向性</RUBY>を解き放った。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝最初の殺戮
	CreateTextureEX("絵背景31", 10, Center, Middle, "cg/ev/ev200_香奈枝最初の殺戮.jpg");
	Fade("絵背景31",1000,1000,null,true);
	Delete("絵背景30");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……香奈枝の不在と行先に気付いた永倉さよが山荘
へ駆け付けた時、そこにはもう死骸しかなかった。
　死骸の繚乱と――――一匹の悪魔しか。

　さよ、そして永倉家当主の機転によって即座に隠蔽
が行われ、陸軍大尉らは王杉一家を殺害したのち自裁
したものとして処理されたが――どだい、他殺死体は
どうしたところで他殺死体である。

　死体の始末にあたった大鳥家の家士までも騙し切る
のは不可能だった。
　香奈枝の<RUBY text="・・">戦傷</RUBY>を治療した医者に、それが単なる事故
による負傷だと信じ込ませることも。

　王杉事件の真相はそれを悟った彼らの口から<RUBY text="かいしゃ">膾炙</RUBY>し、
やがて大鳥家内における公然の秘密となる。
　
　秘密は一つの禁戒を生んだ。

　――<RUBY text="いみひめ">忌姫</RUBY>、忌姫、忌姫ぞ。
　触れてはならぬ香奈枝様、寄ってはならぬ香奈枝様。
声をかけてはなりませぬ。顔を見られてはなりませぬ。
けっしてけっして、姫君の憤りを買ってはなりませぬ。

　理解及ばぬまま娘を見守っていた父も、この事件を
迎えてとうとう、理解及ばぬままに絶望した。
　実の娘への愛を断念した。

　事件から数年後、香奈枝は留学の名目で海外へ放逐
されることになる。
　同行者は永倉さよ、ただ一人であった。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フェードアウト？
	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転",1000,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……大鳥香奈枝は、自分を捨て去った父親に恨みを
抱いてはいない。
　むしろ全く、その逆だった。

　父が<RUBY text="いびつ">歪</RUBY>な性根の娘を、それでも必死に愛そうとして
くれたことを知っている。
　父の深い愛情には感謝するしかなく、愛情に応えら
れない自分の<RUBY text="さが">性</RUBY>がただただ申し訳なかった。

　彼女は歪み切っていたが、自らの歪みについて正確
な理解を持っていた。
　忌み嫌われるのは仕方ない。外道の享楽を貪る以上、
当然の報いなのだと納得していた。

　人に好かれ愛されるよりも、己の欲求に耽溺したい
――そんな者は嫌悪されて然るべき。
　彼女は父から学んだ倫理観に照らして正しく結論し、
正答を得たからにはもはや疑問など持たなかった。

　そうして香奈枝は放逐後も何一つ変わらず、<RUBY text="ヨーロッパ">欧州</RUBY>で
生きてゆく。
　一箇所に長く留まることはなかった。不可解な殺戮
劇を足跡がわりに残しつつ、彼女は諸国を転々とした。

　<RUBY text="バロール">視殺す王</RUBY>。
　<RUBY text="フーリエ">復讐の女神</RUBY>。
　<RUBY text="ナイト・ストーカー">夜に忍び寄るもの</RUBY>。
　…………曖昧模糊な伝説を霧のように広めながら。

　大鳥香奈枝は忌まわしき悪魔として在り、そう在る
己に一切の疑いを抱かず、欧州の人間社会に闊歩する。
　そして十余年の歳月を経て、祖国大和へ帰還の途に
つく。

　悪魔は悪魔のまま故郷の土を踏んだ。
　
　しかしそこで初めて、悪魔は自己の根幹を揺るがす
疑問に直面させられたのだった。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝と景明。例のシーン
	Delete("絵背景31");
	CreateTextureSP("絵背景32", 10, Center, Middle, "cg/ev/ev171_香奈枝に跪く景明.jpg");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　――――あの刹那。
　
　大鳥香奈枝の心の中で、歯車が一つ狂ったのだ。

　忌み嫌われるべき己が、
　<RUBY text="よろこ">歓</RUBY>ばれ、尊ばれ、感謝された、あの刹那に。

　彼女は過去、無数の憎悪を砕いてきた。

　無数の不遜、無数の憤激も砕いてきた。
　無数の悔悟、無数の哀願をも砕いてきた。<k>
　
　しかし、感謝に刃を突き立てたことだけはなかった。

　湊斗景明は新田雄飛の命を奪った。
　その罪に疑いの余地はない。他の数々の罪も同様に。

　が、香奈枝は、彼に罪はあっても誤りはないことを
認めていた。
　彼の立場で、そうする他にどんなやりようがあった
というのか？

　だから香奈枝は、復讐の宣告に対して彼が恐怖の色
を見せた時、当然次には抵抗の意思が顕れると予測し
ていたし、それで正しいとも思っていた。
　香奈枝の宣告は暴虐であり、ならば抗うべきなのだ。

　過ちを犯していない者に、処刑を受容せねばならぬ
理由はない。
　香奈枝は湊斗景明の抵抗を受けて立ち、生死を争う
つもりだった。

　だが予測は裏切られた。
　彼は死に怯えながら、死をもたらす香奈枝を拝して
迎えた。

　理解不能であった。

　香奈枝のように、己を対象としたそれさえ承認する
復讐志向を有しているのではない。
　彼は正常な感性を備えた常人だった。

　常人なら、自分への復讐など拒むものである。
　まして復讐のもとになる罪が<RUBY text="よんどころ">拠所</RUBY>ない選択の結果で
あったのなら、悲憤と無念を抑えかねて当然だろう。

　だというのに。
　
　……後になって思えば、そんな謎に拘泥するべきで
はなかった。

　おかしな男だと思い捨て、殺してしまえば良かった。
　どうせ大鳥香奈枝は人間の出来損ない。そんな代物
が人の心理なるものを推し量ってみたところで、無益
の極致でしかないのだから。

　なのにどうしてか、<RUBY text="こだわ">拘</RUBY>った。
　湊斗景明という名の迷路にはまり込んだ。

　彼のことで胸を悩ませた。

　彼は罪に疲れ果て、早く楽になりたいだけなのかと
も考えた。
　しかし、そんなはずはなかった。もしそうなら彼は
自殺していただろう。

　彼は心底、香奈枝の復讐を歓迎していた。
　他者からの報復、処罰という形でもたらされる死を
渇望していた。

　その想いは死に対する正常な生物的恐怖と並立して
いた。
　倫理的に考えて並立し得ない両者が、どういうわけ
かしているのだ。

　――と。
　その鑑定がそもそも間違っているのだと、香奈枝が
気付いたのはしばらく経ってからのことだ。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearFadeAll(1000, 1000);

}

..//ジャンプ指定
//次ファイル　"mc04_036.nss"