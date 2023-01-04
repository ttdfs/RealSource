package com.example.product;



import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

public class TwoDataSourceConfig {

	
	@Configuration
	@MapperScan(value = "com.example.demo.test1.repository", sqlSessionFactoryRef = "factory")
	public class OneDataSourceConfig {
	 
	    @Primary
	    @Bean(name = "datasource")
	    @ConfigurationProperties(prefix = "spring.datasource.test1")
	    public DataSource dataSource() {
	        return DataSourceBuilder.create().build();
	    }
	    
	    @Primary
	    @Bean(name = "factory")
	    public SqlSessionFactory sqlSessionFactory(DataSource dataSource) throws Exception {
	        SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
	        sqlSessionFactory.setDataSource(dataSource);
	        sqlSessionFactory.setTypeAliasesPackage("com.example.demo.test1");
	        sqlSessionFactory.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath:/mappers/product.xml"));
	        return sqlSessionFactory.getObject();
	    }
	    
	    @Primary
	    @Bean(name = "sqlSession")
	    public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
	        return new SqlSessionTemplate(sqlSessionFactory);
	    }
	}

	
	
}
