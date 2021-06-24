# ww_flutter_dialog
Flutter弹窗，基本覆盖项目中所有实际场景，包含：顶部弹窗、中间弹窗、底部弹窗，标题、内容、按钮等都支持高度自定义～

## 文件介绍
### ww_dialog.dart
弹窗主要调用类，主要包含：`WWDialog.showTopDialog`、`WWDialog.showMiddleDialog`、`WWDialog.showBottomDialog`

![all](https://user-images.githubusercontent.com/12085000/123232444-be5c2b00-d50b-11eb-913b-78a3fbd7ebd1.png)

##### 顶部弹窗调用： WWDialog.showTopDialog
支持自定义配置背景颜色、字体大小、颜色、统一回调、自定义按钮、单独回调、是否带三角标志、任意位置等～
```
 WWDialog.showTopDialog(
                  context,
                  dialogWidth: 100,
                  triangleType: DiaLogTriangleType.right,
                  bgColor: Color.fromRGBO(0, 0, 0, 0.8),
                  contentColor: Colors.white,
                  contentFontSize: 14,
                  listDatasource: [
                    TopDialogItemData('推荐1', '111'),
                    TopDialogItemData('推荐2', '222'),
                    TopDialogItemData('推荐3', '333'),
                    TopDialogItemData('推荐4', '444'),
                    TopDialogItemData('推荐5', '555'),
                    TopDialogItemData('推荐6', '666'),
                    TopDialogItemData('推荐7', '777')
                  ],
                  onTap: (TopDialogItemData item) {
                    print('点击内容：text:${item.name}, id:${item.id}');
                  }
              );
```
部分展示效果：

![top1](https://user-images.githubusercontent.com/12085000/123232133-70472780-d50b-11eb-9c97-de56630a0af3.png)
![top2](https://user-images.githubusercontent.com/12085000/123232155-73daae80-d50b-11eb-88e4-27019e9d33fe.png)
![top3](https://user-images.githubusercontent.com/12085000/123232222-8523bb00-d50b-11eb-8c6f-99042e6c8f51.png)







