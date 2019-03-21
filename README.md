
介绍  
==
    YApi 是一个可本地部署的、打通前后端及QA的、可视化的接口管理平台（官网：https://yapi.ymfe.org;  demo地址：http://yapi.demo.qunar.com/）。
本docker可自动化部署YApi。  

自行更新最新的YApi版本  
===================
    目前打包的是最新版本 1.5.7。用户可自行用下面命令克隆具体版本替换yapi目录  
    #先查看官方最新版本tag（最新的位于最下方）  
    git ls-remote --tags https://github.com/YMFE/yapi.git  
    #进入docker-yapi目录，并重命名yapi目录  
    cd docker-yapi  
    mv yapi yapi_old  
    #拉取最新版本到本地（假设最新版还是1.5.7）  
    git clone --branch v1.5.7 --depth 1 https://github.com/YMFE/yapi.git   
    
启动  
===
    cd docker-yapi  
    docker-compose up -d  

停止  
===
    docker-compose down  

登录信息  
======
    访问地址：http://localhost:3000  
    用户名：admin@yapi.com  
    密码： ymfe.org  
