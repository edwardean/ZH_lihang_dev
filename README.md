李航iOS学习进度&仓库说明
===
Date 2013/6/28
---

layoutSubviews在一下情况会被调用
---

1、init初始化不会触发layoutSubviews

2、addSubview会触发layoutSubviews

3、设置view的Frame会触发layoutSubviews，当然前提是frame的值设置前后发生了变化

4、滚动一个UIScrollView会触发layoutSubviews

5、旋转Screen会触发父UIView上的layoutSubviews事件

6、改变一个UIView大小的时候也会触发父UIView上的layoutSubviews事件

