.class Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;
.super Ljava/lang/Object;
.source "StockOutFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 186
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 188
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    const-string p3, "\u8bf7\u8f93\u5165\u8f66\u6b21"

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->showTipsOnTop(Ljava/lang/String;)V

    return p2

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment$3;->this$0:Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;

    iget-object p3, p1, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->etOutTrain:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Lcom/ayma/commonerp/ui/stock/fragment/stock/out/manager/StockOutFragment;->hideSoftKeyboard(Landroid/view/View;)V

    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
