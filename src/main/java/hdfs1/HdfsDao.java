package hdfs1;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.mapred.JobConf;

/**
 *
 * hdfs 访问层
 * Created by wanghongxing on 16/6/1.
 */
public class HdfsDao {

    private static final String HDFS = "hdfs://master:9000/";

    private String hdfsPath;
    private Configuration configuration;

    public HdfsDao(String hdfsPath, Configuration configuration) {
        this.hdfsPath = hdfsPath;
        this.configuration = configuration;
    }

    public HdfsDao(Configuration configuration) {
        this.configuration = configuration;
    }

    //启动函数
    public static void main(String[] args){

    }

    public static JobConf init(String[] args){
        JobConf conf = new JobConf(HdfsDao.class);
        conf.setJobName("hdfs_dao");
        conf.addResource("classpath:/hadoop/core-site.xml");
        conf.addResource("classpath:/hadoop/hdfs-site.xml");
        conf.addResource("classpath:/hadoop/mapred-site.xml");

        return conf;
    }
}
