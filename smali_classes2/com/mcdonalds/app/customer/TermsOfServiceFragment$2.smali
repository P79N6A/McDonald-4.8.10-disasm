.class Lcom/mcdonalds/app/customer/TermsOfServiceFragment$2;
.super Landroid/webkit/WebChromeClient;
.source "TermsOfServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/customer/TermsOfServiceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/customer/TermsOfServiceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mcdonalds/app/customer/TermsOfServiceFragment$2;->this$0:Lcom/mcdonalds/app/customer/TermsOfServiceFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 4
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/webkit/GeolocationPermissions$Callback;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onGeolocationPermissionsShowPrompt"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-interface {p2, p1, v3, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 127
    return-void
.end method
