.class synthetic Lcom/wMyWebZone/Factory/Factory$1;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wMyWebZone/Factory/Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$wMyWebZone$Views$TabContent$ContentType:[I

.field static final synthetic $SwitchMap$com$wMyWebZone$Views$TabTag$TagType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/wMyWebZone/Views/TabTag$TagType;->values()[Lcom/wMyWebZone/Views/TabTag$TagType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabTag$TagType:[I

    :try_start_0
    sget-object v0, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabTag$TagType:[I

    sget-object v1, Lcom/wMyWebZone/Views/TabTag$TagType;->ICON_LABEL:Lcom/wMyWebZone/Views/TabTag$TagType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TabTag$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabTag$TagType:[I

    sget-object v1, Lcom/wMyWebZone/Views/TabTag$TagType;->ICON:Lcom/wMyWebZone/Views/TabTag$TagType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TabTag$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabTag$TagType:[I

    sget-object v1, Lcom/wMyWebZone/Views/TabTag$TagType;->LABEL:Lcom/wMyWebZone/Views/TabTag$TagType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TabTag$TagType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    .line 80
    :goto_2
    invoke-static {}, Lcom/wMyWebZone/Views/TabContent$ContentType;->values()[Lcom/wMyWebZone/Views/TabContent$ContentType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabContent$ContentType:[I

    :try_start_3
    sget-object v0, Lcom/wMyWebZone/Factory/Factory$1;->$SwitchMap$com$wMyWebZone$Views$TabContent$ContentType:[I

    sget-object v1, Lcom/wMyWebZone/Views/TabContent$ContentType;->WEB:Lcom/wMyWebZone/Views/TabContent$ContentType;

    invoke-virtual {v1}, Lcom/wMyWebZone/Views/TabContent$ContentType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    .line 111
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
