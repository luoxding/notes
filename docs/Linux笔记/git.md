---
locale: zh
---

## Git应用


```bash
git checkout -b main
# Switched to a new branch 'main'
git branch
# * main
#  master
git merge master # 将master分支合并到main上
# Already up to date.
git pull origin main --allow-unrelated-histories # git pull origin main会报错：refusing to merge unrelated histories
git push origin main

# 到github设置默认分支为main

#删除master
#删除本地master：

git branch -d master
#删除远程master：

git push origin :master
#这样就算成功迁移到main分支了。
```

```bash
add-apt-repository ppa:git-core/ppa
apt update
apt-get install git
#更新完成
```

## [GitHub](https://so.csdn.net/so/search?q=GitHub&spm=1001.2101.3001.7020)删除本地分支

查看本地分支：  
前面带有*号的是当前分支

```bash
git branch
```

删除本地已合并的分支或者没有新改动的分支：

```bash
git branch -d [branchname]
```

强行删除分支：

```bash
git branch -D [branchName]
```

**注意：**  
你是无法删除当前所在的分支的，因此，通常需要先切换到其他分支上：  
如果切换的分支已存在，就切换上去，否则就重新创建一个分支并切换上去

```bash
git checkedout [branchName]
```

## GitHub删除远程分支

远程分支就是GitHub上创建的分支。  
删除远程分支其实是用push：  
**注意：**  
删除远程分支并不会删除本地分支

```bash
git push origin --delete [branchname]
```

清理本地无效分支(远程已删除本地没删除的分支):

```bash
git fetch -p
```

文章知识点与官方知识档案匹配
