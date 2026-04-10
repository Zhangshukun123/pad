.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;
.super Ljava/lang/Object;
.source "SCOpenShopFragment.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 129
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    const-string p2, "\u8bf7\u8f93\u5165\u59cb\u53d1\u8f66\u6b21"

    invoke-virtual {p1, p2}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object p2, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$3;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object p2, p2, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etFirstOutTrain:Landroid/widget/EditText;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return p3
.end method
