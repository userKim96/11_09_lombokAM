package com.koreaIT.demo.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.koreaIT.demo.vo.Member;

@Mapper
public interface MemberDao {
	
	@Insert("""
			INSERT INTO `member`
				SET regDate = NOW()
					, updateDate = NOW()
					, loginId = #{loginId}
					, loginPw = #{loginPw}
					, name = #{name}
					, nickname = #{nickname}
					, cellphoneNum = #{cellphoneNum}
					, email = #{email}
			""")
	public void joinMember(String loginId, String loginPw, String name, String nickname, String cellphoneNum, String email);
	
	@Select("""
			SELECT * 
				FROM `member`
				WHERE id = #{id}
			""")
	public Member getMemberById(int id);

	@Select("SELECT LAST_INSERT_ID()")
	public int getLastInsertId();

	@Select("""
			SELECT *
				FROM `member`
				WHERE loginId = #{loginId}
			""")
	public Member getMemberByLoginId(String loginId);

	@Update("""
			UPDATE `member`
				SET updateDate = NOW()
					, `name` = #{name}
					, nickname = #{nickname}
					, cellphoneNum = #{cellphoneNum}
					, email = #{email}
				WHERE id = #{id}
			""")
	public void doModify(int id, String name, String nickname, String cellphoneNum, String email);

	@Update("""
			UPDATE `member`
				SET updateDate = NOW()
					, loginPw = #{loginPw}
				WHERE id = #{id}
			""")
	public void doPasswordModify(int id, String loginPw);

	@Select("""
			SELECT *
				FROM `member`
				WHERE `name` = #{name}
				AND email = #{email}
				AND cellphoneNum = #{cellphoneNum}
			""")
	public Member getMemberByNameAndEmailAndCell(String name, String email, String cellphoneNum);
}