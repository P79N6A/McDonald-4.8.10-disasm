.class public Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;
.super Ljava/lang/Object;
.source "OrderItem.java"


# instance fields
.field private mOrderItemCategory:Ljava/lang/String;

.field private mOrderItemCount:I

.field private mOrderItemId:Ljava/lang/String;

.field private mOrderItemName:Ljava/lang/String;

.field private mOrderUnitPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "orderItemCategory"    # Ljava/lang/String;
    .param p2, "orderItemId"    # Ljava/lang/String;
    .param p3, "orderItemName"    # Ljava/lang/String;
    .param p4, "orderUnitPrice"    # Ljava/lang/String;
    .param p5, "orderItemCount"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemCategory:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemId:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderUnitPrice:Ljava/lang/String;

    .line 23
    iput p5, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemCount:I

    .line 24
    return-void
.end method


# virtual methods
.method public getOrderItemCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemCount()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemCount:I

    return v0
.end method

.method public getOrderItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderUnitPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/services/analytics/conversionmaster/OrderItem;->mOrderUnitPrice:Ljava/lang/String;

    return-object v0
.end method
