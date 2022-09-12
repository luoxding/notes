---
title: TimeZone
create time : 2022-09-01 11:03
modification date: 星期四 1日 九月 2022 11:04:19
---

## 修改记录

- 修改系统时间

```yml
- name: Set Timezone
  uses: szenius/set-timezone@v1.0
  with:
	timezoneLinux: "Asia/Shanghai"
```

```yml
      - name: Set Timezone
        uses: szenius/set-timezone@v1.0
        with:
          timezoneLinux: "Asia/Shanghai"
```
