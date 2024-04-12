# 笔记文件夹体系

```bash
#!/bin/bash

# 笔记根目录
ROOT_DIR="$HOME/Documents/Notes"

# 文件夹体系
Inbox=01-Inbox
Map=02-Map
Calendar=03-Calendar
Card=04-Card
MyNote=05-MyNote
KeyArea=06-KeyArea
Life=07-Life
Extras=08-Extras
Resource=09-Resource
Home=10-Home
# 创建笔记项目文件夹
if [ ! -d "$ROOT_DIR" ]; then
	  mkdir -p $ROOT_DIR
fi
# 创建笔记分类文件夹
mkdir -p $ROOT_DIR/$Inbox/{Draft,SimpRead}
mkdir -p $ROOT_DIR/$Map/{MOC,Logs,Dashboard}
mkdir -p $ROOT_DIR/$Calendar/{Daily,Weekly,Plans,Reviews,{2019..2023}/{Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec}}
mkdir -p $ROOT_DIR/$Card/{People,Time,Place,Movie,Reeding}
mkdir -p $ROOT_DIR/$MyNote/{Idea,MovieReview,BookReview,Permanent,Publish}
mkdir -p $ROOT_DIR/$KeyArea/{App,Linux/{Config,Scripts},LaTeX,Web}
mkdir -p $ROOT_DIR/$Life/{Study,Work,Family,Cost,Travel}
mkdir -p $ROOT_DIR/$Extras/{Attachements,Templaters}
mkdir -p $ROOT_DIR/$Resource/{Books,Articles,Office,Report,Research-Papers}
mkdir -p $ROOT_DIR/$Home/{index,fast}

# 在分类文件夹中创建笔记子文件夹

```
