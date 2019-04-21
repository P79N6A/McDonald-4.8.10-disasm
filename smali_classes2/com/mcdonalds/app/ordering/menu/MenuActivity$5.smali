.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$5;
.super Landroid/database/ContentObserver;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$5;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const-string v0, "onChange"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    const-string v0, "catUpdate"

    const-string v1, "onCatalogChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getSyncStatus()I

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    const-string v0, "catUpdate"

    const-string v1, "checkCatalogStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$5;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->access$100(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Z)V

    .line 256
    :cond_0
    return-void
.end method
