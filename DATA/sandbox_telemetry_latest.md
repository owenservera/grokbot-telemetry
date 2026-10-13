# sandbox_telemetry_parse — 2026-10-13 12:45:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1083458 lines=2763
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2147 |
| `chrome_profile_sample` | 608 |
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
| `chromeBrowserPssKb` | {'int': 2147} |
| `chromeGpuPssKb` | {'int': 2147} |
| `chromeOtherPssKb` | {'int': 2147} |
| `chromeProcesses` | {'int': 2147} |
| `chromeProfiles` | {'int': 2147} |
| `chromeRendererMaxPssKb` | {'int': 2147} |
| `chromeRendererPssKb` | {'int': 2147} |
| `chromeRenderers` | {'int': 2147} |
| `chromeTabs` | {'int': 2147} |
| `chromeTabsProbedProfiles` | {'int': 2147} |
| `chromeUtilityPssKb` | {'int': 2147} |
| `desktopPssKb` | {'int': 2147} |
| `hostPssKb` | {'int': 2147} |
| `kind` | {'str': 2147} |
| `memAvailableKb` | {'int': 2147} |
| `memTotalKb` | {'int': 2147} |
| `otherPssKb` | {'int': 2147} |
| `processes` | {'int': 2147} |
| `pssFallbackProcesses` | {'int': 2147} |

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
| `cpuMillicores` | {'int': 607} |
| `display` | {'int': 608} |
| `kind` | {'str': 608} |
| `processes` | {'int': 608} |
| `pssKb` | {'int': 608} |
| `rendererMaxPssKb` | {'int': 608} |
| `renderers` | {'int': 608} |
| `tabs` | {'int': 608} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
