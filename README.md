1、设置启动图启动需要修改AppConfig中配置：switchHasBackground = false 修改 AndroidManifest.xml中theme为AppThemeNoBackground
2、设置背景图启动需要修改AppConfig中配置：switchHasBackground = true 修改 AndroidManifest.xml中theme为AppThemeHasBackground

3、修改启动图以及背景在mipmap-xxhdpi中：icon为启动图标 screen为背景图
4、values中colors.xml下包含颜色配置