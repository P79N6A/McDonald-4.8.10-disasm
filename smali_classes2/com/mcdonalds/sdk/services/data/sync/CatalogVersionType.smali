.class public final enum Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
.super Ljava/lang/Enum;
.source "CatalogVersionType.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Availability:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum DisplayCategory:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Facilities:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum FeedbackTypeName:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Language:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum MenuType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Names:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum PaymentMethod:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum ProductPrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Products:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Promotion:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum RecipePrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Recipes:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum Restaurants:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum SocialMedia:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum StaticData:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum StoreFacility:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

.field public static final enum TenderType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;


# instance fields
.field private final mIntegerValue:I

.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "StaticData"

    const/4 v2, 0x0

    const-string v3, "StaticData"

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StaticData:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Restaurants"

    const-string v2, "Restaurants"

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Restaurants:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "DisplayCategory"

    const-string v2, "DisplayCategory"

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->DisplayCategory:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 15
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Facilities"

    const-string v2, "Facilities"

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Facilities:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 16
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Recipes"

    const-string v2, "Recipes"

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Recipes:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 17
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Names"

    const/4 v2, 0x6

    const-string v3, "Names"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Names:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 18
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Promotion"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "Promotion"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Promotion:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 19
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Products"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "Products"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Products:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 20
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Language"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "Language"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Language:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "StoreFacility"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "StoreFacility"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StoreFacility:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 22
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "ProductPrices"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "ProductPrices"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->ProductPrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "Availability"

    const/16 v2, 0xb

    const/16 v3, 0xc

    const-string v4, "Availability"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Availability:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 24
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "RecipePrices"

    const/16 v2, 0xc

    const/16 v3, 0xd

    const-string v4, "RecipePrices"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->RecipePrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 25
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "PaymentMethod"

    const/16 v2, 0xd

    const/16 v3, 0xe

    const-string v4, "PaymentMethod"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->PaymentMethod:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "FeedbackTypeName"

    const/16 v2, 0xe

    const/16 v3, 0xf

    const-string v4, "FeedbackTypeName"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->FeedbackTypeName:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "TenderType"

    const/16 v2, 0xf

    const/16 v3, 0x10

    const-string v4, "TenderType"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->TenderType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 28
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "MenuType"

    const/16 v2, 0x10

    const/16 v3, 0x11

    const-string v4, "MenuType"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->MenuType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 29
    new-instance v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const-string v1, "SocialMedia"

    const/16 v2, 0x11

    const/16 v3, 0x12

    const-string v4, "SocialMedia"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->SocialMedia:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    .line 11
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    const/4 v1, 0x0

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StaticData:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Restaurants:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->DisplayCategory:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Facilities:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Recipes:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Names:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Promotion:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Products:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Language:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->StoreFacility:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->ProductPrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->Availability:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->RecipePrices:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->PaymentMethod:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->FeedbackTypeName:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->TenderType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->MenuType:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->SocialMedia:Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->$VALUES:[Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->mIntegerValue:I

    .line 36
    iput-object p4, p0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->mName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static fromValue(I)Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 48
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->values()[Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 49
    .local v0, "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getIntegerValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 54
    .end local v0    # "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    :goto_1
    return-object v0

    .line 48
    .restart local v0    # "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "type":Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->$VALUES:[Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    return-object v0
.end method


# virtual methods
.method public getIntegerValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->mIntegerValue:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->mName:Ljava/lang/String;

    return-object v0
.end method
