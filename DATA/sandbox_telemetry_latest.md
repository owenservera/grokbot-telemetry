# sandbox_telemetry_parse — 2026-10-16 18:15:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=709033 lines=2650
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1754 |
| `memory_sample` | 887 |
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
| `chromeBrowserPssKb` | {'int': 887} |
| `chromeGpuPssKb` | {'int': 887} |
| `chromeOtherPssKb` | {'int': 887} |
| `chromeProcesses` | {'int': 887} |
| `chromeProfiles` | {'int': 887} |
| `chromeRendererMaxPssKb` | {'int': 887} |
| `chromeRendererPssKb` | {'int': 887} |
| `chromeRenderers` | {'int': 887} |
| `chromeTabs` | {'int': 887} |
| `chromeTabsProbedProfiles` | {'int': 887} |
| `chromeUtilityPssKb` | {'int': 887} |
| `desktopPssKb` | {'int': 887} |
| `hostPssKb` | {'int': 887} |
| `kind` | {'str': 887} |
| `memAvailableKb` | {'int': 887} |
| `memTotalKb` | {'int': 887} |
| `otherPssKb` | {'int': 887} |
| `processes` | {'int': 887} |
| `pssFallbackProcesses` | {'int': 887} |

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
| `cpuMillicores` | {'int': 1751} |
| `display` | {'int': 1754} |
| `kind` | {'str': 1754} |
| `processes` | {'int': 1754} |
| `pssKb` | {'int': 1754} |
| `rendererMaxPssKb` | {'int': 1754} |
| `renderers` | {'int': 1754} |
| `tabs` | {'int': 1753} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
