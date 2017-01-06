# raspberry_ip

树莓派是极客的最爱，做点儿原型、小制作什么的是极好的。不过，想找到树莓派的IP地址总是有点儿不方便。这个项目可以快速获取树莓派的IP地址, No显示器, No串口, No外网访问, No DDNS, No扫描, 只需要一只小小的耳机, 让树莓派自己招出IP。

![Raspberry PI](https://github.com/yrjyrj123/image/raw/master/raspberry_pi.jpeg)

##传统获取IP地址的方法
* 连接显示器：需要显示器、键盘、鼠标，有时候还需要HDMI转VGA(烧过树莓派HDMI接口的默默面壁去)
* 串口：需要USB转串口线
* 查看路由器：有时你根本没有这个权限啊
* 扫描：万一有好几个树莓派。。。
* DDNS：必须能连接外网，而且免费的DDNS也不太稳定

##新方法的原理
一句话，利用树莓派的耳机接口，将IP地址“说”出来。

##如何使用
1. 一行搞定安装：

		curl -sSL https://raw.githubusercontent.com/yrjyrj123/raspberry_ip/master/install.sh | bash

	curl神器居然没安装的同志请自行安装：

		sudo apt-get install curl
	
	脚本里需要的其他命令**raspbian**都自带了，其他发行版估计也差不多，如果缺少什么请自行安装。
2. 插上耳机和网线，等着听美女报出IP地址。如果是169.254.xxx.xxx，请耐心，让DHCP飞一会儿。
3. 成功得到IP地址后，播放声音还是蛮消耗树莓派资源的，请及时停止播报IP。

		sudo service raspberry_ip stop

4. Enjoy it.