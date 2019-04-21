.class Lcom/mcdonalds/app/offers/OfferFragment$11;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->initModules(Landroid/view/View;)V
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
    .line 951
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$11;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "run"

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 954
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$11;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment;->listener:Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$11;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$900(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/mcdonalds/app/offers/OfferFragment$OrderOfferListener;->onResponse(Lcom/mcdonalds/sdk/modules/models/OrderOffer;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 955
    return-void
.end method
