.class Lcom/mcdonalds/app/offers/OfferProductFragment$1$1;
.super Ljava/lang/Object;
.source "OfferProductFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$1;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferProductFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/offers/OfferProductFragment$1;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1$1;->this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$1$1;->this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$1;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferProductFragment$1;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferProductFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 193
    return-void
.end method
