.class public Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;
.super Ljava/lang/Object;
.source "DCSFeedbackProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DCSComment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;
    }
.end annotation


# instance fields
.field public feedback:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feedback"
    .end annotation
.end field

.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment;->feedback:Lcom/mcdonalds/sdk/connectors/middleware/model/DCSFeedbackProfile$DCSComment$DCSFeedback;

    return-void
.end method
