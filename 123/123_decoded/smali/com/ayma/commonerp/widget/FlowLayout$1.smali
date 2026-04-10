.class Lcom/ayma/commonerp/widget/FlowLayout$1;
.super Ljava/lang/Object;
.source "FlowLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ayma/commonerp/widget/FlowLayout;->lambda$initData$0(Ljava/util/List;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ayma/commonerp/widget/FlowLayout;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/ayma/commonerp/widget/FlowLayout;Ljava/util/List;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/ayma/commonerp/widget/FlowLayout$1;->this$0:Lcom/ayma/commonerp/widget/FlowLayout;

    iput-object p2, p0, Lcom/ayma/commonerp/widget/FlowLayout$1;->val$list:Ljava/util/List;

    iput p3, p0, Lcom/ayma/commonerp/widget/FlowLayout$1;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/ayma/commonerp/widget/FlowLayout$1;->this$0:Lcom/ayma/commonerp/widget/FlowLayout;

    iget-object p2, p0, Lcom/ayma/commonerp/widget/FlowLayout$1;->val$list:Ljava/util/List;

    iget v0, p0, Lcom/ayma/commonerp/widget/FlowLayout$1;->val$number:I

    invoke-virtual {p1, p2, v0}, Lcom/ayma/commonerp/widget/FlowLayout;->delItem(Ljava/util/List;I)V

    return-void
.end method
