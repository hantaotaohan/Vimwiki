<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="Stylesheet" type="text/css" href="%root_path%static/bootstrap/css/bootstrap.min.css">
        <script type="text/javascript" src="%root_path%static/js/jquery-3.5.1.min.js"></script>
        <script type="text/javascript" src="%root_path%static/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="%root_path%static/js/wiki.js"></script>
        <link href="%root_path%static/css/wiki.css" rel="stylesheet">

        <title>%title%</title>
          %pygments%

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


            <main role="main" class="inner cover">
                <h2 id="title">%title%</h2>
                    %content%
            </main>

            <footer class="mastfoot mt-auto">
                <div class="inner">
                    <p>Cover template for <a href="https://getbootstrap.com/">Bootstrap</a>, by <a href="https://twitter.com/mdo">@mdo</a>.</p>
                </div>
            </footer>

        </div>
    </body>
</html>
