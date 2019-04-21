.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileAudit;
.super Ljava/lang/Object;
.source "DCSProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSProfileAudit"
.end annotation


# instance fields
.field public createdBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createdBy"
    .end annotation
.end field

.field public lastLoggedInAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastLoggedInAt"
    .end annotation
.end field

.field public registrationChannel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "registrationChannel"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    .prologue
    .line 697
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile$DCSProfileAudit;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
