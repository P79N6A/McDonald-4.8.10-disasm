.class public final enum Lcom/mcdonalds/app/offers/OfferSection$OfferSections;
.super Ljava/lang/Enum;
.source "OfferSection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfferSections"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/offers/OfferSection$OfferSections;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

.field public static final enum CURRENT:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

.field public static final enum FAVORITE:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

.field public static final enum NEAR:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

.field public static final enum OTHER:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    const-string v1, "NEAR"

    const-string v2, "NEAR"

    invoke-direct {v0, v1, v3, v2}, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->NEAR:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    .line 56
    new-instance v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    const-string v1, "FAVORITE"

    const-string v2, "FAVORITE"

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->FAVORITE:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    .line 57
    new-instance v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    const-string v1, "CURRENT"

    const-string v2, "CURRENT"

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->CURRENT:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    .line 58
    new-instance v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    const-string v1, "OTHER"

    const-string v2, "OTHER"

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->OTHER:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    sget-object v1, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->NEAR:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->FAVORITE:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->CURRENT:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->OTHER:Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->$VALUES:[Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->mName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/offers/OfferSection$OfferSections;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.offers.OfferSection$OfferSections"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const-class v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/offers/OfferSection$OfferSections;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.offers.OfferSection$OfferSections"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->$VALUES:[Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/offers/OfferSection$OfferSections;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferSection$OfferSections;->mName:Ljava/lang/String;

    return-object v0
.end method
