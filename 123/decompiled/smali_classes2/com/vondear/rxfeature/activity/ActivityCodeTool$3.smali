.class Lcom/vondear/rxfeature/activity/ActivityCodeTool$3;
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

    .line 176
    iput-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$3;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/vondear/rxfeature/activity/ActivityCodeTool$3;->this$0:Lcom/vondear/rxfeature/activity/ActivityCodeTool;

    iget-object p1, p1, Lcom/vondear/rxfeature/activity/ActivityCodeTool;->mContext:Lcom/vondear/rxui/activity/ActivityBase;

    const-class v0, Lcom/vondear/rxfeature/activity/ActivityScanerCode;

    invoke-static {p1, v0}, Lcom/vondear/rxtool/RxActivityTool;->skipActivity(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
