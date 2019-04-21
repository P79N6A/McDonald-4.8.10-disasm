.class Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;
.super Ljava/lang/Object;
.source "MWGETQueryArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryArgsPair"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->mName:Ljava/lang/String;

    .line 172
    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->mValue:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->mName:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->mValue:Ljava/lang/String;

    .line 177
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->mValue:Ljava/lang/String;

    return-object v0
.end method
