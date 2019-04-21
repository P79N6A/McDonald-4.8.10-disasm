.class Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;
.super Ljava/lang/Object;
.source "CommunicationsPreferencesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
        "Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 198
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;->this$0:Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 203
    :cond_0
    return-void
.end method

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

    .line 194
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/CommunicationsPreferencesFragment$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/NotificationPreferences;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
