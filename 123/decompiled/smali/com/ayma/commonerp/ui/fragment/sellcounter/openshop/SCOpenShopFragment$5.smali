.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$5;
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

    .line 155
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$5;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$5;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->openShop()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
