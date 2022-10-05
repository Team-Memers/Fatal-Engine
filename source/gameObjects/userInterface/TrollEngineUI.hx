//unfinished, unsure if it works
//how do i check stuff

if (prevCamFollow != null)
		{
			camFollow = prevCamFollow;
			prevCamFollow = null;
		}

		add(camFollow);

		FlxG.camera.follow(camFollow, LOCKON, 0.04);
		// FlxG.camera.setScrollBounds(0, FlxG.width, 0, FlxG.height);
		FlxG.camera.zoom = defaultCamZoom;
		FlxG.camera.focusOn(camFollow.getPosition());

		FlxG.worldBounds.set(0, 0, FlxG.width, FlxG.height);

		FlxG.fixedTimestep = false;

		if(downscroll)progressBG = new FlxSprite(0, FlxG.height * 0.95).loadGraphic(Paths.image('healthBar'));
		else progressBG = new FlxSprite(0, FlxG.height - FlxG.height + 10).loadGraphic(Paths.image('healthBar'));
		progressBG.screenCenter(X);
		progressBG.scrollFactor.set();
		if(FlxG.save.data.pgbar) add(progressBG);


		var pgBar = new FlxBar(progressBG.x + 4, progressBG.y + 4, LEFT_TO_RIGHT, Std.int(progressBG.width - 8), Std.int(progressBG.height - 8), this,
		'progress', 0, FlxG.sound.music.length);
		pgBar.scrollFactor.set();
		// healthBar
		if(FlxG.save.data.pgbar) add(pgBar);
		if(downscroll)healthBarBG = new FlxSprite(0, FlxG.height * 0.1).loadGraphic(Paths.image('healthBar'));
		else healthBarBG = new FlxSprite(0, FlxG.height * 0.9).loadGraphic(Paths.image('healthBar'));
		healthBarBG.screenCenter(X);
		healthBarBG.scrollFactor.set();
		add(healthBarBG);

		healthBar = new FlxBar(healthBarBG.x + 4, healthBarBG.y + 4, RIGHT_TO_LEFT, Std.int(healthBarBG.width - 8), Std.int(healthBarBG.height - 8), this,
			'health', 0, 2);
		healthBar.scrollFactor.set();

		iconP1 = new HealthIcon(SONG.player1, true);
		iconP1.y = healthBar.y - (iconP1.height / 2);

		iconP2 = new HealthIcon(SONG.player2, false);
		iconP2.y = healthBar.y - (iconP2.height / 2);

		healthBar.createFilledBar(dominantColor(iconP2), dominantColor(iconP1)); //0xFFFF0000, 0xFF66FF33
		// healthBar
		add(healthBar);
		add(iconP1);
		add(iconP2);
		var songtext = new FlxText(healthBarBG.x + (healthBarBG.width / 2) - 20, healthBarBG.y, 0, SONG.song, 16);
		songtext.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, RIGHT);
		songtext.setBorderStyle(OUTLINE, FlxColor.BLACK, 1);
		songtext.scrollFactor.set();
		songtext.cameras = [camHUD];
		add(songtext);

		scoreTxt = new FlxText(healthBarBG.x + healthBarBG.width - 190, healthBarBG.y + 30, 0, "", 20);
		scoreTxt.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, RIGHT);
		scoreTxt.setBorderStyle(OUTLINE, FlxColor.BLACK, 1);
		scoreTxt.scrollFactor.set();
		add(scoreTxt);

		missTxt = new FlxText(healthBarBG.x + healthBarBG.width - 330, healthBarBG.y + 30, 0, "", 20);
		missTxt.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, LEFT);
		missTxt.setBorderStyle(OUTLINE, FlxColor.BLACK, 1);
		missTxt.scrollFactor.set();
		add(missTxt);

		accTxt = new FlxText(healthBarBG.x + healthBarBG.width - 600, healthBarBG.y + 30, 0, "Accuracy: " + accuracy + '%', 20);
		accTxt.setFormat(Paths.font("vcr.ttf"), 16, FlxColor.WHITE, LEFT);
		accTxt.setBorderStyle(OUTLINE, FlxColor.BLACK, 1);
		accTxt.scrollFactor.set();
		add(accTxt);

		gradetxt = new FlxText(healthBarBG.x + healthBarBG.width - 850, healthBarBG.y + 30, 0, "Grade:" + grade, 20);
		gradetxt.setFormat(Paths.font("vcr.ttf"), 30, FlxColor.WHITE, LEFT);
		gradetxt.setBorderStyle(OUTLINE, FlxColor.BLACK, 1);
		gradetxt.scrollFactor.set();
		add(gradetxt);

		strumLineNotes.cameras = [camHUD];
		notes.cameras = [camHUD];
		healthBar.cameras = [camHUD];
		healthBarBG.cameras = [camHUD];
		progressBG.cameras = [camHUD];
		pgBar.cameras = [camHUD];
		iconP1.cameras = [camHUD];
		iconP2.cameras = [camHUD];
		
		scoreTxt.cameras = [camHUD];
		doof.cameras = [camHUD];
		missTxt.cameras = [camHUD];
		accTxt.cameras = [camHUD];
		gradetxt.cameras = [camHUD];
		// if (SONG.song == 'South')
		// FlxG.camera.alpha = 0.7;
		// UI_camera.zoom = 1;
