<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8"> 
  <title>Form PPDB</title>
  <link rel="stylesheet" href="bootstrap/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="css/style.css" />
  <link rel="stylesheet" href="plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css"> 
  <link rel="stylesheet" href="plugins/toastr/toastr.min.css">
  
  <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css" rel="stylesheet"/>
  <style type="text/css">.none{ display: none; }</style>
  <style>
  body { 
    background: url("./unnamed.jpg") no-repeat center center fixed; 
    -webkit-background-size: cover;
    -moz-background-size: cover;
    -o-background-size: cover;
    background-size: cover;
    /* IE 9 and under*/
    filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='.myBackground.jpg', sizingMethod='scale');
    -ms-filter: "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='myBackground.jpg', sizingMethod='scale')";
  }</style>
</head>
<body>
  <header>
    <a class="logo" href="/">
      <img src="{{ url('logo_paud.png') }}" width="100" />
    </a>
    <a class="logo">Form PPDB</a> 
    <ul> 
      <li><a href="{{ url('./index.html') }}" class="btn btn-primary btn-flat btn-xs">Logout</a></li> 
    </ul>
  </header>
  <section class="banner">
    @yield('content') 
  </section>
  <script src="plugins/jquery/jquery.min.js"></script>
  <script src="bootstrap/dist/js/bootstrap.min.js"></script>
  <script src="plugins/sweetalert2/sweetalert2.min.js"></script> 
  <script src="plugins/toastr/toastr.min.js"></script>
  
  <script src="bootstrap-datepicker.min.js"></script>
  <script src="bootstrap.min.js"></script>
  <script src="js/home.js"></script>
  <script type="text/javascript">
    // document.querySelector("body").style.overflow="hidden";  
    window.addEventListener("scroll", function(){
      var header = document.querySelector("header");  
      var btnSave = document.getElementById("btnSave");
      header.classList.toggle("sticky", window.scrollY>0); 
        if (document.body.scrollTop>0||document.documentElement.scrollTop>0) {
          btnSave.style.display="block";
          
        }else{
            btnSave.style.display="none";
        }
    }); 
    $(document).ready(function(){ 
      loadProvinsi();  
    }); 
    $('#btnSave').click(function() {
      Swal.fire({
        icon: 'success',
        title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
      }); 
    });
    $("#provinsi").on("change", function(){
      prov = $(this).find("option:selected").val(); 
      $.ajax({
        url: "get_kabupaten/"+prov,
        method: "get", 
        type: "json",
        success: function (json) { 
		$("#kabupaten").html("");
             var data_kabupaten = "<option value='kosong'>--Pilih--</option>";
            if ($.parseJSON(json).status == 200) {  
              $.each($.parseJSON(json).data, function (item, object) { 
                data_kabupaten += "<option value='"+object.id+"'>"+object.nama+"</option>";
              });
              console.log(data_kabupaten);
              $("#kabupaten").html(data_kabupaten);
            } else {
                alert('data gagal !');
            }
        }
      });
    });
    $("#kabupaten").on("change", function(){
      prov = $(this).find("option:selected").val(); 
      $.ajax({
        url: "get_kecamatan/"+prov,
        method: "get", 
        type: "json",
        success: function (json) { 
	    $("#kecamatan").html("");
            var data_kabupaten = "<option value='kosong'>--Pilih--</option>";
            if ($.parseJSON(json).status == 200) {  
              $.each($.parseJSON(json).data, function (item, object) { 
                data_kabupaten += "<option value='"+object.id+"'>"+object.nama+"</option>";
              });
              console.log(data_kabupaten);
              $("#kecamatan").html(data_kabupaten);
            } else {
                alert('data gagal !');
            }
        }
      });
    });
    $("#kecamatan").on("change", function(){
      prov = $(this).find("option:selected").val(); 
      $.ajax({
        url: "get_kelurahan/"+prov,
        method: "get", 
        type: "json",
        success: function (json) { 
	    $("#kelurahan").html("");
            var data_kabupaten = "<option value='kosong'>--Pilih--</option>";
            if ($.parseJSON(json).status == 200) {  
              $.each($.parseJSON(json).data, function (item, object) { 
                data_kabupaten += "<option value='"+object.id+"'>"+object.nama+"</option>";
              }); 
              $("#kelurahan").html(data_kabupaten);
            } else {
                alert('data gagal !');
            }
        }
      });
    });
    function loadProvinsi() {
      $.ajax({
        url: "get_provinsi",
        method: "get", 
        type: "json",
        success: function (json) {
            if ($.parseJSON(json).status == 200) {  
              $("#provinsi").html("");
              data_provinsi = "<option value='kosong'>--Pilih--</option>";
              $.each($.parseJSON(json).data, function (item, object) { 
                data_provinsi += "<option value='"+object.id+"'>"+object.provinsi+"</option>";
              });
              $("#provinsi").html(data_provinsi);
            } else {
                alert('data gagal !');
            }
        }
      }); 
    }
  </script>
</body>
</html>
