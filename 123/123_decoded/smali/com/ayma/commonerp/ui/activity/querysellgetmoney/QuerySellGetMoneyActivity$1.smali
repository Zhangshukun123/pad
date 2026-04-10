.class Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$1;
.super Ljava/lang/Object;
.source "QuerySellGetMoneyActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 196
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/querysellgetmoney/QuerySellGetMoneyActivity;->btnRegetData:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method
