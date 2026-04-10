.class public final Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;
.super Landroidx/navigation/NavGraphBuilder;
.source "DynamicNavGraphBuilder.kt"


# annotations
.annotation runtime Landroidx/navigation/NavDestinationDsl;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDynamicNavGraphBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder\n+ 2 NavigatorProvider.kt\nandroidx/navigation/NavigatorProviderKt\n*L\n1#1,213:1\n161#2:214\n*S KotlinDebug\n*F\n+ 1 DynamicNavGraphBuilder.kt\nandroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder\n*L\n206#1:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u001d\u001a\u00020\u001eH\u0016R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R$\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u00058F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R(\u0010\u0018\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0008@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u000e\"\u0004\u0008\u001a\u0010\u0010R\u0012\u0010\u001b\u001a\u00020\u00058\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;",
        "Landroidx/navigation/NavGraphBuilder;",
        "provider",
        "Landroidx/navigation/NavigatorProvider;",
        "id",
        "",
        "startDestination",
        "(Landroidx/navigation/NavigatorProvider;II)V",
        "",
        "route",
        "(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V",
        "_progressDestination",
        "moduleName",
        "getModuleName",
        "()Ljava/lang/String;",
        "setModuleName",
        "(Ljava/lang/String;)V",
        "p",
        "progressDestination",
        "getProgressDestination",
        "()I",
        "setProgressDestination",
        "(I)V",
        "progDestRoute",
        "progressDestinationRoute",
        "getProgressDestinationRoute",
        "setProgressDestinationRoute",
        "startDestinationId",
        "startDestinationRoute",
        "build",
        "Landroidx/navigation/NavGraph;",
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
.field private _progressDestination:I

.field private moduleName:Ljava/lang/String;

.field private progressDestinationRoute:Ljava/lang/String;

.field private startDestinationId:I

.field private startDestinationRoute:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavigatorProvider;II)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        message = "Use routes to create your DynamicNavGraphBuilder instead"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "DynamicNavGraphBuilder(provider, startDestination = startDestination.toString(), route = id.toString())"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;II)V

    .line 137
    iput p3, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->startDestinationId:I

    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDestination"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/NavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p2, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->startDestinationRoute:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 140
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;-><init>(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Landroidx/navigation/NavDestination;
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    return-object v0
.end method

.method public build()Landroidx/navigation/NavGraph;
    .locals 4

    .line 195
    invoke-super {p0}, Landroidx/navigation/NavGraphBuilder;->build()Landroidx/navigation/NavGraph;

    move-result-object v0

    .line 196
    instance-of v1, v0, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    if-eqz v1, :cond_1

    .line 197
    move-object v1, v0

    check-cast v1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;

    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->setModuleName(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Landroidx/navigation/NavGraph;->getRoute()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 200
    sget-object v2, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProgressDestinationRoute()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 199
    invoke-virtual {v1, v2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->setProgressDestination(I)V

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProgressDestination()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator$DynamicNavGraph;->setProgressDestination(I)V

    .line 204
    :goto_0
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProgressDestination()I

    move-result v1

    if-nez v1, :cond_1

    .line 206
    invoke-virtual {p0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->getProvider()Landroidx/navigation/NavigatorProvider;

    move-result-object v1

    const-class v2, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    .line 214
    invoke-virtual {v1, v2}, Landroidx/navigation/NavigatorProvider;->getNavigator(Ljava/lang/Class;)Landroidx/navigation/Navigator;

    move-result-object v1

    .line 206
    check-cast v1, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;

    .line 207
    invoke-virtual {v1}, Landroidx/navigation/dynamicfeatures/DynamicGraphNavigator;->getDestinationsWithoutDefaultProgressDestination$navigation_dynamic_features_runtime_release()Ljava/util/List;

    move-result-object v1

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->moduleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProgressDestination()I
    .locals 1

    .line 163
    iget v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->_progressDestination:I

    return v0
.end method

.method public final getProgressDestinationRoute()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestinationRoute:Ljava/lang/String;

    return-object v0
.end method

.method public final setModuleName(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->moduleName:Ljava/lang/String;

    return-void
.end method

.method public final setProgressDestination(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestinationRoute:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->setProgressDestinationRoute(Ljava/lang/String;)V

    .line 168
    :cond_0
    iput p1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->_progressDestination:I

    return-void
.end method

.method public final setProgressDestinationRoute(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 186
    sget-object v0, Landroidx/navigation/NavDestination;->Companion:Landroidx/navigation/NavDestination$Companion;

    iget-object v1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestinationRoute:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/navigation/NavDestination$Companion;->createRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 180
    :goto_0
    iput v0, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->_progressDestination:I

    .line 188
    iput-object p1, p0, Landroidx/navigation/dynamicfeatures/DynamicNavGraphBuilder;->progressDestinationRoute:Ljava/lang/String;

    return-void

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot have an empty progress destination route"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
