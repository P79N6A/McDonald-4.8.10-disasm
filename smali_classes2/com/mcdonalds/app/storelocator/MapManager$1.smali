.class Lcom/mcdonalds/app/storelocator/MapManager$1;
.super Ljava/lang/Object;
.source "MapManager.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


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
    .line 182
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/MapManager$1;->this$0:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 3
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const-string v0, "onMapReady"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager$1;->this$0:Lcom/mcdonalds/app/storelocator/MapManager;

    new-instance v1, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-direct {v1, p1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/MapManager;->access$002(Lcom/mcdonalds/app/storelocator/MapManager;Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager$1;->this$0:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->access$100(Lcom/mcdonalds/app/storelocator/MapManager;)V

    .line 187
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapManager$1;->this$0:Lcom/mcdonalds/app/storelocator/MapManager;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/MapManager;->access$200(Lcom/mcdonalds/app/storelocator/MapManager;)Lcom/mcdonalds/app/storelocator/MapManager$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/MapManager$Callback;->onMapAvailable()V

    .line 188
    return-void
.end method
