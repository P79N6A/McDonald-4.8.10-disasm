.class Lcom/mcdonalds/app/customer/UserValidationFragment$3;
.super Ljava/lang/Object;
.source "UserValidationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/customer/UserValidationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/UserValidationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/UserValidationFragment;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$3;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "onClick"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v3, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$3;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 211
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    if-eqz v0, :cond_1

    .line 213
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$3;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/customer/UserValidationFragment;->access$500(Lcom/mcdonalds/app/customer/UserValidationFragment;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 216
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 217
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "email_verification_alert"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    const-string v3, "EXTRA_REFRESH_DASHBOARD"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 221
    .end local v2    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/customer/UserValidationFragment$3;->this$0:Lcom/mcdonalds/app/customer/UserValidationFragment;

    const-class v4, Lcom/mcdonalds/app/MainActivity;

    invoke-virtual {v3, v4, v1}, Lcom/mcdonalds/app/customer/UserValidationFragment;->startActivity(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 223
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
