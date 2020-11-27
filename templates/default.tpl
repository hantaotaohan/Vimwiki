<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="Stylesheet" type="text/css" href="%root_path%static/css/wiki.css">
        <link rel="Stylesheet" type="text/css" href="%root_path%static/bootstrap/css/bootstrap.min.css">
        <script type="text/javascript" src="%root_path%static/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="%root_path%static/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="%root_path%static/js/wiki.js"></script>

        <title>%title%</title>
          %pygments%

        <!--Style for Vimwiki Tasklist-->
    </head>

    <body class="text-center">
        <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
              <header class="masthead mb-auto">
                <div class="inner">
                  <h3 class="masthead-brand">Cover</h3>
                      <nav class="nav nav-masthead justify-content-center">
                        <a class="nav-link active" href="#">Home</a>
                        <a class="nav-link" href="#">Features</a>
                        <a class="nav-link" href="#">Contact</a>
                      </nav>
                </div>
              </header>
        </div>

    <h2 id="title">%title%</h2>

        <div class="container content-body">
            %content%
        </div>

    </body>
</html>
