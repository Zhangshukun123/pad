.class Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$2;
.super Ljava/lang/Object;
.source "QuerySellGetMoneyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->showEditToOnlineMoney(Ljava/lang/String;Ljava/lang/String;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$2;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
