.class Lcom/mcdonalds/app/offers/OfferFragment$13;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->onMapAvailable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$13;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .prologue
    const/4 v3, 0x1

    const-string v0, "onMarkerClick"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1143
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$13;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1500(Lcom/mcdonalds/app/offers/OfferFragment;)V

    .line 1146
    return v3
.end method
