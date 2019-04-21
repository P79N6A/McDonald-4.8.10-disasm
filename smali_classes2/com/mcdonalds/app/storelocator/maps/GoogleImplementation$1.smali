.class Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;
.super Ljava/lang/Object;
.source "GoogleImplementation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

.field final synthetic val$cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;->val$cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

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

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;->this$0:Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation$1;->val$cameraUpdate:Lcom/google/android/gms/maps/CameraUpdate;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;->access$000(Lcom/mcdonalds/app/storelocator/maps/GoogleImplementation;Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 183
    return-void
.end method
