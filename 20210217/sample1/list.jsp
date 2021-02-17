<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>회원 리스트</title>
    </head>
    <style>
        table {
            table-layout: fixed;
            width: 750px;
            border-collapse: collapse;
            border: 2px solid purple;
        }
        th {
            padding: 5px;
            text-align: center;
            width: 80px;
        }
        td {
            padding: 15px;
        }
        h1 {
            border-bottom: 3px solid purple;
        }
    </style>
    <body>
        <h1>회원 등록</h1>
        이름 : <input type="text" name="fname" id="fname" /> 전화번호 :
        <input type="text" name="lname" id="lname" />
        <button onclick="addRow();">조회</button>
        <button onclick="addRow();">등록</button><br /><br />
        <table border="1">
            <tr>
                <th>성명</th>
                <th>성별</th>
                <th>생년월일</th>
                <th>전화번호</th>
                <th>주소</th>
                <th>삭제/수정</th>
            </tr>
            <tr>
                <td>홍길동</td>
                <td>남</td>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <button onclick="addRow();">수정</button>
                    <button onclick="addRow();">삭제</button>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </body>
</html>
