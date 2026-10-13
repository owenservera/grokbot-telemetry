# sandbox_telemetry_parse — 2026-10-13 23:19:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1289066 lines=3407
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2469 |
| `chrome_profile_sample` | 930 |
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
| `chromeBrowserPssKb` | {'int': 2469} |
| `chromeGpuPssKb` | {'int': 2469} |
| `chromeOtherPssKb` | {'int': 2469} |
| `chromeProcesses` | {'int': 2469} |
| `chromeProfiles` | {'int': 2469} |
| `chromeRendererMaxPssKb` | {'int': 2469} |
| `chromeRendererPssKb` | {'int': 2469} |
| `chromeRenderers` | {'int': 2469} |
| `chromeTabs` | {'int': 2469} |
| `chromeTabsProbedProfiles` | {'int': 2469} |
| `chromeUtilityPssKb` | {'int': 2469} |
| `desktopPssKb` | {'int': 2469} |
| `hostPssKb` | {'int': 2469} |
| `kind` | {'str': 2469} |
| `memAvailableKb` | {'int': 2469} |
| `memTotalKb` | {'int': 2469} |
| `otherPssKb` | {'int': 2469} |
| `processes` | {'int': 2469} |
| `pssFallbackProcesses` | {'int': 2469} |

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
| `cpuMillicores` | {'int': 929} |
| `display` | {'int': 930} |
| `kind` | {'str': 930} |
| `processes` | {'int': 930} |
| `pssKb` | {'int': 930} |
| `rendererMaxPssKb` | {'int': 930} |
| `renderers` | {'int': 930} |
| `tabs` | {'int': 930} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
