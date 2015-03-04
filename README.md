# ABFramework
封装各种常用功能的库
库如果在真机上运行，需修改对应的证书，否则无法运行，如果还是不能运行且提示:image not found,
在使用该库的工程做如下设置：ATARGETS->General->Embedded Binaries 添加该库，如果之前已添加
过则先删除之前的库。注意：真机运行与模拟器运行的使用库不同.

- CustomUI            (自定义封装的一些常用控件)
  - ABLoadingView     (自定义loadingView)
- MVC                 (封装的MVC通用方法)
- Solution            (解决方案)
- Foundation	      (封装通用功能)
 - ABFoundation       (自定义通用功能类)
- UIKitExpand         (系统控件扩展)
- Vendor              (第三方库)
