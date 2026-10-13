# sandbox_telemetry_parse — 2026-10-14 00:30:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1331826 lines=3541
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2536 |
| `chrome_profile_sample` | 997 |
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
| `chromeBrowserPssKb` | {'int': 2536} |
| `chromeGpuPssKb` | {'int': 2536} |
| `chromeOtherPssKb` | {'int': 2536} |
| `chromeProcesses` | {'int': 2536} |
| `chromeProfiles` | {'int': 2536} |
| `chromeRendererMaxPssKb` | {'int': 2536} |
| `chromeRendererPssKb` | {'int': 2536} |
| `chromeRenderers` | {'int': 2536} |
| `chromeTabs` | {'int': 2536} |
| `chromeTabsProbedProfiles` | {'int': 2536} |
| `chromeUtilityPssKb` | {'int': 2536} |
| `desktopPssKb` | {'int': 2536} |
| `hostPssKb` | {'int': 2536} |
| `kind` | {'str': 2536} |
| `memAvailableKb` | {'int': 2536} |
| `memTotalKb` | {'int': 2536} |
| `otherPssKb` | {'int': 2536} |
| `processes` | {'int': 2536} |
| `pssFallbackProcesses` | {'int': 2536} |

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
| `cpuMillicores` | {'int': 996} |
| `display` | {'int': 997} |
| `kind` | {'str': 997} |
| `processes` | {'int': 997} |
| `pssKb` | {'int': 997} |
| `rendererMaxPssKb` | {'int': 997} |
| `renderers` | {'int': 997} |
| `tabs` | {'int': 997} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
