# GIF


一些开源GIF项目也都是使用第一种方式实现的，GitHub上有几个star较多的项目，对几个比较受欢迎的项目简单做了一下对比：

* [`FLAnimatedImage`](https://github.com/Flipboard/FLAnimatedImage) 

Flipboard团队出品，一直在维护。特点是兼容性好，如果项目中同时使用其他第三方框架建议使用，不用担心冲突问题，因为只需要在需要支持GIF图的代码中使用此框架的Image和ImageView相关方法即可，不会影响其他代码。

* [`AnimatedGIFImageSerialization`](https://github.com/mattt/AnimatedGIFImageSerialization)

出自著名的AFNetworking作者mattt大神之手，与AFN一样，因其重写了UIImage相关方法，使用方便，只需要将头文件引入即可使UIImage支持GIF，还可以将数据序列化为NSData，但缺点是引入此框架后会将整个项目的UIImage方法替换为提重写后的方法，有可能与其他代码产生冲突。

* [`SDWebImage 的 UIImage+GIF`](https://github.com/rs/SDWebImage)

特点是简单易用，在需要支持GIF的位置加上一个方法即可，不必担心冲突。

* YLGIFImage 

网络下载图片慢适合使用本地图或结合相关网络请求框架使用（如：AFNetworking)

* OLImageView 

与 AFNetworking兼容与YLImageView冲突
