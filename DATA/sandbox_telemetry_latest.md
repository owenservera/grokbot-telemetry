# sandbox_telemetry_parse — 2026-10-16 15:48:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=595052 lines=2224
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1470 |
| `memory_sample` | 745 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 745} |
| `chromeGpuPssKb` | {'int': 745} |
| `chromeOtherPssKb` | {'int': 745} |
| `chromeProcesses` | {'int': 745} |
| `chromeProfiles` | {'int': 745} |
| `chromeRendererMaxPssKb` | {'int': 745} |
| `chromeRendererPssKb` | {'int': 745} |
| `chromeRenderers` | {'int': 745} |
| `chromeTabs` | {'int': 745} |
| `chromeTabsProbedProfiles` | {'int': 745} |
| `chromeUtilityPssKb` | {'int': 745} |
| `desktopPssKb` | {'int': 745} |
| `hostPssKb` | {'int': 745} |
| `kind` | {'str': 745} |
| `memAvailableKb` | {'int': 745} |
| `memTotalKb` | {'int': 745} |
| `otherPssKb` | {'int': 745} |
| `processes` | {'int': 745} |
| `pssFallbackProcesses` | {'int': 745} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1467} |
| `display` | {'int': 1470} |
| `kind` | {'str': 1470} |
| `processes` | {'int': 1470} |
| `pssKb` | {'int': 1470} |
| `rendererMaxPssKb` | {'int': 1470} |
| `renderers` | {'int': 1470} |
| `tabs` | {'int': 1469} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
