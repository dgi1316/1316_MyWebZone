.class public Lcom/wMyWebZone/Utils/Hasher;
.super Ljava/lang/Object;
.source "Hasher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "s"

    .prologue
    .line 9
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 10
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 11
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 14
    .local v5, messageDigest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 15
    .local v3, hexString:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v5

    if-ge v4, v6, :cond_1

    .line 16
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 17
    .local v2, h:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    .end local v2           #h:Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 26
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #messageDigest:[B
    :goto_2
    return-object v6

    .line 23
    :catch_0
    move-exception v1

    .line 24
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 26
    const-string v6, ""

    goto :goto_2
.end method
