<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width",initial-scale="1">
	<title>SGV ������ ������</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/codingBooster.css">
</head>
<body>
	<style type="text/css">
		.jumbotron{
			background-image: url('${pageContext.request.contextPath }/images/spy.jpg');
			background-size: cover;
			text-shadow: black 0.2em 0.2em 0.2em;
			color: white;
		}
	</style>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.mo">CV</a>
			</div>
			<div class="collapsed navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.mo">����<span class="sr-only"></span></a></li>
		
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">���� ����<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">��,��,�� ���� ����</a></li>
							<li><a href="#">��ȭ�� ���� ����</a></li>
							<li><a href="#">��ȭ���� ����</a></li>
							<li><a href="#">��ǰ ����</a></li>
						</ul>
					</li>
					
					<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">��ȭ ����<span class="caret"></span></a>
						<ul class="dropdown-menu">
								<li><a href="movie_insert.mo">��ȭ�߰�</a></li>
								<li><a href="movie_list.mo">��ȭ����Ʈ</a></li>
						</ul>
					</li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">��ȭ�� ����<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="insertCinema.mo">��ȭ�� �߰�</a></li>
							<li><a href="listCinema.mo">��ȭ�� ���</a></li>
							<li><a href="#">�� ��ȭ ����</a></li>
							<ul class="dropdown-menu1">
								<li><a href="insertmovie.mo">�� ��ȭ �߰�</a></li>
								<li><a href="listMovie.mo">�� ��ȭ ���</a></li>
							</ul>
						</ul>
					</li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">�Խ��� ����<span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a href="#">��������</a></li>
							<ul class="dropdown-menu1">
								<li><a href="noticeinsert.mo">�������� �߰�</a></li>
								<li><a href="noticelist.mo">�������� ���</a></li>
							</ul>						
							<li><a href="#">1:1 ����</a></li>
							<ul class="dropdown-menu2">
								<li><a href="question_list.mo">1:1 ���� Ȯ��</a></li>
							</ul>								
							<li><a href="#">����</a></li>
							<ul class="dropdown-menu3">
								<li><a href="#">���� Ȯ��</a></li>
								<li><a href="#">���� ����</a></li>
							</ul>
						</ul>
					</li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">ȸ�� ����<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="memberList.mo">ȸ�� ����</a></li>
							<li><a href="memberFind.mo">ȸ�� ã��</a></li>
							<li><a href="#">ȸ������ ��ȸ</a></li>
							<ul class="dropdown-menu1">
								<li><a href="#">���ų���Ȯ��</a></li>
								<li><a href="#">������ȸ</a></li>
							</ul>
						</ul>
					</li>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">��ǰ ����<span class="caret"></span></a>
						<ul class="dropdown-menu">
						<li><a href="#">ī�װ� ����</a></li>
							<ul class="dropdown-menu1">
								<li><a href="cate_input.mo">ī�װ� �߰�</a></li>
								<li><a href="cate_list.mo">ī�װ� ����</a></li>
							</ul>
							<li><a href="#">��ǰ ����</a></li>
							<ul class="dropdown-menu2">
								<li><a href="prod_input.mo">��ǰ �߰�</a></li>
								<li><a href="prod_list.mo">��ǰ ���</a></li>
								<li><a href="prod_find.mo">��ǰ ã��</a></li>
							</ul>
						</ul>
					</li>
					
				</ul>
				
			</div>
		</div>
	</nav>