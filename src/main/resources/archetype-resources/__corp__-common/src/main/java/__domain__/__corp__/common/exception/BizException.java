package ${groupId}.common.exception;

public class BizException extends RuntimeException{
	private static final long serialVersionUID = 1L;
	//记录已不存在
	public BizException(){
		super();
	}
	public BizException(String msg){
		super(msg);
	}
	public BizException(String message, Throwable cause){
		super(message, cause);
	}
	public BizException(Throwable cause){
		super(cause);
	}
}
