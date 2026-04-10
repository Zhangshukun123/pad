.class public final Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;
.super Landroidx/navigation/NavDestinationBuilder;
.source "DynamicActivityNavigatorDestinationBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/navigation/NavDestinationBuilder<",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0017\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\"\u001a\u00020#H\u0016R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u0019\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\r\"\u0004\u0008\u001b\u0010\u000fR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\r\"\u0004\u0008\u001e\u0010\u000fR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\r\"\u0004\u0008!\u0010\u000f\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;",
        "Landroidx/navigation/NavDestinationBuilder;",
        "Landroidx/navigation/ActivityNavigator$Destination;",
        "activityNavigator",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;",
        "id",
        "",
        "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V",
        "route",
        "",
        "(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;Ljava/lang/String;)V",
        "action",
        "getAction",
        "()Ljava/lang/String;",
        "setAction",
        "(Ljava/lang/String;)V",
        "activityClassName",
        "getActivityClassName",
        "setActivityClassName",
        "data",
        "Landroid/net/Uri;",
        "getData",
        "()Landroid/net/Uri;",
        "setData",
        "(Landroid/net/Uri;)V",
        "dataPattern",
        "getDataPattern",
        "setDataPattern",
        "moduleName",
        "getModuleName",
        "setModuleName",
        "targetPackage",
        "getTargetPackage",
        "setTargetPackage",
        "build",
        "Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;",
        "navigation-dynamic-features-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private activityClassName:Ljava/lang/String;

.field private activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

.field private data:Landroid/net/Uri;

.field private dataPattern:Ljava/lang/String;

.field private moduleName:Ljava/lang/String;

.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;I)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to build your DynamicActivityDestination instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "DynamicActivityNavigatorDestinationBuilder(activityNavigator, route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "activityNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    move-object v0, p1

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;I)V

    .line 81
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;Ljava/lang/String;)V
    .locals 1

    const-string v0, "activityNavigator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "route"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    move-object v0, p1

    check-cast v0, Landroidx/navigation/Navigator;

    invoke-direct {p0, v0, p2}, Landroidx/navigation/NavDestinationBuilder;-><init>(Landroidx/navigation/Navigator;Ljava/lang/String;)V

    .line 88
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->build()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public build()Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;
    .locals 4

    .line 104
    invoke-super {p0}, Landroidx/navigation/NavDestinationBuilder;->build()Landroidx/navigation/NavDestination;

    move-result-object v0

    check-cast v0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;

    .line 105
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getActivityClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 107
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    .line 108
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 109
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v3, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityNavigator:Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;

    invoke-virtual {v3}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 107
    :goto_0
    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v2}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setComponentName(Landroid/content/ComponentName;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 117
    :goto_1
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setTargetPackage(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 118
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setModuleName(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setAction(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 120
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setData(Landroid/net/Uri;)Landroidx/navigation/ActivityNavigator$Destination;

    .line 121
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->getDataPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigator$Destination;->setDataPattern(Ljava/lang/String;)Landroidx/navigation/ActivityNavigator$Destination;

    return-object v0
.end method

.method public final getAction()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getActivityClassName()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Landroid/net/Uri;
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-object v0
.end method

.method public final getDataPattern()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetPackage()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->action:Ljava/lang/String;

    return-void
.end method

.method public final setActivityClassName(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->activityClassName:Ljava/lang/String;

    return-void
.end method

.method public final setData(Landroid/net/Uri;)V
    .locals 0

    .line 99
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->data:Landroid/net/Uri;

    return-void
.end method

.method public final setDataPattern(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->dataPattern:Ljava/lang/String;

    return-void
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setTargetPackage(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicActivityNavigatorDestinationBuilder;->targetPackage:Ljava/lang/String;

    return-void
.end method
