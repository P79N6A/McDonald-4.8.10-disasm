.class public Lcom/mcdonalds/app/model/PaymentResultResponse;
.super Ljava/lang/Object;
.source "PaymentResultResponse.java"


# instance fields
.field private data:Lcom/mcdonalds/app/model/PaymentResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Data"
    .end annotation
.end field

.field private resultCode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ResultCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Lcom/mcdonalds/app/model/PaymentResult;
    .locals 2

    .prologue
    const-string v0, "getData"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lcom/mcdonalds/app/model/PaymentResultResponse;->data:Lcom/mcdonalds/app/model/PaymentResult;

    return-object v0
.end method
