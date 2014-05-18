$(function() {
  var mainImg = $('#photo-main > img');
  var photoThumb = $('#photo-thumb');

  // 最初のサムネイル（＝メイン画像のサムネイル）を current にする
  photoThumb.find('li').first().addClass('current');

  // サムネイルをクリック
  photoThumb.find('li').find('div').click(function() {
    photoThumb.find('li').removeClass('current');
    $(this).parent().addClass('current');
    mainImg.attr('src', $(this).find('img').attr('src'));
  });
});
