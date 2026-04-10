.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$2;
.super Ljava/lang/Object;
.source "GoodsOptionActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$2;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iget-object p2, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->etSearchGoods:Lcom/ayma/base/widget/ClearEditText;

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->hideSoftKeyboard(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
