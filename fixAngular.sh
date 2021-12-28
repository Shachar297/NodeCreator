
cd client/src/

rm main.ts

echo "
import { enableProdMode } from '@angular/core';
import { platformBrowserDynamic } from '@angular/platform-browser-dynamic';

import { AppModule } from './app/modules/app.module';
import { environment } from './environments/environment';

if (environment.production) {
  enableProdMode();
}

platformBrowserDynamic().bootstrapModule(AppModule)
  .catch(err => console.error(err));
" >> main.ts

echo "main.ts Was fixed."

rm index.html


echo "
<!doctype html>
<html lang='en'>
<head>
  <meta charset='utf-8'>
  <title>Client</title>
  <base href='/'>
  <meta name='viewport' content='width=device-width, initial-scale=1'>
  <link rel='icon' type='image/x-icon' href='favicon.ico'>
</head>
<body>
  <app-layout></app-layout>
</body>
</html>

" >> index.html

echo "index.html Was fixed."

rm styles.css

echo "
html, body{
    height: 100%;
    margin: 0;
    padding: 0;
}

html, body { height: 100%; }
body { margin: 0; }
" >> styles.css

cd app/modules

rm app.module.ts

echo "

import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';

import { HeaderComponent } from '../components/header/header.component';
import { MenuComponent } from '../components/menu/menu.component';
import { LoginComponent } from '../components/login/login.component';
import { FooterComponent } from '../components/footer/footer.component';
import { LayoutComponent } from '../components/layout/layout.component';

@NgModule({
  declarations: [
    HeaderComponent,
    MenuComponent,
    LoginComponent,
    FooterComponent,
    LayoutComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [LayoutComponent]
})
export class AppModule { }

" >> app.module.ts

cd ../components/layout

rm layout.component.css

echo "
.layout {
    margin: 0;
    padding: 0;
    min-height: 100%;
    border: 1px solid rgb(0, 0, 0, 0.6);
    background-color: rgb(255, 255, 255);
    text-align: center;
    box-sizing: border-box;
    display: grid;
    grid-template-columns: repeat(12, 1fr);
    /* grid-template-rows: 1% 98% 1%; */
  }

  .layout > main {
      height: 70vh;
      grid-column: span 10;
  }

  .layout > * {
    border: 1px solid rgb(0, 0, 0, 0.2);

  }

  .layout > header {
    height: 20vh;
    grid-column: span 12;
  }

  .layout > footer {
    grid-column: span 12;
    height: 10vh;
    background-color: rgb(245, 160, 0, 0.4) !important;
  }

  .layout > aside {
    grid-column: span 2;
  }
" >> layout.component.css

rm layout.component.html

echo "
<section class='layout'>
    <header>
        <app-header>

        </app-header>
    </header>

    <aside>
        <app-menu>

        </app-menu>
    </aside>

    <main>
        <app-login>

        </app-login>
    </main>

    <footer>
        <app-footer>
            
        </app-footer>
    </footer>
</section>
" >> layout.component.html