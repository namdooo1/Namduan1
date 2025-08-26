<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name= "viewport" content="width=device-width , initial-scale=1.0">
<title>Form khảo sát ITviec</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: 'segoe UI', tahoma,gevena, verdana,sans-serif;
}

body {
	background-color: #f5f7fa;
	color: #333
	line-height: 1.6;
	padding: 20px;				
	}
.container{
	max-width: 800px;
	margin: 0 auto;
	background: white;
	border-radius: 12px;
	box-shadow: 0 5px 20px rgba(0,0,0,0.1);
	padding:30px;
}	
h1 {
    color: #2c3e50;
    margin-bottom: 20px;
    text-align: center;
    font-weight: 600;
    }
        
h2 {
    color: #3498db;
    margin: 25px 0 15px 0;
    padding-bottom: 10px;
    border-bottom: 2px solid #eaeaea;
    font-weight: 500;
    }        
.form-group {
    margin-bottom: 20px;
    }
     
label {
    display: block;
    margin-bottom: 8px;
    font-weight: 500;
    color: #2c3e50;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="number"],
        textarea {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 16px;
            transition: border-color 0.3s;
        }
        
        input:focus,
        textarea:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
        }
        
        .radio-group, .checkbox-group {
            margin: 15px 0;
        }
        
        .radio-option, .checkbox-option {
            margin: 10px 0;
        }
        
        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 10px;
            transform: scale(1.2);
        }
        
        .divider {
            height: 1px;
            background: #eaeaea;
            margin: 25px 0;
        }
        
        button {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 500;
            transition: background-color 0.3s;
            display: block;
            margin: 30px auto 0;
        }
        
        button:hover {
            background-color: #2980b9;
        }
        
        .required {
            color: #e74c3c;
        }
        
        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }
            
            input[type="text"],
            input[type="email"],
            input[type="number"],
            textarea {
                padding: 10px;
            }
        }

</style>
</head>
<body>
 <div class="container">
        <h1>Khảo Sát ITviec</h1>
        
        <form id="surveyForm">
            <h2>Thông Tin Cá Nhân</h2>
            
            <div class="form-group">
                <label for="name">Họ tên <span class="required">*</span></label>
                <input type="text" id="name" name="name" placeholder="Nhập tên của bạn" required>
            </div>
            
            <div class="form-group">
                <label for="email">Email <span class="required">*</span></label>
                <input type="email" id="email" name="email" placeholder="Nhập email của bạn" required>
            </div>
            
            <div class="form-group">
                <label for="age">Tuổi</label>
                <input type="number" id="age" name="age" placeholder="Nhập tuổi" min="10" max="100">
            </div>
            
            <div class="divider"></div>
            
            <h2>Hiện tại bạn đang là?</h2>
            <div class="radio-group">
                <div class="radio-option">
                    <input type="radio" id="student" name="occupation" value="student" checked>
                    <label for="student">Học sinh/Sinh viên</label>
                    <input type="radio" id="worker" name="occupation" value="worker" checked>
                    <label for="worker" >công nhân/người đi làm </label>
                </div>
            </div>
            
            <div class="divider"></div>
            
            <h2>Bạn sẽ giới thiệu ITviec với bạn bè chứ?</h2>
            <div class="radio-group">
                <div class="radio-option">
                    <input type="radio" id="yes" name="recommend" value="yes">
                    <label for="yes">Có</label>
                </div>
                <div class="radio-option">
                    <input type="radio" id="no" name="recommend" value="no">
                    <label for="no">Không</label>
                </div>
                <div class="radio-option">
                    <input type="radio" id="maybe" name="recommend" value="maybe" checked>
                    <label for="maybe">Có thể</label>
                </div>
            </div>
            
            <div class="divider"></div>
            
            <h2>Ngôn ngữ lập trình và Framework bạn đã biết? (Có thể chọn nhiều đáp án)</h2>
            <div class="checkbox-group">
                <div class="checkbox-option">
                    <input type="checkbox" id="c" name="languages" value="c">
                    <label for="c">C</label>
                </div>
                <div class="checkbox-option">
                    <input type="checkbox" id="cpp" name="languages" value="cpp">
                    <label for="cpp">C++</label>
                </div>
                <div class="checkbox-option">
                    <input type="checkbox" id="csharp" name="languages" value="csharp">
                    <label for="csharp">C#</label>
                </div>
            </div>
            
            <div class="divider"></div>
            
            <h2>Bạn có câu hỏi gì cho ITviec không?</h2>
            <div class="form-group">
                <textarea id="question" name="question" rows="5" placeholder="Enter your comment here"></textarea>
            </div>
            
            <button type="submit">submit</button>
        </form>
    </div>

    <script>
        document.getElementById('surveyForm').addEventListener('submit', function(e) {
            e.preventDefault();
            alert('Cảm ơn bạn đã tham gia khảo sát!');      
        });
    </script>
</body>
</html>