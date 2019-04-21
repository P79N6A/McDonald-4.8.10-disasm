.class public final enum Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
.super Ljava/lang/Enum;
.source "OfferHomeItemModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

.field public static final enum GridRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

.field public static final enum Header:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

.field public static final enum ListRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

.field public static final enum Selector:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    const-string v1, "Header"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->Header:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    .line 10
    new-instance v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    const-string v1, "Selector"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->Selector:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    .line 11
    new-instance v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    const-string v1, "GridRow"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->GridRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    .line 12
    new-instance v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    const-string v1, "ListRow"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->ListRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    sget-object v1, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->Header:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->Selector:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->GridRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->ListRow:Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->$VALUES:[Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.widget.offers.OfferHomeItemModel$RowType"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    const-class v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.widget.offers.OfferHomeItemModel$RowType"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    sget-object v0, Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->$VALUES:[Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/widget/offers/OfferHomeItemModel$RowType;

    return-object v0
.end method
