.class public Lcom/wMyWebZone/storage/BrowsingHistoryStorage;
.super Ljava/lang/Object;
.source "BrowsingHistoryStorage.java"


# instance fields
.field private _dbHelper:Lcom/wMyWebZone/storage/DatabaseOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/wMyWebZone/storage/DatabaseOpenHelper;

    invoke-direct {v0, p1}, Lcom/wMyWebZone/storage/DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/wMyWebZone/storage/DatabaseOpenHelper;

    .line 19
    return-void
.end method


# virtual methods
.method public addHistoryItem(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 4
    .parameter "title"
    .parameter "url"
    .parameter "visitTime"

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "visitTime"

    sget-object v2, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/wMyWebZone/storage/DatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "history"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 87
    return-void
.end method

.method public getHistoryItemsGroupedByUrl(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "urlPart"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 58
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "rowId _id"

    aput-object v1, v2, v7

    const-string v1, "title"

    aput-object v1, v2, v8

    const/4 v1, 0x2

    const-string v5, "url"

    aput-object v5, v2, v1

    .line 63
    .local v2, projectionIn:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 64
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    .line 65
    .local v4, selectionArgs:[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 66
    const-string v3, "url MATCH ?"

    .line 67
    new-array v4, v8, [Ljava/lang/String;

    .end local v4           #selectionArgs:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "*"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    .line 70
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 71
    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "history"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/wMyWebZone/storage/DatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v5, "url"

    const-string v8, "3"

    move-object v7, v6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 74
    .local v9, cursor:Landroid/database/Cursor;
    return-object v9
.end method

.method public loadHistory(Ljava/util/Date;Ljava/util/Date;)Landroid/database/Cursor;
    .locals 10
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v5, 0x0

    .line 22
    const-string v3, ""

    .line 23
    .local v3, selection:Ljava/lang/String;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 24
    .local v9, selectionArgsVector:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "visitTime>= ?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26
    sget-object v1, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    if-eqz p2, :cond_2

    .line 29
    if-eqz p1, :cond_1

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " AND "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "visitTime<= ?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    sget-object v1, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 37
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 38
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "rowId _id"

    aput-object v6, v2, v1

    const/4 v1, 0x1

    const-string v6, "title"

    aput-object v6, v2, v1

    const/4 v1, 0x2

    const-string v6, "url"

    aput-object v6, v2, v1

    const/4 v1, 0x3

    const-string v6, "visitTime"

    aput-object v6, v2, v1

    .line 43
    .local v2, projectionIn:[Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 44
    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "history"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;->_dbHelper:Lcom/wMyWebZone/storage/DatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 47
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_3

    .line 54
    :goto_0
    return-object v5

    .line 50
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_4

    .line 51
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    move-object v5, v8

    .line 54
    goto :goto_0
.end method
