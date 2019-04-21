.class Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;
.super Ljava/lang/Object;
.source "MPGSPaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JsObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;


# direct methods
.method private constructor <init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;
    .param p2, "x1"    # Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;-><init>(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;)V

    return-void
.end method


# virtual methods
.method public onSessionUpdate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "errCode"    # I
    .param p3, "scheme"    # Ljava/lang/String;
    .param p4, "nickname"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const-string v0, "onSessionUpdate"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    if-nez p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0, p4}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$402(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0, p1, p3}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$500(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment$JsObject;->this$0:Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;

    invoke-static {v0, p2}, Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;->access$600(Lcom/mcdonalds/app/ordering/MPGSPaymentFragment;I)V

    goto :goto_0
.end method
