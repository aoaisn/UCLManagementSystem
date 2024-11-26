package ucl.group.talentManageSystem.api.exception.file;



/**
 * 文件信息异常类
 * 
 * @author hejiale
 */
public class FileException extends RuntimeException
{
    private static final long serialVersionUID = 1L;

    private String msg;
    private int code = 500;

    public FileException(Exception e) {
        super(e);
        this.msg = "执行异常";
        this.code = 500;
    }

    public FileException(String msg) {
        super(msg);
        this.msg = msg;
    }

    public FileException(String msg, Throwable e) {
        super(msg, e);
        this.msg = msg;
    }

    public FileException(String msg, int code) {
        super(msg);
        this.msg = msg;
        this.code = code;
    }

    public FileException(String msg, int code, Throwable e) {
        super(msg, e);
        this.msg = msg;
        this.code = code;
    }
}
