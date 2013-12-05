.class Lcom/wMyWebZone/Model/NavigationWidget$12;
.super Ljava/lang/Object;
.source "NavigationWidget.java"

# interfaces
.implements Landroid/widget/FilterQueryProvider;


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
    .line 278
    iput-object p1, p0, Lcom/wMyWebZone/Model/NavigationWidget$12;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 3
    .parameter "constraint"

    .prologue
    .line 281
    iget-object v1, p0, Lcom/wMyWebZone/Model/NavigationWidget$12;->this$0:Lcom/wMyWebZone/Model/NavigationWidget;

    #getter for: Lcom/wMyWebZone/Model/NavigationWidget;->_history:Lcom/wMyWebZone/storage/BrowsingHistoryStorage;
    invoke-static {v1}, Lcom/wMyWebZone/Model/NavigationWidget;->access$700(Lcom/wMyWebZone/Model/NavigationWidget;)Lcom/wMyWebZone/storage/BrowsingHistoryStorage;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/wMyWebZone/storage/BrowsingHistoryStorage;->getHistoryItemsGroupedByUrl(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    .local v0, cursor:Landroid/database/Cursor;
    return-object v0

    .line 281
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
