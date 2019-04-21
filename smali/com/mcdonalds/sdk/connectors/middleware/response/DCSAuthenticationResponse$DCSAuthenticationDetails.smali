.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;
.super Lcom/mcdonalds/sdk/connectors/middleware/response/DCSGetProfileDetails;
.source "DCSAuthenticationResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSAuthenticationDetails"
.end annotation


# instance fields
.field public refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "refreshToken"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse$DCSAuthenticationDetails;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSAuthenticationResponse;

    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSGetProfileDetails;-><init>()V

    return-void
.end method
