.class Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;
.super Ljava/lang/Object;
.source "OfferRedeemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/offers/OfferRedeemFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferRedeemFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 145
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Done"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setResult(I)V

    .line 150
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferRedeemFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferRedeemFragment;

    const-class v2, Lcom/mcdonalds/app/MainActivity;

    const-string v3, "dashboard"

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method
