# Portfolio Dashboard

Available at [[https://vcosqui.github.io/portfolio-dashboard/dashboard.html]]

A self-contained single-file investment portfolio dashboard for index fund investors. No server, no build step — just open `dashboard.html` in a browser.

## Features

- **Overview** — portfolio value, total return, CAGR, Sharpe ratio, Calmar ratio, max drawdown
- **Performance** — portfolio value / base-100 / % return / earned € over time; rolling returns; monthly heatmap
- **Contributions** — cumulative invested capital vs value; monthly contribution history
- **Holdings** — per-fund comparison chart with live ETF proxy data; performance cards with Yahoo Finance links
- **Forecast** — Monte Carlo simulation with confidence bands; cumulative return chart with historical overlay
- **Analysis** — drawdown chart; rolling return analysis

## How to use

### 1. Get your data

Export two CSV files from your investment platform:

- **Posiciones** (`Posiciones_*.csv`) — current holdings snapshot
- **Valor** (`Valor_*.csv`) — daily portfolio valuation history

The dashboard expects semicolon-delimited CSVs with Spanish locale number formatting (period as thousands separator, comma as decimal).

### 2. Open the dashboard

Open `dashboard.html` in any modern browser. No internet connection required for the core dashboard — fund history download uses Yahoo Finance (optional).

### 3. Load your data

Drag and drop both CSV files onto the upload area, or click to browse.

### 4. Download fund history (optional)

Go to the **Holdings** tab and click **↓ Download Fund History**. This fetches live ETF proxy price data from Yahoo Finance via a CORS proxy — takes about 15 seconds.

## Data formats

### Posiciones CSV

| Column | Description |
|---|---|
| `Fondo de inversión` | Fund name |
| `Código ISIN` | ISIN identifier |
| `Participaciones` | Units held |
| `Precio / participación` | NAV price per unit (EUR) |
| `Importe` | Total market value (EUR) |

### Valor CSV

| Column | Description |
|---|---|
| `Fecha` | Date (`YYYY-MM-DD`) |
| `EN EUROS (€)` | Total portfolio value |
| `EN PORCENTAJE (%)` | Total return % |
| `Evolución de la cartera (base 100)` | Portfolio indexed to 100 at inception |
| `Rentabilidad (€)` | Absolute return in EUR |
| `Aportaciones netas del día (€)` | Net contributions on that day |
| `Aportaciones netas acumuladas (€)` | Cumulative net contributions |
| `Retenciones del día (€)` | Withholding tax on that day |
| `Retenciones acumuladas (€)` | Cumulative withholding taxes |

## Privacy

All data stays in your browser. Nothing is sent to any server. Fund history download routes through [corsproxy.io](https://corsproxy.io) to Yahoo Finance — only public ETF ticker symbols are transmitted, never your personal portfolio data.
