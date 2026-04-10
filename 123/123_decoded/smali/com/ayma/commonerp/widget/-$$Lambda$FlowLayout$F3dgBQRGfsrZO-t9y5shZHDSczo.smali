.class public final synthetic Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/ayma/commonerp/widget/FlowLayout;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/ayma/commonerp/widget/FlowLayout;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;->f$0:Lcom/ayma/commonerp/widget/FlowLayout;

    iput-object p2, p0, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;->f$0:Lcom/ayma/commonerp/widget/FlowLayout;

    iget-object v1, p0, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/ayma/commonerp/widget/-$$Lambda$FlowLayout$F3dgBQRGfsrZO-t9y5shZHDSczo;->f$2:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/ayma/commonerp/widget/FlowLayout;->lambda$initData$0$FlowLayout(Ljava/util/List;ILandroid/view/View;)V

    return-void
.end method
