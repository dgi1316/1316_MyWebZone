.class synthetic Lcom/wMyWebZone/Model/WidgetEntity$1;
.super Ljava/lang/Object;
.source "WidgetEntity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Model/WidgetEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$wMyWebZone$Model$WidgetEntity$DefaultWidgetType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->values()[Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wMyWebZone/Model/WidgetEntity$1;->$SwitchMap$com$wMyWebZone$Model$WidgetEntity$DefaultWidgetType:[I

    :try_start_0
    sget-object v0, Lcom/wMyWebZone/Model/WidgetEntity$1;->$SwitchMap$com$wMyWebZone$Model$WidgetEntity$DefaultWidgetType:[I

    sget-object v1, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->PAUSED:Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Model/WidgetEntity$DefaultWidgetType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
