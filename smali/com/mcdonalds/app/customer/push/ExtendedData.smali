.class public Lcom/mcdonalds/app/customer/push/ExtendedData;
.super Ljava/lang/Object;
.source "ExtendedData.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    }
.end annotation


# instance fields
.field private mDeepLinkingID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deepLinkingID"
    .end annotation
.end field

.field private mOfferID:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "offerID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeepLinkingID()Ljava/lang/Integer;
    .locals 2

    .prologue
    const-string v0, "getDeepLinkingID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/ExtendedData;->mDeepLinkingID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOfferID()Ljava/lang/Integer;
    .locals 2

    .prologue
    const-string v0, "getOfferID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/ExtendedData;->mOfferID:Ljava/lang/Integer;

    return-object v0
.end method
