import 'package:flutter/material.dart';
import 'package:ww_dialog/ww_dialog.dart';
import 'package:ww_dialog/ww_top_dialog_item_data.dart';

var colorX = Color(0XFFD8D8D8);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dialog Demo1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Dialog Demo2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List listDatasource = [
    'Top弹窗 - 左边箭头',
    'Top弹窗 - 中间箭头',
    'Top弹窗 - 右边箭头',
    'Top弹窗 - 无箭头',
    'Top弹窗 - 每个内容带回调',
    'Top弹窗 - 自定义内容',
    'Middle弹窗 - 行 - 默认按钮',
    'Middle弹窗 - 行 - 自定义按钮',
    'Middle弹窗 - 列 - 默认按钮',
    'Middle弹窗 - 列 -  自定义按钮',
    'Bottom弹窗 - 系统弹窗',
    'Bottom弹窗 - 选择弹窗1',
    'Bottom弹窗 - 选择弹窗2'
  ];

  // 自定义方法
  Widget _getListDatasource(context,index) {
    double screenW = MediaQuery.of(context).size.width; // 屏幕的宽度
    return Column(
      children: [
        ListTile(
          title: Text(listDatasource[index]),
          onTap: (){
            if(listDatasource[index] == 'Top弹窗 - 左边箭头') {
              WWDialog.showTopDialog(
                  context,
                  dialogWidth: 100,
                  rightMargin: screenW - 120,
                  topMargin: 30,
                  triangleType: DiaLogTriangleType.left,
                  bgColor: Color.fromRGBO(0, 0, 0, 0.8),
                  contentColor: Colors.white,
                  contentFontSize: 14,
                  listDatasource: [
                    TopDialogItemData('推荐1', '111'),
                    TopDialogItemData('推荐2', '222'),
                    TopDialogItemData('推荐3', '333')
                  ],
                  onTap: (TopDialogItemData item) {
                    print('点击内容：text:${item.name}, id:${item.id}');
                  }
              );

            }else if(listDatasource[index] == 'Top弹窗 - 中间箭头') {
              WWDialog.showTopDialog(
                  context,
                  dialogWidth: 150,
                  rightMargin: 200,
                  topMargin: 300,
                  triangleType: DiaLogTriangleType.middle,
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

            }else if(listDatasource[index] == 'Top弹窗 - 右边箭头') {
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

            }else if(listDatasource[index] == 'Top弹窗 - 无箭头') {
              WWDialog.showTopDialog(
                  context,
                  barrierColor: Colors.transparent,
                  dialogWidth: 160,
                  topMargin: 30,
                  triangleType: DiaLogTriangleType.none,
                  contentAlign: TextAlign.left,
                  contentFontSize: 15,
                  lineColor: colorX,
                  listDatasource: [
                    TopDialogItemData('北京', '1'),
                    TopDialogItemData('上海', '2'),
                    TopDialogItemData('深圳', '3'),
                    TopDialogItemData('广州', '4'),
                    TopDialogItemData('杭州', '5'),
                    TopDialogItemData('成都', '6'),
                    TopDialogItemData('重庆', '7'),
                    TopDialogItemData('武汉', '8'),
                    TopDialogItemData('佛山', '9'),
                    TopDialogItemData('苏州', '10')
                  ],
                  onTap: (TopDialogItemData item) {
                    print('点击内容：text:${item.name}, id:${item.id}');
                  }
              );

            }else if(listDatasource[index] == 'Top弹窗 - 每个内容带回调') {
              WWDialog.showTopDialog(
                  context,
                  barrierColor: Colors.transparent,
                  dialogWidth: 100,
                  rightMargin: 20,
                  topMargin: 70,
                  triangleType: DiaLogTriangleType.none,
                  lineColor: colorX,
                  customListDatasource: [
                    defaultContentButton(context, '增',onTap: (){
                      print('点击了增啊...');
                    }),
                    defaultContentButton(context, '删',onTap: (){
                      print('点击了删啊...');
                    }),
                    defaultContentButton(context, '改',onTap: (){
                      print('点击了改啊...');
                    }),
                    defaultContentButton(context, '查',onTap: (){
                      print('点击了查啊...');
                    }),
                  ]
              );

            }else if(listDatasource[index] == 'Top弹窗 - 自定义内容') {
              WWDialog.showTopDialog(
                  context,
                  barrierColor: Colors.transparent,
                  dialogWidth: 150,
                  rightMargin: 20,
                  topMargin: 70,
                  triangleType: DiaLogTriangleType.none,
                  lineColor: colorX,
                  customContentWidget: Container(
                    color: Colors.greenAccent,
                    height: 200,
                    child: Center(
                        child: Text('custom Widget')
                    ),
                  )
              );

            }else if(listDatasource[index] == 'Middle弹窗 - 行 - 默认按钮') {
              WWDialog.showMiddleDialog(
                  context,
                  title: '新版本上线啦～',
                  content: '本次更新的功能为：\n'
                      '1. 新增地图模块\n'
                      '2. 新增一键登录\n'
                      '3. 修改已知BUG，提升用户体验',
                  contentAlign: TextAlign.left,
                  buttons: ['去更新'],
                  cancelButtonColor: colorWithQ,
                  cancelButtonFontWeight:FontWeight.w500,
                  isNeedCloseDiaLog: false,
                  isShowCloseButton: true
              );

            }else if(listDatasource[index] == 'Middle弹窗 - 行 - 自定义按钮') {
              WWDialog.showMiddleDialog(
                context,
                title: '我是弹窗标题',
                content: '我是自定义弹窗的内容：我有一头小毛驴，我从来也不骑，有一天我心血来潮骑他去赶集...',
                customWidgetButtons:[
                  defaultCustomButton(context,text: '取消',textColor: colorWithHex9,fontWeight: FontWeight.w400),
                  TextButton(
                      onPressed: (){
                        print('点击了自定义按钮...');
                      },
                      child: Text('Custom Button', style: TextStyle(color:  Colors.pinkAccent))
                  )
                ],
              );

            }else if(listDatasource[index] == 'Middle弹窗 - 列 - 默认按钮') {
              WWDialog.showMiddleDialog(
                  context,
                  title: '我是弹窗标题',
                  content: '我是自定义弹窗的内容：我有一头小毛驴，我从来也不骑，有一天我心血来潮骑他去赶集...',
                  buttons: ['默认按钮1','默认按钮2','默认按钮3'],
                  arrangeType: buttonArrangeType.column,
                  onTap: (index, context) {
                    print('点击弹窗按钮索引：$index');
                  }
              );

            }else if(listDatasource[index] == 'Middle弹窗 - 列 -  自定义按钮') {
              WWDialog.showMiddleDialog(
                  context,
                  title: '我是弹窗标题',
                  content: '我是自定义弹窗的内容：我有一头小毛驴，我从来也不骑，有一天我心血来潮骑他去赶集...',
                  customWidgetButtons: [
                    defaultCustomButton(context,text: '默认按钮1'),
                    defaultCustomButton(context,text: '默认按钮2'),
                    TextButton(
                        onPressed: (){
                          print('点击了自定义按钮...');
                        },
                        child: Text('Custom Button', style: TextStyle(color:  Colors.pinkAccent))
                    ),
                  ],
                  arrangeType: buttonArrangeType.column,
                  onTap:(index, context) {
                    Navigator.pop(context);
                    print('点击弹窗按钮索引：$index');
                  }
              );

            }else if(listDatasource[index] == 'Bottom弹窗 - 系统弹窗') {
              WWDialog.showBottomDialog(
                  context,
                  content: '确认删除该条信息吗？',
                  contentColor: colorWithHex9,
                  contentFontSize:13.0,
                  location: DiaLogLocation.bottom,
                  arrangeType: buttonArrangeType.column,
                  buttons: ['默认按钮1','默认按钮2'],
                  otherButtonFontSize: 20.0,
                  otherButtonFontWeight:FontWeight.w400
              );

            }else if(listDatasource[index] == 'Bottom弹窗 - 选择弹窗1') {
              WWDialog.showBottomDialog(
                  context,
                  customTitleWidget: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              '选择单车类型',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: colorWithHex12,
                                  fontSize: 14.0
                              ),
                            )
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              child: Text('取消',style: TextStyle(color: colorWithHex9, fontSize: 14.0)),
                              onTap: () {
                                print('点击了取消按钮');
                                Navigator.pop(context);
                              },
                            )
                        ),
                        Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              child: Text('确认',style: TextStyle(color: colorWithQ, fontSize: 14.0, fontWeight: FontWeight.w500)),
                              onTap: () {
                                print('点击了确认按钮');
                                Navigator.pop(context);
                              },
                            )
                        )
                      ],
                    ),
                  ),
                  customContentWidget: Container(
                    color: Colors.pinkAccent,
                    height: 300,
                  ),
                  isSystemBottomDialog: false,
                  location: DiaLogLocation.bottom
              );

            }else if(listDatasource[index] == 'Bottom弹窗 - 选择弹窗2') {
              WWDialog.showBottomDialog(
                  context,
                  title: '拜访目的',
                  customContentWidget: Container(
                    color: Colors.pinkAccent,
                    height: 300,
                  ),
                  titleFontSize: 18.0,
                  location: DiaLogLocation.bottom,
                  buttons: ['取消','确认'],
                  isSystemBottomDialog: false
              );
            }

          },
        ),
        Container(
          color: Colors.grey,
          width: double.infinity,
          height: 1.0,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Dialog Demo',style:TextStyle(color: Colors.black87, fontSize: 17.0,fontWeight: FontWeight.w500)),
      ),
      body: Container(
          child: ListView.builder(
            itemCount: listDatasource.length,
            itemBuilder: this._getListDatasource,
          )
      ),
    );
  }

}
