function kiemTra()
{
	//Lấy giá trị từ các trường input
	const idsach = document.getElementById("idsach").value;
	const tensach = document.getElementById("tensach").value;
	const tacgia = document.getElementById("tacgia").value;
	const uutien = document.getElementById("uutien").value;

	//Dùng let vì giá trị có thể thay đổi
	let isValid = true;
	let errorMessage = "";
	
	//Kiểm tra độ dài id sách (10 ký tự)
	if(idsach.length > 10)
		{
			errorMessage +="- Mã sách không được quá 10 ký tự\n";
			isValid = false;
		}
		
	//Kiểm tra độ dài tên sách (30 ký tự)
	if(tensach.length > 30)
		{
			errorMessage +="- Tên sách không được quá 30 ký tự\n";
			isValid = false;
		}
			
	//Kiểm tra độ dài tên tác giả (50 ký tự)
	if(tacgia.length > 50)
		{
			errorMessage +="- Tên tác giả không được quá 50 ký tự\n";
			isValid = false;
		}
		
		
	//Kiểm tra ưu tiên chỉ được 1 hoặc 2
	if (uutien !== "1" && uutien !== "2") 
		{
	     errorMessage += "- Ưu tiên chỉ được nhập giá trị 1 hoặc 2\n";
	     isValid = false;
	 	}
	
	 // Hiển thị thông báo lỗi nếu có
	     if (!isValid) 
			{
	         alert("Có lỗi xảy ra:\n" + errorMessage);
	         return false;
	     	}
			
		return true;
}