.class Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;
.super Ljava/lang/Object;
.source "OfferPreferencesFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/OfferPreferencesFragment;->populateSubscribeToOffers(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/OfferPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const-string v0, "onCheckedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    if-nez p2, :cond_0

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.isMSAEnabled"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    .line 300
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/msa/MSASettings;->alarmEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$900(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Landroid/widget/CompoundButton;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/OfferPreferencesFragment$4;->this$0:Lcom/mcdonalds/app/account/OfferPreferencesFragment;

    invoke-static {v0, p2}, Lcom/mcdonalds/app/account/OfferPreferencesFragment;->access$1000(Lcom/mcdonalds/app/account/OfferPreferencesFragment;Z)V

    goto :goto_0
.end method
