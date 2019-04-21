.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;
.source "DCSFeedbackProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;
    }
.end annotation


# instance fields
.field public comment:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "comment"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSProfile;-><init>()V

    .line 6
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;->comment:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;

    return-void
.end method
