@Entry
@Component
struct Index {
  @State list: string[] = []
  @State text: string = ''

  build() {
    Column() {
      Text('弹幕Demo')
        .fontSize(24)
        .margin({ top: 30 })

      List() {
        ForEach(this.list, (item: string) => {
          ListItem() {
            Text(item)
              .fontSize(18)
              .fontColor(Color.White)
              .backgroundColor(Color.Red)
              .padding(10)
              .borderRadius(20)
          }
          .margin({ top: 10 })
        })
      }
      .height(350)
      .width('100%')

      Row() {
        TextInput({ placeholder: '输入弹幕' })
          .width(200)
          .onChange((v: string) => {
            this.text = v
          })

        Button('发送')
          .onClick(() => {
            if (this.text !== '') {
              this.list.unshift(this.text)
              this.text = ''
            }
          })
      }
      .margin({ top: 20 })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#eeeeee')
  }
}