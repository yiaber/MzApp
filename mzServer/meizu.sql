SET names UTF8;
DROP DATABASE IF EXISTS mz;
CREATE DATABASE mz CHARSET=UTF8;
USE mz;

/**用户信息**/
CREATE TABLE mz_user(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(32),
    pwd VARCHAR(32),
    phone VARCHAR(16),
    gender boolean,
    avatar VARCHAR(128)
);


/**总产品分类**/
CREATE TABLE mz_laptop_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,  #编号
    fname VARCHAR(16) #名称
);

/** 首页轮播图 **/
CREATE TABLE mz_index_swipe(
    fid INT PRIMARY KEY AUTO_INCREMENT,
    image VARCHAR(128) #图片路径
);
/* 手机信息 */
CREATE TABLE mz_phone(
    cid INT PRIMARY KEY AUTO_INCREMENT,#商品编号  自增
    name VARCHAR(32),  #商品名称
    price_title VARCHAR(32),  #价格标题
    title VARCHAR(256),  #标题
    price VARCHAR(8),  #价格
    price_staging VARCHAR(8),  #分期价格
    network VARCHAR(16), #网络类型
    color VARCHAR(8),  #颜色
    capacity VARCHAR(32), #内存容量
    title_img VARCHAR(128),  #标题图片
    cpu VARCHAR(32),    #处理器型号
    almost VARCHAR(32),    #全面屏
    front_camera VARCHAR(32),   #前置摄像头
    rear_camera VARCHAR(32),    #后置摄像头
    AI VARCHAR(32),     #AI识别
    fingerprint VARCHAR(32),    #指纹解锁
    battery VARCHAR(32),    #电池容量
    brand VARCHAR(32),  #品牌
    size VARCHAR(32),   #尺寸
    weight VARCHAR(32),     #重量
    contrast VARCHAR(32),   #对比度
    resolution VARCHAR(32),     #分辨率
    PPI VARCHAR(8), #PPI
    luminance VARCHAR(32),  #亮度
    craft VARCHAR(32),   #制造工艺
    ram VARCHAR(16),  #机身内存(RAM)
    rom VARCHAR(32),    #机身储存(ROM)
    cpus VARCHAR(32), #CPU
    gpu VARCHAR(32),  #GPU
    leibie INT,
    foreign key(leibie) references mz_laptop_family(fid)
);

/* 手机配件商品 */
CREATE TABLE mz_accessories(
    cid int PRIMARY KEY AUTO_INCREMENT, #商品编号  自增
    name VARCHAR(32),  #商品名称
    price_title VARCHAR(32),  #价格标题
    title VARCHAR(256),  #标题
    price VARCHAR(8),  #价格
    price_staging VARCHAR(8),  #分期价格
    color VARCHAR(16),  #颜色
    title_img VARCHAR(128),  #标题图片
    pic VARCHAR(128),
    leibie INT,
    FOREIGN KEY(leibie) REFERENCES mz_laptop_family(fid)
);    

/* 插入用户信息 */
INSERT INTO mz_user VALUES(NULL,'zhangsan','123456','13888888888',1,NULL);


/* 插入产品分类 */
INSERT INTO mz_laptop_family VALUES(NULL,"手机");
INSERT INTO mz_laptop_family VALUES(NULL,"Lipro");
INSERT INTO mz_laptop_family VALUES(NULL,"声学");
INSERT INTO mz_laptop_family VALUES(NULL,"配件");
INSERT INTO mz_laptop_family VALUES(NULL,"生活");


/* 插入手机配件商品信息 */
INSERT INTO mz_accessories VALUES(NULL,"魅族超充适配器 45W","【限量现货】","适配 18 系列 | 智能兼容 | 安全无忧 | 简约设计","99","8.86","白色","/accessories/Cgbj0GA7YaiAf0tzAAG41B1Zn38846.png240x240.jpg","['/accessories/Cgbj0GA7YaiAf0tzAAG41B1Zn38846.png240x240.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER PC 磨砂壳","【PANDAER PC 磨砂壳&侠意保护壳&液态硅胶壳 | 满178减50 满267减80】【附赠官方定制保护膜】","PANDAER 18 周年定制 | 附赠手机膜 | 磨砂防指纹 | 轻薄无负担","89","7.96","18周年纪念（魅族 18 Pro）","/accessories/Cgbj0GCwvAeACcRcAAWjRXcpC0Y772.png240x240.jpg","['/accessories/Cgbj0GCwvAeACcRcAAWjRXcpC0Y772.png','/accessories/Cgbj0GDLCVuAfO8iAAgS_pLssXY122.png','/accessories/Cgbj0WDLCVyAS3xXAAqn-i1VjZ0415.png','/accessories/Cgbj0GDLCVyAWOPgAAu8ARKxWXc948.png']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER PC 磨砂壳","【PANDAER PC 磨砂壳&侠意保护壳&液态硅胶壳 | 满178减50 满267减80】【附赠官方定制保护膜】","PANDAER 18 周年定制 | 附赠手机膜 | 磨砂防指纹 | 轻薄无负担","89","7.96","18周年纪念（魅族 18）","/accessories/Cgbj0WCwvAeAZKuVAAZG-So9j_s876.png240x240.jpg","['/accessories/Cgbj0GCwvAeACcRcAAWjRXcpC0Y772.png','/accessories/Cgbj0GDLCVuAfO8iAAgS_pLssXY122.png','/accessories/Cgbj0WDLCVyAS3xXAAqn-i1VjZ0415.png','/accessories/Cgbj0GDLCVyAWOPgAAu8ARKxWXc948.png']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER 夏日特饮保护壳","【魅友家周年庆福利 | 限时特惠69元 | 附赠官方定制保护膜】","半透果冻设计 | 夏日限定款 | 清凉无负担","69","6.18","芒果绵绵冰 （魅族 18）","/accessories/Cgbj0WDB-wyAeArcAAGU-DDSxqQ726.png240x240.jpg","['/accessories/Cgbj0WDB-wyAeArcAAGU-DDSxqQ726.png','/accessories/Cgbj0GDAZ8OAATezAAidxYQYZeE963.png','/accessories/Cgbj0GDAZ7CAJ_yqAAn58yAUhtc536.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER 夏日特饮保护壳","【魅友家周年庆福利 | 限时特惠69元 | 附赠官方定制保护膜】","半透果冻设计 | 夏日限定款 | 清凉无负担","69","6.18","冻柠乐（魅族 18）","/accessories/Cgbj0WDB-wyAGN6JAAHMEK8-fbc208.png240x240.jpg","['/accessories/Cgbj0WDB-wyAGN6JAAHMEK8-fbc208.png','/accessories/Cgbj0WDAZ8OAdyCZAAiwpfZzFxY117.png','/accessories/Cgbj0WDAZ7CAeGBlAAt3Ze4pKrg349.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER 夏日特饮保护壳","【魅友家周年庆福利 | 限时特惠69元 | 附赠官方定制保护膜】","半透果冻设计 | 夏日限定款 | 清凉无负担","69","6.18","柠檬黑加仑（魅族 18）","/accessories/Cgbj0GDB-xGAWRKsAAHSjLLJuRQ716.png240x240.jpg","['/accessories/Cgbj0GDB-xGAWRKsAAHSjLLJuRQ716.png','/accessories/Cgbj0GDAZ8GAUF2lAAkCxQuac8o780.png','/accessories/Cgbj0GDAZ6-ARFKmAAmCQzwpqZ0062.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER 夏日特饮保护壳","【魅友家周年庆福利 | 限时特惠69元 | 附赠官方定制保护膜】","半透果冻设计 | 夏日限定款 | 清凉无负担","69","6.18","冻柠乐（魅族 18 Pro）","/accessories/Cgbj0GDB-xGAMsS_AAGqvMR6nrU340.png240x240.jpg","['/accessories/Cgbj0WDB-wyAGN6JAAHMEK8-fbc208.png','/accessories/Cgbj0WDAZ8OAdyCZAAiwpfZzFxY117.png','/accessories/Cgbj0WDAZ7CAeGBlAAt3Ze4pKrg349.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER 夏日特饮保护壳","【魅友家周年庆福利 | 限时特惠69元 | 附赠官方定制保护膜】","半透果冻设计 | 夏日限定款 | 清凉无负担","69","6.18","芒果绵绵冰 （魅族 18 Pro）","/accessories/Cgbj0GDB-wyAO5apAAGGwmnfYDw411.png240x240.jpg","['/accessories/Cgbj0WDB-wyAeArcAAGU-DDSxqQ726.png','/accessories/Cgbj0GDAZ8OAATezAAidxYQYZeE963.png','/accessories/Cgbj0GDAZ7CAJ_yqAAn58yAUhtc536.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族 18 系列 PANDAER 夏日特饮保护壳","【魅友家周年庆福利 | 限时特惠69元 | 附赠官方定制保护膜】","半透果冻设计 | 夏日限定款 | 清凉无负担","69","6.18","柠檬黑加仑（魅族 18）","/accessories/Cgbj0WDB-xGAKdNpAAHN_2RPlDw696.png240x240.jpg","['/accessories/Cgbj0GDB-xGAWRKsAAHSjLLJuRQ716.png','/accessories/Cgbj0GDAZ8GAUF2lAAkCxQuac8o780.png','/accessories/Cgbj0GDAZ6-ARFKmAAmCQzwpqZ0062.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族立式无线超充","【限量现货】","40W 无线超充 比肩有线 | 双重线圈 横竖无忧 | 立式风道 快而冷静","199","17.82","白色","/accessories/Cgbj0WCLqvCAXlyJAAJC6t5iFFc507.jpg240x240.jpg","['/accessories/Cgbj0WCLqvCAXlyJAAJC6t5iFFc507.jpg','/accessories/Cgbj0GCLqvCAKf0wAAdboGt3X1I017.jpg','/accessories/Cgbj0GCLqvWAV2SBAAa6Db-HRok638.jpg','/accessories/Cgbj0WCLqvCAFGYyAAVHV8uBvHM776.jpg']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族超充 USB-C 移动电源",NULL,"USB-C 双向快充 | 22.5W 大功率 | 数字电量显示 | 多快充协议支持","169","15.13","白色","/accessories/Cgbj0F64-fCANzfvAAMAQSi_H7U780.png240x240.jpg","['/accessories/Cgbj0F64-fCANzfvAAMAQSi_H7U780.png','/accessories/Cgbj0V9DWQ-ARPr9AALNxvenS9I117.png','/accessories/Cgbj0V9DWQuAZ7WJAAI-cUZh268612.png','/accessories/Cgbj0F9DWQuAVcABAADoGSC7L4c235.png']",4);
INSERT INTO mz_accessories VALUES(NULL,"魅族超充 GaN 三口充电器",NULL,"65W MAX功率输出 | GaN 芯片 | 安全小巧 | 三口输出","199",NULL,"白色","/accessories/Cgbj0F67s3yAYmI6AAIrMK1gFWU758.png240x240.jpg","['/accessories/Cgbj0F67s3yAYmI6AAIrMK1gFWU758.png','/accessories/Cgbj0V67s3eAUF1pAANHPpwEc34539.png','/accessories/Cgbj0V67s32AelFQAAHoZQa-Quw835.png','/accessories/Cgbj0V67s3eAXzYKAAJIJYoEv8o783.png']",4);

/*插入手机信息*/
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","4999","416.58","全网通公开版","飞雪流光","8+128GB","/phone_title/Cgbj0WA-HaGAfAzXAAaBocwqRik813.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","5499","458.25","全网通公开版","飞雪流光","8+256GB","/phone_title/Cgbj0WA-HaGAfAzXAAaBocwqRik813.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","5999","499.91","全网通公开版","飞雪流光","12+256GB","/phone_title/Cgbj0WA-HaGAfAzXAAaBocwqRik813.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","4999","416.58","全网通公开版","苍穹浩瀚","8+128GB","/phone_title/Cgbj0WA-HdCADVhiAAa-BfxJnPM808.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","5499","458.25","全网通公开版","苍穹浩瀚","8+256GB","/phone_title/Cgbj0WA-HdCADVhiAAa-BfxJnPM808.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","5999","499.91","全网通公开版","苍穹浩瀚","12+256GB","/phone_title/Cgbj0WA-HdCADVhiAAa-BfxJnPM808.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","4999","416.58","全网通公开版","银河秘境","8+128GB","/phone_title/Cgbj0GBG0l6AY4k5AAW4DOkGdhc894.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","5499","458.25","全网通公开版","银河秘境","8+256GB","/phone_title/Cgbj0GBG0l6AY4k5AAW4DOkGdhc894.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 Pro","【限时领券至高立省800 | 12期免息 | 赠手机壳】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池","5999","499.91","全网通公开版","银河秘境","12+256GB","/phone_title/Cgbj0GBG0l6AY4k5AAW4DOkGdhc894.png240x240.jpg","高通骁龙888","6.7英寸","4400万","5000+3200+800+30万","AI人脸识别解锁","超声波指纹","4500mAh","魅族","162.5*73*8.1mn","189g","5000000:1","3200 x 1440","526","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","3999","333.25","全网通公开版","踏雪","8+128GB","/phone_title/mz18.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","4699","391.58","全网通公开版","踏雪","8+256GB","/phone_title/mz18.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","4999","416.58","全网通公开版","踏雪","12+256GB","/phone_title/mz18.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","3999","333.25","全网通公开版","渡海","8+128GB","/phone_title/mz18.1.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","4699","391.58","全网通公开版","渡海","8+256GB","/phone_title/mz18.1.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","4999","416.58","全网通公开版","渡海","12+256GB","/phone_title/mz18.1.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","3999","333.25","全网通公开版","等风","8+128GB","/phone_title/mz18.2.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 18 ","【限时领券至高立省800 | 12期免息】","骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 | 162g 6.2英寸轻妙手感 | 2K+ 120 帧微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 4000mAh 超大电池 | 6400万超级防抖全场景影像系统","4699","391.58","全网通公开版","等风","8+256GB","/phone_title/mz18.2.jpg","高通骁龙888","6.2英寸","2000万","6400+1600+800万","AI人脸识别解锁","超声波指纹","4000mAh","魅族","152.4*69.2*8.18mm","162g","5000000:1","3200 x 1440","563","1300nit（局部峰值亮度）","On-Cell 全贴合","8GB/12GB","128GB<br>256GB","Qualcomm® 骁龙™ 888 + X60 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 17 ","【6期免息】","高通骁龙 865 | UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 120 Hz尝鲜模式 | 4500 mAh超大电池 30W有线快充","3699","331.36","全网通公开版"," 松深入墨","8+128GB","/phone_title/mz17.jpg","高通骁龙865","6.6英寸","2000万","6400+1600+800万","AI人脸识别解锁","屏下光学指纹","4500mAh","魅族","77.2mm*160mm*8.5mm","199g","2000000:1","2340 x 1080","390","700nit（典型值）1100nit（单点亮度）","On-Cell 全贴合","8GB","128GB<br>256GB","Qualcomm® 骁龙™ 865+X55 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 17 ","【6期免息】","高通骁龙 865 | UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 120 Hz尝鲜模式 | 4500 mAh超大电池 30W有线快充","3699","331.36","全网通公开版","十七度灰","8+128GB","/phone_title/17h.jpg","高通骁龙865","6.6英寸","2000万","6400+1600+800万","AI人脸识别解锁","屏下光学指纹","4500mAh","魅族","77.2mm*160mm*8.5mm","199g","2000000:1","2340 x 1080","390","700nit（典型值）1100nit（单点亮度）","On-Cell 全贴合","8GB","128GB<br>256GB","Qualcomm® 骁龙™ 865+X55 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 17 ","【6期免息】","高通骁龙 865 | UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 120 Hz尝鲜模式 | 4500 mAh超大电池 30W有线快充","3699","331.36","全网通公开版","AG梦幻独角兽","8+128GB","/phone_title/mz17a.jpg","高通骁龙865","6.6英寸","2000万","6400+1600+800万","AI人脸识别解锁","屏下光学指纹","4500mAh","魅族","77.2mm*160mm*8.5mm","199g","2000000:1","2340 x 1080","390","700nit（典型值）1100nit（单点亮度）","On-Cell 全贴合","8GB","128GB<br>256GB","Qualcomm® 骁龙™ 865+X55 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 17 ","【6期免息】","高通骁龙 865 | UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 120 Hz尝鲜模式 | 4500 mAh超大电池 30W有线快充","3699","331.36","全网通公开版","AG星际灰","8+128GB","/phone_title/mz17x.jpg","高通骁龙865","6.6英寸","2000万","6400+1600+800万","AI人脸识别解锁","屏下光学指纹","4500mAh","魅族","77.2mm*160mm*8.5mm","199g","2000000:1","2340 x 1080","390","700nit（典型值）1100nit（单点亮度）","On-Cell 全贴合","8GB","128GB<br>256GB","Qualcomm® 骁龙™ 865+X55 8 核心移动平台","Adreno™ 660 图形处理器",1);
INSERT INTO mz_phone VALUES(NULL,"魅族 17 ","【6期免息】","高通骁龙 865 | UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 120 Hz尝鲜模式 | 4500 mAh超大电池 30W有线快充","3699","331.36","全网通公开版","AG原野绿","8+128GB","/phone_title/mz17l.jpg","高通骁龙865","6.6英寸","2000万","6400+1600+800万","AI人脸识别解锁","屏下光学指纹","4500mAh","魅族","77.2mm*160mm*8.5mm","199g","2000000:1","2340 x 1080","390","700nit（典型值）1100nit（单点亮度）","On-Cell 全贴合","8GB","128GB<br>256GB","Qualcomm® 骁龙™ 865+X55 8 核心移动平台","Adreno™ 660 图形处理器",1);


/* 插入首页轮播图 */
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/5d45251f-f8fb-42e3-9eb5-3a356a063261.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/36bff2b0-b12e-45f9-873e-ab12d062550d.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/48705308-ff92-4fab-ab77-785f6e2aebef.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/93629669-b757-40f3-962b-d45076dd131d.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/4cdb8279-9a05-4c41-99ae-774447ab9b19.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/c4570672-2bad-477b-b408-d99fe484dba5.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/70c9c38b-9777-4860-bb69-87844741d013.jpg");
INSERT INTO mz_index_swipe VALUES(NULL,"/index_Swipe/70c9c38b-9777-4860-bb69-87844741d013.jpg");

