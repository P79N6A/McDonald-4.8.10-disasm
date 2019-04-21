.class Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$2;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$CancelableCallback;


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
    .line 188
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const-string v0, "onCancel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    const-string v0, "onFinish"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$200(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$102(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;F)F

    .line 192
    return-void
.end method
