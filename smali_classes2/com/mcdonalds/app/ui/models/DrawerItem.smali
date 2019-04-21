.class public Lcom/mcdonalds/app/ui/models/DrawerItem;
.super Ljava/lang/Object;
.source "DrawerItem.java"


# instance fields
.field private mAnalyticsTitle:Ljava/lang/String;

.field private mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private mDataLayerTitle:Ljava/lang/String;

.field private mHeading:Z

.field private mLeftHandImageName:Ljava/lang/String;

.field private mRequiresLoginState:Ljava/lang/Boolean;

.field private mRequiresLogoutState:Ljava/lang/Boolean;

.field private mRightHandImageName:Ljava/lang/String;

.field private mSectionTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mAnalyticsTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getAttributes"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getDataLayerTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDataLayerTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mDataLayerTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftHandImageName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getLeftHandImageName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mLeftHandImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRightHandImageName()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getRightHandImageName"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mRightHandImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getSectionTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mSectionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getUrl"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isHeading()Z
    .locals 2

    .prologue
    const-string v0, "isHeading"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-boolean v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mHeading:Z

    return v0
.end method

.method public isRequiresLoginState()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "isRequiresLoginState"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mRequiresLoginState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isRequiresLogoutState()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const-string v0, "isRequiresLogoutState"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mRequiresLogoutState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAnalyticsTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "analyticsTitle"    # Ljava/lang/String;

    .prologue
    const-string v0, "setAnalyticsTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mAnalyticsTitle:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "attributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/io/Serializable;>;"
    const-string v0, "setAttributes"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mAttributes:Ljava/util/Map;

    .line 92
    return-void
.end method

.method public setDataLayerTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "dataLayerTitle"    # Ljava/lang/String;

    .prologue
    const-string v0, "setDataLayerTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mDataLayerTitle:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setHeading(Z)V
    .locals 4
    .param p1, "heading"    # Z

    .prologue
    const-string v0, "setHeading"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iput-boolean p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mHeading:Z

    .line 36
    return-void
.end method

.method public setLeftHandImageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "leftHandImageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setLeftHandImageName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mLeftHandImageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setRequiresLoginState(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "RequiresLoginState"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setRequiresLoginState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mRequiresLoginState:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method public setRequiresLogoutState(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "requiresLogoutState"    # Ljava/lang/Boolean;

    .prologue
    const-string v0, "setRequiresLogoutState"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mRequiresLogoutState:Ljava/lang/Boolean;

    .line 52
    return-void
.end method

.method public setRightHandImageName(Ljava/lang/String;)V
    .locals 3
    .param p1, "rightHandImageName"    # Ljava/lang/String;

    .prologue
    const-string v0, "setRightHandImageName"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mRightHandImageName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setSectionTitle(Ljava/lang/String;)V
    .locals 3
    .param p1, "sectionTitle"    # Ljava/lang/String;

    .prologue
    const-string v0, "setSectionTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mSectionTitle:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v0, "setUrl"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lcom/mcdonalds/app/ui/models/DrawerItem;->mUrl:Ljava/lang/String;

    .line 84
    return-void
.end method
