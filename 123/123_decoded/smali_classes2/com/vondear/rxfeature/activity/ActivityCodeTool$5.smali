.class Lcom/vondear/rxfeature/activity/ActivityCodeTool$5;
.super Ljava/lang/Object;
.source "ActivityCodeTool.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vondear/rxfeature/activity/ActivityCodeTool;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;


# direct methods
.method constructor <init>(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$5;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$5;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$900(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$5;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-static {p1}, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->access$800(Lcom/vondear/rxfeature/activity/ActivityCodeTool;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
