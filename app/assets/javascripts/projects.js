$(function(){
     var left = Math.floor(($(window).width() - $("#container").width()) / 2);
    $('#container').masonry({ //親要素のクラスを指定
      .css({"left":left})
      itemSelector: '.box', //整理される要素のclassを指定
      isAnimated: true, //スムースアニメーション設定
      isFitWidth: true, //親要素の幅サイズがピッタリ
      isRTL: false,     //整理される要素が左右逆になる（読み言語などに）※デフォルト値：false
      gutterWidth: 0,   //整理される要素間の溝の幅を指定
      containerStyle: { position: 'relative' }, //親要素にスタイルを追加できる
      isResizable: true, //ウィンドウサイズが変更された時に並び替え※デフォルト値：true
    });
    
  });
