.class Lcom/chockqiu/libflextags/view/FlexTags$1;
.super Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;
.source "FlexTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chockqiu/libflextags/view/FlexTags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chockqiu/libflextags/view/FlexTags;


# direct methods
.method constructor <init>(Lcom/chockqiu/libflextags/view/FlexTags;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/chockqiu/libflextags/view/FlexTags$AdapterDataObserver;-><init>(Lcom/chockqiu/libflextags/view/FlexTags$1;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onChanged$0$FlexTags$1()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-static {v0}, Lcom/chockqiu/libflextags/view/FlexTags;->access$100(Lcom/chockqiu/libflextags/view/FlexTags;)Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-virtual {v0}, Lcom/chockqiu/libflextags/view/FlexTags;->removeAllViews()V

    .line 34
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-static {v0}, Lcom/chockqiu/libflextags/view/FlexTags;->access$100(Lcom/chockqiu/libflextags/view/FlexTags;)Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-static {v2}, Lcom/chockqiu/libflextags/view/FlexTags;->access$100(Lcom/chockqiu/libflextags/view/FlexTags;)Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-virtual {v2, v3}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    iget-object v3, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-static {v3}, Lcom/chockqiu/libflextags/view/FlexTags;->access$100(Lcom/chockqiu/libflextags/view/FlexTags;)Lcom/chockqiu/libflextags/view/FlexTags$Adapter;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/chockqiu/libflextags/view/FlexTags$Adapter;->onBindView(Landroid/view/View;I)V

    .line 38
    iget-object v3, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    invoke-virtual {v3, v2}, Lcom/chockqiu/libflextags/view/FlexTags;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChanged()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/chockqiu/libflextags/view/FlexTags$1;->this$0:Lcom/chockqiu/libflextags/view/FlexTags;

    new-instance v1, Lcom/chockqiu/libflextags/view/-$$Lambda$FlexTags$1$89SP22WP2n0TuouUwexD56Nu4k0;

    invoke-direct {v1, p0}, Lcom/chockqiu/libflextags/view/-$$Lambda$FlexTags$1$89SP22WP2n0TuouUwexD56Nu4k0;-><init>(Lcom/chockqiu/libflextags/view/FlexTags$1;)V

    invoke-virtual {v0, v1}, Lcom/chockqiu/libflextags/view/FlexTags;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
