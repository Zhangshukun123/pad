.class public Lorg/litepal/crud/LitePalSupport;
.super Ljava/lang/Object;
.source "LitePalSupport.java"


# static fields
.field protected static final AES:Ljava/lang/String; = "AES"

.field protected static final MD5:Ljava/lang/String; = "MD5"


# instance fields
.field associatedModelsMapForJoinTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithoutFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field baseObjId:J

.field private fieldsToSetToDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearAssociatedFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearSelfFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearFKNameList()V
    .locals 1

    .line 811
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 812
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private clearIdOfModelForJoinTable()V
    .locals 3

    .line 801
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 802
    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearIdOfModelWithFK()V
    .locals 3

    .line 784
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 785
    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 787
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearIdOfModelWithoutFK()V
    .locals 1

    .line 794
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method addAssociatedModelForJoinTable(Ljava/lang/String;J)V
    .locals 1

    .line 646
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 650
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object p2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 653
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method addAssociatedModelWithFK(Ljava/lang/String;J)V
    .locals 1

    .line 612
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 615
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 616
    iget-object p2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 618
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method addAssociatedModelWithoutFK(Ljava/lang/String;J)V
    .locals 1

    .line 701
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addAssociatedTableNameToClearFK(Ljava/lang/String;)V
    .locals 2

    .line 751
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    .line 752
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method addEmptyModelForJoinTable(Ljava/lang/String;)V
    .locals 2

    .line 666
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 670
    iget-object v1, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method addFKNameToClearSelf(Ljava/lang/String;)V
    .locals 2

    .line 725
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    .line 726
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public assignBaseObjId(J)V
    .locals 0

    .line 549
    iput-wide p1, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    return-void
.end method

.method clearAssociatedData()V
    .locals 0

    .line 774
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearIdOfModelWithFK()V

    .line 775
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearIdOfModelWithoutFK()V

    .line 776
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearIdOfModelForJoinTable()V

    .line 777
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearFKNameList()V

    return-void
.end method

.method public clearSavedState()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 527
    iput-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    return-void
.end method

.method public delete()I
    .locals 5

    .line 141
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    new-instance v2, Lorg/litepal/crud/DeleteHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/DeleteHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 146
    invoke-virtual {v2, p0}, Lorg/litepal/crud/DeleteHandler;->onDelete(Lorg/litepal/crud/LitePalSupport;)I

    move-result v2

    const-wide/16 v3, 0x0

    .line 147
    iput-wide v3, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    throw v2

    :catchall_1
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public deleteAsync()Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 162
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 163
    new-instance v1, Lorg/litepal/crud/LitePalSupport$1;

    invoke-direct {v1, p0, v0}, Lorg/litepal/crud/LitePalSupport$1;-><init>(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 179
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method getAssociatedModelsMapForJoinTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    return-object v0
.end method

.method getAssociatedModelsMapWithFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 631
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    .line 634
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    return-object v0
.end method

.method getAssociatedModelsMapWithoutFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 712
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithoutFK:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 713
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithoutFK:Ljava/util/Map;

    .line 715
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithoutFK:Ljava/util/Map;

    return-object v0
.end method

.method protected getBaseObjId()J
    .locals 2

    .line 566
    iget-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    return-wide v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 575
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFieldsToSetToDefault()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->fieldsToSetToDefault:Ljava/util/List;

    if-nez v0, :cond_0

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->fieldsToSetToDefault:Ljava/util/List;

    .line 598
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->fieldsToSetToDefault:Ljava/util/List;

    return-object v0
.end method

.method getListToClearAssociatedFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearAssociatedFK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearAssociatedFK:Ljava/util/List;

    .line 767
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearAssociatedFK:Ljava/util/List;

    return-object v0
.end method

.method getListToClearSelfFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearSelfFK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearSelfFK:Ljava/util/List;

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearSelfFK:Ljava/util/List;

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 584
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSaved()Z
    .locals 5

    .line 520
    iget-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public save()Z
    .locals 1

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->saveThrows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public saveAsync()Lorg/litepal/crud/async/SaveExecutor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 363
    new-instance v0, Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/SaveExecutor;-><init>()V

    .line 364
    new-instance v1, Lorg/litepal/crud/LitePalSupport$4;

    invoke-direct {v1, p0, v0}, Lorg/litepal/crud/LitePalSupport$4;-><init>(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/async/SaveExecutor;)V

    .line 380
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/SaveExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public varargs saveOrUpdate([Ljava/lang/String;)Z
    .locals 4

    .line 458
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 462
    :cond_0
    invoke-static {p1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 463
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 466
    :cond_1
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 467
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 469
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/crud/LitePalSupport;

    .line 470
    invoke-virtual {v2}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    .line 471
    new-instance v2, Lorg/litepal/crud/SaveHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/SaveHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 472
    invoke-virtual {v2, p0}, Lorg/litepal/crud/SaveHandler;->onSave(Lorg/litepal/crud/LitePalSupport;)V

    .line 473
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->clearAssociatedData()V

    goto :goto_0

    .line 475
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 481
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 478
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    .line 481
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 482
    throw p1

    :catchall_1
    move-exception p1

    .line 484
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public varargs saveOrUpdateAsync([Ljava/lang/String;)Lorg/litepal/crud/async/SaveExecutor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    new-instance v0, Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/SaveExecutor;-><init>()V

    .line 494
    new-instance v1, Lorg/litepal/crud/LitePalSupport$5;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/crud/LitePalSupport$5;-><init>(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;Lorg/litepal/crud/async/SaveExecutor;)V

    .line 510
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/SaveExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public saveThrows()V
    .locals 5

    .line 409
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 410
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    :try_start_1
    new-instance v2, Lorg/litepal/crud/SaveHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/SaveHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 414
    invoke-virtual {v2, p0}, Lorg/litepal/crud/SaveHandler;->onSave(Lorg/litepal/crud/LitePalSupport;)V

    .line 415
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->clearAssociatedData()V

    .line 416
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 422
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 418
    :try_start_3
    new-instance v3, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 421
    throw v2

    :catchall_1
    move-exception v1

    .line 422
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setToDefault(Ljava/lang/String;)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(J)I
    .locals 4

    .line 205
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 207
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 209
    :try_start_1
    new-instance v2, Lorg/litepal/crud/UpdateHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/crud/UpdateHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 210
    invoke-virtual {v2, p0, p1, p2}, Lorg/litepal/crud/UpdateHandler;->onUpdate(Lorg/litepal/crud/LitePalSupport;J)I

    move-result p1

    .line 211
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 212
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    :try_start_3
    new-instance p2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 218
    throw p1

    :catchall_1
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public varargs updateAll([Ljava/lang/String;)I
    .locals 4

    .line 279
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 280
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    :try_start_1
    new-instance v2, Lorg/litepal/crud/UpdateHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/litepal/crud/UpdateHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    invoke-virtual {v2, p0, p1}, Lorg/litepal/crud/UpdateHandler;->onUpdateAll(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;)I

    move-result p1

    .line 285
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 286
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 289
    :try_start_3
    new-instance v2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 291
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 292
    throw p1

    :catchall_1
    move-exception p1

    .line 293
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public varargs updateAllAsync([Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 302
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 303
    new-instance v1, Lorg/litepal/crud/LitePalSupport$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/crud/LitePalSupport$3;-><init>(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 319
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public updateAsync(J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 229
    new-instance v1, Lorg/litepal/crud/LitePalSupport$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/crud/LitePalSupport$2;-><init>(Lorg/litepal/crud/LitePalSupport;JLorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 245
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method
