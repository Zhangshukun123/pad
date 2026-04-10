.class Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$4;
.super Ljava/lang/Object;
.source "SelectGoodsActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity$4;->this$0:Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->etSearchCondition:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/selectgoods/SelectGoodsActivity;->hideSoftKeyboard(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
