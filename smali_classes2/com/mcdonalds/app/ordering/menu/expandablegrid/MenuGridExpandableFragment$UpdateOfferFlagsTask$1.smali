.class Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask$1;
.super Ljava/lang/Object;
.source "MenuGridExpandableFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
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
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask$1;->this$1:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;

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

    .line 270
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
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

    .line 274
    if-eqz p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask$1;->this$1:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;->this$0:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->refreshOffersFlags(Ljava/util/List;)V

    .line 277
    :cond_0
    return-void
.end method
