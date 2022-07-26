<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page d'inscription</title>
</head>
<body>
	<div class = "container">
		<div class="title">Inscription</div>
		<form method="post" action="MonServlet">
			<div class="user-details">
				<div class="input-box">
					<label for="nom">Nom: </label>
					<input type="text" id="nom" name="nom" placeholder="Entrez votre nom" required>
				</div>
				<div class="input-box">
					<label for="prenom">Prénom: </label>
					<input type="text" id="prenom" name="prenom" placeholder="Entrez votre prénom" required>
				</div>
				<div class="input-box">
					<label for="pseudo">Pseudo: </label>
					<input type="text" id="pseudo" name="pseudo" placeholder="Entrez votre pseudo" required>
				</div>
				<div class="input-box">
					<label for="email">Email: </label>
					<input type="email" id="email" name="email" placeholder="Entrez votre email" required>
				</div>
				<div class="input-box">
					<label for="password">Mot de passe: </label>
					<input type="password" id="password" name="password" placeholder="Entrez le mot de passe" required>
				</div>
				<div class="input-box">
					<label for="password">Confirmer le mot de passe: </label>
					<input type="password" id="password2" name="password2" placeholder="Repeter le mot de passe" required>
				</div>
				<div class="button">
						<input type="submit" value="Inscrire">
				</div>
				<div><a href="/WEB-INF/Login.jsp" class="signup-link">J'ai déja un compte</a></div>
				
			</div>
		</form>
		
	</div>
	
	<style>
	
	body{
	display: flex;
	height: 100vh;
	justify-content: center;
	align-items: center;
	padding:10px;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
	}
	
	.container{
	max-width: 700px;
	width: 100%;
	background: #fff;
	padding: 25px 30px;
	border-radius: 5px;
	
	}
	
	.container .title{
	font-size: 25px;
	dont-weight: 500;
	position: relative;
	
	}
	.container .title::before {
	content:'';
	position: absolute;
	left:0;
	bottom:0;
	height: 3px;
	width: 30px;
	background: linear-gradient(135deg, #71b7e6, #9b59b6);
    }
    
    .container form .user-details{
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin: 20px 0 12px 0;
    }
    
    form .user-details .input-box{
    margin-bottom: 15px;
    width: calc(100% /2 - 20px)
    
    }
    .user-details .input-box .details{
    display: block;
    margin: 20px 0 12px 0;
    margin-bottom: 5px;
    
    }
    
    .user-details .input-box input{
    height: 45px ;
    width: 100%;
    outline: none;
    border-radius: 5px;
    border: 1px solid #ccc;
    padding-left: 15px;
    font-size: 16px;
    border-bottom-width: 2px;
    transition: all 0.3s ease;
    }
    
    .user-details .input-box input:focus,
    .user-details .input-box input:valid{
    border-color: #9b59b6;
    
    }
    
    form .button{
    width:100%;
    height: 45px;
    margin: 45px 0;
    }
    
    form .button input{
    height: 100%;
    width: 100%;
    outline: none;
    color: #fff;
    border: none;
    font-size: 18px;
    font-weight: 500px;
    border-radius: 5px;
    letter-spacing: 1px;
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    
    }
    form .button input:hover {
	background: linear-gradient(-135deg, #71b7e6, #9b59b6);
     }
    
    @media (max-width: 584px){
    .container{
	max-width: 100%;
    }
    
      form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
    
    }
    
    .container form .user-details{
    max-height: 300px;
    overflow-y:Scroll;
    }
    
    .user-details::-webkit-scrollbar{
    width:0;
    }
    
    }
	
	
	
	
	
	</style>
	
	
	
</body>
</html>