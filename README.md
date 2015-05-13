# GIF

### FLAnimatedImage 
兼容性好，如果项目中同时使用其他第三方框架建议使用，因为只需要在需要支持GIF图的代码中使用此框架的Image和ImageView相关方法即可
### YLGIFImage 
网络下载图片慢适合使用本地图或结合相关网络请求框架使用（如：AFNetworking)
### AnimatedGIFImageSerialization
因其重写了UIImage相关方法，使用方便，只需要将头文件引入即可使UIImage支持GIF，还可以将数据序列化为NSData，但缺点是引入此框架后会将整个项目的UIImage方法替换为提重写后的方法，有可能与其他代码产生冲突
### OLImageView 
与 AFNetworking兼容与YLImageView冲突
