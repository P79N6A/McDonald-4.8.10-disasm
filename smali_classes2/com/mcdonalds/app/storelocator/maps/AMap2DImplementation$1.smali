.class Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$1;
.super Ljava/lang/Object;
.source "AMap2DImplementation.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMapLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->setOnMapLoadedListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

.field final synthetic val$onMapLoadedListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$1;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    iput-object p2, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$1;->val$onMapLoadedListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;

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

    .line 143
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$1;->val$onMapLoadedListener:Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;

    invoke-interface {v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;->onMapLoaded()V

    .line 144
    return-void
.end method
