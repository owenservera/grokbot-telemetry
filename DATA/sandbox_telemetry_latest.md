# sandbox_telemetry_parse — 2026-10-16 07:41:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=243518 lines=910
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 594 |
| `memory_sample` | 307 |
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
| `chromeBrowserPssKb` | {'int': 307} |
| `chromeGpuPssKb` | {'int': 307} |
| `chromeOtherPssKb` | {'int': 307} |
| `chromeProcesses` | {'int': 307} |
| `chromeProfiles` | {'int': 307} |
| `chromeRendererMaxPssKb` | {'int': 307} |
| `chromeRendererPssKb` | {'int': 307} |
| `chromeRenderers` | {'int': 307} |
| `chromeTabs` | {'int': 307} |
| `chromeTabsProbedProfiles` | {'int': 307} |
| `chromeUtilityPssKb` | {'int': 307} |
| `desktopPssKb` | {'int': 307} |
| `hostPssKb` | {'int': 307} |
| `kind` | {'str': 307} |
| `memAvailableKb` | {'int': 307} |
| `memTotalKb` | {'int': 307} |
| `otherPssKb` | {'int': 307} |
| `processes` | {'int': 307} |
| `pssFallbackProcesses` | {'int': 307} |

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
| `cpuMillicores` | {'int': 591} |
| `display` | {'int': 594} |
| `kind` | {'str': 594} |
| `processes` | {'int': 594} |
| `pssKb` | {'int': 594} |
| `rendererMaxPssKb` | {'int': 594} |
| `renderers` | {'int': 594} |
| `tabs` | {'int': 593} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
