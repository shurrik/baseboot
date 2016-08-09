package ${groupId}.common.utils;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;

import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.util.StreamUtils;

/**
 * 用于处理中文乱码问题： Spring bug -
 * 
 * In StringHttpMessageConverter, the default char set is ISO-8859-1(西欧字符集)
 * 
 * @author lp
 *
 */
public class UTF8StringHttpMessageConverter extends StringHttpMessageConverter {

      private static final MediaType UTF8 = new MediaType("text", "plain", 
        Charset.forName("UTF-8"));

  private boolean writeAcceptCharset = true;
  
  @Override
  protected void writeInternal(String s, HttpOutputMessage outputMessage)
      throws IOException {
    if (this.writeAcceptCharset)
      outputMessage.getHeaders().setAcceptCharset(getAcceptedCharsets());
    
    Charset charset = UTF8.getCharSet();
    
    StreamUtils.copy(s, charset, outputMessage.getBody());
    
  }

  @Override
  protected List<Charset> getAcceptedCharsets() {
    return Arrays.asList(UTF8.getCharSet());
  }

  @Override
  protected MediaType getDefaultContentType(String t) throws IOException {
    return UTF8;
  }

  public boolean isWriteAcceptCharset() {
    return writeAcceptCharset;
  }

  public void setWriteAcceptCharset(boolean writeAcceptCharset) {
    this.writeAcceptCharset = writeAcceptCharset;
  }
  
  
}