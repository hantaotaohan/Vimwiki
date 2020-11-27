<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="%root_path%static/bootstrap/css/bootstrap.min.css">
        <script type="text/javascript" src="%root_path%static/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="%root_path%static/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="%root_path%static/js/wiki.js"></script>
        <link href="%root_path%static/css/wiki.css" rel="stylesheet">
        <link rel="stylesheet" href=%root_path%static/js/styles/atom-one-dark.css">
        <script src="%root_path%static/js/highlight.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>

        <title>%title%</title>
          %pygments%

    </head>

    <body class="text">
        <nav class="site-header sticky-top py-1">
            <div class="container d-flex flex-column flex-md-row justify-content-between">
                <a class="py-2 d-none d-md-inline-block" href="#">Tour</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Product</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Features</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Enterprise</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Support</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Pricing</a>
                <a class="py-2 d-none d-md-inline-block" href="#">Cart</a>
            </div>
        </nav>

        <div class="container content-body">
            %content%
        </div>

<script>
document.querySelectorAll('pre.lang').forEach((block) => {
  hljs.highlightBlock(block);
});
</script>
    </body>
</html>
