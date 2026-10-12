# sandbox_telemetry_parse — 2026-10-13 00:43:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=728186 lines=1647
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1589 |
| `chrome_profile_sample` | 50 |
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
| `chromeBrowserPssKb` | {'int': 1589} |
| `chromeGpuPssKb` | {'int': 1589} |
| `chromeOtherPssKb` | {'int': 1589} |
| `chromeProcesses` | {'int': 1589} |
| `chromeProfiles` | {'int': 1589} |
| `chromeRendererMaxPssKb` | {'int': 1589} |
| `chromeRendererPssKb` | {'int': 1589} |
| `chromeRenderers` | {'int': 1589} |
| `chromeTabs` | {'int': 1589} |
| `chromeTabsProbedProfiles` | {'int': 1589} |
| `chromeUtilityPssKb` | {'int': 1589} |
| `desktopPssKb` | {'int': 1589} |
| `hostPssKb` | {'int': 1589} |
| `kind` | {'str': 1589} |
| `memAvailableKb` | {'int': 1589} |
| `memTotalKb` | {'int': 1589} |
| `otherPssKb` | {'int': 1589} |
| `processes` | {'int': 1589} |
| `pssFallbackProcesses` | {'int': 1589} |

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
| `cpuMillicores` | {'int': 49} |
| `display` | {'int': 50} |
| `kind` | {'str': 50} |
| `processes` | {'int': 50} |
| `pssKb` | {'int': 50} |
| `rendererMaxPssKb` | {'int': 50} |
| `renderers` | {'int': 50} |
| `tabs` | {'int': 50} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
