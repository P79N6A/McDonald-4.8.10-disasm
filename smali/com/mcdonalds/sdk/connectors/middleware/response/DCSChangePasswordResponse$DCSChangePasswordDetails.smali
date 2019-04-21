.class public Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse$DCSChangePasswordDetails;
.super Ljava/lang/Object;
.source "DCSChangePasswordResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSChangePasswordDetails"
.end annotation


# instance fields
.field public status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public statusCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusCode"
    .end annotation
.end field

.field public statusDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "statusDescription"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse$DCSChangePasswordDetails;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/response/DCSChangePasswordResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
