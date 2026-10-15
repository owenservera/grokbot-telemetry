# sandbox_telemetry_parse — 2026-10-16 01:51:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1165131 lines=2590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2572 |
| `chrome_profile_sample` | 10 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2572} |
| `chromeGpuPssKb` | {'int': 2572} |
| `chromeOtherPssKb` | {'int': 2572} |
| `chromeProcesses` | {'int': 2572} |
| `chromeProfiles` | {'int': 2572} |
| `chromeRendererMaxPssKb` | {'int': 2572} |
| `chromeRendererPssKb` | {'int': 2572} |
| `chromeRenderers` | {'int': 2572} |
| `chromeTabs` | {'int': 2572} |
| `chromeTabsProbedProfiles` | {'int': 2572} |
| `chromeUtilityPssKb` | {'int': 2572} |
| `desktopPssKb` | {'int': 2572} |
| `hostPssKb` | {'int': 2572} |
| `kind` | {'str': 2572} |
| `memAvailableKb` | {'int': 2572} |
| `memTotalKb` | {'int': 2572} |
| `otherPssKb` | {'int': 2572} |
| `processes` | {'int': 2572} |
| `pssFallbackProcesses` | {'int': 2572} |

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
| `cpuMillicores` | {'int': 9} |
| `display` | {'int': 10} |
| `kind` | {'str': 10} |
| `processes` | {'int': 10} |
| `pssKb` | {'int': 10} |
| `rendererMaxPssKb` | {'int': 10} |
| `renderers` | {'int': 10} |
| `tabs` | {'int': 10} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
