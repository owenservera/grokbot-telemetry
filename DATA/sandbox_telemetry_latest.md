# sandbox_telemetry_parse — 2026-10-14 00:40:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1338207 lines=3561
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2546 |
| `chrome_profile_sample` | 1007 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2546} |
| `chromeGpuPssKb` | {'int': 2546} |
| `chromeOtherPssKb` | {'int': 2546} |
| `chromeProcesses` | {'int': 2546} |
| `chromeProfiles` | {'int': 2546} |
| `chromeRendererMaxPssKb` | {'int': 2546} |
| `chromeRendererPssKb` | {'int': 2546} |
| `chromeRenderers` | {'int': 2546} |
| `chromeTabs` | {'int': 2546} |
| `chromeTabsProbedProfiles` | {'int': 2546} |
| `chromeUtilityPssKb` | {'int': 2546} |
| `desktopPssKb` | {'int': 2546} |
| `hostPssKb` | {'int': 2546} |
| `kind` | {'str': 2546} |
| `memAvailableKb` | {'int': 2546} |
| `memTotalKb` | {'int': 2546} |
| `otherPssKb` | {'int': 2546} |
| `processes` | {'int': 2546} |
| `pssFallbackProcesses` | {'int': 2546} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 1006} |
| `display` | {'int': 1007} |
| `kind` | {'str': 1007} |
| `processes` | {'int': 1007} |
| `pssKb` | {'int': 1007} |
| `rendererMaxPssKb` | {'int': 1007} |
| `renderers` | {'int': 1007} |
| `tabs` | {'int': 1007} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
