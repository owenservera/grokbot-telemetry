# sandbox_telemetry_parse — 2026-10-16 19:45:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=774873 lines=2896
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1918 |
| `memory_sample` | 969 |
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
| `chromeBrowserPssKb` | {'int': 969} |
| `chromeGpuPssKb` | {'int': 969} |
| `chromeOtherPssKb` | {'int': 969} |
| `chromeProcesses` | {'int': 969} |
| `chromeProfiles` | {'int': 969} |
| `chromeRendererMaxPssKb` | {'int': 969} |
| `chromeRendererPssKb` | {'int': 969} |
| `chromeRenderers` | {'int': 969} |
| `chromeTabs` | {'int': 969} |
| `chromeTabsProbedProfiles` | {'int': 969} |
| `chromeUtilityPssKb` | {'int': 969} |
| `desktopPssKb` | {'int': 969} |
| `hostPssKb` | {'int': 969} |
| `kind` | {'str': 969} |
| `memAvailableKb` | {'int': 969} |
| `memTotalKb` | {'int': 969} |
| `otherPssKb` | {'int': 969} |
| `processes` | {'int': 969} |
| `pssFallbackProcesses` | {'int': 969} |

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
| `cpuMillicores` | {'int': 1915} |
| `display` | {'int': 1918} |
| `kind` | {'str': 1918} |
| `processes` | {'int': 1918} |
| `pssKb` | {'int': 1918} |
| `rendererMaxPssKb` | {'int': 1918} |
| `renderers` | {'int': 1918} |
| `tabs` | {'int': 1917} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
