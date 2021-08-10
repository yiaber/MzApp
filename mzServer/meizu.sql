SET names UTF8;
DROP DATABASE IF EXISTS mz;
CREATE DATABASE mz CHARSET=UTF8;
USE mz;

/**产品分类**/
CREATE TABLE mz_laptop_family(
    fid INT PRIMARY KEY AUTO_INCREMENT,  #编号
    fname VARCHAR(16) #名称
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
    phone_title VARCHAR(128),  #标题图片
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
    gpu VARCHAR(32)  #GPU
);

/*插入手机信息*/
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','4999','416.58','全网通公开版','飞雪流光','8+128GB','./public/phone_title/Cgbj0WA-HaGAfAzXAAaBocwqRik813.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','5499','458.25','全网通公开版','飞雪流光','8+256GB','./public/phone_title/Cgbj0WA-HaGAfAzXAAaBocwqRik813.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','5999','499.91','全网通公开版','飞雪流光','12+256GB','./public/phone_title/Cgbj0WA-HaGAfAzXAAaBocwqRik813.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','4999','416.58','全网通公开版','苍穹浩瀚','8+128GB','./public/phone_title/Cgbj0WA-HdCADVhiAAa-BfxJnPM808.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','5499','458.25','全网通公开版','苍穹浩瀚','8+256GB','./public/phone_title/Cgbj0WA-HdCADVhiAAa-BfxJnPM808.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','5999','499.91','全网通公开版','苍穹浩瀚','12+256GB','./public/phone_title/Cgbj0WA-HdCADVhiAAa-BfxJnPM808.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','4999','416.58','全网通公开版','银河秘境','8+128GB','./public/phone_title/Cgbj0GBG0l6AY4k5AAW4DOkGdhc894.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','5499','458.25','全网通公开版','银河秘境','8+256GB','./public/phone_title/Cgbj0GBG0l6AY4k5AAW4DOkGdhc894.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');
INSERT INTO mz_phone VALUES(NULL,'魅族 18 Pro','【限时领券至高立省800 | 12期免息 | 赠手机壳】','骁龙 888 | Flyme 9 隐私安全系统 全面隐私防护 真正安全体验 ｜ 三星 GN1 5000万像素 | 记忆金属光学防抖｜ 2K+ 120帧 6.7英寸微弧柔性屏 | 超声波屏下指纹解锁 0.1s湿手解锁 | 防尘防水 安全保护 | 4500mAh大电池','5999','499.91','全网通公开版','银河秘境','12+256GB','./public/phone_title/Cgbj0GBG0l6AY4k5AAW4DOkGdhc894.png240x240.jpg','高通骁龙888','6.7英寸','4400万','5000+3200+800+30万','AI人脸识别解锁','超声波指纹','4500mAh','魅族','162.5*73*8.1mn','189g','5000000:1','3200 x 1440','526','1300nit（局部峰值亮度）','On-Cell 全贴合','8GB/12GB','128GB<br>256GB','Qualcomm® 骁龙™ 888 + X60 8 核心移动平台','Adreno™ 660 图形处理器');




/* 插入产品分类 */
INSERT INTO mz_laptop_family VALUES(NULL,'手机');
INSERT INTO mz_laptop_family VALUES(NULL,'Lipro');
INSERT INTO mz_laptop_family VALUES(NULL,'声学');
INSERT INTO mz_laptop_family VALUES(NULL,'配件');
INSERT INTO mz_laptop_family VALUES(NULL,'生活');