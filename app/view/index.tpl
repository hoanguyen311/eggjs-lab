<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Contact Book</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>
<body>
  

  <div class="container">
      <div class="row">
        <div class="col-sm">
          <h1>Contact Book</h1>
          <h2>Developed by Thai Hoa, ok fine</h2>
        </div>
      </div>
      <div class="card mb-3">
        <div class="card-body">
          <form id="newContactForm">
            <div class="row mb-2">
              <div class="col">
                <input id="nameInput" type="text" class="form-control" placeholder="Name">
              </div>
              <div class="col">
                <input id="emailInput" type="email" class="form-control" placeholder="Email">
              </div>
              <div class="col">
                <button type="submit" class="btn btn-primary">Add Contact</button>
              </div>
            </div>
          </form>
        </div>
      </div>
      <div class="row">
          <div class="col-sm">
            <div class="card-columns" style="column-break-inside: avoid">
            {% for item in contacts %}
              <div class="card" style="display: inline-block;">
                <div class="card-body">
                  <div class="card-title">
                    Name: {{item.name}}
                    
                  </div>
                  <div class="card-text">
                    @: <a href="mailto:{{item.email}}">{{item.email}}</a>
                  </div>
                </div>
                <div class="card-footer">
                  <button class="btn btn-danger btn-delete" data-id="{{item.id}}">Delete</button>
                </div>
              </div>
            {% endfor %}</div>
          </div>
      </div>
    </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js" ></script>
  <script src="/public/app.js"></script>
</body>
</html>