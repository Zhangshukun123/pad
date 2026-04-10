.class Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->quickHandover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)V
    .locals 0

    .line 441
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 445
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$200(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 449
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const-string v0, "\u8bf7\u8f93\u5165\u8981\u63a5\u8d27\u8f66\u6b21"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    invoke-static {v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->access$100(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 455
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const-string v0, "\u8bf7\u9009\u62e9\u63a5\u8d27\u8f66\u6b21\u51fa\u4e58\u65e5\u671f"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showToast(Ljava/lang/String;)V

    return-void

    .line 458
    :cond_2
    iget-object v1, p0, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;->this$0:Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 459
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string v3, "\u5373\u5c06\u5bf9\u63a5\u8d27\u4ea4\u8def%s(%s)\u8fdb\u884c\u5feb\u901f\u4ea4\u63a5\uff0c\u8bf7\u786e\u8ba4\u662f\u5426\u7ee7\u7eed"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v7, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;

    invoke-direct {v7, p0, p1, v0}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5$1;-><init>(Lcom/ayma/commonerp/ui/activity/menu/MenuActivity$5;Landroid/text/Editable;Ljava/lang/CharSequence;)V

    const-string v2, ""

    const-string v4, "\u53d6\u6d88"

    const-string v6, "\u7ee7\u7eed"

    .line 458
    invoke-virtual/range {v1 .. v7}, Lcom/ayma/commonerp/ui/activity/menu/MenuActivity;->showAlert(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
