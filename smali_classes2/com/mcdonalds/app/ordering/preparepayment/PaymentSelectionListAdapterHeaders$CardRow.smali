.class public final enum Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;
.super Ljava/lang/Enum;
.source "PaymentSelectionListAdapterHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardRow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

.field public static final enum Add:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

.field public static final enum Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

.field public static final enum One_Time:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    const-string v1, "Card"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    const-string v1, "Add"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Add:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    const-string v1, "One_Time"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->One_Time:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Card:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->Add:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->One_Time:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->$VALUES:[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionListAdapterHeaders$CardRow"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    const-class v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionListAdapterHeaders$CardRow"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->$VALUES:[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$CardRow;

    return-object v0
.end method
