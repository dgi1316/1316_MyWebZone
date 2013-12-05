.class Lcom/wMyWebZone/Model/NavigationWidget$13;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$CursorToStringConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wMyWebZone/Model/NavigationWidget;->attachAutocomplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wMyWebZone/Model/NavigationWidget;


# direct methods
.method constructor <init>(Lcom/wMyWebZone/Model/NavigationWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$13;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lcom/wMyWebZone/Model/NavigationWidget$13;->convertToString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"

    .prologue
    .line 289
    const-string v2, "url"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 290
    .local v1, urlColumnIndex:I
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, str:Ljava/lang/String;
    return-object v0
.end method
