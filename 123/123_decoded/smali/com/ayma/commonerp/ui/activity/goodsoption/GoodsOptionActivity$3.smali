.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$3;
.super Ljava/lang/Object;
.source "GoodsOptionActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 104
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 112
    iget-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$3;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p2, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->filterGoods(Ljava/lang/String;)V

    return-void
.end method
