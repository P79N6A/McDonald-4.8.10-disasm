.class public final enum Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
.super Ljava/lang/Enum;
.source "ExtendedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/push/ExtendedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeepLinkingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

.field public static final enum Dashboard:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

.field public static final enum OfferDetails:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    const-string v1, "Dashboard"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->Dashboard:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    .line 26
    new-instance v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    const-string v1, "OfferDetails"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->OfferDetails:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    sget-object v1, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->Dashboard:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->OfferDetails:Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->$VALUES:[Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.ExtendedData$DeepLinkingType"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const-class v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.customer.push.ExtendedData$DeepLinkingType"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v0, Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->$VALUES:[Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/customer/push/ExtendedData$DeepLinkingType;

    return-object v0
.end method
