.class public final enum Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
.super Ljava/lang/Enum;
.source "CustomerProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountVerificationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

.field public static final enum EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

.field public static final enum NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

.field public static final enum SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .line 35
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .line 36
    new-instance v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->SMS:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->EMAIL:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->NONE:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->$VALUES:[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    const-class v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->$VALUES:[Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/customer/CustomerProfile$AccountVerificationType;

    return-object v0
.end method
