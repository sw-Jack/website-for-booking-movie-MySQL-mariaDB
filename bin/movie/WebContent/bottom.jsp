<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<footer style="background-color: #000000; color: #ffffff">
		<div class="container">
			<br>
			<div class="row">
				 <div class="col-sm-2" style="text-align: center;"><h5>Copyright &copy; 2017</h5><h5>aa</h5></div>
				 <div class="col-sm-4"><h4>��ǥ�� �Ұ�</h4><p>��ȭ�� ���� ������ �Դϴ�. �ݰ����ϴ�.</p></div>
				 <div class="col-sm-2"><h4 style="text-align: center;">�׺���̼�</h4>
				 	<div class="list-group">
				 		<a href="#" class="list-group-item">����</a>
				 		<a href="#" class="list-group-item">����</a>
				 		<a href="#" class="list-group-item">��ȭ���</a>
				 	</div>
				 </div>
				 <div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
				 	<div class="list-group">
				 		<a href="https://www.facebook.com/ " class="list-group-item">���̽���</a>
				 		<a href="https://www.youtube.com/" class="list-group-item">��Ʃ��</a>
				 		<a href="https://www.naver.com/" class="list-group-item">���̹�</a>
				 	</div>
				 </div>
				 <div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok"></span>&nbsp;by aa</h4></div>
			</div>
		</div>
	</footer>
	<div class="row">
		<div class="modal" id="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						�츮 ��ȭ���� Ư¡
						<button class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body" style="text-align: center;">
						���� ������ Ư¡�� �ٷ� ���Ű� �����մϴ�.<br>
						� ��ȭ���̵� ���� ���Ű� ���� �մϴ�.<br><br>
						<img src="${pageContext.request.contextPath }/images/youtube.jpg" id="imagepreview" style="width: 256px; height: 256px;">
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
</body>
</html>