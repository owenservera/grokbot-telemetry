# sandbox_telemetry_parse — 2026-10-12 23:38:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=697620 lines=1551
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1541 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `chrome_profile_sample` | 2 |
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
| `chromeBrowserPssKb` | {'int': 1541} |
| `chromeGpuPssKb` | {'int': 1541} |
| `chromeOtherPssKb` | {'int': 1541} |
| `chromeProcesses` | {'int': 1541} |
| `chromeProfiles` | {'int': 1541} |
| `chromeRendererMaxPssKb` | {'int': 1541} |
| `chromeRendererPssKb` | {'int': 1541} |
| `chromeRenderers` | {'int': 1541} |
| `chromeTabs` | {'int': 1541} |
| `chromeTabsProbedProfiles` | {'int': 1541} |
| `chromeUtilityPssKb` | {'int': 1541} |
| `desktopPssKb` | {'int': 1541} |
| `hostPssKb` | {'int': 1541} |
| `kind` | {'str': 1541} |
| `memAvailableKb` | {'int': 1541} |
| `memTotalKb` | {'int': 1541} |
| `otherPssKb` | {'int': 1541} |
| `processes` | {'int': 1541} |
| `pssFallbackProcesses` | {'int': 1541} |

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
| `cpuMillicores` | {'int': 1} |
| `display` | {'int': 2} |
| `kind` | {'str': 2} |
| `processes` | {'int': 2} |
| `pssKb` | {'int': 2} |
| `rendererMaxPssKb` | {'int': 2} |
| `renderers` | {'int': 2} |
| `tabs` | {'int': 2} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
