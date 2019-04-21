.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$8;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;->requestSyncReload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$8;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "run"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$8;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->reloadCatalog(Landroid/content/Context;)V

    .line 345
    return-void
.end method
