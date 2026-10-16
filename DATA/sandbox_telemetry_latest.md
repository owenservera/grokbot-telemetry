# sandbox_telemetry_parse — 2026-10-16 12:46:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=456200 lines=1705
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1124 |
| `memory_sample` | 572 |
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
| `chromeBrowserPssKb` | {'int': 572} |
| `chromeGpuPssKb` | {'int': 572} |
| `chromeOtherPssKb` | {'int': 572} |
| `chromeProcesses` | {'int': 572} |
| `chromeProfiles` | {'int': 572} |
| `chromeRendererMaxPssKb` | {'int': 572} |
| `chromeRendererPssKb` | {'int': 572} |
| `chromeRenderers` | {'int': 572} |
| `chromeTabs` | {'int': 572} |
| `chromeTabsProbedProfiles` | {'int': 572} |
| `chromeUtilityPssKb` | {'int': 572} |
| `desktopPssKb` | {'int': 572} |
| `hostPssKb` | {'int': 572} |
| `kind` | {'str': 572} |
| `memAvailableKb` | {'int': 572} |
| `memTotalKb` | {'int': 572} |
| `otherPssKb` | {'int': 572} |
| `processes` | {'int': 572} |
| `pssFallbackProcesses` | {'int': 572} |

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
| `cpuMillicores` | {'int': 1121} |
| `display` | {'int': 1124} |
| `kind` | {'str': 1124} |
| `processes` | {'int': 1124} |
| `pssKb` | {'int': 1124} |
| `rendererMaxPssKb` | {'int': 1124} |
| `renderers` | {'int': 1124} |
| `tabs` | {'int': 1123} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
