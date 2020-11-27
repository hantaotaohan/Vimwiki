<!DOCTYPE html>
<html lang="en">
  <head>
     <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="Stylesheet" type="text/css" href="/home/taotao/vimwiki/templates/style1.css">
 <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
 <meta name="theme-color" content="#563d7c">
 <link href="style1.css" rel="stylesheet" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

  <title>%title%</title>

  %pygments%
<!--Style for Vimwiki Tasklist-->
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

</style>




<body id="%title%" class="text-center">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-auto">
    <div class="inner">

    <h1 class="cover-heading">Cover your page.</h1>
      <h2 id="title" class="masthead-brand">%title%</h2>
      <nav class="nav nav-masthead justify-content-center">
        <a class="nav-link active" href="#">Home</a>
        <a class="nav-link" href="#">Features</a>
        <a class="nav-link" href="#">Contact</a>
      </nav>
  %content%
  <table class="table table-striped">
  </table>
<script async src="https://cse.google.com/cse.js?cx=ff7faac39846a589d"></script>
    </div>
    <link href="/home/taotao/vimwiki/templates/style1.css" rel="stylesheet">
  </header>

  <main role="main" class="inner cover">
    <h1 class="cover-heading">Cover your page.</h1>
    <p class="lead">Cover is a one-page template for building simple and beautiful home pages. Download, edit the text, and add your own fullscreen background photo to make it your own.</p>
    <p class="lead">
      <a href="#" class="btn btn-lg btn-secondary">Learn more</a>
    </p>
  </main>

</div>
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script>
$(function(){
    // 鏇挎崲鍑虹珯杩炴帴
    $("a[href^='http://']").each(function(){
      this.target = "_blank";
    });

    $("a[href^='https://']").each(function(){
      this.target = "_blank";
    });
    // 鏇挎崲琛ㄦ牸鏍峰紡
    $("table").addClass("table table-bordered table-striped table-hover");

    // 鐢熸垚宸︿晶toc瀵艰埅
    // if ($(".toc").html().trim()){
    //     var html = $(".content-body").html();
    //     var toc_html = '<div class="toc">'+$(".toc").html() + "</div>"
    //     var content = html.replace(toc_html, "");
    //     var html = '<div class="col-md-3">\n'+toc_html+'\n</div>\n';
    //     html += '<div class="col-md-9">\n'+content+'\n</div>\n';
    //     html = html.replace(/blockquote/g, "pre");
    //     $(".content-body").html(html);
    //     $(".toc").addClass("bs-sidebar");
    //     /* $(".toc").attr("role", "complementary"); */
    //     $(".toc").attr("data-spy", "affix");
    //     /* $(".toc").attr("data-offset-top", "200") */
    //     var uls = $(".toc").find("ul");
    //     for (var i = 0; i < uls.length; i++){
    //         ul = uls[i];
    //         console.log($(ul).parent(), $(".toc"));
    //         console.log($(ul).parent() == $(".toc"));
    //         console.log($(ul).parent().hasClass("toc"));
    //         if ($(ul).parent().hasClass("toc"))
    //             $(ul).addClass("nav bs-sidenav");
    //         else
    //             $(ul).addClass("nav");

    //     }
    // }
});
</script>

</body>

</html>
