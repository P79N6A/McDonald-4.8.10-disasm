.class Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;
.super Ljava/lang/Object;
.source "OfferFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemCounter"
.end annotation


# instance fields
.field private mCount:I

.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;)V
    .locals 1

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2258
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->mCount:I

    .line 2259
    return-void
.end method


# virtual methods
.method public increment()V
    .locals 2

    .prologue
    const-string v0, "increment"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2266
    iget v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->mCount:I

    .line 2267
    return-void
.end method

.method public value()I
    .locals 2

    .prologue
    const-string v0, "value"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2262
    iget v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;->mCount:I

    return v0
.end method
