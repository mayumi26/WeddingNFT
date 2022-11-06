# 愛のエターナルリングNFT


このリポジトリはブライダルNFTプランナーの初期作品であり、

Tokyo web3 Hackathon の応募作 かつ 実在する新郎新婦の入籍祝いNFTとなっています。

作者twitter：[https://twitter.com/mayumihsd](https://twitter.com/mayumihsd)

スマートコントラクト：[Ethereum Mainnet Full on chain](https://etherscan.io/address/0x568ff64879edbf5082e1ade20dc310ce83920588#code)


---
## ■作者メッセージ
はじめまして！新卒から4年間ウエディングプランナーとして従事し、2022年1月からNFTエンジニアとして働いているmayumiです！今後の人生を共に歩み、一生支え合うことを誓う結婚。そんな人生の節目になる一大イベントをより素敵なものにすべく、ブロックチェーンを活用しておふたりにとって思い出になるプロダクトを作っていきたいと思っております。そしてブライダル×NFTを広め、業界に新しい文化を創っていきたいと思っております！

---
## ■プロダクト概要
ブロックチェーンで永遠の愛を実現しませんか？  
永遠の繁栄や富を共同所有する証として、結婚相手と交換をする結婚指輪。そんな「永遠の象徴」である指輪をブロックチェーンに刻むことで、web2では成し得なかった本当の意味での永遠を実現することが可能になります。  
愛のエターナルリングNFTの特徴「所有・持続・永遠」  
所有：結婚指輪を互いに交換した後、新郎から新婦のウォレットへ、エターナルリングNFTを贈り、愛の証を共同所有します。  
持続：発行したNFTにETHをロックし、記念日を迎えるとお祝い金として取り出せる仕組み。指輪ケースにスマホタッチするだけで、専用サイトにアクセスできます。そこには、結婚した日の約束が記されており、何気ない日常の中でお互いの大切さを再認識するきっかけになります。記念日が来たら専用サイトからお祝い金を取得して、思い出を作ることができます。  
永遠：NFTはフルオンチェーン、専用サイトはarweaveに保存済。最後、50年後の金婚式でのお祝い金取得後、２人にとって意味のある数字分のETHがスマートコントラクト上に残り続けます。これは二人の愛の証として永遠に生き続けるでしょう。

---
## ■技術要素

### 使用したtech stacks
- NFT contract and mechanism - solidity
- Viewer site - HTML / CSS / JavaScript (ethers , axios)
- Access to viewer system - Real NFC tag
- Hosting (NFT metadata) - Ethereum Mainnet  (a.k.a. Full on chain!)
- Hosting (viewer site)  - Arweave (a.k.a permaweb)  
→『永遠の愛』を実現することを重視した技術選定となっています。

![システム構成図](https://arweave.net/ZmH3qKjv7rOCICjgAyINyJRJJUoST91fE9cb4aWbebE)

---

### 使用したBlockchain
- Ethereum Mainnet
- Arweave

---
### deployしたContract
- Ethereum Mainnet: 0x568ff64879EDbF5082E1ade20dc310CE83920588
- [EtherScan verifyコードはこちら](https://etherscan.io/address/0x568ff64879edbf5082e1ade20dc310ce83920588#code)

---
### application codeやその他のfile
- [Smartcontract NFT logic in solidity & full on chain svg data](https://github.com/mayumi26/WeddingNFT/tree/main/solidity)
- [愛のエターナルリングNFT専用ページ on Arweave](https://arweave.net/OvnGnWrgmpthelJBgjG0k8qpKdmaPgcPivnn4XlRHgA)
- [専用ページソースコード](https://github.com/mayumi26/WeddingNFT/tree/main/weddingsite)

---
### テスト手順を含むリポジトリへのリンク
- [Test and audit](https://github.com/mayumi26/WeddingNFT/tree/main/hackathon/test/test.md)

---
### 審査やテストのためにプロジェクトにアクセスする方法など
- [愛のエターナルリングNFT専用ページ](https://arweave.net/OvnGnWrgmpthelJBgjG0k8qpKdmaPgcPivnn4XlRHgA)
(Metamaskが入っているブラウザでアクセスください)

---
### ブロックチェーンを使う理由
- 多くのITシステムは、時間と共に消えてしまいます。
- 人々は、生きる間、そして生きた後も、そこにあった愛を記録し続ける仕組みを必要としています。
- web2には、永遠はなかった。web3で、永遠の愛を記録しませんか？
