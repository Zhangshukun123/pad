.class Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$2;
.super Ljava/lang/Object;
.source "Sell12306Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->onBtnRightClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity$2;->this$0:Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;

    iget-object p1, p1, Lcom/ayma/commonerp/ui/activity/sell12306/Sell12306Activity;->tvRight:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
