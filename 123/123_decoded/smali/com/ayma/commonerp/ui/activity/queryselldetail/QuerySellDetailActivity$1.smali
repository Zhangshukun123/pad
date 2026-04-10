.class Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$1;
.super Ljava/lang/Object;
.source "QuerySellDetailActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity$1;->this$0:Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/queryselldetail/QuerySellDetailActivity;->btnRight:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->performClick()Z

    return-void
.end method
