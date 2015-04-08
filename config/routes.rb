Rails.application.routes.draw do
  
  resources :contactos

  resources :lugar_nacimientos

  resources :roles

  devise_for :users
  resources :estado_civils

  resources :departamentos

  resources :users

  resources :dato_estudiantes do
    get :autocomplete_municipio_nombre, :on => :collection
  end

  resources :municipios

  resources :pais

  resources :tipo_documentos

  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/contact'
  get 'static_pages/about'
  
  
  get 'static_pages/usuarios'
  get 'static_pages/registros'
  get 'static_pages/reportes'
  get 'static_pages/configuracion'
  get 'static_pages/consulta'

  
  
  get 'static_pages/olvidaste_password'
 
  get 'static_pages/registrarse'
 
  get 'static_pages/registro_asistencia'

  get 'static_pages/registro_horarios'
 
  get'static_pages/registros_grados'
 
  get'static_pages/registros_grados'

  get'static_pages/reportes_alumnos'

  get'static_pages/reportes_jornadas'
  
  get 'static_pages/reportes_asistencia'
 
  get'static_pages/configuracion_user'

  get'static_pages/configuracion_preferencias'
 
  get'static_pages/agregar_info'
  
  get'static_pages/consultar_usuarios'
  
  get'static_pages/configurar_grupos'
  
  get'static_pages/consultar_alumnos'
  
  get'static_pages/consultar_jornadas'
  
  match '/home', to: 'static_pages#home',  via: 'get'
  match '/help',	to: 'static_pages#help',  via: 'get'
  match '/about',   to: 'static_pages#about',  via: 'get'
  match '/contact', to: 'static_pages#contact',  via: 'get'
  
  match '/usuarios', to: 'static_pages#usuarios',  via: 'get'
  match '/registros', to: 'static_pages#registros',  via: 'get'
  match '/reportes', to: 'static_pages#reportes',  via: 'get'
  match '/configuracion', to: 'static_pages#configuracion',  via: 'get'
  match '/consulta', to: 'static_pages#consulta',  via: 'get'
  
  match '/olvidaste_password', to: 'static_pages#olvidaste_password',  via: 'get'
  match '/registrarse', to: 'static_pages#registrarse',  via: 'get'
  match '/registro_asistencia', to: 'static_pages#registro_asistencia',  via: 'get'
  match '/registro_horarios', to: 'static_pages#registro_horarios',  via: 'get'
  match '/registros_grados', to: 'static_pages#registros_grados',  via: 'get'
  match '/reportes_asistencia', to: 'static_pages#reportes_asistencia',  via: 'get'
  match '/reportes_alumnos', to: 'static_pages#reportes_alumnos',  via: 'get'
  match '/reportes_jornadas', to: 'static_pages#reportes_jornadas',  via: 'get'
  match '/configuracion_user', to: 'static_pages#configuracion_user',  via: 'get'
  match '/configuracion_preferencias', to: 'static_pages#configuracion_preferencias',  via: 'get'
  match '/agregar_info', to: 'static_pages#agregar_info',  via: 'get'
  match '/consultar_usuarios', to: 'static_pages#consultar_usuarios',  via: 'get'
  match '/consultar_jornadas', to: 'static_pages#consultar_jornadas',  via: 'get'
  match '/consultar_configuracion', to: 'static_pages#consultar_configuracion',  via: 'get'
  match '/consultar_alumnos', to: 'static_pages#consultar_alumnos',  via: 'get'
  match '/configurar_grupos', to: 'static_pages#configurar_grupos',  via: 'get'
  match '/ver', to: 'static_pages#ver',  via: 'get'
  match '/v2', to: 'static_pages#v2',  via: 'get'
  match '/v3', to: 'static_pages#v3',  via: 'get'
  match '/pais', to: 'static_pages#pais',  via: 'get'
 

  root :to => 'static_pages#home'

end
