.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$1;
.super Ljava/lang/Object;
.source "Sell12306Activity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 103
    :pswitch_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->selectOption(I)V

    goto :goto_0

    .line 100
    :pswitch_1
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$1;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Presenter;->selectOption(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0801e5
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
