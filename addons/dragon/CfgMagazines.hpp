class CfgMagazines {
    class 1Rnd_GAA_missiles;
    class GVAR(super) : 1Rnd_GAA_missiles {
        sound[] = {};
        soundFly[] = {};
        soundHit[] = {};
        model = QPATHTOF(models\dragon.p3d);
        ammo = QGVAR(super);
        initSpeed = 200;
        scope = 1;
        displayName = CSTRING(dragonName);
    };
};
