.class public Lcom/wMyWebZone/plugins/omegle/core/OmegleException;
.super Ljava/lang/Exception;
.source "OmegleException.java"


# static fields
.field private static final serialVersionUID:J = 0x5120cdba849c63c5L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 31
    return-void
.end method
