package com.chao.sys.task;

import com.chao.sys.constast.SysConstast;
import com.chao.sys.utils.AppFileUtils;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.File;


@Component
@EnableScheduling //开启定时任务
public class RecyleTampFileTask {

    @Scheduled(cron = "0 0 0 * * ? ")//每天晚上12点执行
    public void RecyleTampFile()
    {
        File file=new File( AppFileUtils.PATH);

        deleteFile(file);
    }

    /**
     * 删除临时文件
     * @param file
     */
    public void deleteFile(File file)
    {
        if (file!=null)
        {
            File[] files = file.listFiles();
            if (files!=null&&files.length>0)
            {
                for (File f : files) {
                    if (f.isFile())//判断是不是文件夹
                    {
                        if (SysConstast.FILE_UPLOAD_TEMP.endsWith(f.getName()))
                        {
                            f.delete();
                        }
                    }else
                    {
                        deleteFile(f);
                    }
                }
            }
        }
    }
}
