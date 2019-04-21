.class Lcom/mcdonalds/app/storelocator/MapManager$2;
.super Ljava/lang/Object;
.source "MapManager.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/MapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/MapManager;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/MapManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/MapManager;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/MapManager$2;->this$0:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 2

    .prologue
    const-string v0, "onMapLoaded"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager$2;->this$0:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->access$300(Lcom/mcdonalds/app/storelocator/MapManager;)V

    .line 195
    return-void
.end method
