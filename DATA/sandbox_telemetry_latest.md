# sandbox_telemetry_parse — 2026-10-16 14:32:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=537278 lines=2008
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1326 |
| `memory_sample` | 673 |
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
| `chromeBrowserPssKb` | {'int': 673} |
| `chromeGpuPssKb` | {'int': 673} |
| `chromeOtherPssKb` | {'int': 673} |
| `chromeProcesses` | {'int': 673} |
| `chromeProfiles` | {'int': 673} |
| `chromeRendererMaxPssKb` | {'int': 673} |
| `chromeRendererPssKb` | {'int': 673} |
| `chromeRenderers` | {'int': 673} |
| `chromeTabs` | {'int': 673} |
| `chromeTabsProbedProfiles` | {'int': 673} |
| `chromeUtilityPssKb` | {'int': 673} |
| `desktopPssKb` | {'int': 673} |
| `hostPssKb` | {'int': 673} |
| `kind` | {'str': 673} |
| `memAvailableKb` | {'int': 673} |
| `memTotalKb` | {'int': 673} |
| `otherPssKb` | {'int': 673} |
| `processes` | {'int': 673} |
| `pssFallbackProcesses` | {'int': 673} |

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
| `cpuMillicores` | {'int': 1323} |
| `display` | {'int': 1326} |
| `kind` | {'str': 1326} |
| `processes` | {'int': 1326} |
| `pssKb` | {'int': 1326} |
| `rendererMaxPssKb` | {'int': 1326} |
| `renderers` | {'int': 1326} |
| `tabs` | {'int': 1325} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
