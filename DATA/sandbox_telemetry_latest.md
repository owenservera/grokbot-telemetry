# sandbox_telemetry_parse — 2026-10-16 20:10:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=793344 lines=2965
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1964 |
| `memory_sample` | 992 |
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
| `chromeBrowserPssKb` | {'int': 992} |
| `chromeGpuPssKb` | {'int': 992} |
| `chromeOtherPssKb` | {'int': 992} |
| `chromeProcesses` | {'int': 992} |
| `chromeProfiles` | {'int': 992} |
| `chromeRendererMaxPssKb` | {'int': 992} |
| `chromeRendererPssKb` | {'int': 992} |
| `chromeRenderers` | {'int': 992} |
| `chromeTabs` | {'int': 992} |
| `chromeTabsProbedProfiles` | {'int': 992} |
| `chromeUtilityPssKb` | {'int': 992} |
| `desktopPssKb` | {'int': 992} |
| `hostPssKb` | {'int': 992} |
| `kind` | {'str': 992} |
| `memAvailableKb` | {'int': 992} |
| `memTotalKb` | {'int': 992} |
| `otherPssKb` | {'int': 992} |
| `processes` | {'int': 992} |
| `pssFallbackProcesses` | {'int': 992} |

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
| `cpuMillicores` | {'int': 1961} |
| `display` | {'int': 1964} |
| `kind` | {'str': 1964} |
| `processes` | {'int': 1964} |
| `pssKb` | {'int': 1964} |
| `rendererMaxPssKb` | {'int': 1964} |
| `renderers` | {'int': 1964} |
| `tabs` | {'int': 1963} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
