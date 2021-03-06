<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="js/jquery-1.8.2.min.js"></script>
    <script src="js/jquery.validationEngine.js"></script>
    <script src="js/languages/jquery.validationEngine-ja.js"></script>
    <link rel="stylesheet" href="css/validationEngine.jquery.css">
    <title>新規登録</title>
    <script>
        {literal}
        $(function(){
            jQuery("#form").validationEngine();
        });
        {/literal}
    </script>
</head>
<body style="text-align: center">

<h1>新規登録画面</h1>
<form id="form" action="signup.php" method="POST">
    <fieldset>
        <h2>新規登録フォーム</h2>
        <div>{$message}</div>
        <div>{$emessage}</div>
        <label for="username">ユーザー名(25文字以内で入力してください)</label>
        <input type="text" name="username" placeholder="ユーザー名を入力" class="validate[required,maxSize[25]]">
        <br>
        <label for="password">パスワード(50文字以内で入力してください)</label>
        <input type="password" name="password" id="password" placeholder="パスワードを入力" class="validate[required,maxSize[100]>">
        <br>
        <label for="password2">パスワード(確認用)</label>
        <input type="password" name="password2" placeholder="再度パスワードを入力" class="validate[required,maxSize[100],equals[password]]">
        <br>
        <button type="submit">新規登録</button>
    </fieldset>
</form>
<br>
<a href="index.php">戻る</a>

</body>
</html>
