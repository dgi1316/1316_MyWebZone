.class public interface abstract Lcom/wMyWebZone/Controllers/IWidgetsController;
.super Ljava/lang/Object;
.source "IWidgetsController.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract addWidget(Lcom/wMyWebZone/Model/WidgetEntity;)V
.end method

.method public abstract getEnumeration()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/wMyWebZone/Model/WidgetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetById(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity;
.end method

.method public abstract getWidgetByTabId(Ljava/lang/String;)Lcom/wMyWebZone/Model/WidgetEntity;
.end method

.method public abstract removeAll()V
.end method

.method public abstract removeWidgetById(Ljava/lang/String;)V
.end method

.method public abstract widgetsCount()I
.end method
