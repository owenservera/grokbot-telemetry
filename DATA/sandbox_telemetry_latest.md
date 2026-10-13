# sandbox_telemetry_parse — 2026-10-13 04:49:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=831313 lines=1971
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1751 |
| `chrome_profile_sample` | 212 |
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
| `chromeBrowserPssKb` | {'int': 1751} |
| `chromeGpuPssKb` | {'int': 1751} |
| `chromeOtherPssKb` | {'int': 1751} |
| `chromeProcesses` | {'int': 1751} |
| `chromeProfiles` | {'int': 1751} |
| `chromeRendererMaxPssKb` | {'int': 1751} |
| `chromeRendererPssKb` | {'int': 1751} |
| `chromeRenderers` | {'int': 1751} |
| `chromeTabs` | {'int': 1751} |
| `chromeTabsProbedProfiles` | {'int': 1751} |
| `chromeUtilityPssKb` | {'int': 1751} |
| `desktopPssKb` | {'int': 1751} |
| `hostPssKb` | {'int': 1751} |
| `kind` | {'str': 1751} |
| `memAvailableKb` | {'int': 1751} |
| `memTotalKb` | {'int': 1751} |
| `otherPssKb` | {'int': 1751} |
| `processes` | {'int': 1751} |
| `pssFallbackProcesses` | {'int': 1751} |

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
| `cpuMillicores` | {'int': 211} |
| `display` | {'int': 212} |
| `kind` | {'str': 212} |
| `processes` | {'int': 212} |
| `pssKb` | {'int': 212} |
| `rendererMaxPssKb` | {'int': 212} |
| `renderers` | {'int': 212} |
| `tabs` | {'int': 212} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
