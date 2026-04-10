.class Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$3;
.super Ljava/lang/Object;
.source "OnlineRefundSimpleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;->onBackPress()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$3;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    iget-object p1, p0, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment$3;->this$0:Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;

    invoke-virtual {p1}, Lcom/ayma/commonerp/ui/fragment/onlinerefundsimple/OnlineRefundSimpleFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method
