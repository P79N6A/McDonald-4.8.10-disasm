.class public Lcom/mcdonalds/app/customer/push/model/NotificationBody;
.super Ljava/lang/Object;
.source "NotificationBody.java"


# instance fields
.field private description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mCustomContent:Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_content"
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
.method public getCustomContent()Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;
    .locals 2

    .prologue
    const-string v0, "getCustomContent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/model/NotificationBody;->mCustomContent:Lcom/mcdonalds/app/customer/push/model/NotificationCustomContent;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDescription"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/model/NotificationBody;->description:Ljava/lang/String;

    return-object v0
.end method
