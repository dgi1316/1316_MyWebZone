.class public Lcom/wMyWebZone/Utils/ObjectSerializer;
.super Ljava/lang/Object;
.source "ObjectSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private _context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 11
    .local p0, this:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/wMyWebZone/Utils/ObjectSerializer;->_context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public loadSerializedObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 23
    .local p0, this:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<TT;>;"
    iget-object v3, p0, Lcom/wMyWebZone/Utils/ObjectSerializer;->_context:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 25
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 27
    :cond_0
    iget-object v3, p0, Lcom/wMyWebZone/Utils/ObjectSerializer;->_context:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 28
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    .local v2, ois:Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public serializeAndSaveObject(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "filename"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    .local p0, this:Lcom/wMyWebZone/Utils/ObjectSerializer;,"Lcom/wMyWebZone/Utils/ObjectSerializer<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/wMyWebZone/Utils/ObjectSerializer;->_context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 17
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 18
    .local v1, oos:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 20
    return-void
.end method
