.class public Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
.super Ljava/lang/Object;
.source "StoreCapabilties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoreCapability"
.end annotation


# instance fields
.field private capabilityId:I

.field private hasScanner:Z

.field final synthetic this$0:Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->this$0:Lcom/mcdonalds/sdk/modules/models/StoreCapabilties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->hasScanner:Z

    return p1
.end method


# virtual methods
.method public getCapabilityId()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->capabilityId:I

    return v0
.end method

.method public isHasScanner()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->hasScanner:Z

    return v0
.end method

.method public setCapabilityId(I)V
    .locals 0
    .param p1, "capabilityId"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->capabilityId:I

    .line 150
    return-void
.end method

.method public setHasScanner(Z)V
    .locals 0
    .param p1, "hasScanner"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/StoreCapabilties$StoreCapability;->hasScanner:Z

    .line 158
    return-void
.end method
