# sandbox_telemetry_parse — 2026-10-16 19:55:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=782905 lines=2926
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1938 |
| `memory_sample` | 979 |
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
| `chromeBrowserPssKb` | {'int': 979} |
| `chromeGpuPssKb` | {'int': 979} |
| `chromeOtherPssKb` | {'int': 979} |
| `chromeProcesses` | {'int': 979} |
| `chromeProfiles` | {'int': 979} |
| `chromeRendererMaxPssKb` | {'int': 979} |
| `chromeRendererPssKb` | {'int': 979} |
| `chromeRenderers` | {'int': 979} |
| `chromeTabs` | {'int': 979} |
| `chromeTabsProbedProfiles` | {'int': 979} |
| `chromeUtilityPssKb` | {'int': 979} |
| `desktopPssKb` | {'int': 979} |
| `hostPssKb` | {'int': 979} |
| `kind` | {'str': 979} |
| `memAvailableKb` | {'int': 979} |
| `memTotalKb` | {'int': 979} |
| `otherPssKb` | {'int': 979} |
| `processes` | {'int': 979} |
| `pssFallbackProcesses` | {'int': 979} |

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
| `cpuMillicores` | {'int': 1935} |
| `display` | {'int': 1938} |
| `kind` | {'str': 1938} |
| `processes` | {'int': 1938} |
| `pssKb` | {'int': 1938} |
| `rendererMaxPssKb` | {'int': 1938} |
| `renderers` | {'int': 1938} |
| `tabs` | {'int': 1937} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
