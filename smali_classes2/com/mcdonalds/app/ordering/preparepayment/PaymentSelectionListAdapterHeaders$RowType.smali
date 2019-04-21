.class final enum Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;
.super Ljava/lang/Enum;
.source "PaymentSelectionListAdapterHeaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

.field public static final enum Checkable:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

.field public static final enum New:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    const-string v1, "Checkable"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->Checkable:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    new-instance v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    const-string v1, "New"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->New:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->Checkable:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->New:Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->$VALUES:[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionListAdapterHeaders$RowType"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const-class v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.ordering.preparepayment.PaymentSelectionListAdapterHeaders$RowType"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->$VALUES:[Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/ordering/preparepayment/PaymentSelectionListAdapterHeaders$RowType;

    return-object v0
.end method
