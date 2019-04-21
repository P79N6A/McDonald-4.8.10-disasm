.class public Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;
.super Ljava/lang/Object;
.source "NotificationCustomContent.java"


# instance fields
.field private deliveryId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_dId"
    .end annotation
.end field

.field private messageId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "_mId"
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
.method public getDeliveryId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDeliveryId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;->deliveryId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getMessageId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;->messageId:Ljava/lang/String;

    return-object v0
.end method
