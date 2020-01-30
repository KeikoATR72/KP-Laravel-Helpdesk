<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #fff;
                color: #636b6f;
                font-family: 'Nunito', sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
                width: 500px;
                max-width: 500px;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #636b6f;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

            .card {
                background-color: #ffffff;
                border: 1px solid rgba(0, 34, 51, 0.1);
                box-shadow: 2px 4px 10px 0 rgba(0, 34, 51, 0.05), 2px 4px 10px 0 rgba(0, 34, 51, 0.05);
                border-radius: 0.15rem;
            }

            /* Tabs Card */

            .tab-card {
              border:1px solid #eee;
            }

            .tab-card-header {
              background:none;
            }
            /* Default mode */
            .tab-card-header > .nav-tabs {
              border: none;
              margin: 0px;
            }
            .tab-card-header > .nav-tabs > li {
              margin-right: 2px;
            }
            .tab-card-header > .nav-tabs > li > a {
              border: 0;
              border-bottom:2px solid transparent;
              margin-right: 0;
              color: #737373;
              padding: 2px 15px;
            }

            .tab-card-header > .nav-tabs > li > a.show {
                border-bottom:2px solid #007bff;
                color: #007bff;
            }
            .tab-card-header > .nav-tabs > li > a:hover {
                color: #007bff;
            }

            .tab-card-header > .tab-content {
              padding-bottom: 0;
            }
        </style>
    </head>
    <body>
        <div class="flex-center position-ref full-height">


            <div class="content" >
                {{-- tab input dan cek --}}
                <div class="container" style="font-size: 150%">

                  <p><strong>LAPORAN TELAH TERKIRIM</strong> </p>

                  <p>Kode unik telah dikirimkan ke email anda</p>
                  <p>Simpan kode tersebut untuk dapat mengecek tindak lanjut dari laporan anda</p>
                  <a href="/helpdesk">kembali ke halaman awal</a>
              </div>
            </div>
        </div>
    </body>
</html>
