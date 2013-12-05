.class public Lcom/wMyWebZone/Utils/JavascriptInterface;
.super Ljava/lang/Object;
.source "JavascriptInterface.java"


# static fields
.field public static final JS_INTERFACE_NAME:Ljava/lang/String; = "AppsgeyserJSInterface"

.field public static final JS_PREFERENCE_PREFIX:Ljava/lang/String; = "JS-Preference-"


# instance fields
.field private _currentProgressDialog:Landroid/app/ProgressDialog;

.field private _mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

.field private _webController:Lcom/wMyWebZone/Controllers/WebContentController;

.field private mFinalHeight:I

.field private mFinalWidth:I


# direct methods
.method public constructor <init>(Lcom/wMyWebZone/Controllers/WebContentController;)V
    .locals 1
    .parameter "webController"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/wMyWebZone/Controllers/WebContentController;->getMainNavigationActivity()Lcom/wMyWebZone/MainNavigationActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    .line 48
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    .line 50
    :cond_0
    return-void
.end method

.method private _scaleBitmapAndSetWallpaper(Landroid/graphics/Bitmap;)V
    .locals 13
    .parameter "wallpaperBitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v10

    .line 159
    .local v10, wallpaperManager:Landroid/app/WallpaperManager;
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v2, v8, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 162
    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_0

    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v0, v3, :cond_1

    .line 166
    :cond_0
    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v11, v0, 0x2

    .line 168
    .local v11, xPadding:I
    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v12, v0, 0x2

    .line 171
    .local v12, yPadding:I
    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDesiredMinimumWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v10}, Landroid/app/WallpaperManager;->getDesiredMinimumHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 173
    .local v9, paddedWallpaper:Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v1, v0, [I

    .line 175
    .local v1, pixels:[I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, v9

    move v4, v11

    move v5, v12

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 178
    invoke-virtual {v10, v9}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    .end local v1           #pixels:[I
    .end local v9           #paddedWallpaper:Landroid/graphics/Bitmap;
    .end local v11           #xPadding:I
    .end local v12           #yPadding:I
    :goto_0
    return-void

    .line 180
    :cond_1
    invoke-virtual {v10, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/Controllers/WebContentController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wMyWebZone/Utils/JavascriptInterface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->mFinalHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/wMyWebZone/Utils/JavascriptInterface;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->mFinalWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/wMyWebZone/Utils/JavascriptInterface;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/wMyWebZone/Utils/JavascriptInterface;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_currentProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/wMyWebZone/Utils/JavascriptInterface;)Lcom/wMyWebZone/MainNavigationActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    return-object v0
.end method

.method private getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 8
    .parameter "c"

    .prologue
    .line 279
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 280
    .local v1, bookmarksArray:Lorg/json/JSONArray;
    if-eqz p1, :cond_3

    .line 281
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 282
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_3

    .line 283
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 284
    .local v0, bookmark:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 286
    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 287
    .local v4, longRes:Ljava/lang/Long;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 288
    .local v5, sRes:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 289
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    .end local v4           #longRes:Ljava/lang/Long;
    .end local v5           #sRes:Ljava/lang/String;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 291
    .restart local v4       #longRes:Ljava/lang/Long;
    .restart local v5       #sRes:Ljava/lang/String;
    :cond_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 293
    .end local v4           #longRes:Ljava/lang/Long;
    .end local v5           #sRes:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 294
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 297
    .end local v2           #e:Lorg/json/JSONException;
    :cond_2
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 298
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 301
    .end local v0           #bookmark:Lorg/json/JSONObject;
    .end local v3           #i:I
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public addBookmark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "url"
    .parameter "pageName"

    .prologue
    .line 265
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/wMyWebZone/Factory/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wMyWebZone/storage/BookmarksManager;->addBookmark(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public addToHomePage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "url"

    .prologue
    .line 261
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Factory/Factory;->getHomePageManager()Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/wMyWebZone/storage/BookmarksManager;->addBookmark(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public downloadFile(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 135
    new-instance v1, Lcom/wMyWebZone/Utils/UrlConverter;

    iget-object v2, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v2}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/wMyWebZone/Utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 136
    .local v1, converter:Lcom/wMyWebZone/Utils/UrlConverter;
    invoke-virtual {v1, p1}, Lcom/wMyWebZone/Utils/UrlConverter;->toAbsolute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, absoluteUrl:Ljava/lang/String;
    const-string v2, ""

    iget-object v3, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {p1, v2, v3}, Lcom/wMyWebZone/Utils/FileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 138
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getApplicationId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarks(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pageName"

    .prologue
    .line 310
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wMyWebZone/Factory/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/storage/BookmarksManager;->getBookmarks()Landroid/database/Cursor;

    move-result-object v0

    .line 311
    .local v0, bookmarksCursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBookmarks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "offset"
    .parameter "limit"
    .parameter "pageName"

    .prologue
    .line 322
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 323
    .local v2, iOffset:Ljava/lang/Integer;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 324
    .local v1, iLimit:Ljava/lang/Integer;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/wMyWebZone/Factory/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/wMyWebZone/storage/BookmarksManager;->getBookmarks(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    .line 325
    .local v0, bookmarksCursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getFileContents(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 195
    const-string v0, ""

    .line 196
    .local v0, strRes:Ljava/lang/String;
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {p1, v1}, Lcom/wMyWebZone/Utils/FileManager;->getStringFromAssetsFileWithFileName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    return-object v0
.end method

.method public getHomePageItems()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getHomePageManager()Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/storage/BookmarksManager;->getBookmarks()Landroid/database/Cursor;

    move-result-object v0

    .line 306
    .local v0, bookmarksCursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHomePageItems(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "offset"
    .parameter "limit"

    .prologue
    .line 315
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 316
    .local v2, iOffset:Ljava/lang/Integer;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 317
    .local v1, iLimit:Ljava/lang/Integer;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wMyWebZone/Factory/Factory;->getHomePageManager()Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/wMyWebZone/storage/BookmarksManager;->getBookmarks(Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object v0

    .line 318
    .local v0, bookmarksCursor:Landroid/database/Cursor;
    invoke-direct {p0, v0}, Lcom/wMyWebZone/Utils/JavascriptInterface;->getBookmarksFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getInstallationGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/wMyWebZone/MainNavigationActivity;->getConfig()Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wMyWebZone/Configuration/WebWidgetConfiguration;->getAppGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"

    .prologue
    .line 251
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 252
    .local v0, preferences:Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JS-Preference-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTabUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tabId"

    .prologue
    .line 222
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getWidgetsController()Lcom/wMyWebZone/Controllers/IWidgetsController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/wMyWebZone/Controllers/IWidgetsController;->getWidgetByTabId(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity;

    move-result-object v0

    .line 223
    .local v0, widget:Lcom/wMyWebZone/Model/WidgetEntity;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Lcom/wMyWebZone/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 226
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public hideLoadingDialog()V
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Utils/JavascriptInterface$7;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Utils/JavascriptInterface$7;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 219
    return-void
.end method

.method public hideTabs()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Utils/JavascriptInterface$8;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Utils/JavascriptInterface$8;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    return-void
.end method

.method public removeBookmark(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "pageName"

    .prologue
    .line 274
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 275
    .local v0, i:Ljava/lang/Integer;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/wMyWebZone/Factory/Factory;->getBookmarkManager(Ljava/lang/String;)Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/storage/BookmarksManager;->removeBookmark(Ljava/lang/Integer;)V

    .line 276
    return-void
.end method

.method public removeFromHomepage(Ljava/lang/String;)V
    .locals 2
    .parameter "index"

    .prologue
    .line 269
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 270
    .local v0, i:Ljava/lang/Integer;
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getHomePageManager()Lcom/wMyWebZone/storage/BookmarksManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/wMyWebZone/storage/BookmarksManager;->removeBookmark(Ljava/lang/Integer;)V

    .line 271
    return-void
.end method

.method public sendXMLHTTPRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "resultCallback"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v0}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/wMyWebZone/Utils/JavascriptInterface$1;

    invoke-direct {v2, p0, p2}, Lcom/wMyWebZone/Utils/JavascriptInterface$1;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->sendRequestAsync(Ljava/lang/String;ILcom/wMyWebZone/Server/BaseServerClient$OnRequestDoneListener;)V

    .line 81
    return-void
.end method

.method public sendXMLHTTPRequestSync(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 53
    const-string v0, ""

    .line 54
    .local v0, strRes:Ljava/lang/String;
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    invoke-static {v1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->getInstance(Lcom/wMyWebZone/MainNavigationActivity;)Lcom/wMyWebZone/Server/AppsGeyserServerClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/wMyWebZone/Server/AppsGeyserServerClient;->sendRequestSync(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    return-object v0
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 256
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 257
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JS-Preference-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 258
    return-void
.end method

.method public setScaleForPageWithSize(II)V
    .locals 2
    .parameter "iHeight"
    .parameter "iWidth"

    .prologue
    .line 121
    iput p1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->mFinalHeight:I

    .line 122
    iput p2, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->mFinalWidth:I

    .line 123
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Utils/JavascriptInterface$4;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Utils/JavascriptInterface$4;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 141
    new-instance v0, Lcom/wMyWebZone/Utils/UrlConverter;

    iget-object v4, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_webController:Lcom/wMyWebZone/Controllers/WebContentController;

    invoke-virtual {v4}, Lcom/wMyWebZone/Controllers/WebContentController;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/wMyWebZone/Utils/UrlConverter;-><init>(Landroid/webkit/WebView;)V

    .line 143
    .local v0, converter:Lcom/wMyWebZone/Utils/UrlConverter;
    invoke-virtual {v0, p1}, Lcom/wMyWebZone/Utils/UrlConverter;->toStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 144
    .local v3, wallpaperStream:Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 146
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 148
    .local v2, wallpaperBitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-direct {p0, v2}, Lcom/wMyWebZone/Utils/JavascriptInterface;->_scaleBitmapAndSetWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    .end local v2           #wallpaperBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void

    .line 149
    .restart local v2       #wallpaperBitmap:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public showInfo(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    :cond_0
    return-void
.end method

.method public showLoadingDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Utils/JavascriptInterface$6;

    invoke-direct {v1, p0, p1}, Lcom/wMyWebZone/Utils/JavascriptInterface$6;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public showTabs()V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Utils/JavascriptInterface$9;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Utils/JavascriptInterface$9;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method

.method public updateIcon(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "buttonName"
    .parameter "iconPath"

    .prologue
    .line 104
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/NavigationWidget;->getCustomIcons()Ljava/util/HashMap;

    move-result-object v0

    .line 105
    .local v0, icons:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v2, Lcom/wMyWebZone/Utils/JavascriptInterface$3;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/wMyWebZone/Utils/JavascriptInterface$3;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 113
    :cond_0
    return-void
.end method

.method public updateIconBadge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "buttonName"
    .parameter "buttonBadge"

    .prologue
    .line 92
    invoke-static {}, Lcom/wMyWebZone/Factory/Factory;->getInstance()Lcom/wMyWebZone/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Factory/Factory;->getNavigationWidget()Lcom/wMyWebZone/Model/NavigationWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/NavigationWidget;->getCustomIcons()Ljava/util/HashMap;

    move-result-object v0

    .line 93
    .local v0, icons:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/wMyWebZone/Model/NavigationWidgetCustomIcon;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v2, Lcom/wMyWebZone/Utils/JavascriptInterface$2;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/wMyWebZone/Utils/JavascriptInterface$2;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 101
    :cond_0
    return-void
.end method

.method public zoomIn()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/wMyWebZone/Utils/JavascriptInterface;->_mainActivity:Lcom/wMyWebZone/MainNavigationActivity;

    new-instance v1, Lcom/wMyWebZone/Utils/JavascriptInterface$5;

    invoke-direct {v1, p0}, Lcom/wMyWebZone/Utils/JavascriptInterface$5;-><init>(Lcom/wMyWebZone/Utils/JavascriptInterface;)V

    invoke-virtual {v0, v1}, Lcom/wMyWebZone/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    :cond_0
    return-void
.end method
