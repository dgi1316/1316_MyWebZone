.class public Lcom/wMyWebZone/storage/DatabaseOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseOpenHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "Storage"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final HISTORY_ROW_TITLE:Ljava/lang/String; = "title"

.field public static final HISTORY_ROW_URL:Ljava/lang/String; = "url"

.field public static final HISTORY_ROW_VISIT_TIME:Ljava/lang/String; = "visitTime"

.field private static final HISTORY_TABLE_CREATE:Ljava/lang/String; = "CREATE VIRTUAL TABLE history  USING fts3(visitTime DATETIME, title TEXT, url TEXT);"

.field public static final HISTORY_TABLE_NAME:Ljava/lang/String; = "history"

.field public static final SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat; = null

.field private static final TAG:Ljava/lang/String; = "StorageDatabase"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->SQL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "Storage"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 38
    const-string v0, "CREATE VIRTUAL TABLE history  USING fts3(visitTime DATETIME, title TEXT, url TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 43
    const-string v0, "StorageDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v0, "DROP TABLE IF EXISTS history"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/storage/DatabaseOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    return-void
.end method
