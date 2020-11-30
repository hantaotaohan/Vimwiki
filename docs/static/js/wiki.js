$(function(){
    // 替换出站连接
    $("a[href^='http://']").each(function(){
      this.target = "_blank";
    });

    $("a[href^='https://']").each(function(){
      this.target = "_blank";
    });
    // 替换表格样式
    $("table").addClass("table table-dark table-bordered table-striped table-hover");


    // 生成左侧toc导航
    if ($(".toc").html().trim()){
        var html = $(".container-fluid").html();
        var toc_html = '<div class="toc">'+$(".toc").html() + "</div>"
        var content = html.replace(toc_html, "");
        $(".container-fluid").html(html);
        $(".toc").addClass("bd-toc sticky-top");
        var uls = $(".toc").find("ul");
        for (var i = 0; i < uls.length; i++){
            ul = uls[i];
            console.log($(ul).parent(), $(".toc"));
            console.log($(ul).parent() == $(".toc"));
            console.log($(ul).parent().hasClass("toc"));
            if ($(ul).parent().hasClass("toc"))
                $(ul).addClass("row flex-xl-nowrap");
            else
                $(ul).addClass("nav");

        }
    }
});


