package kr.co.sist.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kr.co.sist.vo.LoginDataVO;
import kr.co.sist.vo.LoginVO;

/**
 *	암호화된 비밀번호는 입력받아 로그인 수행 
 * @author user
 */
public class UserDAO {
	/**
	 * 아이디와 비밀번호를 입력받아 두개의 값으로 DB Table에서 조회하는 결과가 있다면
	 * 로그인 성공으로 보고 LoginDataVO를 생성하여 조회 컬럼 값을 입력한 후 반환  
	 * @param lVO
	 * @return
	 * @throws SQLException
	 */
	public LoginDataVO selectLogin(LoginVO lVO) throws SQLException{
		LoginDataVO ldVO = null;
		
		DbConnection dc = DbConnection.getInstance();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		//1. Connection 얻기
			con = dc.getConn();
		//2. 쿼리문 생성객체 얻기
			String selectQuery = "select name,email from test_login where id=? and pass=?";
			pstmt = con.prepareStatement(selectQuery);
		//3. 바인드변수에 값 할당
			pstmt.setString(1, lVO.getId());
			pstmt.setString(2, lVO.getPass());
		//4. 쿼리문 수행 후 결과 얻기
			rs = pstmt.executeQuery();
			
			if(rs.next()) {// where절에 id와 비밀번호로 조회된 레코드가 있음
				ldVO = new LoginDataVO(rs.getString("name"), rs.getString("email"));
			}
		}finally {
		//5. 연결 끊기
			dc.dbClose(con, pstmt, rs);
		}
		
		return ldVO;
		
	}
}
