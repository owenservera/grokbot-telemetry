# sandbox_telemetry_parse — 2026-10-17 00:13:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=947541 lines=3541
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2348 |
| `memory_sample` | 1184 |
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
| `chromeBrowserPssKb` | {'int': 1184} |
| `chromeGpuPssKb` | {'int': 1184} |
| `chromeOtherPssKb` | {'int': 1184} |
| `chromeProcesses` | {'int': 1184} |
| `chromeProfiles` | {'int': 1184} |
| `chromeRendererMaxPssKb` | {'int': 1184} |
| `chromeRendererPssKb` | {'int': 1184} |
| `chromeRenderers` | {'int': 1184} |
| `chromeTabs` | {'int': 1184} |
| `chromeTabsProbedProfiles` | {'int': 1184} |
| `chromeUtilityPssKb` | {'int': 1184} |
| `desktopPssKb` | {'int': 1184} |
| `hostPssKb` | {'int': 1184} |
| `kind` | {'str': 1184} |
| `memAvailableKb` | {'int': 1184} |
| `memTotalKb` | {'int': 1184} |
| `otherPssKb` | {'int': 1184} |
| `processes` | {'int': 1184} |
| `pssFallbackProcesses` | {'int': 1184} |

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
| `cpuMillicores` | {'int': 2345} |
| `display` | {'int': 2348} |
| `kind` | {'str': 2348} |
| `processes` | {'int': 2348} |
| `pssKb` | {'int': 2348} |
| `rendererMaxPssKb` | {'int': 2348} |
| `renderers` | {'int': 2348} |
| `tabs` | {'int': 2347} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
