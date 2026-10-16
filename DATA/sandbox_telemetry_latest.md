# sandbox_telemetry_parse — 2026-10-16 06:28:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=186567 lines=697
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 452 |
| `memory_sample` | 236 |
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
| `chromeBrowserPssKb` | {'int': 236} |
| `chromeGpuPssKb` | {'int': 236} |
| `chromeOtherPssKb` | {'int': 236} |
| `chromeProcesses` | {'int': 236} |
| `chromeProfiles` | {'int': 236} |
| `chromeRendererMaxPssKb` | {'int': 236} |
| `chromeRendererPssKb` | {'int': 236} |
| `chromeRenderers` | {'int': 236} |
| `chromeTabs` | {'int': 236} |
| `chromeTabsProbedProfiles` | {'int': 236} |
| `chromeUtilityPssKb` | {'int': 236} |
| `desktopPssKb` | {'int': 236} |
| `hostPssKb` | {'int': 236} |
| `kind` | {'str': 236} |
| `memAvailableKb` | {'int': 236} |
| `memTotalKb` | {'int': 236} |
| `otherPssKb` | {'int': 236} |
| `processes` | {'int': 236} |
| `pssFallbackProcesses` | {'int': 236} |

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
| `cpuMillicores` | {'int': 449} |
| `display` | {'int': 452} |
| `kind` | {'str': 452} |
| `processes` | {'int': 452} |
| `pssKb` | {'int': 452} |
| `rendererMaxPssKb` | {'int': 452} |
| `renderers` | {'int': 452} |
| `tabs` | {'int': 451} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
