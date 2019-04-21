.class Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$5;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


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
    .line 214
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const-string v1, "onMarkerClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$500(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    .line 219
    .local v0, "local":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$600(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;->onMarkerClick(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Z

    move-result v1

    return v1
.end method
