# sandbox_telemetry_parse — 2026-10-13 08:31:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=950313 lines=2345
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1938 |
| `chrome_profile_sample` | 399 |
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
| `chromeBrowserPssKb` | {'int': 1938} |
| `chromeGpuPssKb` | {'int': 1938} |
| `chromeOtherPssKb` | {'int': 1938} |
| `chromeProcesses` | {'int': 1938} |
| `chromeProfiles` | {'int': 1938} |
| `chromeRendererMaxPssKb` | {'int': 1938} |
| `chromeRendererPssKb` | {'int': 1938} |
| `chromeRenderers` | {'int': 1938} |
| `chromeTabs` | {'int': 1938} |
| `chromeTabsProbedProfiles` | {'int': 1938} |
| `chromeUtilityPssKb` | {'int': 1938} |
| `desktopPssKb` | {'int': 1938} |
| `hostPssKb` | {'int': 1938} |
| `kind` | {'str': 1938} |
| `memAvailableKb` | {'int': 1938} |
| `memTotalKb` | {'int': 1938} |
| `otherPssKb` | {'int': 1938} |
| `processes` | {'int': 1938} |
| `pssFallbackProcesses` | {'int': 1938} |

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
| `cpuMillicores` | {'int': 398} |
| `display` | {'int': 399} |
| `kind` | {'str': 399} |
| `processes` | {'int': 399} |
| `pssKb` | {'int': 399} |
| `rendererMaxPssKb` | {'int': 399} |
| `renderers` | {'int': 399} |
| `tabs` | {'int': 399} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
