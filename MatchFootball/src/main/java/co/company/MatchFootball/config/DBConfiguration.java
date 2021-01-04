<<<<<<< HEAD
//package co.company.MatchFootball.config;
//
//import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.datasource.DataSourceTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//@Configuration
//@EnableTransactionManagement
//@ComponentScan(basePackages="co.company") //자동 스캔
//public class DBConfiguration {
//	  
//	//데이터소스 등록
//	@Bean(destroyMethod="close")
//	public BasicDataSource dataSource() {
//		BasicDataSource dataSource = new BasicDataSource();
//		dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
//		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
//		dataSource.setUsername("hr");
//		dataSource.setPassword("hr");
//		dataSource.setDefaultAutoCommit(false);
//		return dataSource;
//	}
//
//	@Bean //jdbc 템플릿 : 스프링에서 제공 
//	public JdbcTemplate db(BasicDataSource source) {
//		JdbcTemplate db = new JdbcTemplate(source);
//		return db;
//	}
//	
//	// 트랜잭션 매니저 등록	 
//    @Bean
//    public DataSourceTransactionManager transactionManager() {
//        return new DataSourceTransactionManager(dataSource());
//    }
//}
/*
 * package co.company.MatchFootball.config;
 * 
 * import org.apache.tomcat.dbcp.dbcp2.BasicDataSource; import
 * org.springframework.context.annotation.Bean; import
 * org.springframework.context.annotation.ComponentScan; import
 * org.springframework.context.annotation.Configuration; import
 * org.springframework.jdbc.core.JdbcTemplate; import
 * org.springframework.jdbc.datasource.DataSourceTransactionManager; import
 * org.springframework.transaction.annotation.EnableTransactionManagement;
 * 
 * @Configuration
 * 
 * @EnableTransactionManagement
 * 
 * @ComponentScan(basePackages="co.company") //자동 스캔 public class
 * DBConfiguration {
 * 
 * //데이터소스 등록
 * 
 * @Bean(destroyMethod="close") public BasicDataSource dataSource() {
 * BasicDataSource dataSource = new BasicDataSource();
 * dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
 * dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
 * dataSource.setUsername("hr"); dataSource.setPassword("hr");
 * dataSource.setDefaultAutoCommit(false); return dataSource; }
 * 
 * @Bean //jdbc 템플릿 : 스프링에서 제공 public JdbcTemplate db(BasicDataSource source) {
 * JdbcTemplate db = new JdbcTemplate(source); return db; }
 * 
 * // 트랜잭션 매니저 등록
 * 
 * @Bean public DataSourceTransactionManager transactionManager() { return new
 * DataSourceTransactionManager(dataSource()); } }
 */
=======
package co.company.MatchFootball.config;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScan(basePackages="co.company") //�옄�룞 �뒪罹�
public class DBConfiguration {
	  
	//�뜲�씠�꽣�냼�뒪 �벑濡�
	@Bean(destroyMethod="close")
	public BasicDataSource dataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		dataSource.setDriverClassName("oracle.jdbc.OracleDriver");
		dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		dataSource.setUsername("hr");
		dataSource.setPassword("hr");
		dataSource.setDefaultAutoCommit(false);
		return dataSource;
	}

	@Bean //jdbc �뀥�뵆由� : �뒪�봽留곸뿉�꽌 �젣怨� 
	public JdbcTemplate db(BasicDataSource source) {
		JdbcTemplate db = new JdbcTemplate(source);
		return db;
	}
	
	// �듃�옖�옲�뀡 留ㅻ땲�� �벑濡�	 
    @Bean
    public DataSourceTransactionManager transactionManager() {
        return new DataSourceTransactionManager(dataSource());
    }
}
>>>>>>> branch 'master' of https://github.com/tjdwns631/MatchFootball
