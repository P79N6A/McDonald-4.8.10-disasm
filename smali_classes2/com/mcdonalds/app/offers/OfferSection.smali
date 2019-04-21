.class public Lcom/mcdonalds/app/offers/OfferSection;
.super Ljava/lang/Object;
.source "OfferSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/offers/OfferSection$OfferSections;
    }
.end annotation


# instance fields
.field private mEnabled:Z

.field private mSectionTitle:Ljava/lang/String;

.field private mSectionType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "sectionTitle"    # Ljava/lang/String;
    .param p2, "sectionType"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferSection;->mSectionTitle:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferSection;->mSectionType:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/mcdonalds/app/offers/OfferSection;->mEnabled:Z

    .line 19
    return-void
.end method


# virtual methods
.method public getSectionType()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getSectionType"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferSection;->mSectionType:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const-string v0, "isEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-boolean v0, p0, Lcom/mcdonalds/app/offers/OfferSection;->mEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "toString"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfferSection{mSectionTitle=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferSection;->mSectionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mSectionType=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferSection;->mSectionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/app/offers/OfferSection;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
