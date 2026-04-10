.class public Lcom/vondear/rxtool/RxMigrationHelper;
.super Ljava/lang/Object;
.source "RxMigrationHelper.java"


# static fields
.field public static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "RxMigrationHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs createAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    const-string v0, "createTable"

    .line 71
    invoke-static {p0, v0, p1, p2}, Lcom/vondear/rxtool/RxMigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V

    return-void
.end method

.method private static varargs dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    const-string v0, "dropTable"

    .line 67
    invoke-static {p0, v0, p1, p2}, Lcom/vondear/rxtool/RxMigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V

    return-void
.end method

.method private static varargs generateNewTablesIfNotExists(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    const-string v0, "createTable"

    const/4 v1, 0x1

    .line 51
    invoke-static {p0, v0, v1, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V

    return-void
.end method

.method private static varargs generateTempTables(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 55
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 56
    new-instance v1, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v2, p1, v0

    invoke-direct {v1, p0, v2}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 57
    iget-object v2, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 58
    iget-object v1, v1, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v3, "_TEMP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TEMP TABLE "

    .line 60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AS SELECT * FROM "

    .line 61
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getColumns(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " limit 0"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/greenrobot/greendao/database/StandardDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 131
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 132
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 138
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez v0, :cond_3

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 135
    :goto_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    :goto_2
    return-object v0

    :goto_3
    if-eqz v0, :cond_4

    .line 138
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    throw p1
.end method

.method public static varargs migrate(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/greenrobot/greendao/database/StandardDatabase;

    invoke-direct {v0, p0}, Lorg/greenrobot/greendao/database/StandardDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u3010The Old Database Version\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/vondear/rxtool/RxMigrationHelper;->printLog(Ljava/lang/String;)V

    const-string p0, "\u3010Generate temp table\u3011start"

    .line 35
    invoke-static {p0}, Lcom/vondear/rxtool/RxMigrationHelper;->printLog(Ljava/lang/String;)V

    .line 36
    invoke-static {v0, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->migrate(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    return-void
.end method

.method public static varargs migrate(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 40
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->generateNewTablesIfNotExists(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    const-string v0, "\u3010Generate temp table\u3011complete"

    .line 41
    invoke-static {v0}, Lcom/vondear/rxtool/RxMigrationHelper;->printLog(Ljava/lang/String;)V

    .line 42
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->generateTempTables(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 43
    invoke-static {p0, v0, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->dropAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 44
    invoke-static {p0, v0, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->createAllTables(Lorg/greenrobot/greendao/database/StandardDatabase;Z[Ljava/lang/Class;)V

    const-string v0, "\u3010Restore data\u3011start"

    .line 45
    invoke-static {v0}, Lcom/vondear/rxtool/RxMigrationHelper;->printLog(Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p1}, Lcom/vondear/rxtool/RxMigrationHelper;->restoreData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V

    const-string p0, "\u3010Restore data\u3011complete"

    .line 47
    invoke-static {p0}, Lcom/vondear/rxtool/RxMigrationHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private static printLog(Ljava/lang/String;)V
    .locals 1

    .line 150
    sget-boolean v0, Lcom/vondear/rxtool/RxMigrationHelper;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/vondear/rxtool/RxMigrationHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static varargs reflectMethod(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;Z[Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    .line 78
    array-length v0, p3

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    .line 82
    :cond_0
    :try_start_0
    array-length v0, p3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p3, v3

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 83
    const-class v7, Lorg/greenrobot/greendao/database/Database;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v4, p1, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v6, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v2

    .line 84
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v1

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception p0

    .line 87
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private static varargs restoreData(Lorg/greenrobot/greendao/database/StandardDatabase;[Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/greenrobot/greendao/database/StandardDatabase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lorg/greenrobot/greendao/AbstractDao<",
            "**>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 97
    new-instance v2, Lorg/greenrobot/greendao/internal/DaoConfig;

    aget-object v3, p1, v1

    invoke-direct {v2, p0, v3}, Lorg/greenrobot/greendao/internal/DaoConfig;-><init>(Lorg/greenrobot/greendao/database/Database;Ljava/lang/Class;)V

    .line 98
    iget-object v3, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    .line 99
    iget-object v4, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->tablename:Ljava/lang/String;

    const-string v5, "_TEMP"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-static {p0, v4}, Lcom/vondear/rxtool/RxMigrationHelper;->getColumns(Lorg/greenrobot/greendao/database/StandardDatabase;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 102
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    .line 103
    :goto_1
    iget-object v8, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 104
    iget-object v8, v2, Lorg/greenrobot/greendao/internal/DaoConfig;->properties:[Lorg/greenrobot/greendao/Property;

    aget-object v8, v8, v7

    iget-object v8, v8, Lorg/greenrobot/greendao/Property;->columnName:Ljava/lang/String;

    .line 105
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 106
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ","

    .line 110
    invoke-static {v2, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    .line 113
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") SELECT "

    .line 115
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM "

    .line 117
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/greenrobot/greendao/database/StandardDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method
