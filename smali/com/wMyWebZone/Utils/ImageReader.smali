.class public Lcom/wMyWebZone/Utils/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeFile(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "f"
    .parameter "requiredSize"

    .prologue
    const/4 v3, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 28
    :goto_0
    return-object v3

    .line 16
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 17
    .local v0, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 18
    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 21
    const/4 v2, 0x1

    .line 22
    .local v2, scale:I
    :goto_1
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    if-lt v4, p1, :cond_1

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    if-lt v4, p1, :cond_1

    .line 23
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 26
    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 27
    .local v1, o2:Landroid/graphics/BitmapFactory$Options;
    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 28
    invoke-static {p0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method public static decodeFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "f"
    .parameter "requiredSize"

    .prologue
    .line 33
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/wMyWebZone/Utils/ImageReader;->decodeFile(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 35
    :goto_0
    return-object v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, e:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method
