.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse$DCSRegistrationDetails;
.super Ljava/lang/Object;
.source "DCSRegistrationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSRegistrationDetails"
.end annotation


# instance fields
.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshToken"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse$DCSRegistrationDetails;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSRegistrationResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
