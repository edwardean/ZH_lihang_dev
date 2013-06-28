李航iOS学习进度&仓库说明
===
* master分支为UIView相关内容CustomFrame分支下为28号自定义frame相关属性内容
* 
Date 2013/6/28
---

刷新自对象布局
===
layoutSubViews 需要子类进行重写
setNeedsLayout 标记为要重新刷新，但layoutSunviews一定会调用
layoutifNeeded 有需要刷新的标记则立即调用layoutSubViews进行布局

layoutSubviews在一下情况会被调用
---

1、init初始化不会触发layoutSubviews

2、addSubview会触发layoutSubviews

3、设置view的Frame会触发layoutSubviews，当然前提是frame的值设置前后发生了变化

4、滚动一个UIScrollView会触发layoutSubviews

5、旋转Screen会触发父UIView上的layoutSubviews事件

6、改变一个UIView大小的时候也会触发父UIView上的layoutSubviews事件


setNeedsLayout
---


layoutIfNeeded
---

