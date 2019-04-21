.class public interface abstract Lcom/mcdonalds/app/social/SocialLogin$SocialLoginListener;
.super Ljava/lang/Object;
.source "SocialLogin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/social/SocialLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SocialLoginListener"
.end annotation


# virtual methods
.method public abstract onSocialNetworkAuthenticationComplete(Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;)V
.end method

.method public abstract onSocialNetworkAvailable()V
.end method

.method public abstract onSocialNetworkSelected(Lcom/mcdonalds/sdk/modules/models/SocialNetwork;)V
.end method
