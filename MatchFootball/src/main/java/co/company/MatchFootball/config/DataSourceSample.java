//package co.company.MatchFootball.config;
//
//import java.sql.SQLException;
//import java.util.Properties;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.datasource.DataSourceTransactionManager;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//
//import oracle.jdbc.OracleConnection;
//import oracle.jdbc.pool.OracleDataSource;
//
//@Configuration
//@EnableTransactionManagement
//public class DataSourceSample {
//	  
//	final static String DB_URL="jdbc:oracle:thin:@db202012151659_high?TNS_ADMIN=D://Dev//Wallet";
//	final static String DB_USER = "admin";
//	final static String DB_PASSWORD = "RLAgusehd12!@";
//	
//	//�뜲�씠�꽣�냼�뒪 �벑濡�
//	@Bean(destroyMethod="close")
//	public OracleDataSource dataSource() {
//		Properties info = new Properties();     
//	    info.put(OracleConnection.CONNECTION_PROPERTY_USER_NAME, DB_USER);
//	    info.put(OracleConnection.CONNECTION_PROPERTY_PASSWORD, DB_PASSWORD);          
//	    info.put(OracleConnection.CONNECTION_PROPERTY_DEFAULT_ROW_PREFETCH, "20");    
//	  
//	    OracleDataSource ods = null;
//	    
//		try {
//			ods = new OracleDataSource();
//			ods.setURL(DB_URL);    
//			ods.setConnectionProperties(info);
//			System.out.println(ods);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	    return ods;
//	}
//	
//	// �듃�옖�옲�뀡 留ㅻ땲�� �벑濡�	 
//    @Bean
//    public DataSourceTransactionManager transactionManager() {
//        return new DataSourceTransactionManager(dataSource());
//    }
//}
