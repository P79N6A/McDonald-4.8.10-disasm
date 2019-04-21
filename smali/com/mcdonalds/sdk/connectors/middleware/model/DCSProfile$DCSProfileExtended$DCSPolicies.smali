.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended$DCSPolicies;
.super Ljava/lang/Object;
.source "DCSProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCSPolicies"
.end annotation


# instance fields
.field public acceptancePolicies:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "acceptancePolicies"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public accessPolicy:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "accessPolicy"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
