.class public interface abstract Lcom/wMyWebZone/ads/AdsLoader$HeadersReceiver;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HeadersReceiver"
.end annotation


# virtual methods
.method public abstract onAdHeadersReceived(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation
.end method
