#include <unistd.h>
#include <string>
#include <iostream>
#include <SDL2/SDL.h>
#include <SDL2/SDL_image.h>
#include <SDL2_framerate.h>
#include "tweeny/tweeny.h"


int main(int,char**){
	int SCREEN_W=640;
	int SCREEN_H=480;
		
	if(SDL_Init(SDL_INIT_VIDEO) != 0){
		std::cout << "SDL_Init() failed" << SDL_GetError() << "\n";
		exit(1);
	}

	SDL_Window* window = SDL_CreateWindow("test""",SDL_WINDOWPOS_CENTERED,SDL_WINDOWPOS_CENTERED,SCREEN_W,SCREEN_H, SDL_WINDOW_SHOWN);
	if(window == nullptr){
		std::cout << "SDL_CreateWindow() failed" << SDL_GetError() << "\n";
		SDL_Quit();
		exit(1);
	}

	SDL_Renderer* renderer = SDL_CreateRenderer(window, -1,SDL_RENDERER_ACCELERATED | SDL_RENDERER_PRESENTVSYNC);
	if(renderer == nullptr){
		std::cout << "SDL_CreateRenderer() failed" << SDL_GetError() << "\n";
		SDL_Quit();
		exit(1);
	}
	
	FPSmanager fps_mgr;
	SDL_initFramerate(&fps_mgr);
	SDL_setFramerate(&fps_mgr,60);
	
	SDL_Surface* temp_surface = IMG_Load("../wave.png");
	SDL_Texture* myImg = SDL_CreateTextureFromSurface(renderer,temp_surface);		
	SDL_FreeSurface(temp_surface);
	
	SDL_Rect myImg_rect;
	SDL_QueryTexture(myImg,NULL,NULL,&myImg_rect.w,&myImg_rect.h);
	int numTiles=(int)(SCREEN_W/myImg_rect.w)+2;
	myImg_rect.y=(-myImg_rect.h/2)+30;
	myImg_rect.x=0;

	SDL_SetTextureBlendMode(myImg,SDL_BLENDMODE_BLEND);
	
	auto waveTween = tweeny::from(-(myImg_rect.h/2)+30).to(-(myImg_rect.h/2)+SCREEN_H-30).during(120).via(tweeny::easing::elasticInOut);
	
	bool running=true;
	bool isMoving=false;
	bool tweenForward=true;
	Sint16 mouse_x,mouse_y=0;
	Sint16 frame=0;
	SDL_Event event;
	while(running){
		frame++;
		while(SDL_PollEvent(&event)){
			switch(event.type){
				case SDL_QUIT:
					running=false;
				break;
				case SDL_MOUSEMOTION:
					mouse_x = event.motion.x;
					mouse_y = event.motion.y;
				break;
				case SDL_KEYDOWN:
					switch(event.key.keysym.sym){
						case SDLK_SPACE:
						isMoving=true;
						
						if(waveTween.progress() < 1.0f && !tweenForward){
							tweenForward=true;
							waveTween.forward();
							printf(">>>\n");
						}
						if(waveTween.progress() > 0.001f && tweenForward){
							tweenForward=false;
							waveTween.backward();
							printf("<<<\n");
						}
						break;	
						case SDLK_q:
							running=false;
						break;
					}
					break;
			}
		}
		
		SDL_SetRenderTarget(renderer,NULL);
		SDL_RenderClear(renderer);
		
		if(isMoving){
			myImg_rect.y=waveTween.step(2);
			if(waveTween.progress() >= 1.0f){
				isMoving=false;
				//waveTween.via(0,tweeny::easing::bounceIn);
				waveTween.backward();
				tweenForward=false;
			}
			else if(waveTween.progress() <= 0.001f){
				isMoving=false;
				waveTween.forward();
				tweenForward=true;
				//waveTween.via(0,tweeny::easing::bounceOut);
			}
		
		}	
		for(int i=0;i<numTiles;i++){
			myImg_rect.x=(myImg_rect.w*i)+(frame%myImg_rect.w)-myImg_rect.w;
			SDL_RenderCopy(renderer,myImg,NULL,&myImg_rect);
		}
		SDL_RenderPresent(renderer);
		SDL_framerateDelay(&fps_mgr);
	}
	
	
	
	SDL_Quit();
	return 0;
}
