<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="%root_path%static/bootstrap/css/bootstrap.min.css">
        <script type="text/javascript" src="%root_path%static/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="%root_path%static/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="%root_path%static/js/wiki.js"></script>
        <link href="%root_path%static/css/wiki.css" rel="stylesheet">
        <link rel="stylesheet" href="%root_path%static/js/styles/atom-one-dark.css">
        <script src="%root_path%static/js/highlight.min.js"></script>
        <script>hljs.initHighlightingOnLoad();</script>

        <title>%title%</title>
          %pygments%
<style>

.highlight .o {
    color: #abb2bf;
    font-weight: bold;
}

.highlight {
    background: #1E2127;
    font-weight: bold;
}

p {
    margin-top: 0;
    margin-bottom: 0;
}


h1, h2, h3, h4, h5, h6 {
  font-weight: bold;
  line-height:100%;
  margin-top: 1.5em;
  margin-bottom: 0.5em;
}

h1 {font-size: 2em; color: #e6c07b;}
h2 {font-size: 1.8em; color: #98c379;}
h3 {font-size: 1.6em; color: #c678dd;}
h4 {font-size: 1.4em; color: #8096BF;}
h5 {font-size: 1.2em; color: #989898;}
h6 {font-size: 1em; color: #9c9c9c;}

</style>
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
document.addEventListener('DOMContentLoaded', (event) => {
document.querySelectorAll('pre').forEach((block) => {
  hljs.highlightBlock(block);
});
});
</script>
    </body>
</html>
