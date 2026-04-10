.class Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$1;
.super Ljava/lang/Object;
.source "SCOpenShopFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 81
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment$1;->this$0:Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;

    invoke-virtual {v0}, Lcom/ayma/commonerp/ui/fragment/sellcounter/openshop/SCOpenShopFragment;->hideSoftKeyboard()V

    return-void
.end method
