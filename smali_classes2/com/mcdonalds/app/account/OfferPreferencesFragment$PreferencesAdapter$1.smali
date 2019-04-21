.class Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;
.super Ljava/lang/Object;
.source "OfferPreferencesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iput p2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "onClick"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v1, v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$002(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)Z

    .line 427
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->mOffersList:Ljava/util/List;

    iget v2, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/OfferData;

    .line 430
    .local v0, "offerData":Lcom/mcdonalds/app/account/OfferData;
    check-cast p1, Landroid/widget/Switch;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/account/OfferData;->setState(Ljava/lang/Boolean;)V

    .line 433
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v1, v4}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$1202(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)Z

    .line 435
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .line 436
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferData;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 437
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferData;->getState()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 435
    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$400(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Ljava/lang/String;Z)V

    .line 440
    iget-object v1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter$1;->this$1:Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/account/OfferPreferencesFragment$PreferencesAdapter;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$500(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V

    .line 441
    return-void
.end method
