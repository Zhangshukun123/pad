.class Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;
.super Ljava/lang/Object;
.source "GoodsOptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->editOnlineQty(Lcom/ayma/commonerp/bean/GoodsOptionBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

.field final synthetic val$bean:Lcom/ayma/commonerp/bean/GoodsOptionBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;Lcom/ayma/commonerp/bean/GoodsOptionBean;I)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iput-object p2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->val$bean:Lcom/ayma/commonerp/bean/GoodsOptionBean;

    iput p3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 213
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->antiShakeAutoRemove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 217
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-static {p1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->access$300(Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 218
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 223
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->presenter:Lcom/ayma/base/mvp/MvpBasePresenter;

    check-cast p1, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;

    iget-object v2, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->val$bean:Lcom/ayma/commonerp/bean/GoodsOptionBean;

    iget v3, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->val$position:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionPresenter;->updateOnlineQty(DLcom/ayma/commonerp/bean/GoodsOptionBean;I)V

    goto :goto_1

    .line 219
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    const-string v0, "\u8bf7\u8f93\u5165\u4e0a\u67b6\u6570\u91cf"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->showNoticeToastError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 225
    iget-object v0, p0, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity$7;->this$0:Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ayma/commonerp/ui/activity/goodsoption/GoodsOptionActivity;->showNoticeToastError(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
