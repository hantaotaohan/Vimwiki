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
        var html = $(".container").html();
        var toc_html = '<div class="toc">'+$(".toc").html() + "</div>"
        var content = html.replace(toc_html, "");
        var html = '<div class="col-md-3">\n'+toc_html+'\n</div>\n';
        html += '<div class="col-md-9">\n'+content+'\n</div>\n';
        html = html.replace(/blockquote/g, "pre");
        $(".container").html(html);
        $(".toc").addClass("bd-toc");
        var uls = $(".toc").find("ul");
    }
});


