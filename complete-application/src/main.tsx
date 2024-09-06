import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App.tsx";
import "./index.css";
import { BrowserRouter } from "react-router-dom";
import {
  FusionAuthProvider,
  FusionAuthProviderConfig,
} from "@fusionauth/react-sdk";

const config: FusionAuthProviderConfig = {
  clientId: "e9fdb985-9173-4e01-9d73-ac2d60d1dc8e",
  redirectUri: "REACT_APP_REDIRECT",
  postLogoutRedirectUri: "REACT_APP_REDIRECT/logged-out",
  serverUrl: "REACT_APP_FUSIONAUTH",
  shouldAutoFetchUserInfo: true,
  shouldAutoRefresh: true,
  onRedirect: (state?: string) => {
    console.log(`Redirect happened with state value: ${state}`);
  },
  scope: 'openid email profile offline_access'
};

ReactDOM.createRoot(document.getElementById("root")!).render(
  <React.StrictMode>
    <BrowserRouter>
      <FusionAuthProvider {...config}>
        <App />
      </FusionAuthProvider>
    </BrowserRouter>
  </React.StrictMode>
);
