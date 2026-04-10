.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;
.super Ljava/lang/Object;
.source "SCOpenShopFragment.java"

# interfaces
.implements Lcom/ayma/commonerp/util/ScanUtil$ScanCallback;


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

    .line 88
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public success(Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    :try_start_0
    invoke-static {p1}, Lcom/ayma/commonerp/util/UrlUtil;->parse(Ljava/lang/String;)Lcom/ayma/commonerp/util/UrlUtil$UrlEntity;

    move-result-object p1

    .line 98
    iget-object p1, p1, Lcom/ayma/commonerp/util/UrlUtil$UrlEntity;->params:Ljava/util/Map;

    const-string v0, "c"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    const-string v0, "\u626b\u63cf\u7684\u4e8c\u7ef4\u7801\u4e0d\u5408\u89c4"

    invoke-virtual {p1, v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    return-void

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 106
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etTrainId:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$2;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    iget-object v0, v0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->etShopCode:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_4
    return-void
.end method
