.class Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;
.super Ljava/lang/Object;
.source "OnlinePayActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    const-string p1, ""

    goto :goto_0

    .line 308
    :pswitch_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->llCode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbWechatPay:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u5fae\u4fe1\u652f\u4ed8"

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->llCode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbUnionPay:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u4e91\u95ea\u4ed8\u652f\u4ed8"

    goto :goto_0

    .line 318
    :pswitch_2
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->llCode:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbJD:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u4eac\u4e1c\u652f\u4ed8"

    goto :goto_0

    .line 303
    :pswitch_3
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->llCode:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->rbAliPay:Landroid/widget/RadioButton;

    invoke-virtual {p2}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->access$202(Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "\u652f\u4ed8\u5b9d\u652f\u4ed8"

    .line 323
    :goto_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/onlinepay/OnlinePayActivity;->btnPay:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800d5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
