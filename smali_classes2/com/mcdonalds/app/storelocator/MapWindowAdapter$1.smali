.class Lcom/mcdonalds/app/storelocator/MapWindowAdapter$1;
.super Ljava/lang/Object;
.source "MapWindowAdapter.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/MapWindowAdapter;->toGMap()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/MapWindowAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/MapWindowAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/MapWindowAdapter;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$1;->this$0:Lcom/mcdonalds/app/storelocator/MapWindowAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const-string v0, "getInfoContents"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 3
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const-string v0, "getInfoWindow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$1;->this$0:Lcom/mcdonalds/app/storelocator/MapWindowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/MapWindowAdapter;->getInfoWindow(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
