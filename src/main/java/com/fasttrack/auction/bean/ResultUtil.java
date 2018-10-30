package com.fasttrack.auction.bean;


public class ResultUtil {

    public final static int SUCCESS_CODE = 200;
    public final static int ERROR_CODE = 400;

    public static Result success(Object object) {
        Result result = new Result();
        result.setCode(SUCCESS_CODE);
        result.setMsg("Success");
        result.setData(object);
        return result;
    }

    public static Result successNoData() {
        return success(null);
    }

    public static Result error(Integer code, String msg) {
        Result result = new Result();
        result.setCode(code);
        result.setMsg(msg);
        result.setData("");
        return result;
    }

}