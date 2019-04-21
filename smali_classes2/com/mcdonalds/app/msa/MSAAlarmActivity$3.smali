.class Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;
.super Ljava/lang/Object;
.source "MSAAlarmActivity.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/msa/MSAAlarmActivity;->getUserOffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/msa/MSAAlarmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 240
    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MSAAlarmActivity$3;->this$0:Lcom/mcdonalds/app/msa/MSAAlarmActivity;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$500(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Ljava/util/List;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/msa/MSAAlarmActivity;->access$102(Lcom/mcdonalds/app/msa/MSAAlarmActivity;Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 243
    :cond_0
    return-void
.end method
