.class Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$4;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$4;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const-string v0, "onMapClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$4;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$400(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromGMap(Lcom/google/android/gms/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;->onMapClick(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V

    .line 211
    return-void
.end method
