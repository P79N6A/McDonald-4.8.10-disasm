.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse$DCSApplicationSecurityDetails;
.super Ljava/lang/Object;
.source "DCSApplicationSecurityResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSApplicationSecurityDetails"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;

.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse$DCSApplicationSecurityDetails;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSApplicationSecurityResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
