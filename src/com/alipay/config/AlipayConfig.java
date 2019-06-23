package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

	// 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
	public static String app_id = "2016092300575647";
	
	// 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC6zSnjhOMsDllfwdVTuavSWF1+K7/tA1dvorTqTedmtu49Y+4K9W0plD6Ugh/ct57LM5NIuSBdxXUG4/UKovXNHQun/NqeJTxpkjdnzu8ODSJcM5n2Xcyxb12hXsJhIcZ6+53IOqhdADTgND1+yqtfx/ylSVrkiQe0yREMM0LIv4Z6bbi8pZIF1puWjaffanHoO+292j0fMrABS1JRQJcZQlhADHAQmIutH55++OLn7Tbnd7cZYbgm0rMLa5KyVgf/Ue8JGKvAx/rgNZDQKa2XTYSRaS3ieIXppLn8ECHKg4My7J51o+q1mvb7uI4yGvt6hzv9oWDmNnpTltQpS6pjAgMBAAECggEBALCWtpywyRiiz/ZoBMTLZxTIGEnoDd1/JS8RfzloP/Knx/wc9bFCZdnCnI5DnN9IbkLmFLvQ1joPKhxDbyiI+RjX9mbt77VEuiGK6fmmc/Kyk+LZnRh7f7/U6YxdSiAMj9c++d+JJBQW1+WDPQcZjHxVUA7ok5YrvC85THZeFyox1ut0bhu67dqWf6ocqSk9r3bA+dRVojJqhMCetWO8RvbrRSiTsbtV5Wn7Y6/Pm1BEBXHAOZzGEACSe4U6yBDWgqU10q2DtRwLy6g47/kCkf5tsmJj7eG7pZ7zqBYtNp8KdqJArobEtu94TdGSmIqdlNIf3tXzjpN6xSLTVOig+kECgYEA3hhzbXSq7ukUHDScdnLmF1YtEH4e9Cfg8HYfNKxKFPA1+ERhrjdEr0NEytwLTZbKSu+tAUsx4/RIj8hedVd0UWmYGPj8C04aZ3ptNzLYdCA1PjDu1TPGy2FREj+RgXGrDLoq3/kJuu15sNF/lhAs32niYP1XZhD12yHVkU/mGDMCgYEA11FpIqEBREp77bcgzlyDly/FKWgHr3EhcG0AgW7GpchIKoOs9mWOVdkcwoQuDk4n4ae4ripIzNK49ljiTP/qUYGzKL+7j6oV8g48zuzM0dP8VI7QYCV4HyFO7H6/WSZjXmUoLxBaTCCPXUfIJ31ZIAIc1uDGprt2a1JY09x4tRECgYEA2BEVirDr8s3SgLY2WY3ih2WRJfBtEL8TORzRsx7CW6ht+QAdv62JJrDc5jY40N0YJNsThqSu/sQTK76VFrdkNCf0jqb8Hct4KJ+UTRUsO51x7vUQBV7/0bD1fDlXx4TcEd+0An13l+GceAb4hvdpkFikohMVyfhKF0vNSDdg9L0CgYEAtWwPHfJzUss/qIhIyBgDeHvzsHPLJfQ4rLXrWyOvlTgwNkJElkfzqjoJlYwyEjOgPu5HGdjfBlX3Kvqxkxd+o7aY8pi6vM4fN5jve5ri6VmonsbGpHxtvi0ehv401DUYPQ0W0rEApGw63+n/p+ZiFioxioxSVWJW4Q69caWuv0ECgYBnqeEZupT3Tm7aenXz/cC4v+q7FGSG29t61zfm22EAWC0o/llfBKvZPSq+dC8usss00xTD3jHtQ4qonqBZPVrQNfYet3NKWIIc77WRpRPW0VcEQrA6/ioFhZqYK9pfDU37CwBXeSm6AxhCavZHFTT2O/zxW65Alvk1U0I2kNMv4g==";
	
	// 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4jTdr8Ef7daaKgZ9sWxcQm66MAV/2RdeUhMCPbpPLnZQ9zuBibSbGdSijM+57rLJkOzavSaoc3HL9HfnAXaox+IytPfoZnB9Slofq8H6RdWwXkZ0dxghd5cyPIuqFEQQiFtLQqtZiBY4+cSMS0CddpPp7B4PzSbgCOPrHxqzGSR7u/7wJqVCgMfE5JHqGG8ew+67XFPSzcXj/OnmyJ4NC/D8OpGBtkDrGh2fI23I27IsKGF8txRMVBITtM0p+tZTPsrmaXGjf17ZNjAu2uPK6rHXvxa6dko19IdweGM1rfJiwA6RJlPi6vdEflFHaxDjbsqCwQsrM/wf0R+U33CgSwIDAQAB";

	// 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String notify_url = "http://2u31935d52.iask.in:16713/CarSystem/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	public static String return_url = "http://localhost:8080/CarSystem/carAction!buyYes.action";

	// 签名方式
	public static String sign_type = "RSA2";
	
	// 字符编码格式
	public static String charset = "utf-8";
	
	// 支付宝网关
	public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";
	
	// 支付宝网关
	public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /** 
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

