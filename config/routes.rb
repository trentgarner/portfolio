Rails.application.routes.draw do
  # Root path
  root "pages#home"

  # Static pages
  get "projects", to: "pages#projects"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"

  # Optional: alias /pages/home if you want that URL
  get "pages/home", to: "pages#home"

  # Health check (for uptime monitors / load balancers)
  get "up", to: "rails/health#show", as: :rails_health_check

  # PWA routes (service worker / manifest)
  get "service-worker", to: "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest", to: "rails/pwa#manifest", as: :pwa_manifest
end
